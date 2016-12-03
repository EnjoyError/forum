<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="include/global.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="include/head.jsp"%>
</head>

<body ng-app="loginApp" ng-controller="loginCtrl">
<%@ include file="include/navbar.jsp"%>

<div class="headerwrap container">
	<div class="row">
		<div class="menubar col-md-12 col-xs-12">
			<a class="icon-mini-register mini-item" href="${ctx}/register">注册</a>
			<a class="icon-mini-faq mini-item" href="#">FAQ</a>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-10">
			<a href="${ctx}/index">首页</a>
		</div>
		<div class="col-md-2">
			<p>当前时区为 UTC + 8 小时</p>
		</div>
	</div>
	
	<div class="list-group">
		<div class="list-group-item">
			<div class="row text-center">
				<div class="col-xs-12">
					<p>登录</p>
				</div>
			</div>
		</div>
		
		<div class="list-group-item" ng-show="alertShow">
			<div class="row">
				<div class="alert alert-success">{{ alertContent }}</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row">
				<div class="col-xs-4">
					<p>用户名:</p>
				</div>
				<div class="col-xs-8">
					<div>
						<input type="text" ng-model="username" ng-focus="hideTip()" />
						<popover-directive content="{{ tipContent }}" ng-show="showUserTip"></popover-directive>
					</div>
					<div>
						<a href="${ctx}/register">注册</a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row">
				<div class="col-xs-4">
					<p>密码:</p>
				</div>
				<div class="col-xs-8">
					<div>
						<input type="password" ng-model="password" ng-focus="hideTip()"/>
						<popover-directive content="{{ tipContent }}" ng-show="showPassTip"></popover-directive>
					</div>
					<div>
						<a href="#">我忘记了自己的密码</a>
					</div>
					<div>
						<input type="checkbox" ng-model="rememberMe" />每次浏览时自动登录
					</div>
				</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row text-center">
				<div class="col-xs-12">
					<button type="button" class="btn btn-primary" ng-click="login()">登录</button>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="include/footer.jsp"%>
</body>
</html>