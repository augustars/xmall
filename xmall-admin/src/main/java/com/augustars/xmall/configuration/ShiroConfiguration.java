package com.augustars.xmall.configuration;

import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.augustars.xmall.util.ShiroDBRealm;

@Configuration
public class ShiroConfiguration {
	@Bean
	public ShiroDBRealm shiroDBRealm() {
		return new ShiroDBRealm();
	}
	
	@Bean
	public SecurityManager securityManager() {
		DefaultWebSecurityManager securityManager = 
				new DefaultWebSecurityManager();
		securityManager.setRealm(shiroDBRealm());
		return securityManager;
	}
	
	@Bean
	public ShiroFilterFactoryBean shiroFilterFactoryBean(SecurityManager securityManager) {
		ShiroFilterFactoryBean shiroFilter = new ShiroFilterFactoryBean();
		shiroFilter.setSecurityManager(securityManager);
		shiroFilter.setLoginUrl("/user/login");
		shiroFilter.setSuccessUrl("/index");
		
		Map<String, String> filterChainDefinitionMap = new LinkedHashMap<String, String>();
		filterChainDefinitionMap.put("/**", "authc");
		shiroFilter.setFilterChainDefinitionMap(filterChainDefinitionMap);
		return shiroFilter;
	}
}
