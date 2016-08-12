package com.forum.util;

/**
 * 服务异常
 * 
 * @author Sackr
 *
 */
public class ServiceException extends RuntimeException {
	private static final long serialVersionUID = 6740300190744172130L;
	private Object obj;

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

	public ServiceException() {
		super();
	}

	public ServiceException(String message) {
		super(message);
	}

	public ServiceException(String message, Throwable e) {
		super(message, e);
	}
}
