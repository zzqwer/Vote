package com.yc.corporation.mapper;

import java.util.List;

import com.yc.corporation.entity.Infomation;

public interface InfomationMapper {
	List<Infomation> findannounced();
	Infomation findactivebyid(int infoid);

}
