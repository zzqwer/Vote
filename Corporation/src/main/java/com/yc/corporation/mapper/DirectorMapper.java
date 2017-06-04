package com.yc.corporation.mapper;

import java.util.List;

import com.yc.corporation.entity.Director;

public interface DirectorMapper {
	List<Director> findAll();

	int insertdir(Director dir);

	int deletedir(String... uid);

	int updatedir(Director dir);
}
