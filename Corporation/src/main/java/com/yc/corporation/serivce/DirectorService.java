package com.yc.corporation.serivce;

import java.util.List;

import com.yc.corporation.entity.Director;

public interface DirectorService {
	public List<Director> findAll();

	int insertdir(Director dir);

	int deletedir(String... uid);

	int updatedir(Director dir);
}
