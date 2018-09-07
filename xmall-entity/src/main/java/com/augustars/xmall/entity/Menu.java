package com.augustars.xmall.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="sys_menu")
public class Menu implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long menuId;
	private Menu parent;
	private String text;
	private String url;
	private String status;
	private List<Menu> childMenuList;
	private List<Role> roleList;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getMenuId() {
		return menuId;
	}
	public void setMenuId(Long menuId) {
		this.menuId = menuId;
	}
	
	@ManyToOne(targetEntity=Menu.class,
			cascade={CascadeType.PERSIST, CascadeType.MERGE})
	@JoinColumn(name="parent_id")
	public Menu getParent() {
		return parent;
	}
	public void setParent(Menu parent) {
		this.parent = parent;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@OneToMany(targetEntity=Menu.class, mappedBy="parent",
			cascade={CascadeType.PERSIST, CascadeType.MERGE})
	public List<Menu> getChildMenuList() {
		return childMenuList;
	}
	public void setChildMenuList(List<Menu> childMenuList) {
		this.childMenuList = childMenuList;
	}
	
	@ManyToMany(targetEntity=Role.class,
			cascade={CascadeType.PERSIST, CascadeType.MERGE})
	@JoinTable(name="sys_role_menu",
			joinColumns={@JoinColumn(name="menu_id")},
			inverseJoinColumns={@JoinColumn(name="role_id")})
	public List<Role> getRoleList() {
		return roleList;
	}
	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}
}
