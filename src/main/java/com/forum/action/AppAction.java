package com.forum.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppAction {

	@RequestMapping(value = {"/", "/index"})
	public String index() {
		return "index";
	}
	
	@RequestMapping("/plate")
	public String plate() {
		return "plate";
	}
	
	@RequestMapping("/article")
	public String article() {
		return "article";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
}