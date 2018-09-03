package com.augustars.xmall.switcher;

import com.augustars.xmall.entity.User;

public interface UserSwitcher {
	public User getUserByLogin(String loginName) throws Exception;
}
