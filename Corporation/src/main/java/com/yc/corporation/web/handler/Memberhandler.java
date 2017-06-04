package com.yc.corporation.web.handler;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.yc.corporation.entity.Baoming;
import com.yc.corporation.entity.Department;
import com.yc.corporation.entity.Member;
import com.yc.corporation.serivce.MemberService;

@Controller
@RequestMapping("/member")
public class Memberhandler {

	@Autowired
	private MemberService memberService;
	private Logger log = Logger.getAnonymousLogger();

	@RequestMapping(value = "/findAll", method = RequestMethod.POST)
	public void findAll(HttpServletRequest request, PrintWriter out, ModelMap map) {
		List<Member> me = memberService.findAll();
		log.info(me.toString());
		Gson gs = new Gson();
		String cops = gs.toJson(me);
		log.info("会员" + cops);
		out.println(cops);
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "/findAllDe", method = RequestMethod.POST)
	public void findAllDe(HttpServletRequest request, PrintWriter out, ModelMap map) {
		List<Department> dep = memberService.findAllDe();
		log.info(dep.toString());
		Gson gs = new Gson();
		String cops = gs.toJson(dep);
		log.info("会员" + cops);
		out.println(cops);
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/insertme", method = RequestMethod.POST)
	public void insertme(Member me, PrintWriter out) {
		log.info(me.toString());
		out.println(memberService.insertme(me));
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "/insertdepart", method = RequestMethod.POST)
	public void insertdepart(Department dep, PrintWriter out) {
		out.println(memberService.insertdepart(dep));
		out.flush();
		out.close();
	}
	

	@RequestMapping(value = "/deleteme", method = RequestMethod.POST)
	public void deleteme(String uid, PrintWriter out) {
		String[] cid = uid.split(",");
		out.println(memberService.deleteme(cid));
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/updateme", method = RequestMethod.POST)
	public void updateme(Member me, PrintWriter out) {
		out.println(memberService.updateme(me));
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "/showDepart")
	public void showDepart(PrintWriter out, String cname) {
		List<Department> ac = memberService.showDepart(cname);
		Gson gson = new Gson();
		out.println(gson.toJson(ac));
		System.out.println(gson.toJson(ac));
		out.flush();
		out.close();

	}

}
