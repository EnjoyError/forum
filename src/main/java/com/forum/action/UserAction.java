package com.forum.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forum.dto.UserDto;
import com.forum.service.UserService;

@Controller
@RequestMapping("/user.action")
public class UserAction {
	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(params = "method=register")
	public String register(UserDto userDto) {
		userService.registerUser(userDto);
		return "SUCCESS";
	}
	
	public String updateUser(UserDto userDto){
		userService.updateUser(userDto);
		return "SUCCESS";
	}
}
