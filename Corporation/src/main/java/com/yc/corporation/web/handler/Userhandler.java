package com.yc.corporation.web.handler;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.yc.corporation.entity.Users;
import com.yc.corporation.serivce.UserService;

@Controller
@RequestMapping("/user")
public class Userhandler {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public void login(Users user, PrintWriter out,HttpServletRequest request){
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		user=userService.login(username, password);
		System.out.println(user);
        Gson gson=new Gson();
        out.println(gson.toJson(user));
        out.flush();
        out.close();
       
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
