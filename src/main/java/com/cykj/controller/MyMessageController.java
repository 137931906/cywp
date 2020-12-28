package com.cykj.controller;

import com.cykj.bean.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/MyMessage")
//@SessionAttributes("user")
public class MyMessageController {

    @RequestMapping(value = "/getView")
    public String getView(){
        return "Mymseeage";
    }

    @RequestMapping(value = "/getSelect")
    @ResponseBody
    public User selectMessage(HttpServletRequest httpServletRequest){
        User user= (User) httpServletRequest.getSession().getAttribute("user");
       return user;
    }
}
