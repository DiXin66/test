package com.me.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.me.pojo.Admin;
import com.me.pojo.User;
import com.me.service.AdminService;
import com.me.service.UserService;



/**
 * 管理员模块管理
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService userService;
	
	/**
	 * 登录
	 * @param name
	 * @param password
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/login")
	public String login(String name,String password,Model model,HttpSession session){
		model.addAttribute("result", "用户名或密码错误");
		Admin user = adminService.getUserByName(name);
		if(user == null){
			return "admin/login";
		}
		if(user.getPassword().equals(password)){
			session.setAttribute("user", user);
			return "redirect:/admin/home";
		}
		return "admin/login";
	}
	
	
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping("/home")
	public String index(Model model){
	    List<User> list = userService.getUserList();
	    model.addAttribute("list", list);
		return "admin/index";
	}
	
	
	
	@RequestMapping("/manage")
	public String manage(HttpSession session,Model model){
		Admin user = (Admin) session.getAttribute("user");
		model.addAttribute("user",adminService.getUserByName(user.getName()));
		return "admin/manage";
	}
	
	/**
	 * 修改信息
	 * @param user
	 * @return
	 */
	@RequestMapping("/update")
	public String update(Admin user){
		adminService.updateAdmin(user);
		return "redirect:/admin/home";
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public String delete(int id){
		userService.deleteUser(id);
		return "";
	}
	
	@RequestMapping("/upUser")
	public String upUser(int id,Model model){
		User user = userService.getUserById(id);
		model.addAttribute("user",user);
		return "admin/user";
	}
	
	/**
	 * 修改信息
	 * @param user
	 * @return
	 */
	@RequestMapping("/saveUser")
	public String update(User user){
		userService.updateUser(user);
		return "redirect:/admin/home";
	}

}
