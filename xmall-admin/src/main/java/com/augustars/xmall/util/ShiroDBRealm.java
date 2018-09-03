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
		// 对于AuthenticationToken进行类型转换
		UsernamePasswordToken userToken = (UsernamePasswordToken) token;
		// 获得登录用户名
		String loginName = userToken.getUsername();
		// 对于登录密码进行加密
		userToken.setPassword(EncryptionUtil.encrypt(
				new String(userToken.getPassword())).toCharArray());
		// 通过使用loginName查询用户信息
		try {
			User user = userSwitcher.getUserByLogin(loginName);
			if (user != null && "YES".equals(user.getStatus().getStatusCode())) {
				// 将正确的用户信息和密码交给Shiro进行判断
				SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(
						loginName, user.getPassword(), getName());
				// 默认登录成功，绑定Session
				SecurityUtils.getSubject().getSession().setAttribute("user", user);
				return info;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
