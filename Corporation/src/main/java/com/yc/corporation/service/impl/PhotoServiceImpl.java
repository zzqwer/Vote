package com.yc.corporation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.corporation.entity.Admins;
import com.yc.corporation.entity.Photo;
import com.yc.corporation.mapper.AdminMapper;
import com.yc.corporation.mapper.PhotoMapper;
import com.yc.corporation.serivce.AdminService;
import com.yc.corporation.serivce.PhotoService;

@Service("photoService")
public class PhotoServiceImpl implements PhotoService {
	
	@Autowired
	private PhotoMapper photoMapper;
	
	@Override
	public boolean insertPhoto(Photo photo) {
		// TODO Auto-generated method stub
		return photoMapper.insertPhoto(photo);
	}


	@Override
	public List<Photo> findAll() {
		// TODO Auto-generated method stub
		return photoMapper.findAll();
	}


	@Override
	public int deletephoto(String... pid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updatephoto(Photo photo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Photo> findphotobypage(int page, int rows) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Photo> findConnectionWay() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public boolean insertPhotos(Photo photo) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public List<Photo> club() {
		// TODO Auto-generated method stub
		return photoMapper.club();
	}




}
