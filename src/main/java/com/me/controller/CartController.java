package com.me.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.me.pojo.Cart;
import com.me.pojo.Furn;
import com.me.pojo.User;
import com.me.service.CartService;
import com.me.service.FurnService;

/**
 * 购物车
 *
 */
@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private FurnService furnService;
	
	@RequestMapping("/home")
	public String index(HttpSession session,Model model){
		User user = (User) session.getAttribute("user");
		if(user == null){
			model.addAttribute("result", "session过期，重新登录");
			return "user/login";
		}
		model.addAttribute("list", cartService.getCartByUserId(user.getId()));
		return "cart/index";
	}
	
	@RequestMapping("/add")
	public String add(int id ,HttpSession session,Model model){
		User user = (User) session.getAttribute("user");
		if(user == null){
			model.addAttribute("result", "session过期，重新登录");
			return "user/login";
		}
		Furn furn = furnService.getFurnById(id);
		Cart cart = new Cart();
		cart.setFurnId(furn.getId());
		cart.setFurnName(furn.getName());
		cart.setNumber(1);
		cart.setPrice(furn.getPrice());
		cart.setTotal(furn.getPrice());
		cart.setUserId(user.getId());
		cart.setState("0");
		cartService.addCart(cart);
		return "redirect:/cart/home";
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public int delete(int id){
		return cartService.deleteCartById(id);
	}
	
	@RequestMapping("/more")
	@ResponseBody
	public int more(int id,int num){
		Cart cart = cartService.getCartById(id);
		if((cart.getNumber()+num)<1){
			return 0;
		}
		cart.setNumber(cart.getNumber()+num);
		cart.setTotal(cart.getPrice()*cart.getNumber());
		return cartService.updateCart(cart);
	}
	
	@RequestMapping("/deleteAll")
	@ResponseBody
	public String deleteAll(HttpSession session,Model model){
		User user = (User) session.getAttribute("user");
		if(user == null){
			model.addAttribute("result", "session过期，重新登录");
			return "user/login";
		}
		cartService.deleteCartByUserId(user.getId());
		return null;
	}
	

}
