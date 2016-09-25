package com.yc.corporation.web.handler;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

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
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String register(HttpServletRequest request,PrintWriter out,Users user){
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(userService.insertUsers(user)){
			return "login";
		}
		return "register";
	}
     
	@ResponseBody
	@RequestMapping(value="uploadpics")
	public void uploadpics(@RequestParam(value="pics",required=false)MultipartFile[] files,HttpServletRequest request,Users user,PrintWriter out) throws IllegalStateException, IOException	{
		System.out.println("======="+user);
		request.setCharacterEncoding("utf-8");
		System.out.println("sasasasasas"+files[0]);
		String uploadPath = "";
		String path=request.getServletContext().getRealPath("/")+"../upload";
		System.out.println("path"+path);
		for(int i=0;i<files.length;i++){
			System.out.println("asasa");
			String fileName=files[i].getOriginalFilename();
			File targetFile=new File(path,fileName);
			if(!targetFile.exists()){
				targetFile.mkdirs();
			}try {
				files[i].transferTo(targetFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
			uploadPath+="../../upload/"+fileName+",";
			user.setPic(uploadPath.substring(0,uploadPath.length()-1));
		}
		System.out.println(uploadPath+"sasasasa");
		System.out.println("++++++"+user);
		userService.insertUsers(user);
		out.print(1);
		out.flush();
		out.close();
	}
}
