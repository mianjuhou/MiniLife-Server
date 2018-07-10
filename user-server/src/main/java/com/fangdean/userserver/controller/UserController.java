package com.fangdean.userserver.controller;

import com.fangdean.userserver.model.ResponseBean;
import com.fangdean.userserver.model.User;
import com.fangdean.userserver.service.UserService;
import com.netflix.discovery.converters.Auto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("login")
    public ResponseBean<User> login(@RequestParam("email") String email, @RequestParam("password") String password) {
        User user = userService.query(email, password);
        if (user != null) {
            return new ResponseBean(user, 1, "登录成功");
        } else {
            return new ResponseBean(new User(), 0, "登录失败");
        }
    }

}
