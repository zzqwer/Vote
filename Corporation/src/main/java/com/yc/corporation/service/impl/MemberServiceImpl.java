package com.yc.corporation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.corporation.entity.Member;
import com.yc.corporation.mapper.MemberMapper;
import com.yc.corporation.serivce.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberMapper memberMapper;
	@Override
	public List<Member> findAll() {
		System.out.println("MemberServiceImpl进来了...");
		return memberMapper.findAll();
	}
	
}
