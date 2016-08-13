package com.forum.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.forum.util.ServiceException;

/**
 * 对业务异常进行处理
 * 
 * @author Sackr
 *
 */
public class ExceptionProcessFilter implements Filter {

	public void destroy() {
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		try {
			arg2.doFilter(arg0, arg1);
		} catch (ServiceException e) {
			e.printStackTrace();
			System.out.println("处理请求时遇到异常！");
		}
	}

	public void init(FilterConfig arg0) throws ServletException {
	}

}
