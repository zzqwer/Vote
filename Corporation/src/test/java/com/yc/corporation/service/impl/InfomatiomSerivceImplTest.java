package com.yc.corporation.service.impl;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.corporation.serivce.InfomatiomSerivce;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class InfomatiomSerivceImplTest {
	@Autowired
	 private InfomatiomSerivce infomationSerivce;
	@Test
	public void testActiveannounced() {
		System.out.println(infomationSerivce.Activeannounced());
	}
	@Test
	public void testActiveannouncedbyid() {
		System.out.println(infomationSerivce.findactivebyid(11));
	}
	
	@Test
	public void testfindwebnotice() {
		System.out.println(infomationSerivce.findboutique());
	}
}
