package com.yc.corporation.mapper;

import java.util.List;

import com.yc.corporation.entity.Admins;
import com.yc.corporation.entity.Director;

public interface AdminMapper {
	public Admins login(Admins admins);

	List<Admins> findAll();

	public List<Director> findAllDe();

	int insertadmin(Admins cor);

	int deleteadmin(String... uid);

	int updateadmin(Admins cor);
}
