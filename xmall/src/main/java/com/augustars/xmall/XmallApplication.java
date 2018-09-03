package com.augustars.xmall;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan
@EnableAutoConfiguration
public class XmallApplication {
	public static void main(String[] args) {
		SpringApplication.run(XmallApplication.class, args);
	}
}
