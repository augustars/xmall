package com.augustars.xmall.util;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;
@Component("shiroDBRealm")
public class ShiroDBRealm extends AuthorizingRealm {

	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection collection) {
		return null;
	}

	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		System.out.println("^");
		return null;
	}
}
