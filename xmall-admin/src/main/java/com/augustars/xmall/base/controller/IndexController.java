package com.augustars.xmall.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String getIndex() throws Exception {
		// 处理进入到首页面的所有请求
		return "index";
	}
}
