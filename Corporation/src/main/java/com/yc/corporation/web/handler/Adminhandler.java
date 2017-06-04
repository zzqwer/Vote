package com.yc.corporation.web.handler;

import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.yc.corporation.entity.Admins;
import com.yc.corporation.entity.Director;
import com.yc.corporation.serivce.AdminService;

@Controller
@RequestMapping("/admin")
public class Adminhandler {
	private Logger log = Logger.getAnonymousLogger();
	@Autowired
	private AdminService adminService;

	// @RequestMapping(value="/login")
	// public void login(String aname,String apwd,HttpServletRequest
	// request,PrintWriter out,ModelMap map){
	// Admins admins = new Admins(aname,apwd);
	// admins=adminService.login(admins);
	// log.info(apwd+aname);
	// map.put("admins", admins);
	// Gson gs=new Gson();
	// out.println(gs.toJson(admins));
	// out.flush();
	// out.close();
	// }
	@RequestMapping("/login")
	@ResponseBody
	/*
	 * lc
	 */
	public int login(@ModelAttribute(value = "admin") Admins admin, ModelMap map) {
		Admins a = adminService.login(admin);
		log.info(admin.toString());
		map.put("admin", a);
		return 1;
	}

	@RequestMapping(value = "/findAll", method = RequestMethod.POST)
	public void findAll(HttpServletRequest request, PrintWriter out, ModelMap map) {
		List<Admins> admins = adminService.findAll();
		Gson gs = new Gson();
		String cops = gs.toJson(admins);
		log.info("管理员" + cops);
		out.println(cops);
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/findAllDe", method = RequestMethod.POST)
	public void findAllDe(HttpServletRequest request, PrintWriter out, ModelMap map) {
		List<Director> admins = adminService.findAllDe();
		Gson gs = new Gson();
		String cops = gs.toJson(admins);
		out.println(cops);
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/insertadmin", method = RequestMethod.POST)
	public void insertadmin(Admins ads, PrintWriter out) {
		out.println(adminService.insertadmin(ads));
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/deleteadmin", method = RequestMethod.POST)
	public void deleteadmin(String uid, PrintWriter out) {
		String[] cid = uid.split(",");
		out.println(adminService.deleteadmin(cid));
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/updateadmin", method = RequestMethod.POST)
	public void updateadmin(Admins ads, PrintWriter out) {
		out.println(adminService.updateadmin(ads));
		out.flush();
		out.close();
	}
}
