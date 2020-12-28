package com.cykj.controller;


import com.cykj.bean.AdminUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/Backstage")
public class MenuController {

    @RequestMapping(value = "/getView")
    public ModelAndView getView(ModelMap modelMap) {
        AdminUser adminUser= (AdminUser) modelMap.get("adminUser");
        ModelAndView modelAndView = new ModelAndView("Backstage");
        modelAndView.addObject("adminUser",adminUser);
        return modelAndView;
    }
}
