package com.augustars.xmall.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.augustars.xmall.base.controller.BaseController;
import com.augustars.xmall.entity.Menu;
import com.augustars.xmall.entity.Role;
import com.augustars.xmall.entity.User;

@Controller("userController")
@RequestMapping("/user")
public class UserController extends BaseController {
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getUserLoginForm() throws Exception {
		return "user/user_login_form";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView loginError() throws Exception {
		RedirectView view = new RedirectView(request.getContextPath() + "/user/logout");
		return new ModelAndView(view);
	}
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public ModelAndView getIndex() throws Exception {
		// 根据用户的角色信息获取出该用户的能够操作的菜单列表
		// 获取当前登录用户
		User user = (User) session.getAttribute("user");
		// 根据用户获得该用户的角色信息
		Role role = user.getRole();
		// 根据角色信息获得该用户所有的操作菜单
//		List<Menu> menuList = role.getMenuList();
//		for (Menu menu : menuList) {
//			System.out.println(menu.getText());
//		}
		return new ModelAndView();
	}
}
