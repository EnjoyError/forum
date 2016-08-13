package com.forum.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.forum.entity.user.User;
import com.forum.service.UserService;

@Controller
@RequestMapping("/login.action")
public class LoginAction {
	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(params = "method=login")
	public String login(@RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password) {
		User user = userService.validateLoginInfo(username, password);
		System.out.println(user);
		return "articles";
	}
}
