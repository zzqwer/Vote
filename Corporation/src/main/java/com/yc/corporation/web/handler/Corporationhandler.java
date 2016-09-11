package com.yc.corporation.web.handler;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.yc.corporation.entity.Corporation;
import com.yc.corporation.serivce.CorporationService;

@Controller
@RequestMapping("/corporation")
@SessionAttributes("corporations")
public class Corporationhandler {
	
	@Autowired
	private CorporationService corporationService;
	
	@ModelAttribute
	public void modelmap(ModelMap map){
		map.put("corporations",new ArrayList<Corporation>());
	}
	@RequestMapping(value="/findAll",method=RequestMethod.POST)
	public void findAll(HttpServletRequest request,PrintWriter out,ModelMap map){
		List<Corporation> corporations= corporationService.findAll();
		Gson gs = new Gson();
		String cops = gs.toJson(corporations);
		out.println(cops);
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/findcorbypage",method=RequestMethod.POST)
	public void findcorbypage(String page, String rows,HttpServletRequest request,PrintWriter out,ModelMap map){
		page=request.getParameter("page");
		rows=request.getParameter("rows");
		System.out.println(page);
		System.out.println(rows);
		List<Corporation> corporations= corporationService.findcorbypage(Integer.valueOf(page), Integer.valueOf(rows));
		Gson gs = new Gson();
		int tt=corporationService.findAll().size();
		map.put("rows", corporations);
		map.put("total", tt);
		String cops = gs.toJson(map);
		out.println(cops);
		out.flush();
		out.close();
		
	}

	@RequestMapping(value="/insertcor",method=RequestMethod.POST)
	public void insertcor(Corporation cor,PrintWriter out){
		out.println(corporationService.insertcor(cor));
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/deletecor",method=RequestMethod.POST)
	public void deletecor(String uid,PrintWriter out){
		String[] cid=uid.split(",");
		out.println(corporationService.deletecor(cid));
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/updatecor",method=RequestMethod.POST)
	public void updatecor(Corporation cor,PrintWriter out){
		out.println(corporationService.updatecor(cor));
		out.flush();
		out.close();
	}
	
	
}
