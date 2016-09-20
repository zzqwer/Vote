package com.yc.corporation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.corporation.entity.Active;
import com.yc.corporation.entity.Baoming;
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
		return infomationMapper.finddongtai();
	}

	@Override
	public List<Infomation> findglory() {
		return infomationMapper.findglory();
	}

	@Override
	public List<Infomation> finddiscuss() {
		return infomationMapper.finddiscuss();
	}

	@Override
	public List<Infomation> findboutique() {
		return infomationMapper.findboutique();
	}

	@Override
	public Boolean addbaoming(Baoming bm) {
		return infomationMapper.addbaoming(bm);
	}

	@Override
	public int addcount(String aname) {
		return infomationMapper.addcount(aname);
	}

	@Override
	public List<Active> findallactive() {
		return infomationMapper.findallactive();
	}

	@Override
	public List<Baoming> showactiver(String aname) {
		return infomationMapper.showactiver(aname);
	}

	@Override
	public List<Infomation> findRecently(String infotype) {
		return infomationMapper.findRecently(infotype);
	}

	@Override
	public List<Infomation> findAll() {
		return infomationMapper.findAll();
	}

}
