package com.yc.corporation.web.handler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import com.yc.corporation.entity.Admins;
import com.yc.corporation.serivce.AdminService;

@Controller
@RequestMapping("/admin")
public class Adminhandler {

	@Autowired
	private AdminService adminService;

	@RequestMapping(value="/login")
	public String login(Admins admin,ModelMap map){
		admin=adminService.login(admin);
		System.out.println(admin);
		if(admin ==null){//错误
			map.put("errorMsg", "<script>alert('您的输入有误,请重新输入!!!');</script>");
			return "forward:/back/login.jsp";
		}
		return "forward:/back/manager/main.jsp";
	}	
}
