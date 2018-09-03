package com.augustars.xmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.augustars.xmall.base.controller.BaseController;

@Controller("userController")
@RequestMapping("/user")
public class UserController extends BaseController {
	@RequestMapping(value="/login", method=RequestMethod.POST)
	@ResponseBody
	public String loginError() throws Exception {
		System.out.println("Login Error……");
		return "error";
	}
}
