package com.me.dao;

import java.util.List;

import com.me.pojo.Order;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);
    
    List<Order> selectAll();
    
    List<Order> selectAllByUserId(int userId);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order order);
}