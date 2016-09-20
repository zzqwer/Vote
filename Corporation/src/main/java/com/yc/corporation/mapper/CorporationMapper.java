package com.yc.corporation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.corporation.entity.Corporation;

public interface CorporationMapper {

	List<Corporation> findAll();
    int	insertcor(Corporation cor);
    int deletecor(String... cid);
    int updatecor(Corporation cor);
    List<Corporation>findcorbypage(@Param("page")int page,@Param("rows")int rows);
    
	List<Corporation> findConnectionWay();

}
