package com.yc.corporation.mapper;

import com.yc.corporation.entity.Users;

public interface UserMapper {
    Users findUserByNP(Users user);
     int  insertUsers(Users user);
    
}
