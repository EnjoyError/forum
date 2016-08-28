package com.forum.util;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;

import com.forum.dto.UserDto;

/**
 * json帮助类
 * 
 * @author Sackr
 *
 */
public class JsonUtils {
	/**
	 * 将对象转换成json字符串
	 * 
	 * @param obj
	 * @return
	 */
	public static String toJson(Object obj) {
		if (obj instanceof Map) {
			return JSONObject.valueToString(obj);
		} else {
			JSONObject jb = new JSONObject(obj);
			return JSONObject.valueToString(jb);
		}
	}

	public static void main(String[] args) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", false);
		map.put("message", "testmessage");
		UserDto dto = new UserDto();
		dto.setOldPassword("nini");
		System.out.println(toJson(map));

	}
}
