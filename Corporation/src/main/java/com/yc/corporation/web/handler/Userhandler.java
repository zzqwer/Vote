package com.yc.corporation.web.handler;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.logging.Logger;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.google.gson.Gson;
import com.yc.corporation.entity.Director;
import com.yc.corporation.entity.Hero;
import com.yc.corporation.entity.Users;
import com.yc.corporation.serivce.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class Userhandler {
	private Logger log = Logger.getAnonymousLogger();
	private String imgPath="";
	@Autowired
	private UserService userService;
	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping(value = "/email", method = RequestMethod.POST)
	public void GetEmail(HttpServletRequest request, String emailcontent, String xiehui, PrintWriter out) {

		try {
			MimeMessage mm = mailSender.createMimeMessage();
			MimeMessageHelper mmh = new MimeMessageHelper(mm, true);
			mmh.setTo(xiehui);// 发送者
			mmh.setFrom("zz5942011@163.com");
			mmh.setSubject("测试测试");// 设置主题
			mmh.setText(emailcontent);// 设置内容
			mailSender.send(mm);// 发送邮件
			out.print(1);
			out.flush();
			out.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@ModelAttribute
	public void getUser(ModelMap map) {
		map.put("user", new Users());
	}

	@RequestMapping(value = "/login")
	public void login(String username, String password, HttpServletRequest request, PrintWriter out, ModelMap map) {

		Users user = new Users(username, password);
		user = userService.login(user);
		map.put("user", user);
		Gson gs = new Gson();
		out.println(gs.toJson(user));
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public void exit(HttpServletRequest request, PrintWriter out) {
		request.getSession().removeAttribute("user");
		Gson gson = new Gson();
		out.println(gson.toJson(request.getSession().getAttribute("user")));
		out.flush();
		out.close();
	}


	@RequestMapping("/imgUpload")
	public void oneFileUpload(@RequestParam("logo") CommonsMultipartFile file, HttpServletRequest request,
			ModelMap model) {
		// 获得原始文件名
		String fileName = file.getOriginalFilename();
		log.info("原始文件名:" + fileName);

		// 新文件名
		String newFileName=new Date().getTime()+""+new Random().nextInt(100000)+".jpg";
		//String newFileName = UUID.randomUUID() + fileName;
		
		
		// 获得项目的路径
		ServletContext sc = request.getSession().getServletContext();
		
		String rootDir = "userPic";
		String uploadPicPath = sc.getRealPath(rootDir).
				substring(0, sc.getRealPath(rootDir).lastIndexOf("Corporation")-1)+"\\"+rootDir; 
		
		// 上传位置
		//String path = sc.getRealPath("\\img") + "\\"; // 设定文件保存的目录
		
		File f = new File(uploadPicPath);
		if (!f.exists())
			f.mkdirs();
		if (!file.isEmpty()) {
			try {
				FileOutputStream fos = new FileOutputStream(uploadPicPath +"\\"+ newFileName);
				InputStream in = file.getInputStream();
				int b = 0;
				while ((b = in.read()) != -1) {
					fos.write(b);
				}
				fos.close();
				in.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}	
		imgPath="userPic/"+newFileName;
		log.info(imgPath);
	}


	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public void register(HttpServletRequest request, PrintWriter out, Users user) {
		log.info(user.toString());
		user.setPic(imgPath);
		out.println(userService.insertUsers(user));
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "/findAll")
	public void findAll(HttpServletRequest request, PrintWriter out, ModelMap map, Users user) {
		List<Users> dir = userService.findAll();
		Gson gs = new Gson();
		String cops = gs.toJson(dir);
		log.info("用户列表" + cops);
		map.put("hero", cops);
		out.println(cops);
		out.flush();
		out.close();
	}
	@RequestMapping(value = "/findAllUser", method = RequestMethod.POST)
	public void findAllUser(HttpServletRequest request, PrintWriter out, ModelMap map, Users user) {
		List<Users> dir = userService.findAll();
		Gson gs = new Gson();
		String cops = gs.toJson(dir);
		log.info("用户列表" + cops);
		map.put("hero", cops);
		out.println(cops);
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/showhclass")
	public void showHclass( PrintWriter out, ModelMap map, String username) {
		Users user = userService.showHclass(username);
		Gson gs = new Gson();
		String cops = gs.toJson(user);
		out.println(cops);
		out.flush();
		out.close();

	}
}
