package com.yc.corporation.mapper;

import java.util.List;

import com.yc.corporation.entity.Users;

public interface UserMapper {
	Users findUserByNP(Users user);

	boolean insertUsers(Users user);

	List<Users> findAll();

	List<Users> listUsers(List<String> names);

	Users showHcalss(String username);

}
