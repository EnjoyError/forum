<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/jsp/include/global.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="/jsp/include/head.jsp"%>
	<script src="${ctx}/static/js/login.js"></script>
</head>

<body ng-app="webApp" ng-controller="loginCtrl">
<%@ include file="/jsp/include/navbar.jsp"%>

<div class="headerwrap">
	<div class="container">
		<div class="row headerwrap-nav">
			<div class="col-xs-1">
				<img src="${ctx}/static/image/icon_mini_register.gif" alt="*" height="13" width="12">
				<a href="${ctx}/jsp/register.jsp">注册</a>
			</div>
			<div class="col-xs-offset-11 text-center">
				<img src="${ctx}/static/image/icon_mini_faq.gif" alt="*" height="13" width="12">
				<a href="#">FAQ</a>
			</div>
		</div>
		
		<div class="row">
			<div class="col-xs-1">
				<a href="${ctx}/">首页</a>
			</div>
			<div class="col-xs-offset-10 text-center">
				<p>当前时区为 UTC + 8 小时</p>
			</div>
		</div>
		
		<ul class="list-group">
			<li class="list-group-item">
				<div class="row text-center">
					<div class="col-xs-12">
						<p>登录</p>
					</div>
				</div>
			</li>
			
			<li class="list-group-item" id="alert">
				<div class="row">
					<div class="alert alert-success"></div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-4">
						<p>用户名:</p>
					</div>
					<div class="col-xs-8">
						<div>
							<input type="text" id="username"
								ng-model="username" ng-focus="hideUserTip()" />
						</div>
						<div>
							<a href="${ctx}/jsp/register.jsp">注册</a>
						</div>
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-4">
						<p>密码:</p>
					</div>
					<div class="col-xs-8">
						<div>
							<input type="password" id="password"
								ng-model="password" ng-focus="hidePasswordTip()"/>
						</div>
						<div>
							<a href="#">我忘记了自己的密码</a>
						</div>
						<div>
							<input type="checkbox" ng-model="rememberMe" />每次浏览时自动登录
						</div>
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row text-center">
					<div class="col-xs-12">
						<button type="button" class="btn btn-primary" ng-click="login()">登录</button>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>

<%@ include file="/jsp/include/footer.jsp"%>
</body>
</html>