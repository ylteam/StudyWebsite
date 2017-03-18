package com.tjnu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tjnu.dao.IUserDao;
import com.tjnu.model.UserInfo;
import com.tjnu.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {

	@Resource
	private IUserDao userDao;
	
	@Override
	public void saveUser(UserInfo user) {
		userDao.save(user);
	}

	@Override
	public void updateUser(UserInfo user) {
		userDao.update(user);
	}

	@Override
	public UserInfo findUserById(int userId) {
		return userDao.get(UserInfo.class, userId);
	}

	@Override
	public void deleteUser(UserInfo user) {
		userDao.delete(user);
	}

	@Override
	public List<UserInfo> findAllList() {
		return userDao.find("from UserInfo");
	}

	@Override
	public UserInfo findUserByNameAndPassword(UserInfo user) {
		return userDao.get("from UserInfo u where u.username=? and u.password=?", new Object[]{user.getUsername(),user.getPassword()});
	}

	@Override
	public UserInfo findUserByUsername(String username) {
		return userDao.get("from UserInfo u where u.username=?", new Object[]{username});
	}

}
