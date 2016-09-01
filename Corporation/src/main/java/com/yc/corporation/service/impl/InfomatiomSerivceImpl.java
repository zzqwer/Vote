package com.yc.corporation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.corporation.entity.Infomation;
import com.yc.corporation.mapper.InfomationMapper;
import com.yc.corporation.serivce.InfomatiomSerivce;
@Service("infomationSerivce")
public class InfomatiomSerivceImpl implements InfomatiomSerivce{
	@Autowired
	private InfomationMapper infomationMapper;

	@Override
	public List<Infomation> Activeannounced() {

		return infomationMapper.findannounced();
	}

	@Override
	public Infomation findactivebyid(int infoid) {
		return infomationMapper.findactivebyid(infoid);
	}

	@Override
	public List<Infomation>  findwebnotice() {

		return infomationMapper.findwebnotice();
	}

	@Override
	public List<Infomation> finddongtai() {
		// TODO Auto-generated method stub
		return infomationMapper.finddongtai();
	}

	@Override
	public List<Infomation> findglory() {
		// TODO Auto-generated method stub
		return infomationMapper.findglory();
	}

	@Override
	public List<Infomation> finddiscuss() {
		// TODO Auto-generated method stub
		return infomationMapper.finddiscuss();
	}

	@Override
	public List<Infomation> findboutique() {
		// TODO Auto-generated method stub
		return infomationMapper.findboutique();
	}

}
