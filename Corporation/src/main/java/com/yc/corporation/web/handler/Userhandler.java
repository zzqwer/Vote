package com.yc.corporation.web.handler;

import java.io.PrintWriter;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.yc.corporation.entity.Users;
import com.yc.corporation.serivce.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class Userhandler {
	
	@Autowired
	private UserService userService;
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value="/email",method=RequestMethod.POST)
	public void GetEmail(HttpServletRequest request,String emailcontent,String xiehui,PrintWriter out){
	System.out.println("邮件内容"+emailcontent);	
	System.out.println("发送至"+xiehui);
	try {
		MimeMessage mm=mailSender.createMimeMessage();
		MimeMessageHelper mmh=new MimeMessageHelper(mm,true);
		mmh.setTo(xiehui);//发送者
		mmh.setFrom("zz5942011@163.com");
		mmh.setSubject("测试测试");//设置主题
		mmh.setText(emailcontent);//设置内容
		mailSender.send(mm);//发送邮件
		out.print(1);
		out.flush();
		out.close();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	}
	
	@ModelAttribute
	public void getUser(ModelMap map){
		map.put("user",new Users());
	}
	
	@RequestMapping(value="/login")
	public void login(String username,String password,HttpServletRequest request,PrintWriter out,ModelMap map){
		
		Users user = new Users(username,password);
		user=userService.login(user);	
		map.put("user", user);
		Gson gs=new Gson();
		out.println(gs.toJson(user));	
		out.flush();
		out.close();
	}	
	
	@RequestMapping(value="/exit", method = RequestMethod.GET)
	public void exit(HttpServletRequest request,PrintWriter out){
		request.getSession().removeAttribute("user");
		Gson gson=new Gson();
		out.println(gson.toJson(request.getSession().getAttribute("user")));
		out.flush();
		out.close();
	}	

	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String Register(Users user,HttpServletRequest request){
		userService.register(user);
		return "login";
	}
}
