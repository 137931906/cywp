package com.cykj.service;

import com.cykj.bean.User;
import com.cykj.bean.UserScore;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

public interface MyScoreService {
    public List<UserScore> selectTabe(RowBounds rb, User user);
    public int selectCount(User user);
}
