<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/jsp/include/global.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="/jsp/include/head.jsp"%>
	<link href="${ctx}/css/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include file="/jsp/include/navbar.jsp"%>

<div class="headerwrap">
	<div class="container">
		<div class="row">
			<div class="col-xs-1">
				<img src="${ctx}/image/icon_mini_login.gif" alt="*" height="13" width="12" />
				<a href="${ctx}/jsp/register.jsp">注册</a>
			</div>
			<div class="col-xs-1">
				<img src="${ctx}/image/icon_mini_register.gif" alt="*" height="13" width="12" />
				<a href="${ctx}/jsp/login.jsp">登录</a>
			</div>
			<div class="col-xs-offset-11 text-center">
				<img src="${ctx}/image/icon_mini_faq.gif" alt="*" height="13" width="12" />
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read_subforum.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="${ctx}/jsp/plate.jsp">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read_subforum.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="${ctx}/jsp/plate.jsp">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="${ctx}/jsp/plate.jsp">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read_subforum.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="${ctx}/jsp/plate.jsp">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read_subforum.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="${ctx}/jsp/plate.jsp">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read_subforum.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="#">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="#">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="#">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="#">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="#">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="#">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/forum_read.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
					</div>
					<div class="col-xs-7">
						<h4><a href="#">新闻和通知</a></h4>
						<span>最新ubuntu/linux/开源新闻或者其它IT相关资讯</span>
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
					<div class="col-xs-12">
						<p>在线用户</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1 online">
						<img src="${ctx}/image/whosonline.gif" alt="没有未读文章" title="在线用户" height="25" width="46" />
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
		
		<ul class="list-group">
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-12">
						<p>统计信息</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1 statistics">
						<img src="${ctx}/image/whosonline.gif" alt="没有未读文章" title="统计信息" height="25" width="46" />
					</div>
					<div class="col-xs-11">
						<p>帖子总数：3011819 | 主题总数：386335 | 注册用户总数：508016 | 最新注册的用户：null</p>
					</div>
				</div>
			</li>
		</ul>
		
		<div class="row">
			<div class="col-xs-12 text-center">
				<div class="col-xs-4">
					<div>
						<p>有新帖</p>
					</div>
				</div>
				<div class="col-xs-4">
					<div class="posttype">
						<img src="${ctx}/image/forum_read.gif" alt="没有未读文章" title="没有未读文章" height="25" width="46" />
						<p>无新帖</p>
					</div>
				</div>
				<div class="col-xs-4">
					<div class="posttype">
						<img src="${ctx}/image/forum_read_locked.gif" alt="无新帖 [ 锁定 ]" title="无新帖 [ 锁定 ]" height="25" width="46" />
						<p>版面锁定</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="/jsp/include/footer.jsp"%>
</body>
</html>