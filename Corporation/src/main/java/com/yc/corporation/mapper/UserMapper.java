package com.yc.corporation.mapper;

import java.util.List;

import com.yc.corporation.entity.Users;

public interface UserMapper {
    Users findUserByNP(String username,String password);
     int  insertUsers(Users user);
     List<Users> findAll();
    
}
