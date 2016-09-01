package com.yc.corporation.serivce;

import java.util.List;

import com.yc.corporation.entity.Infomation;

public interface InfomatiomSerivce {
	List<Infomation> Activeannounced();
	
	Infomation findactivebyid(int infoid);
	
	List<Infomation>  findwebnotice();
	
	List<Infomation> finddongtai();
	List<Infomation> findglory();
	List<Infomation> finddiscuss();
	List<Infomation> findboutique();

}
