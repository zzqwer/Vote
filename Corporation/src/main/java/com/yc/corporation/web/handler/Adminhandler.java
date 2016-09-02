package com.yc.corporation.web.handler;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.yc.corporation.entity.Admins;
import com.yc.corporation.serivce.AdminService;

@Controller
@RequestMapping("/admin")
public class Adminhandler {

	@Autowired
	private AdminService adminService;

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Admins admin,ModelMap map){
		admin=adminService.login(admin);
		if(admin ==null){//错误
			map.put("errorMsg", "alert('用户名或密码错误...')");
		}
		return "redirect:back/main.jsp";
	}	
}
