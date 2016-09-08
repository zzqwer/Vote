package com.yc.corporation.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.corporation.serivce.CorporationService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CorporationServiceImplTest {
	
	@Autowired
	private CorporationService corService; 
	
	@Test
	public void testFindAll() {
		System.out.println(corService.findAll());
	}

}
