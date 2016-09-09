package com.yc.corporation.serivce;

import java.util.List;

import com.yc.corporation.entity.Admins;

public interface AdminService {

	public Admins login(Admins admin);

	public List<Admins> findAll();

}
