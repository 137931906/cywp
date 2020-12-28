package com.cykj.controller;

import com.cykj.bean.User;
import com.cykj.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping(value = "/AdminLogin")
public class LoginController {

    @Autowired
    private LoginService loginService;


    //返回页面
    @RequestMapping(value = "/AdminLogin")
    public String getView() {
        return "AdminLogin";
    }

    @RequestMapping(value = "/getUser")
    @ResponseBody
    public String getUser(HttpServletRequest httpServletRequest,@RequestBody @Validated User user, BindingResult br) {
//        user.setPwd(MD5Utils.md5(user.getPwd()));//转化密码加密
        //获取校验的结果
        if (br.hasErrors()){
            List<ObjectError> errors = br.getAllErrors();
            for (ObjectError error : errors){
                System.out.println(error);
            }
        }
        User user1 = null;
        user1 = loginService.loginCheck(user);
        String vCode = (String) httpServletRequest.getSession().getAttribute("vCode");
        String vCode2 = user.getvCode();
        if (vCode.equalsIgnoreCase(vCode2)) {
            if (user1 != null) {
                httpServletRequest.getSession().setAttribute("user",user1);
               return "登入成功";
            } else {
               return "登入失败";
            }
        } else {
           return "user1";
        }

    }

}

//    public String getView(){
//    @Autowired
//    private LoginServiceImpl loginService;
//    //返回页面
//    @RequestMapping(value = "/Login1")
//        return "Login";
//    }
//
//    @RequestMapping(value = "/Login2")
//   public ModelAndView getModelAndView(){
//        ModelAndView modelAndView=new ModelAndView("Login");
//        modelAndView.addObject("time",new Date());
//        modelAndView.getModel().put("name","peter");
//        return modelAndView;
//   }
//   //get方法传参
//    @RequestMapping(value = "/param")
//   public String param(@RequestParam String userName){
//        String userName1=userName;
//        return "FrontMenu";
//    }
//    //post方法传对象
//    @RequestMapping(value = "/getUser")
//    @ResponseBody
//    public User getUser(@RequestBody User user){
//        boolean flag=loginService.loginCheck(user);
//        return user;
//    }


