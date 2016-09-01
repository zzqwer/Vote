package com.yc.corporation.mapper;

import java.util.List;

import com.yc.corporation.entity.Infomation;

public interface InfomationMapper {
	List<Infomation> findannounced();
	Infomation findactivebyid(int infoid);
	List<Infomation> findwebnotice();
	List<Infomation> finddongtai();
	List<Infomation> findglory();
	List<Infomation> finddiscuss();
	List<Infomation> findboutique();
}
