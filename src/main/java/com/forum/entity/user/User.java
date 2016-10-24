package com.forum.entity.user;

import com.forum.entity.baseEntity.BaseEntity;

/**
 * 用户类
 * 
 * @author Sackr
 *
 */
public class User extends BaseEntity {
	/** 用户编码 */
	private String code;
	/** 用户名称 */
	private String username;
	/** 用户密码 */
	private String password;
	/** email */
	private String email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
