package com.augustars.xmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.augustars.xmall.base.controller.BaseController;

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
}
