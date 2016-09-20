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
		System.out.println("DirectorServiceImpl进来了...");
		return directorMapper.findAll();
	}

}
