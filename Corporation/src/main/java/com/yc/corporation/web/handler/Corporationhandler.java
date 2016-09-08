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
		System.out.println("Corporationhandler进来了...");
		List<Corporation> corporations= corporationService.findAll();
		System.out.println(corporations);
		Gson gs = new Gson();
		String cops = gs.toJson(corporations);
		out.println(cops);
		out.flush();
		out.close();
	//	return "login";
	}
}
