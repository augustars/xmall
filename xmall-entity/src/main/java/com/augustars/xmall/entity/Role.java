package com.augustars.xmall.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="sys_role")
public class Role implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long roleId;
	private String roleName;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getRoleId() {
		return roleId;
	}
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
}
