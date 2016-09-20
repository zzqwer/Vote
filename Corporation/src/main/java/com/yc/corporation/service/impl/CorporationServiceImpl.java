package com.yc.corporation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.corporation.entity.Corporation;
import com.yc.corporation.mapper.CorporationMapper;
import com.yc.corporation.serivce.CorporationService;

@Service("corporationService")
public class CorporationServiceImpl implements CorporationService {
	
	@Autowired
	public CorporationMapper corporationMapper;
	
	@Override
	public List<Corporation> findAll() {
		return corporationMapper.findAll();
	}

	@Override
	public int insertcor(Corporation cor) {
	
		return corporationMapper.insertcor(cor);
	}

	@Override
	public int deletecor(String... cid) {
		
		return corporationMapper.deletecor(cid);
	}

	@Override
	public int updatecor(Corporation cor) {
		
		return corporationMapper.updatecor(cor);
	}

	@Override
	public List<Corporation> findcorbypage(int page, int rows) {
		return corporationMapper.findcorbypage(page, rows);
	}

	@Override
	public List<Corporation> findConnectionWay() {
		return corporationMapper.findConnectionWay();
	}

}
