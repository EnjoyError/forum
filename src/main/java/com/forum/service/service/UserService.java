package com.forum.service.service;

import java.util.ArrayList;
import java.util.List;

import com.forum.entity.user.User;
import com.forum.util.CallInfo;
import com.forum.util.CodeManager;
import com.forum.util.CodeType;
import com.forum.util.StringUtil;

/**
 * 用户Service
 * 
 * @author Sackr
 *
 */
public class UserService extends BaseService {
	public String registerUser(String username, String password,
			String confirmPassword) {
		List<String> list = new ArrayList<String>();
		if (StringUtil.isEmpty(username)) {
			list.add("用户名不能为空");
		}
		if (StringUtil.isEmpty(password) || StringUtil.isEmpty(confirmPassword)) {
			list.add("密码和密码确认不能为空");
		}else if(password.equals(confirmPassword)){
			list.add("密码和密码确认不一致");
		}
		if(list.size() < 1){
			return CallInfo.FAILED;
		}
		User user = new User();
		user.setCode(CodeManager.generateCode(CodeType.USER_CODE));
		user.setUsername(username);
		user.setPassword(password);
		store.save(user);
		return CallInfo.SUCCESS;
	}
}
