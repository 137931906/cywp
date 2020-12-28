package com.cykj.controller;

import com.alibaba.fastjson.JSON;
import com.cykj.bean.User;
import com.cykj.bean.UserScore;
import com.cykj.service.MyScoreService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/MyScore")
public class MyScoreControl {
    @Autowired
    private User user;
    @Autowired
    private MyScoreService myScoreService;


    @RequestMapping("/getView")
    public String getView(){
        return "MyScore";
    }
    @RequestMapping("/selectTable")
    @ResponseBody
    public Map<String, Object> selectTable(HttpServletRequest request, @RequestParam String limit, @RequestParam String page){
        User getUser= (User) request.getSession().getAttribute("user");
        user.setUserId(getUser.getUserId());
        int newPage=Integer.parseInt(page);
        int newLimit=Integer.parseInt(limit);
        RowBounds rb=new RowBounds((newPage-1)*newLimit,newLimit);
        List<UserScore> userScoreList=myScoreService.selectTabe(rb,user);
        Map<String,Object> map= new HashMap<>();
        map.put("code",0);
        map.put("msg","");
        map.put("count",myScoreService.selectCount(user));
        map.put("data",userScoreList);
        return map;
        }
    @RequestMapping("/nowScore")
    @ResponseBody
    public String selectScore(HttpServletRequest request){
        User getUser= (User) request.getSession().getAttribute("user");
        String newScore=String.valueOf(getUser.getNowScore());
       return JSON.toJSONString(newScore);
    }


}
