package com.me.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.me.dao.FurnMapper;
import com.me.pojo.Furn;

@Service
public class FurnService {
	
	@Autowired
	private FurnMapper furnMapper;
	
	public  Furn getFurnById(int id){
		return furnMapper.selectByPrimaryKey(id);
	}
	
	public  List<Furn> getFurnlist(){
		return furnMapper.selectAll();
	}
	
	public  List<Furn> getFurnlist2(String name){
		return furnMapper.selectAllByName("%"+name+"%");
	}
	
	
	public int  addInfo(Furn furn) {
		return furnMapper.insertSelective(furn);
	}
	
	
	public int  updateInfo(Furn furn) {
		return furnMapper.updateByPrimaryKeySelective(furn);
	}
	

	public int deleteFurn(int id) {
		return furnMapper.deleteByPrimaryKey(id);
	}

}
