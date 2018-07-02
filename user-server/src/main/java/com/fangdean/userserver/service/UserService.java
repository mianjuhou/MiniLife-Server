package com.fangdean.userserver.service;

import com.fangdean.userserver.mapper.UserMapper;
import com.fangdean.userserver.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public User query(String email, String password) {
        return userMapper.query(email,password);
    }
}
