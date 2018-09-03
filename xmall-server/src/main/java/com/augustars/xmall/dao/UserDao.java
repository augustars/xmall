package com.augustars.xmall.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.augustars.xmall.entity.User;

public interface UserDao extends JpaRepository<User, Long> {

	@Query(value="from User u where u.loginName=:loginName")
	public User findUserByLoginName(@Param("loginName")String loginName) throws Exception;
}
