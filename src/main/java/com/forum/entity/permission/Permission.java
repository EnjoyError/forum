package com.forum.entity.permission;

import com.forum.entity.baseEntity.BaseEntity;

/**
 * 权限
 * 
 * @author Sackr
 *
 */
public class Permission extends BaseEntity {
	/** 编码 */
	private String code;
	/** 说明 */
	private String description;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
