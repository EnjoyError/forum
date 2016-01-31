<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>无标题文档</title>

<link href="/forum/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="https://code.jquery.com/jquery.js"></script>
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
				<div class="navbar-form navbar-right">
					<form role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="username">
							<input type="password" class="form-control"
								placeholder="password">
						</div>
						<button type="submit" class="btn btn-default">登入</button>
						<a class="btn btn-default" href="register.jsp">注册</a>
					</form>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>
		<div>
			<ol class="breadcrumb">
				<li><a href="#">首页</a></li>
				<li><a href="#">板块一</a></li>
				<li class="active">内容</li>
			</ol>
		</div>
		<div>
			<div>
				<ul class="list-group">
					<li class="list-group-item">Cras justo odio</li>
					<li class="list-group-item">Dapibus ac facilisis in</li>
					<li class="list-group-item">Morbi leo risus</li>
					<li class="list-group-item">Porta ac consectetur ac</li>
					<li class="list-group-item">Vestibulum at eros</li>
				</ul>
			</div>
			<nav>
			<ul class="pagination">
				<li><a href="#" aria-label="Previous"> <span
						aria-hidden="true">&laquo;</span>
				</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
			</nav>
		</div>
	</div>
</body>
</html>
