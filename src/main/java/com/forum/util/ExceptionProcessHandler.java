package com.forum.util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

/**
 * 异常处理handler（用来统一处理异常）
 * 
 * @author Sackr
 *
 */
public class ExceptionProcessHandler implements HandlerExceptionResolver {

	private static final Logger LOGGER = LoggerFactory.getLogger(ExceptionProcessHandler.class);
	private View errorView = new ErrorView();
	private static String ERROR_INFO = "errorInfo";

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
		ex.printStackTrace();
		Map<String, Object> errorInfo = new HashMap<String, Object>();
		errorInfo.put("success", false);
		if (ex instanceof ServiceException) {
			errorInfo.put("message", ex.getMessage());
		} else {
			errorInfo.put("message", "未知异常");
		}
		Map<String, String[]> parameterMap = request.getParameterMap();
		logException(handler, ex, parameterMap);
		ModelAndView view = new ModelAndView(errorView);
		view.addObject(ERROR_INFO, JsonUtils.toJson(errorInfo));
		return view;

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

	/**
	 * 用来记录log
	 * 
	 * @param handler
	 * @param exception
	 * @param parameterMap
	 */
	private void logException(Object handler, Exception exception, Map<String, String[]> parameterMap) {
		if (handler != null && HandlerMethod.class.isAssignableFrom(handler.getClass())) {
			try {
				HandlerMethod handlerMethod = (HandlerMethod) handler;
				Class<?> beanType = handlerMethod.getBeanType();
				String methodName = handlerMethod.getMethod().getName();
				RequestMapping controllerRequestMapping = beanType.getDeclaredAnnotation(RequestMapping.class);
				String classMapping = "";
				if (controllerRequestMapping != null) {
					classMapping = controllerRequestMapping.value()[0];
				}
				RequestMapping methodRequestMapping = handlerMethod.getMethodAnnotation(RequestMapping.class);
				String methodMapping = "";
				if (methodRequestMapping != null) {
					methodMapping = methodRequestMapping.value()[0];
				}
				if (!methodMapping.startsWith("/")) {
					methodMapping = "/" + methodMapping;
				}
				Logger logger = LoggerFactory.getLogger(beanType);
				logger.error("RequestMapping is:");
				logger.error(classMapping + methodMapping);
				logger.error("HandlerMethod is:");
				logger.error(beanType.getSimpleName() + "." + methodName + "()");
				logger.error("ParameterMap is:");
				logger.error(JsonUtils.toJson(parameterMap), exception);
			} catch (Exception e) {
				LOGGER.error(handler + " execute failed.", exception);
			}
		} else {
			LOGGER.error(handler + " execute failed.", exception);
		}
	}

	/**
	 * view(用来返回json信息)
	 * 
	 * @author Sackr
	 *
	 */
	private static class ErrorView implements View {

		private static final String CONTENT_TYPE = "application/json;charset=utf-8";

		@Override
		public String getContentType() {
			return CONTENT_TYPE;
		}

		@Override
		public void render(Map<String, ?> model, HttpServletRequest request, HttpServletResponse response)
				throws Exception {
			String errorInfo = (String) model.get(ERROR_INFO);
			response.setContentType(CONTENT_TYPE);
			response.getOutputStream().write(errorInfo.getBytes("UTF-8"));
			response.getOutputStream().flush();
		}

	}

}
