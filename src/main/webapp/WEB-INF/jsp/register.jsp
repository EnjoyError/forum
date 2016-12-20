<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="include/global.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="include/head.jsp"%>
</head>

<body ng-app="registerApp" ng-controller="registerCtrl">
<%@ include file="include/navbar.jsp"%>

<div class="headerwrap container">
	<div class="row">
		<div class="menubar col-md-12 col-xs-12" ng-show="!isLogin">
			<a class="icon-mini-register mini-item" href="${ctx}/register">注册</a>
			<a class="icon-mini-login mini-item" href="${ctx}/login">登录</a>
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
					<p>注册</p>
				</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row">
				<div class="col-xs-4">
					<p>用户名:</p>
				</div>
				<div class="col-xs-8">
					<input type="text" placeholder="3～20个字符之间"
						ng-model="username" />
				</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row">
				<div class="col-xs-4">
					<p>Email 地址:</p>
				</div>
				<div class="col-xs-8">
					<input type="text" ng-model="email" />
				</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row">
				<div class="col-xs-4">
					<p>密码:</p>
				</div>
				<div class="col-xs-8">
					<input type="password" placeholder="6～30个字符之间" ng-model="password" />
				</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row">
				<div class="col-xs-4">
					<p>确认新密码:</p>
				</div>
				<div class="col-xs-8">
					<input type="password" ng-model="repassword" />
				</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row text-center">
				<div class="col-xs-12">
					<p>验证码</p>
				</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row">
				<div class="col-xs-12">
					<p>为了防止机器自动注册行为，请输入一组验证码，验证码显示在下面的图片中。</p>
				</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row">
				<div class="col-xs-offset-4">
					<img src="${ctx}/static/image/ucp.png" alt="验证码" id="captchaImg"  />
				</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row">
				<div class="col-xs-4">
					<p>验证码:</p>
				</div>
				<div class="col-xs-8">
					<input type="text" placeholder="不区分大小写" maxLength="4" 
						ng-model="captcha" />
					<button type="button" class="btn btn-primary" ng-click="refresh()">刷新验证码</button>
				</div>
			</div>
		</div>
		
		<div class="list-group-item">
			<div class="row text-center">
				<div class="col-xs-12">
					<button type="button" class="btn btn-primary" ng-click="submit()">提交</button>
					<button type="button" class="btn btn-primary" ng-click="reset()">重置</button>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="prompt" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					提示信息
				</h4>
			</div>
			<div class="modal-body">
				<p id="prompt-msg"></p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">
					关闭
				</button>
			</div>
		</div>
	</div>
</div>

<%@ include file="include/footer.jsp"%>
</body>
</html>