package com.forum.action;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.forum.service.service.UserService;

@Controller
@RequestMapping("/login.action")
public class LoginAction {
	private UserService userService;
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping(params="method=login")
	public String login(@RequestParam(value="name") String name){
		System.out.println(name);
		System.out.println(userService);
        return "articles";
    }
}
