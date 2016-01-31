package com.forum.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forum.entity.user.User;
import com.forum.service.service.UserService;

@Controller
@RequestMapping("/user.action")
public class UserAction {
	private UserService userService;
	
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}


	@RequestMapping(params = "method=register")
	public String register(String username, String password,
			String confirmPassword) {
		userService.registerUser(username,password,confirmPassword);
		return "";
	}
}
