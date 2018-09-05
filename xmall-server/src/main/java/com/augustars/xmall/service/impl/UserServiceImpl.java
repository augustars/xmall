package com.augustars.xmall.service.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.augustars.xmall.dao.UserDao;
import com.augustars.xmall.entity.User;
import com.augustars.xmall.service.UserSerivce;
@Service("userService")
@Transactional
public class UserServiceImpl implements UserSerivce {
	@Resource(name="userDao")
	private UserDao userDao;
	
	public User getUserByLoginName(String loginName) throws Exception {
		return userDao.findUserByLoginName(loginName);
	}
}
