package com.yc.corporation.serivce;

import java.util.List;

import com.yc.corporation.entity.Hero;
import com.yc.corporation.entity.Users;

public interface UserService {

	Users login(Users user);

	boolean insertUsers(Users user);

	List<Users> findAlls();

	List<Users> findAll();
	Users showHclass(String username);

}
