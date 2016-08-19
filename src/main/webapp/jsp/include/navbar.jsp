<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!-- 导航栏 -->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#" style="font-size:50px">${website.title}</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a href="#">首页</a></li>
				<li><a href="#">论坛</a></li>
				<li><a href="#">wiki</a></li>
				<li><a href="#">留言</a></li>
			</ul>
			<form class="navbar-form navbar-right">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="关键字" />
				</div>
				<button type="submit" class="btn btn-default navbar-btn">搜索</button>
			</form>
		</div>
	</div>
</nav>
<!-- 导航栏 end -->