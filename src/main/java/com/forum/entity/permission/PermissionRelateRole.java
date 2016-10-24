package com.forum.entity.permission;

import com.forum.entity.baseEntity.BaseEntity;
import com.forum.entity.role.Role;

/**
 * 权限和角色的关联类
 * 
 * @author Sackr
 *
 */
public class PermissionRelateRole extends BaseEntity {
	private Permission permission;
	private Role role;

	public Permission getPermission() {
		return permission;
	}

	public void setPermission(Permission permission) {
		this.permission = permission;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
}
