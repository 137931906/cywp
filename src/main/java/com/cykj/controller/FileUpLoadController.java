package com.cykj.controller;

import com.alibaba.fastjson.JSON;
import com.cykj.bean.FileUpload;
import com.cykj.bean.User;
import com.cykj.service.FileUpLoadService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;

@Controller
@RequestMapping(value = "/WebInfo")
public class FileUpLoadController {
    @Autowired
    private FileUpload fileUpload;
    @Autowired
    private FileUpLoadService fileUpLoadService;


    /**
     * 生成界面
     * @return
     */
    @RequestMapping(value = "/getView")
    public String getView(){
        return "WebInfo";
    }


    /****
     * 上传文件
     * @param request
     * @param multipartFile
     * @return
     */
    @RequestMapping(value = "/getFile")
    @ResponseBody
    public String getFile(HttpServletRequest request, MultipartFile multipartFile){
        if(multipartFile.getSize() > 0){
        String titleName = request.getParameter("titleName");//文档标题
        String content = request.getParameter("content");//文档内容
        String downScore = request.getParameter("downScore");//下载积分
        String fileName = multipartFile.getOriginalFilename();//获取文件名称
        int first = fileName.lastIndexOf(".");//取到文件名开始到最后一个点的长度
        String newFileName = fileName.substring(0, first);//截取获得文件名
        String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);//获取文件后缀
        User user= (User) request.getSession().getAttribute("user");
        fileUpload.setUploadId(user.getUserId());//设置上传人id
        fileUpload.setFileName(newFileName);
        fileUpload.setFileType(suffix);
        fileUpload.setLoadScore(Integer.parseInt(downScore));
        fileUpload.setTitleName(titleName);
        fileUpload.setContent(content);
        fileUpload.setCheckState("待审核");
            //获取当前上传的路径
            String path = request.getServletContext().getRealPath("/upload");
            //进行路径拼接
            File file = new File(path,fileName);
            //判断是否存在文件夹
            if(!file.exists()){
                file.mkdirs();
            }
            try {
                multipartFile.transferTo(file);
                int flag = fileUpLoadService.insertTable(fileUpload);//插入数据库
                if(flag > 0){
                    String[] code=new String[2];
                    code[0] = "1";
                    code[1] = "上传成功";
                    return JSON.toJSONString(code);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
                String[] code = new String[2];
                code[0] = "1";
                code[1] = "上传失败";
                return JSON.toJSONString(code);

    }

    /****
     * 下载方式一
     * 获取前台要下载的文件名称
     * 设置响应类型
     * 设置下载页显示的文件名
     * 获取下载文件夹的绝对路怪和文件名称·合并为file类型
     * 将文件复制到浏览器
     * @param request
     * @param response
     * @param fileName
     */
    @RequestMapping(value = "/downLoad")
    public void downLoad(HttpServletRequest request, HttpServletResponse response,String fileName){
        //获取下载文件的路径
        String realPath=request.getServletContext().getRealPath("/upload");
        //把下载文件构造文件进行处理
        File file = new File(realPath,fileName);
        //设置响应类型
        response.setContentType("application/x-msdownload");
        //设置下载时文件显示的类型
        response.setHeader("Content-Disposition", "attachment;filename="+fileName);
        //下载文件
        try {
            Files.copy(file.toPath(),response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 下载发方式二
     * @param request
     * @param fileName
     * @return
     */
    @RequestMapping(value = "/downLoad2")
    public ResponseEntity<byte[]> downLoadTwo(HttpServletRequest request,String fileName){
        //获取下载文件的路径
        String realPath = request.getServletContext().getRealPath("/upload");
        //把下载文件构造文件进行处理
        File file = new File(realPath,fileName);
        //设置响应头
        HttpHeaders httpHeaders = new HttpHeaders();
        try {
            String newFileName = new String(fileName.getBytes("UTF-8"),"iso-8859-1");
            httpHeaders.setContentDispositionFormData("attachment",fileName);
            httpHeaders.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),httpHeaders, HttpStatus.CREATED);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
