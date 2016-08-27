<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/jsp/include/global.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="/jsp/include/head.jsp"%>
	<link href="${ctx}/css/plate.css" rel="stylesheet" type="text/css" />
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
				<a href="#">登录</a>
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
		
		<div class="row">
			<div class="col-xs-1 topic-img">
				<img src="${ctx}/image/button_topic_new.gif" />
			</div>
			<div class="col-xs-3 topic-num">
				<p>分页： 1 / 77 [ 3817 个主题 ]</p>
			</div>
			<div class="col-xs-offset-1 topic-context">
				<div>
					<p>显示主题:</p>
					<select>
						<option>全部主题</option>
					</select>
				</div>
				<div>
					<p>排序</p>
					<select>
						<option>发表时间</option>
					</select>
				</div>
				<div>
					<select>
						<option>降序</option>
						<option>升序</option>
					</select>
				</div>
				<div>
					<button>GO</button>
				</div>
			</div>
		</div>
		
		<div class="row">
			<p></p>
		</div>
		
		<ul class="list-group">
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-8 text-center">
						<p>主题</p>
					</div>
					<div class="col-xs-1">
						<p>作者</p>
					</div>
					<div class="col-xs-1">
						<p>回复总数</p>
					</div>
					<div class="col-xs-1">
						<p>阅读次数</p>
					</div>
					<div class="col-xs-1">
						<p>最新文章 </p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic-type">
					<h3>公告</h3>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/announce_read.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/announce_read.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/announce_read.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic-type">
					<h3>主题</h3>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/topic_read.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/sticky_read.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/topic_moved.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/topic_read_hot.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/topic_read_locked.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/topic_read.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/topic_read.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/topic_read.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row topic">
					<div class="col-xs-1">
						<img src="${ctx}/image/topic_read.gif" alt="没有未读文章" title="没有未读文章" />
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
					<div class="col-xs-1">
						<p>2016-08-12 8:48</p>
					</div>
					<div class="col-xs-1">
						<p>查看最新帖子</p>
					</div>
				</div>
			</li>
		</ul>
		
		<div class="row topic-page">
			<ul class="pagination">
			    <li><a href="#">&laquo;</a></li>
			    <li><a href="#">1</a></li>
			    <li class="disabled"><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li><a href="#">&raquo;</a></li>
			</ul>
		</div>
		
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">在线用户</h3>
			</div>
			<div class="panel-body">
				正在浏览此版面的用户：MSNbot Media 和 2 位游客
			</div>
		</div>
	</div>
</div>

<%@ include file="/jsp/include/footer.jsp"%>
</body>
</html>