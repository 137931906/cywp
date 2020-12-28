package com.cykj.mapper;

import com.cykj.bean.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

    public User selectUser(User user);
//    public User selectUserAccount(User user);
    public User addUser(User user);
}
