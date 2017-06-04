package com.yc.corporation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.corporation.entity.Director;
import com.yc.corporation.mapper.DirectorMapper;
import com.yc.corporation.serivce.DirectorService;

@Service("directorService")
public class DirectorServiceImpl implements DirectorService {

	@Autowired
	private DirectorMapper directorMapper;

	@Override
	public List<Director> findAll() {
		return directorMapper.findAll();
	}

	@Override
	public int insertdir(Director dir) {
		// TODO Auto-generated method stub
		return directorMapper.insertdir(dir);
	}

	@Override
	public int deletedir(String... uid) {
		// TODO Auto-generated method stub
		return directorMapper.deletedir(uid);
	}

	@Override
	public int updatedir(Director dir) {
		// TODO Auto-generated method stub
		return directorMapper.updatedir(dir);
	}

}
