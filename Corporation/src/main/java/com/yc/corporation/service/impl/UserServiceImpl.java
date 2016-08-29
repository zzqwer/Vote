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
	public boolean register(Users user) {
	
		try {
			return userMapper.insertUsers(user)>0;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public List<Users> findAlls() {
		
		return userMapper.findAll();
	}
	

}
