package com.forum.action;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.forum.dto.UserDto;
import com.forum.service.UserService;
import com.forum.util.CurrentRequestType;
import com.forum.util.RequestType;

@Controller
@RequestMapping("/login.action")
public class LoginAction {
	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@ResponseBody
	@RequestMapping(params = "method=login", method = { RequestMethod.POST })
	public Map<String, Object> login(@RequestBody UserDto userDto) {
		CurrentRequestType.setCurrentRequestType(RequestType.AJAX);
		userService.login(userDto);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("success", true);
		return result;
	}
}
