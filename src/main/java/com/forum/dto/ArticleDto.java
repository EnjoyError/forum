package com.forum.dto;

/**
 * 帖子dto
 * 
 * @author Sackr
 *
 */
public class ArticleDto {
	/** 帖子编码 */
	private String code;
	/** 帖子标题 */
	private String title;
	/** 帖子内容 */
	private BodyDto body;

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

	public void setBody(BodyDto body) {
		this.body = body;
	}

	public BodyDto getBody() {
		return body;
	}

}
