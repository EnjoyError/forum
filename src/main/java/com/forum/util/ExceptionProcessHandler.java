package com.forum.util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * 异常处理handler（用来统一处理异常）
 * 
 * @author Sackr
 *
 */
public class ExceptionProcessHandler implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception ex) {
		if (CurrentRequestType.getCurrentRequestType().equals(RequestType.AJAX)) {
			return ajaxRequestExceptionProcess(request, response, handler, ex);
		} else {
			return otherRequestExceptionProcess(request, response, handler, ex);
		}

	}

	/**
	 * 用来处理ajax请求的异常（直接返回异常的json字符串）
	 * 
	 * @param request
	 * @param response
	 * @param handler
	 * @param ex
	 * @return
	 */
	private ModelAndView ajaxRequestExceptionProcess(HttpServletRequest request, HttpServletResponse response,
			Object handler, Exception ex) {
		if (ex instanceof ServiceException) {
			ex.printStackTrace();
			String errorInfo = "{\"success\":\"false\",\"message\":\"" + ex.getMessage() + "\"}";
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("errorInfo", errorInfo);
			return new ModelAndView("errorForAjax", model);
		} else {
			ex.printStackTrace();
			String errorInfo = "{\"success\":\"false\",\"message\":\"未知异常\"}";
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("errorInfo", errorInfo);
			return new ModelAndView("errorForAjax", model);
		}
	}

	/**
	 * 用来处理其他请求的异常(跳转到页面展示异常)
	 * 
	 * @param request
	 * @param response
	 * @param handler
	 * @param ex
	 * @return
	 */
	private ModelAndView otherRequestExceptionProcess(HttpServletRequest request, HttpServletResponse response,
			Object handler, Exception ex) {
		// TODO 待处理
		return null;
	}

}
