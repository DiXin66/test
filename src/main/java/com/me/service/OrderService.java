package com.me.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.me.dao.OrderMapper;
import com.me.pojo.Order;

@Service
public class OrderService {
	
	@Autowired
	private OrderMapper orderMapper;
	
    
    public List<Order> getlist(){
    	return orderMapper.selectAll();
    }
    
    
    public List<Order> getlistByUserId(int userId){
    	return orderMapper.selectAllByUserId(userId);
    }
    
    
    public Order getOrderById(int id){
    	return orderMapper.selectByPrimaryKey(id);
    }
    
    
	public int addorder(Order order) {
		return orderMapper.insert(order);
		
	}
    
    public int  updateOrderByPrimaryKey(Order order){
    	return orderMapper.updateByPrimaryKey(order);
    }
    
    public int updateOrderByPrimaryKeySelective(Order order){
    	return orderMapper.updateByPrimaryKeySelective(order);
    }
    

	public int deleteOrder(int id) {
		return orderMapper.deleteByPrimaryKey(id);
	}
	
	

}
