package com.forum.util;

/**
 * String帮助类
 * 
 * @author Sackr
 *
 */
public class StringUtil {
	public static boolean isEmpty(String str) {
		return "".equals(str) || (null == str);
	}
}
