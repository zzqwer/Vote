package com.yc.corporation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.corporation.entity.Active;
import com.yc.corporation.entity.Baoming;
import com.yc.corporation.entity.Infomation;

public interface InfomationMapper {
	List<Infomation> findannounced();
	Infomation findactivebyid(int infoid);
	List<Infomation> findwebnotice();
	List<Infomation> finddongtai();
	List<Infomation> findglory();
	List<Infomation> finddiscuss();
	List<Infomation> findboutique();
	Boolean addbaoming(Baoming bm);
	int addcount(String aname);
	List<Active>findallactive();
	List<Baoming>showactiver(@Param("aname")String aname);
}
