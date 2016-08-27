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
		System.out.println("user login..."+user);
		user=userService.login(user);
		if(user==null){
			System.out.println("1234567");
			return "NewFile";
		}
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
