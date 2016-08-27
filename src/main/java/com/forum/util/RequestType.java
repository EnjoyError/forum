package com.forum.util;

/**
 * 请求类型
 * 
 * @author Sackr
 *
 */
public interface RequestType {
	/**
	 * ajax请求
	 */
	public static final String AJAX = "AJAX";
	/**
	 * 其他类型的请求（比如form表单请求或者通过url跳转的请求）
	 */
	public static final String OTHER = "OTHER";
}
