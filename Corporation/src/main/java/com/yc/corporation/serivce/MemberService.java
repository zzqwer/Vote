package com.yc.corporation.serivce;

import java.util.List;

import com.yc.corporation.entity.Department;
import com.yc.corporation.entity.Member;

public interface MemberService {
	public List<Member> findAll();

	public List<Department> findAllDe();
	
	int insertme(Member me);

	int deleteme(String... cid);

	int updateme(Member me);

	int insertdepart(Department dep);
	
	List<Department> showDepart(String cname);

}
