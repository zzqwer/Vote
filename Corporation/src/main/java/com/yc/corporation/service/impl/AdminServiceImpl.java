package com.yc.corporation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.corporation.entity.Admins;
import com.yc.corporation.mapper.AdminMapper;
import com.yc.corporation.serivce.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	@Override
	public Admins login(Admins admin) {
	//	System.out.println("AdminServiceImpl :"+admin);
		return adminMapper.findAdminByNP(admin);
	}
	@Override
	public List<Admins> findAll() {
		//System.out.println("AdminServiceImpl进来了...");
		return adminMapper.findAll();
	}

}
