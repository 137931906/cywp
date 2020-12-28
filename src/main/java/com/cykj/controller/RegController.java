package com.cykj.controller;

import com.cykj.bean.User;
import com.cykj.service.LoginService;
import com.cykj.service.RegService;
import com.cykj.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@RequestMapping(value = "/Reg")
@SessionAttributes("user")
public class RegController {

    @Autowired
//    private RegService regService;

    //返回页面
    @RequestMapping(value = "/Reg")
    public String getView() {
        return "Reg";
    }

    @RequestMapping(value = "/addUser")

    @ResponseBody
    public String addUser(@RequestBody User user, ModelMap modelMap) {


            return "";

    }
}
