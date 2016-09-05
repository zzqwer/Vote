package com.yc.corporation.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.corporation.entity.Admins;
import com.yc.corporation.serivce.AdminService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AdminServiceImplTest {

	@Autowired
	private AdminService adminService;
	@Test
	public void testLogin() {
		System.out.println(adminService.login(new Admins("tsh","aa")));
	}

}
