package com.forum.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forum.dto.UserDto;
import com.forum.entity.user.User;
import com.forum.service.UserService;
import com.forum.util.CallInfo;

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
		
		try {
			userService.registerUser(userDto);
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return "";
	}
}
