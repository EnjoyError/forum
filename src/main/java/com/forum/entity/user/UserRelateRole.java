package com.forum.entity.user;

import com.forum.entity.baseEntity.BaseEntity;
import com.forum.entity.role.Role;

/**
 * 用户关联角色 Created by Sackr on 2016/10/23.
 */
public class UserRelateRole extends BaseEntity {
	private User user;
	private Role role;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
}
