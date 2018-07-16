package com.me.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.me.pojo.Cart;
import com.me.pojo.Furn;
import com.me.pojo.Order;
import com.me.pojo.User;
import com.me.service.CartService;
import com.me.service.FurnService;
import com.me.service.OrderService;
import com.me.service.UserService;

/**
 * 订单
 *
 */
@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private UserService  userService;
	
	@Autowired
	private FurnService furnService;
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/admin")
	public String admin(Model model){
		List<Order> list = orderService.getlist();
		model.addAttribute("list", list);
		return "order/admin";
	}
	
	@RequestMapping("/user")
	public String user(Model model,HttpSession session){
		User user = (User) session.getAttribute("user");
		if(user == null){
			model.addAttribute("result", "session过期，重新登录");
			return "user/login";
		}
		model.addAttribute("list", orderService.getlistByUserId(user.getId()));
		return "order/user";
	}

	
	@RequestMapping("/delete")
	@ResponseBody
	public int delete(int id){
		return orderService.deleteOrder(id);
	}
	

	@RequestMapping("/update")
	public String update(int id,Model model){
		model.addAttribute("info", orderService.getOrderById(id));
		return "order/edit";
	}
	
	@RequestMapping("/update2")
	public String update2(int id,Model model){
		model.addAttribute("info", orderService.getOrderById(id));
		return "order/edit2";
	}
	
	@RequestMapping("/pay")
	@ResponseBody
	public int pay(int id){
		Order order = orderService.getOrderById(id);
		User user = userService.getUserById(order.getUserId());
		Cart cart = cartService.getCartById(order.getCartId());
		Furn furn = furnService.getFurnById(cart.getFurnId());
		if(user.getMoney()<order.getPrice()){
			return 3;
		}
		if(furn.getNumber()<cart.getNumber()){
			return 2;
		}
		user.setMoney(user.getMoney()-order.getPrice());
		userService.updateUser(user);
		furn.setNumber(furn.getNumber()-cart.getNumber());
		furnService.updateInfo(furn);
		order.setState("1");
		orderService.updateOrderByPrimaryKeySelective(order);
		return 1;
		
	}
	
	
	@RequestMapping("/add")
	public String add(int id,HttpSession session,Model model){
		User user = (User) session.getAttribute("user");
		if(user == null){
			model.addAttribute("result", "session过期，重新登录");
			return "user/login";
		}
		Cart cart = cartService.getCartById(id);
		User user2 = userService.getUserById(cart.getUserId());
		Order order = new Order();
		order.setUserId(user2.getId());
		order.setCartId(cart.getId());
		order.setPrice(cart.getTotal());
		order.setTime(new Date());
		order.setState("0");
		order.setRecipient(user2.getName());
		order.setTel(user2.getTel());
		order.setAddress(user2.getAddress());
		orderService.addorder(order);
		cart.setState("1");
		cartService.updateCart(cart);
		return "redirect:/order/user";
	}
	
	
	@RequestMapping("/save")
	public String save(Order order){
		orderService.updateOrderByPrimaryKeySelective(order);
		return "redirect:/order/user";
	}
	
	@RequestMapping("/save2")
	public String save2(Order order){
		orderService.updateOrderByPrimaryKeySelective(order);
		return "redirect:/order/admin";
	}

}
