package com.yc.corporation.web.handler;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

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
import com.yc.corporation.entity.Corporation;
import com.yc.corporation.entity.Infomation;
import com.yc.corporation.entity.Photo;
import com.yc.corporation.serivce.PhotoService;



@Controller
@RequestMapping("/photo")
@SessionAttributes("photo")
public class Photohandler {

	@Autowired
	private PhotoService photoService;

	@ModelAttribute
	public void modelmap(ModelMap map){
		map.put("photos",new ArrayList<Photo>());
	}
	@RequestMapping(value="/findAll",method=RequestMethod.POST)
	public void findAll(HttpServletRequest request,PrintWriter out,ModelMap map){
		List<Photo> photos= photoService.findAll();
		Gson gs = new Gson();
		String cops = gs.toJson(photos);
		out.println(cops);
		out.flush();
		out.close();
	}
	@RequestMapping(value="/club")
	public void Getdongtai(PrintWriter out){
		List<Photo> wn=photoService.club();
		Gson gson=new Gson();
		out.println(gson.toJson(wn));
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/insertPhoto")
	public String insertphoto(){
		return "news";
	}
	
	@RequestMapping(value="/findphotobypage",method=RequestMethod.POST)
	public void findcorbypage(String page, String rows,HttpServletRequest request,PrintWriter out,ModelMap map){
		page=request.getParameter("page");
		rows=request.getParameter("rows");
		System.out.println(page);
		System.out.println(rows);
		List<Photo> photos= photoService.findphotobypage(Integer.valueOf(page), Integer.valueOf(rows));
		Gson gs = new Gson();
		int tt=photoService.findAll().size();
		map.put("rows", photos);
		map.put("total", tt);
		String cops = gs.toJson(map);
		out.println(cops);
		out.flush();
		out.close();
		
	}

	@RequestMapping(value="/exit", method = RequestMethod.GET)
	public void exit(HttpServletRequest request,PrintWriter out){
		request.getSession().removeAttribute("photos");
		Gson gson=new Gson();
		out.println(gson.toJson(request.getSession().getAttribute("photos")));
		out.flush();
		out.close();
	}	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String register(HttpServletRequest request,PrintWriter out,Photo photo){
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(photoService.insertPhotos(photo)){
			return "login";
		}
		return "photo";
	}
     
	@ResponseBody
	@RequestMapping(value="uploadpics")
	public void uploadpics(@RequestParam(value="pics",required=false)MultipartFile[] files,HttpServletRequest request,Photo photo,PrintWriter out) throws IllegalStateException, IOException	{
		System.out.println("======="+photo);
		request.setCharacterEncoding("utf-8");
		System.out.println("sasasasasas"+files[0]);
		String uploadPath = "";
		String path=request.getServletContext().getRealPath("/")+"../photos";
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
			uploadPath+="../../photos/"+fileName+",";
			photo.setPname(uploadPath.substring(0,uploadPath.length()-1));
		}
		System.out.println(uploadPath+"sasasasa");
		System.out.println("++++++"+photo);
		photoService.insertPhotos(photo);
		out.print(1);
		out.flush();
		out.close();
	}
}
