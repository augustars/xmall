package com.augustars.xmall.service.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.augustars.xmall.dao.UserDao;
import com.augustars.xmall.entity.User;
import com.augustars.xmall.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	@Resource(name="userDao")
	private UserDao userDao;

	public User getUserByLoginName(String loginName) throws Exception {
		User user = userDao.findUserByLoginName(loginName);
		return user;
	}
}
