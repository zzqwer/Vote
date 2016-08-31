package com.yc.corporation.web.handler;

import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.yc.corporation.entity.Infomation;
import com.yc.corporation.serivce.InfomatiomSerivce;

@Controller
@RequestMapping("/infomation")

public class Infomationhandler {
	@Autowired
	private InfomatiomSerivce is;
	
	@RequestMapping("/activeannounced")
	public void getListAll(PrintWriter out){
		List<Infomation> activeannounced=is.Activeannounced();
		System.out.println(activeannounced);
		Gson gson=new Gson();
		out.println(gson.toJson(activeannounced));
		out.flush();
		out.close();
	}
	@RequestMapping(value="/viewactive")
	 public String getactivecontent(int infoid,ModelMap map){
		Infomation ifm=is.findactivebyid(infoid);
		System.out.println("内容为"+ifm);
		map.put("ifm", ifm);
		return ifm.getClub();
	}
	


}
