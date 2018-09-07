package com.augustars.xmall.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String getIndex() throws Exception {
		System.out.println("getIndex()……");
		return "test";
	}
}
