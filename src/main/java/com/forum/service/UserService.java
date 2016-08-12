package com.forum.service;

import java.util.ArrayList;
import java.util.List;

import com.forum.dto.UserDto;
import com.forum.entity.user.User;
import com.forum.util.CallInfo;
import com.forum.util.CodeManager;
import com.forum.util.CodeType;
import com.forum.util.ServiceException;
import com.forum.util.StringUtil;

/**
 * 用户Service
 * 
 * @author Sackr
 *
 */
public class UserService extends BaseService {
	public void registerUser(UserDto userDto) {
		String username = userDto.getUsername();
		String password = userDto.getPassword();

		if (StringUtil.isEmpty(username)) {
			throw new ServiceException("用户名不能为空!");
		}
		if (StringUtil.isEmpty(password)) {
			throw new ServiceException("密码不能为空!");
		}

		User user = new User();
		user.setCode(CodeManager.generateCode(CodeType.USER_CODE));
		user.setUsername(username);
		user.setPassword(password);
		store.save(user);
	}
}
