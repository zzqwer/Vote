package com.yc.corporation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.corporation.entity.Users;
import com.yc.corporation.mapper.UserMapper;
import com.yc.corporation.serivce.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
   @Autowired
   private UserMapper userMapper;

	@Override
	public Users login(Users user) {
		return userMapper.findUserByNP(user);
	}



	@Override
	public List<Users> findAlls() {
		
		return userMapper.findAll();
	}



	@Override
	public boolean insertUsers(Users user, String filename) {
		// TODO Auto-generated method stub
		return userMapper.insertUsers(user, filename);
	}

}
