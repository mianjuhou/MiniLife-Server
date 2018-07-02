package com.fangdean.userserver.mapper;

import com.fangdean.userserver.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {

    User query(@Param("email") String email, @Param("password") String password);
}
