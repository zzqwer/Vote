package com.yc.corporation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.corporation.entity.Admins;
import com.yc.corporation.entity.Director;
import com.yc.corporation.mapper.AdminMapper;
import com.yc.corporation.serivce.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;

	@Override
	public Admins login(Admins admins) {
		return adminMapper.login(admins);
	}

	@Override
	public List<Admins> findAll() {
		return adminMapper.findAll();
	}

	@Override
	public int insertadmin(Admins cor) {
		// TODO Auto-generated method stub
		return adminMapper.insertadmin(cor);
	}

	@Override
	public int deleteadmin(String... uid) {
		// TODO Auto-generated method stub
		return adminMapper.deleteadmin(uid);
	}

	@Override
	public int updateadmin(Admins cor) {
		// TODO Auto-generated method stub
		return adminMapper.updateadmin(cor);
	}

	@Override
	public List<Director> findAllDe() {
		// TODO Auto-generated method stub
		return adminMapper.findAllDe();
	}

}
