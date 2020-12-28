package com.cykj.mapper;

import com.cykj.bean.User;
import com.cykj.bean.UserScore;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface MyScoreMapper {
    public List<UserScore> selectTabe(RowBounds rb, User user);
    public int selectCount(User user);
}
