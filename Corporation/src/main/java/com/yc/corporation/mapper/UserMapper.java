package com.yc.corporation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.corporation.entity.Users;

public interface UserMapper {
     Users findUserByNP(Users user);
     boolean  insertUsers(Users user);
     List<Users> findAll();
    
}
