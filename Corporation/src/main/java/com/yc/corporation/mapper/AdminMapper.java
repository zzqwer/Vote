package com.yc.corporation.mapper;

import java.util.List;

import com.yc.corporation.entity.Admins;

public interface AdminMapper {
	Admins findAdminByNP(Admins admin);

	List<Admins> findAll();
}
