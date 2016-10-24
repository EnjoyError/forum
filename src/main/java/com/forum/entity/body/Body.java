package com.forum.entity.body;

import com.forum.entity.baseEntity.BaseEntity;

/**
 * 帖子正文
 * 
 * @author Sackr
 *
 */
public class Body extends BaseEntity {
	/** 正文 */
	private String text;

	public String getText() {
		return text;
	}

	
	public void setText(String text) {
		this.text = text;
	}

}
