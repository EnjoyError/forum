package com.forum.entity.body;

import java.util.List;

import com.forum.entity.baseEntity.BaseEntity;
import com.forum.entity.reply.Reply;

/**
 * 帖子正文
 * 
 * @author Sackr
 *
 */
public class Body extends BaseEntity {
	/** 正文 */
	private String text;
	/** 帖子的回复 */
	private List<Reply> replys;

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public List<Reply> getReplys() {
		return replys;
	}

	public void setReplys(List<Reply> replys) {
		this.replys = replys;
	}

}
