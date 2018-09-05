package com.augustars.xmall.switcher;

import com.augustars.xmall.entity.User;

public interface UserSwitcher {
	public User getUserByLoginName(String loginName) throws Exception;
}
