<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>无标题文档</title>

<link href="/forum/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="/forum/js/jquery-3.1.0.min.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="/forum/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container">

		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">首页</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">选择板块 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">板块一</a></li>
								<li><a href="#">板块二</a></li>
								<li><a href="#">板块三</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">板块四</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">板块五</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-right" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="username">
							<input type="password" class="form-control"
								placeholder="password">
						</div>
						<button type="submit" class="btn btn-default">登入</button>
					</form>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<div>
			<ol class="breadcrumb">
				<li><a href="#">首页</a></li>
				<li><a href="#">板块一</a></li>
				<li class="active">内容</li>
			</ol>
		</div>
		<div>
			<div class="panel panel-default">

				<div class="panel-heading">
					<h3 class="panel-title">注册</h3>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" role="form" action="register.action">
						<div class="form-group">
							<label for="username" class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="username"
									placeholder="username">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="password"
									placeholder="password">
							</div>
						</div>
						<div class="form-group">
							<label for="confirmpassword" class="col-sm-2 control-label">确认密码</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="confirmpassword"
									placeholder="confirmpassword">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">注册</button>
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
