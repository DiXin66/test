package com.me.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.me.dao.UserMapper;
import com.me.pojo.User;

@Service
public class UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	public User getUserByName(String name){
		return userMapper.selectByName(name);
	}
	
	public User getUserById(int id){
		return userMapper.selectByPrimaryKey(id);
	}
	
	public int addUser(User user) {
		return userMapper.insert(user);
	}
	
	
	public int updateUser(User user){
		return userMapper.updateByPrimaryKeySelective(user);
	}
	
	
	public List<User> getUserList(){
		return userMapper.selectAll();
	}
	
	
	public int deleteUser(int id){
		return userMapper.deleteByPrimaryKey(id);
	}
	
	
	

}
