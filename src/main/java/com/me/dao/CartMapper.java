package com.me.dao;

import java.util.List;

import com.me.pojo.Cart;

public interface CartMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cart record);

    int insertSelective(Cart record);

    Cart selectByPrimaryKey(Integer id);
    
    List<Cart> selectByUserId(int userId);

    int updateByPrimaryKeySelective(Cart record);

    int updateByPrimaryKey(Cart record);
    
    int deleteAllByUserId(int userId);
}