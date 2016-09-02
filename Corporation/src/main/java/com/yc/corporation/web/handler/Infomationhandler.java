package com.yc.corporation.web.handler;

import java.io.PrintWriter;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value="/email",method=RequestMethod.POST)
	public String GetEmail(HttpServletRequest request){
	String to=	request.getParameter("shetuan");
	System.out.println("邮件内容"+request.getParameter("email"));	
	System.out.println("发送至"+to);
	try {
		MimeMessage mm=mailSender.createMimeMessage();
		MimeMessageHelper mmh=new MimeMessageHelper(mm,true);
		mmh.setTo(to);
		mmh.setFrom("zz5942011@163.com");
		mmh.setSubject("测试测试");//设置主题
		mmh.setText(request.getParameter("email"));//设置内容
		mailSender.send(mm);//发送邮件
	} catch (Exception e) {
		e.printStackTrace();
	}
	return "login";
	}
	
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
	@RequestMapping(value="/webnotice")
	public void GetWebNotice(PrintWriter out){
		List<Infomation> wn=is.findwebnotice();
		Gson gson=new Gson();
		out.println(gson.toJson(wn));
		out.flush();
		out.close();
	}
	
	 

	@RequestMapping(value="/dongtai")
	public void Getdongtai(PrintWriter out){
		List<Infomation> wn=is.finddongtai();
		Gson gson=new Gson();
		out.println(gson.toJson(wn));
		out.flush();
		out.close();
	}
	@RequestMapping(value="/glory")
	public void GetGlory(PrintWriter out){
		List<Infomation> wn=is.findglory();
		Gson gson=new Gson();
		out.println(gson.toJson(wn));
		out.flush();
		out.close();
	}


	@RequestMapping(value="/discuss")
	public void GetDiscuss(PrintWriter out){
		List<Infomation> wn=is.finddiscuss();
		Gson gson=new Gson();
		out.println(gson.toJson(wn));
		out.flush();
		out.close();
	}
	@RequestMapping(value="/boutique")
	public void GetBoutique(PrintWriter out){
		List<Infomation> wn=is.findboutique();
		Gson gson=new Gson();
		out.println(gson.toJson(wn));
		out.flush();
		out.close();
	}
}
