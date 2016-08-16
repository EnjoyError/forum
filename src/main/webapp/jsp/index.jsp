<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include  file="/jsp/include/global.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>${website.title}</title>
	<link href="${ctx}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="${ctx}/js/jquery-3.1.0.min.js"></script>
	<script src="${ctx}/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">${website.title}</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">首页</a></li>
				<li><a href="#">论坛</a></li>
				<li><a href="#">wiki</a></li>
				<li><a href="#">留言</a></li>
			</ul>
		</div>
		<div>
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="关键字" />
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
			</form>
		</div>
	</nav>
	
	<div class="row">
		<div class="col-xs-1">
			<a href="#">注册</a>
		</div>
		<div class="col-xs-1">
			<a href="#">登录</a>
		</div>
		<div class="col-xs-offset-11 text-center">
			<a href="#">FAQ</a>
		</div>
	</div>
	
	<div class="row">
		<div class="col-xs-1">
			<a href="#">首页</a>
		</div>
		<div class="col-xs-offset-10">
			<p>当前时区为 UTC + 8 小时</p>
		</div>
	</div>
	
	<div class="row">
		<ul class="list-group">
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-8">
						<p>版面</p>
					</div>
					<div class="col-xs-1">
						<p>主题</p>
					</div>
					<div class="col-xs-1">
						<p>帖子</p>
					</div>
					<div class="col-xs-2">
						<p>最新文章</p>
					</div>
				</div>
			</li>
		</ul>
		
		<ul class="list-group">
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-8">
						<p>公告/注意事项</p>
					</div>
					<div class="col-xs-4">
						<p></p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
		</ul>
		
		<ul class="list-group">
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-8">
						<p>公告/注意事项</p>
					</div>
					<div class="col-xs-4">
						<p></p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
		</ul>
		
		<ul class="list-group">
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-8">
						<p>公告/注意事项</p>
					</div>
					<div class="col-xs-4">
						<p></p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
					</div>
					<div class="col-xs-7">
						<h4>新闻和通知</h4>
						<p>最新ubuntu/linux/开源新闻或者其它IT相关资讯</p>
					</div>
					<div class="col-xs-1">
						<p>3817</p>
					</div>
					<div class="col-xs-1">
						<p>56928</p>
					</div>
					<div class="col-xs-2">
						<p>2016-08-12 8:48</p>
						<p>onlylove 查看最新帖子</p>
					</div>
				</div>
			</li>
		</ul>
	</div>
	
	<div class="row">
		<ul class="list-group">
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-12">
						<p>在线用户</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1">
						<p></p>
					</div>
					<div class="col-xs-11">
						<p>线上共有 16 位用户：11 位注册用户，0 位隐身用户和 5 位游客 (基于过去 5 分钟内的用户活动记录)</p>
						<p>最高在线记录：5167，发生于 2008-08-15 5:57</p>
						<p>&nbsp;</p>
						<p>注册用户： Baidu [Spider], Bing [Bot], Exabot [Bot], Google [Bot], Google Feedfetcher, KBTyanhuo, onlylove, poloshiao, Sogou [Spider], Yahoo [Bot], 科学之子</p>
					</div>
				</div>
			</li>
		</ul>
	</div>
	
	<div class="row">
		<div class="col-xs-12 text-center">
			<div class="col-xs-4">
				<p>有新帖</p>
			</div>
			<div class="col-xs-4">
				<p>无新帖</p>
			</div>
			<div class="col-xs-4">
				<p>版面锁定</p>
			</div>
		</div>
		<div class="text-center">
			<p>本站点为公益性站点，用于推广开源自由软件，由 DiaHosting VPS 和 BudgetVM VPS 提供服务。</p>
			<p>我们认为：软件应可免费取得，软件工具在各种语言环境下皆可使用，且不会有任何功能上的差异；</p>
			<p>人们应有定制和修改软件的自由，且方式不受限制，只要他们自认为合适。</p>
			<p>Powered by phpBB © 2000, 2002, 2005, 2007 phpBB Group </p>
		</div>
	</div>
</div>
</body>
</html>