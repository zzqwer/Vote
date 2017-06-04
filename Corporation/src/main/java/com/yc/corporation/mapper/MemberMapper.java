package com.yc.corporation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.corporation.entity.Department;
import com.yc.corporation.entity.Member;

public interface MemberMapper {
	List<Member> findAll();
	List<Department> findAllDe();
	
	int insertme(Member me);

	int deleteme(String... uid);

	int updateme(Member me);
	
	int insertdepart(Department dep);
	
	List<Department> showDepart(@Param("cname") String cname);

}
