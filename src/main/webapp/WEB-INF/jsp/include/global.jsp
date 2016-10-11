<%@ page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:if test="${empty include_global_parameter}">
	<c:set var="include_global_parameter" value="INCLUDE_GLOBAL_PARAMETER" />
	<c:set var="ctx" value="<%=request.getContextPath()%>" />
	
	<c:set var="website" value="<%=new HashMap<String, Object>()%>" />
	<c:set target="${website}" property="title" value="forum" />
	<c:set target="${website}" property="copyright" value="Powered by java &copy; 2000, 2002, 2005, 2007 java Group" />
</c:if>