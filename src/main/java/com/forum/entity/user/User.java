package com.forum.entity.user;

import java.util.Set;

import com.forum.entity.baseEntity.BaseEntity;
import com.forum.entity.role.Role;

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
	/** 用户拥有的角色 */
	private Set<Role> roles;

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

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

}
