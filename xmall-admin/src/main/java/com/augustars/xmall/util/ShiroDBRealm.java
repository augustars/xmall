package com.augustars.xmall.util;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;

import com.alibaba.dubbo.config.annotation.Reference;
import com.augustars.xmall.entity.User;
import com.augustars.xmall.switcher.UserSwitcher;
@Component("shiroDBRealm")
public class ShiroDBRealm extends AuthorizingRealm {
	@Reference(version="1.0.0")
	private UserSwitcher userSwitcher;

	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection collection) {
		return null;
	}

	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		UsernamePasswordToken userToken = (UsernamePasswordToken) token;
		String loginName = userToken.getUsername();
		String password = new String(userToken.getPassword());
		password = EncryptionUtil.encrypt(password);
		userToken.setPassword(password.toCharArray());
		
		// 使用登录名查找用户信息
		try {
			User user = userSwitcher.getUserByLoginName(loginName);
			// 判断是否启用
			if (user != null && ConstantsUtil.STATUS_YES.equals(user.getStatus())) {
				SimpleAuthenticationInfo info = 
						new SimpleAuthenticationInfo(
								user.getLoginName(), user.getPassword(), getName());
				SecurityUtils.getSubject().getSession().setAttribute("user", user);
				return info;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
