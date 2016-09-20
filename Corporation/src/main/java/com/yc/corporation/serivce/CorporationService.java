package com.yc.corporation.serivce;

import java.util.List;

import com.yc.corporation.entity.Corporation;;

public interface CorporationService {

	List<Corporation> findAll();
	int	insertcor(Corporation cor);
	int deletecor(String... cid);
	int updatecor(Corporation cor);
    List<Corporation>findcorbypage(int page,int rows);
    
	List<Corporation> findConnectionWay();

}
