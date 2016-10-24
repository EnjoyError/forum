package com.forum.entity.role;

import com.forum.entity.baseEntity.BaseEntity;

/**
 * 角色类
 * @author Sackr
 *
 */
public class Role extends BaseEntity{
	/** 角色编码*/
	private String code;
	/** 角色名称*/
	private String roleName;
	/** 角色说明*/
	private String Description;
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
}
