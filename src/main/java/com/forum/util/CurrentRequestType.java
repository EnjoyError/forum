package com.forum.util;

/**
 * 用来获取当前请求类型
 * 
 * @author Sackr
 *
 */
public class CurrentRequestType {
	private static ThreadLocal<String> currentRequestType = new ThreadLocal<String>();

	/**
	 * 获取本次请求类型，默认为OTHER
	 * 
	 * @return
	 */
	public static String getCurrentRequestType() {
		if (null == currentRequestType.get()) {
			currentRequestType.set(RequestType.OTHER);
		}
		return currentRequestType.get();
	}

	/**
	 * 设置本次请求类型
	 * 
	 * @param requestType
	 */
	public static void setCurrentRequestType(String requestType) {
		currentRequestType.set(requestType);
	}
}
