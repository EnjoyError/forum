package com.forum.entity.article;

import com.forum.entity.baseEntity.BaseEntity;
import com.forum.entity.body.Body;

/**
 * 帖子，帖子正文保存在Body类中
 * 
 * @author Sackr
 *
 */
public class Article extends BaseEntity {
	/** 帖子编码 */
	private String code;
	/** 帖子标题 */
	private String title;
	/** 帖子内容 */
	private Body body;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Body getBody() {
		return body;
	}

	public void setBody(Body body) {
		this.body = body;
	}

}
