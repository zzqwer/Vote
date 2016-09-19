package com.yc.corporation.web.handler;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.yc.corporation.entity.Users;
import com.yc.corporation.serivce.UserService;

import sun.misc.BASE64Decoder;


@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class Userhandler {

	@Autowired
	private UserService userService;
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private ServletContext servletContext;

	private String filename;


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
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String register(HttpServletRequest request,PrintWriter out,Users user){
		if(userService.insertUsers(user, filename)){
			return "login";
		}
		return "register";
	}

	//上传头像
	@ResponseBody
	@RequestMapping(value="/loadphoto",method=RequestMethod.POST)
	public void setPhoto(@RequestParam("photodata") String file,PrintWriter out,Users user){
		System.out.println(file);
		@SuppressWarnings("restriction")
		BASE64Decoder decoder = new BASE64Decoder();
		byte[] bytes;
		try {
			bytes = decoder.decodeBuffer(file);
			for (int i = 0; i < bytes.length; ++i) {
				if (bytes[i] < 0) {
					bytes[i] += 256;
				}
			}
			 filename=new Date().getTime()+""+new Random().nextInt(100000)+".jpg";

			FileOutputStream photopath = new FileOutputStream("C:\\Users\\CEO\\Desktop\\apache-tomcat-7.0.30\\webapps\\photopics\\"+filename);
			System.out.println("path:"+photopath);
			photopath.write(bytes); 
			photopath.flush();
			photopath.close();
			
			out.println("头像上传成功");
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
			out.println("头像上传失败");
			out.flush();
			out.close();
		}
		
	}

}
