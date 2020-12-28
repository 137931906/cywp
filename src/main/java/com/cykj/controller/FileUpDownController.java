package com.cykj.controller;


import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;


@Controller
@RequestMapping(value = "/file")
public class FileUpDownController {

    @RequestMapping(value = "/getView")
    public String getView() {
        return "fileupload";
    }

    //返回页面
    @RequestMapping(value = "/upload")
    public String upload(HttpServletRequest req, MultipartFile uploadFile) {
        if (uploadFile.getSize() > 0) {
            //获取前半部分的路径(要上传的路径)
            String path = req.getServletContext().getRealPath("upload");
            //获取文件名称
            String fileName = uploadFile.getOriginalFilename();
            //进行路径的拼接
            File file = new File(path, fileName);
            //判断是否有这个文件夹 没有就新建
            if (!file.exists()) {
                file.mkdirs();
            }
            try {
                uploadFile.transferTo(file);
                return "";
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        return "";
    }

    /**
     * 下载方式一
     * 获取前台要下载的文件名称
     * 设置响应类型
     * 设置下载页显示的文件名
     * 获取下载文件夹的绝对路怪和文件名称·合并为file类型
     * 将文件复制到浏览器
     */
    @RequestMapping("/download")
    public void download(HttpServletRequest req, HttpServletResponse res, String filename) {
        //获取下载文件的路径
        String realPath = req.getServletContext().getRealPath("/upload");
        //把下载文件构造成一个文件处理
        File file = new File(realPath, filename);
        //设置响应类型
        res.setContentType("application/x-msdownload");
        //设置下载时文件显示的类型
        res.setHeader("Content-Disposition", "attachment;filename=" + filename);
        //下载文件
        try {
            Files.copy(file.toPath(), res.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("/download2")
    public ResponseEntity<byte[]> download2(HttpServletRequest req, String filename) {
        //获取下载文件的路径
        String realPath = req.getServletContext().getRealPath("/upload");
        //把下载文件构造成一个文件处理
        File file = new File(realPath, filename);
        //设置响应头
        HttpHeaders headers = new HttpHeaders();
        //设置响应的文件名
        try {
            String fileName = new String(filename.getBytes("UTF-8"), "iso-8859-1");
            headers.setContentDispositionFormData("attachment", fileName);
            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}



























