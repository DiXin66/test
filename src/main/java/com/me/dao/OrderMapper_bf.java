package com.me.dao;

import java.util.List;

import com.me.pojo.Order_bf;

public interface OrderMapper_bf {
    int deleteByPrimaryKey(Integer id);

    int insert(Order_bf record);

    int insertSelective(Order_bf record);

    Order_bf selectByPrimaryKey(Integer id);
    
    List<Order_bf> selectAll();
    
    List<Order_bf> selectAllByUserId(int userId);

    int updateByPrimaryKeySelective(Order_bf record);

    int updateByPrimaryKey(Order_bf record);
}