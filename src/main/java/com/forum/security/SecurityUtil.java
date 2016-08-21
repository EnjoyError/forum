package com.forum.security;

import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.util.Factory;
import org.apache.shiro.mgt.SecurityManager;

public class SecurityUtil {
	private static Factory<SecurityManager> factory = null;

	public static Factory<SecurityManager> getFactory() {
		if (null == factory) {
			factory = new IniSecurityManagerFactory("classpath:shiro.ini");
		}
		return factory;
	}
}
