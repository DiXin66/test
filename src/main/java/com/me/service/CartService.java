package com.me.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.me.dao.CartMapper;
import com.me.pojo.Cart;

@Service
public class CartService {
	
	@Autowired
	private CartMapper cartMapper;
	
	
	public int addCart(Cart cart){
		return cartMapper.insert(cart);
	}
	
	public Cart getCartById(int id){
		return cartMapper.selectByPrimaryKey(id);
	}
	
	public int updateCart(Cart cart){
		return cartMapper.updateByPrimaryKey(cart);
	}
	
	public List<Cart> getCartByUserId(int userId){
		return cartMapper.selectByUserId(userId);
	}
	
	public int deleteCartByUserId(int userId){
		return cartMapper.deleteAllByUserId(userId);
	}
	
	public int deleteCartById(int id){
		return cartMapper.deleteByPrimaryKey(id);
	}
}
