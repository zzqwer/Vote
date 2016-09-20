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

import com.google.gson.Gson;
import com.yc.corporation.entity.Admins;
import com.yc.corporation.entity.Director;
import com.yc.corporation.serivce.AdminService;
import com.yc.corporation.serivce.DirectorService;

@Controller
@RequestMapping("/director")
public class Directorhandler {
	@ModelAttribute
	public void modelmap(ModelMap map){
		map.put("directors",new ArrayList<Director>());
	}
	
	@Autowired
	private DirectorService directorService;

	@RequestMapping(value="/findAll",method=RequestMethod.POST)
	public void findAll(HttpServletRequest request,PrintWriter out,ModelMap map){
		List<Director> directors= directorService.findAll();
		Gson gs = new Gson();
		String cops = gs.toJson(directors);
		//System.out.println(cops);
		out.println(cops);
		out.flush();
		out.close();
	}
}
