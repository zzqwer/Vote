package com.yc.corporation.serivce;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.corporation.entity.Active;
import com.yc.corporation.entity.Baoming;
import com.yc.corporation.entity.Infomation;

public interface InfomatiomSerivce {
	List<Infomation> Activeannounced();
	
	Infomation findactivebyid(int infoid);
	
	List<Infomation>  findwebnotice();
	
	List<Infomation> finddongtai();
	List<Infomation> findglory();
	List<Infomation> finddiscuss();
	List<Infomation> findboutique();
	Boolean addbaoming(Baoming bm);
	int addcount(String aname);
	List<Active>findallactive();
	List<Baoming>showactiver(String aname);

	List<Infomation> findRecently(String infotype);

	List<Infomation> findAll();


}
