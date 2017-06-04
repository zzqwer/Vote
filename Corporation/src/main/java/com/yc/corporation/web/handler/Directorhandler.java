package com.yc.corporation.web.handler;

import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.yc.corporation.entity.Director;
import com.yc.corporation.serivce.DirectorService;

@Controller
@RequestMapping("/director")
public class Directorhandler {
	private Logger log = Logger.getAnonymousLogger();
	@Autowired
	private DirectorService directorService;

	@RequestMapping(value = "/findAll", method = RequestMethod.POST)
	public void findAll(HttpServletRequest request, PrintWriter out, ModelMap map) {
		List<Director> dir = directorService.findAll();
		Gson gs = new Gson();
		String cops = gs.toJson(dir);
		log.info("理事会成员" + cops);
		out.println(cops);
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/insertdir", method = RequestMethod.POST)
	public void insertdir(Director dir, PrintWriter out) {
		out.println(directorService.insertdir(dir));
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/deletedir", method = RequestMethod.POST)
	public void deletedir(String uid, PrintWriter out) {
		String[] cid = uid.split(",");
		out.println(directorService.deletedir(cid));
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/updatedir", method = RequestMethod.POST)
	public void updatedir(Director dir, PrintWriter out) {
		out.println(directorService.updatedir(dir));
		out.flush();
		out.close();
	}
}
