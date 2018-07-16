package com.me.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.me.Strings;
import com.me.pojo.Furn;
import com.me.pojo.User;
import com.me.service.FurnService;
import com.me.service.UserService;

/**
 * 用户管理
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private FurnService furnService;
	
	
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
		User user = userService.getUserByName(name);
		if(user == null){
			return "user/login";
		}
		if(user.getPassword().equals(password)){
			session.setAttribute("user", user);
			return "redirect:/user/index";
		}
		return "user/login";
	}
	
	
	/**
	 * 注册页面
	 * @return
	 */
	@RequestMapping("/toRegister")
	public String toRegister(){
		return "user/register";
	}
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping("/index")
	public String index(String name,Model model,HttpServletRequest request){
		Page<Furn> page = com.me.ConUtils.setPage(request);
		if(Strings.isEmpty(name)){
			furnService.getFurnlist();
		}else{
			furnService.getFurnlist2(name);
		}
		PageInfo<Furn> pageInfo = page.toPageInfo();
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("name", name);
		return "user/index";
	}
	
	
	/**
	 * 注册保存
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("/register")
	public String register(User user,Model model){
		User student = userService.getUserByName(user.getName());
		if(null != student){
			model.addAttribute("result", "该用户名已被注册");
			return "user/register";
		}
		userService.addUser(user);
		model.addAttribute("result", "注册成功，请前往登录");
		return "user/register";
	}
	
	@RequestMapping("/manage")
	public String manage(HttpSession session,Model model){
		User user = (User) session.getAttribute("user");
		if(null == user){
			model.addAttribute("result", "session过期");
			return "user/login";
		}
		model.addAttribute("user",userService.getUserById(user.getId()));
		return "user/manage";
	}
	
	/**
	 * 修改信息
	 * @param user
	 * @return
	 */
	@RequestMapping("/update")
	public String update(User user){
		userService.updateUser(user);
		return "redirect:/user/index";
	}

}
