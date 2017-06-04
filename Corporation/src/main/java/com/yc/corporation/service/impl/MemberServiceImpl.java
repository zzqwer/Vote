package com.yc.corporation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.corporation.entity.Department;
import com.yc.corporation.entity.Member;
import com.yc.corporation.mapper.MemberMapper;
import com.yc.corporation.serivce.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	public MemberMapper memberMapper;

	@Override
	public List<Member> findAll() {
		// TODO Auto-generated method stub
		return memberMapper.findAll();
	}

	@Override
	public int insertme(Member me) {
		// TODO Auto-generated method stub
		return memberMapper.insertme(me);
	}

	@Override
	public int deleteme(String... uid) {
		// TODO Auto-generated method stub
		return memberMapper.deleteme(uid);
	}

	@Override
	public int updateme(Member me) {
		// TODO Auto-generated method stub
		return memberMapper.updateme(me);
	}

	@Override
	public List<Department> findAllDe() {
		// TODO Auto-generated method stub
		return memberMapper.findAllDe();
	}

	@Override
	public int insertdepart(Department dep) {
		// TODO Auto-generated method stub
		return memberMapper.insertdepart(dep);
	}

	@Override
	public List<Department> showDepart(String cname) {
		// TODO Auto-generated method stub
		return memberMapper.showDepart(cname);
	}

}
