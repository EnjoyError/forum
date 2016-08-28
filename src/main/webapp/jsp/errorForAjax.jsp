<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.forum.util.ServiceException"%>
<%
	String errorInfo = (String) request.getAttribute("errorInfo");
%>
<%=errorInfo%>
