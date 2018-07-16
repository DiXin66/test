package com.me.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.me.dao.AdminMapper;
import com.me.pojo.Admin;

@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	public Admin getUserByName(String name){
		return adminMapper.selectByName(name);
	}
	
	
	public int updateAdmin(Admin admin){
		return adminMapper.updateByPrimaryKeySelective(admin);
	}

}
