package com.forum.entity.reply;

import com.forum.entity.baseEntity.BaseEntity;

/**
 * 回复类
 * 
 * @author Sackr
 *
 */
public class Reply extends BaseEntity {
	/** 回复编码*/
	private String code;
	/** 回复楼层*/
	private Integer floor;
	/** 回复内容*/
	private String replyContent;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getFloor() {
		return floor;
	}

	public void setFloor(Integer floor) {
		this.floor = floor;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

}
