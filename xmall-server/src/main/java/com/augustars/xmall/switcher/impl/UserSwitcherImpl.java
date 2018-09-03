package com.augustars.xmall.switcher.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.alibaba.dubbo.config.annotation.Service;
import com.augustars.xmall.entity.User;
import com.augustars.xmall.service.UserService;
import com.augustars.xmall.switcher.UserSwitcher;
@Component("userSwitcher")
@Service(version="1.0.0")
public class UserSwitcherImpl implements UserSwitcher {
	@Resource(name="userService")
	private UserService userService;
	
	public User getUserByLogin(String loginName) throws Exception {
		User user = userService.getUserByLoginName(loginName);
		return user;
	}
}
