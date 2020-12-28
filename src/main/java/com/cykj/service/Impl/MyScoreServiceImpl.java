package com.cykj.service.Impl;
import com.cykj.bean.User;
import com.cykj.bean.UserScore;
import com.cykj.mapper.MyScoreMapper;
import com.cykj.service.MyScoreService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MyScoreServiceImpl implements MyScoreService {
    @Autowired
    private MyScoreMapper myScoreMapper;
    @Override
    public List<UserScore> selectTabe(RowBounds rb, User user) {
        List<UserScore> userScoreList= myScoreMapper.selectTabe(rb,user);
        return userScoreList;
    }

    @Override
    public int selectCount(User user) {
       int countNum= myScoreMapper.selectCount(user);
        return countNum;
    }
}
