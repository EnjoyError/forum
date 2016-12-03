<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="include/global.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="include/head.jsp"%>
</head>
<body>
<%@ include file="include/navbar.jsp"%>

<div class="headerwrap container" ng-app="indexApp">
	<div class="row" ng-controller="menubarCtrl">
		<div class="menubar col-md-12 col-xs-12" ng-show="!isLogin">
			<a class="icon-mini-register mini-item" href="${ctx}/register">注册</a>
			<a class="icon-mini-login mini-item" href="${ctx}/login">登录</a>
			<a class="icon-mini-faq mini-item" href="#">FAQ</a>
		</div>
		
		<div class="menubar-left col-md-4 col-xs-12" ng-show="isLogin">
			<a class="icon-mini-register mini-item" href="#">退出[ {{ username }} ]</a>
			<a class="icon-mini-message mini-item" href="#"><strong>0</strong> 条新信息</a>
		</div>
		<div class="menubar-right col-md-8 col-xs-12" ng-show="isLogin">
			<a class="icon-mini-faq mini-item" href="#">FAQ</a>
			<a class="icon-mini-search mini-item" href="#">搜索</a>
			<a class="icon-mini-members mini-item" href="#">用户列表</a>
			<a class="icon-mini-toplist mini-item" href="#">热门感谢</a>
			<a class="icon-mini-thanks mini-item" href="#">个人感谢信息</a>
			<a class="icon-mini-profile mini-item" href="#">用户控制面板</a>
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
	
	<div ng-controller="indexCtrl">
		<div class="list-group">
			<div class="list-group-item">
				<div class="row">
					<div class="col-md-7 col-xs-12">
						<p>版面</p>
					</div>
					<div class="col-md-1 col-xs-12">
						<p>主题</p>
					</div>
					<div class="col-md-1 col-xs-12">
						<p>帖子</p>
					</div>
					<div class="col-md-2 col-xs-12">
						<p>最新文章</p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="list-group" ng-repeat="el in data">
			<div class="list-group-item">
				<div class="row">
					<div class="col-md-12">
						<p>{{ el.topic }}</p>
					</div>
				</div>
			</div>
			
			<div class="list-group-item" ng-repeat="item in el.items">
				<div class="row topic">
					<div class="col-md-1 col-xs-4">
						<img src="${ctx}/static/image/forum_read_subforum.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-md-7 col-xs-8">
						<h4><a href="${ctx}/plate">{{ item.title }}</a></h4>
						<span>{{ item.content }}</span>
					</div>
					<div class="col-md-1 col-xs-3">
						<p>{{ item.post }}</p>
					</div>
					<div class="col-md-1 col-xs-3">
						<p>{{ item.article }}</p>
					</div>
					<div class="col-md-2 col-xs-3">
						<p>{{ item.datetime }}</p>
						<p>{{ item.message }}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12 text-center">
			<a class="read-item">有新帖</a>
			<a class="read-item icon-read">无新帖</a>
			<a class="read-item icon-read-locked">版面锁定</a>
		</div>
	</div>
</div>

<%@ include file="include/footer.jsp"%>
</body>
</html>