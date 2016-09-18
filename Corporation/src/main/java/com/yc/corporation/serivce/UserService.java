package com.yc.corporation.serivce;

import java.util.List;

import com.yc.corporation.entity.Users;

public interface UserService {

    Users login(Users user);
    
    boolean  insertUsers(Users user, String filename);
    
    List<Users> findAlls();
}
