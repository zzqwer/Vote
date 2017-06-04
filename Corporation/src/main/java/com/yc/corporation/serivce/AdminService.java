package com.yc.corporation.serivce;

import java.util.List;

import com.yc.corporation.entity.Admins;
import com.yc.corporation.entity.Director;

public interface AdminService {

	Admins login(Admins admins);

	public List<Admins> findAll();

	public List<Director> findAllDe();

	int insertadmin(Admins cor);

	int deleteadmin(String... uid);

	int updateadmin(Admins cor);
}
