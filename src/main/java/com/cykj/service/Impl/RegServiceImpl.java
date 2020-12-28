package com.cykj.service.Impl;

import com.cykj.bean.User;
import com.cykj.mapper.UserMapper;
import com.cykj.service.RegService;
import org.springframework.beans.factory.annotation.Autowired;

public class RegServiceImpl implements RegService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public User regUser(User user) {
        User user1 = userMapper.addUser(user);
        return user1;
    }
}
