package com.forum.util;

import java.util.HashMap;
import java.util.Map;

/**
 * 参数帮助类
 * 
 * @author Sackr
 *
 */
public class ParamUtil {
	/**
	 * 将参数封装成键值对
	 * 
	 * @param keys
	 * @param values
	 * @return
	 */
	public static Map<String, Object> getParam(String[] keys, Object[] values) {
		if (null == keys || null == values || keys.length != values.length) {
			return null;
		}
		Map<String, Object> map = new HashMap<String, Object>();
		for (int i = 0; i < keys.length; ++i) {
			map.put(keys[i], values[i]);
		}
		return map;
	}
}
