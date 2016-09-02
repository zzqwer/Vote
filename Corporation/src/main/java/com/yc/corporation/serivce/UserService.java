package com.yc.corporation.serivce;

import java.util.List;

import com.yc.corporation.entity.Users;

public interface UserService {

    Users login(String username,String password);
    
    boolean register(Users user);
    
    List<Users> findAlls();
}
