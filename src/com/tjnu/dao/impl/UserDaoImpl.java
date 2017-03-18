package com.tjnu.dao.impl;

import org.springframework.stereotype.Repository;

import com.tjnu.dao.IUserDao;
import com.tjnu.model.UserInfo;

@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<UserInfo> implements IUserDao {

}
