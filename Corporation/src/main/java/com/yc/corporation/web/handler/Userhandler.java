package com.yc.corporation.web.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yc.corporation.entity.Users;
import com.yc.corporation.serivce.UserService;

@Controller
@RequestMapping("/user")
public class Userhandler {
	
	@Autowired
	private UserService userService;
	

	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String logins(Users user,ModelMap map){
		return "login";	
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Users user,ModelMap map){
		user=userService.login(user);
		System.out.println("数据库根据输入的用户名和密码查到的信息:"+user);
		System.out.println("map的内容"+map);

		//登录结果页面跳转
		if(user==null){
			map.put("msg","<script>alert('您输入的账号或密码错误,请重新输入!!!');</script>");
			return "login";
		}
	//	map.put("userName",user.getUsername());
		return "login";
	}	
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String showRegister(Users user){
		return "register";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String Register(Users user,HttpServletRequest request){
	    
		System.out.println(user);
		userService.register(user);
		
		return "login";
	}
}
