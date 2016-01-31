package com.forum.util;

import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * 编码管理
 * 
 * @author Sackr
 *
 */
public class CodeManager {
	private static int NUMBER = 1;
	private static int MAX_NUMBER = 999;

	public static String generateCode(String CodeType) {
		Date date = new Date();
		String code = CodeType
				+ (new SimpleDateFormat("yyyyMMddHHmmss")).format(date)
				+ NUMBER;
		if (gtMaxNumber()) {
			resetNumber();
		}
		return code;
	}

	private static boolean gtMaxNumber() {
		if (NUMBER > MAX_NUMBER) {
			return true;
		}
		return false;
	}

	private static void resetNumber() {
		NUMBER = 1;
	}
}
