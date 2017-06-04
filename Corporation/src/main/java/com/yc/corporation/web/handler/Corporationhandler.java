package com.yc.corporation.web.handler;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import java.util.logging.Logger;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockMultipartFile;
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
import com.yc.corporation.entity.Corporation;
import com.yc.corporation.serivce.CorporationService;

@Controller
@RequestMapping("/corporation")
@SessionAttributes("corporations")
public class Corporationhandler {
	private String imgPath="";
	@Autowired
	private CorporationService corporationService;
	private Logger log = Logger.getAnonymousLogger();

	@ModelAttribute
	public void modelmap(ModelMap map) {
		map.put("corporations", new ArrayList<Corporation>());
	}


	@RequestMapping(value = "/findQingXie")
	public void findQingXie(HttpServletRequest request, PrintWriter out, ModelMap map) {
		Corporation corporations = corporationService.findQingXie();
		Gson gs = new Gson();
		String cops = gs.toJson(corporations);
		log.info(cops);
		map.put("cor", cops);
		out.println(cops);
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "/findAll", method = RequestMethod.POST)
	public void findAll(HttpServletRequest request, PrintWriter out, ModelMap map) {
		List<Corporation> corporations = corporationService.findAll();
		Gson gs = new Gson();
		String cops = gs.toJson(corporations);
		log.info(cops);
		map.put("cor", cops);
		out.println(cops);
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/findcorbypage", method = RequestMethod.POST)
	public void findcorbypage(String page, String rows, HttpServletRequest request, PrintWriter out, ModelMap map) {
		page = request.getParameter("page");
		rows = request.getParameter("rows");
		System.out.println(page);
		System.out.println(rows);
		List<Corporation> corporations = corporationService.findcorbypage(Integer.valueOf(page), Integer.valueOf(rows));
		Gson gs = new Gson();
		int tt = corporationService.findAll().size();
		map.put("rows", corporations);
		map.put("total", tt);
		String cops = gs.toJson(map);
		out.println(cops);
		out.flush();
		out.close();

	}
	
	@RequestMapping("/onefile")
	public void oneFileUpload(@RequestParam("logo") CommonsMultipartFile file, HttpServletRequest request,
			ModelMap model) {
		System.out.println("ww");
		// 获得原始文件名
		String fileName = file.getOriginalFilename();
		System.out.println("原始文件名:" + fileName);

		// 新文件名
		String newFileName=new Date().getTime()+""+new Random().nextInt(100000)+".jpg";
		//String newFileName = UUID.randomUUID() + fileName;
		
		
		// 获得项目的路径
		ServletContext sc = request.getSession().getServletContext();
		
		String rootDir = "img";
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
		imgPath="img/"+newFileName;
		log.info(imgPath);
	}


	@RequestMapping(value = "/insertcor", method = RequestMethod.POST)
	public void insertcor(Corporation cor, PrintWriter out, HttpServletRequest request) {
		if(imgPath!=null){
			cor.setLogo(imgPath);
			out.println(corporationService.insertcor(cor));
			out.flush();
			out.close();
		}
		
	}

	@RequestMapping(value = "/deletecor", method = RequestMethod.POST)
	public void deletecor(String uid, PrintWriter out) {
		String[] cid = uid.split(",");
		out.println(corporationService.deletecor(cid));
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/updatecor", method = RequestMethod.POST)
	public void updatecor(Corporation cor, PrintWriter out) {
		cor.setLogo(imgPath);
		out.println(corporationService.updatecor(cor));
		out.flush();
		out.close();
	}


}
