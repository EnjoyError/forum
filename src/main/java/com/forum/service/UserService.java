package com.forum.service;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;

import com.forum.dto.UserDto;
import com.forum.entity.user.User;
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
	/**
	 * 注册用户
	 * 
	 * @param userDto
	 */
	public void registerUser(UserDto userDto) {
		String username = userDto.getUsername();
		String password = userDto.getPassword();

		if (StringUtil.isEmpty(username)) {
			throw new ServiceException("用户名不能为空!");
		}
		if (StringUtil.isEmpty(password)) {
			throw new ServiceException("密码不能为空!");
		}
		User user = null;
		user = (User) store.queryUniqueResultByHQL("FROM User user WHERE user.username = :username", "username",
				username);
		if (null != user) {
			throw new ServiceException("该用户名已被注册");
		}
		SimpleHash sh = new SimpleHash("MD5", password.toCharArray(), null, 1);
		password = sh.toHex();
		user = new User();
		user.setCode(CodeManager.generateCode(CodeType.USER_CODE));
		user.setUsername(username);
		user.setPassword(password);
		store.save(user);
	}

	/**
	 * 验证用户登入
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	public User validateLoginInfo(String username, String password) {
		User user = (User) store.queryUniqueResultByHQL("FROM User user WHERE user.username = :username", "username",
				username);
		if (null == user) {
			throw new ServiceException("用户名不正确");
		}

		if (!user.getPassword().equals(password)) {
			throw new ServiceException("密码不正确");
		}

		return user;
	}

	/**
	 * 更新用户信息
	 * 
	 * @param userDto
	 */
	public void updateUser(UserDto userDto) {
		String username = userDto.getUsername();
		User user = (User) store.queryUniqueResultByHQL("FROM User user WHERE user.username = :username", "username",
				username);
		user.setPassword(userDto.getPassword());
		store.save(user);
	}

	public void login(UserDto userDto) {
		String username = userDto.getUsername();
		String password = userDto.getPassword();
		Boolean rememberMe = userDto.getRememberMe();
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);
		try {
			subject.login(token); // 登录
		} catch (Exception e) {
			throw new ServiceException("登入失败，请检查用户名或密码是否正确!", e);
		}

	}
}
