package com.me.dao;

import com.me.pojo.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer id);
    
    Admin selectByName(String name);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}