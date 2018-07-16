package com.me.dao;

import java.util.List;

import com.me.pojo.Furn;

public interface FurnMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Furn record);

    int insertSelective(Furn record);

    Furn selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Furn record);

    int updateByPrimaryKey(Furn record);
    
    List<Furn> selectAllByName(String name);
    
    List<Furn> selectAll();
}