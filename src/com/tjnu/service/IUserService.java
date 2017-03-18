package com.tjnu.service;

import java.util.List;

import com.tjnu.model.UserInfo;

public interface IUserService {

	public void saveUser(UserInfo user);
	
	public void updateUser(UserInfo user);
	
	public UserInfo findUserById(int userId);
	
	public void deleteUser(UserInfo user);
	
	public List<UserInfo> findAllList();
	
	public UserInfo findUserByNameAndPassword(UserInfo user);

	UserInfo findUserByUsername(String username);
}
