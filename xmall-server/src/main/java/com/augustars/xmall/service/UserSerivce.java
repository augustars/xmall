package com.augustars.xmall.service;

import com.augustars.xmall.entity.User;

public interface UserSerivce {
	public User getUserByLoginName(String loginName) throws Exception;
}
