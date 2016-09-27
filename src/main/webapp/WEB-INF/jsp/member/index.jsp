<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../include/global.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="../include/head.jsp"%>
	<link href="${ctx}/static/css/home.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include file="../include/navbar.jsp"%>

<div class="headerwrap">
	<div class="container">
		<div class="row">
			<div class="col-md-4 ucp-nav-left">
				<div>
					<img src="${ctx}/static/image/icon_mini_login.gif" alt="*" height="13" width="12" />
					<a href="#">退出[ user ]</a>
				</div>
				<div>
					<img src="${ctx}/static/image/icon_mini_message.gif" alt="*" height="13" width="12" />
					<a href="#"><strong>0</strong> 条新信息</a>
				</div>
			</div>
			<div class="col-md-8 ucp-nav-right">
				<div>
					<img src="${ctx}/static/image/icon_mini_faq.gif" alt="*" height="13" width="12" />
					<a href="#">FAQ</a>
				</div>
				<div>
					<img src="${ctx}/static/image/icon_mini_search.gif" alt="*" height="13" width="12" />
					<a href="#">搜索</a>
				</div>
				<div>
					<img src="${ctx}/static/image/icon_mini_members.gif" alt="*" height="13" width="12" />
					<a href="#">用户列表</a>
				</div>
				<div>
					<img src="${ctx}/static/image/icon_mini_toplist.gif" alt="*" height="13" width="12" />
					<a href="#">热门感谢</a>
				</div>
				<div>
					<img src="${ctx}/static/image/icon_mini_thanks.gif" alt="*" height="13" width="12" />
					<a href="#">个人感谢信息</a>
				</div>
				<div>
					<img src="${ctx}/static/image/icon_mini_profile.gif" alt="*" height="13" width="12" />
					<a href="#">用户控制面板</a>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-4">
				<a>查看没有回复的主题</a> | <a>查看活跃的主题</a>
			</div>
			<div class="col-md-8 text-right">
				<a>查看新帖</a> | <a>查看您的主题</a> | <a>查看您的帖子</a> | <a>查看书签</a>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">
				<p></p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-1">
				<a href="${ctx}/">首页</a>
			</div>
			<div class="col-md-offset-10 text-center">
				<p>当前时区为 UTC + 8 小时</p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				<%@ include file="menu.jsp"%>
			</div>
			
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title text-center">用户控制面板</h3>
					</div>
					<div class="panel-body">
						<p class="text-center">欢迎来到用户控制面板。这里您可以监视，查看和更新您的资料，参数，订阅版面和主题。</p>
						<p class="text-center">您还可以给其他用户发送短信 (如果允许)。在继续下一步操作前请确认您已经仔细阅读了所有的公告。</p>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title text-center">重要公告</h3>
					</div>
					<div class="panel-body list-group">
						<div class="list-group-item">
							<div class="row">
								<div class="col-md-1">
									<img src="${ctx}/static/image/announce_unread.gif" alt="未读文章" title="未读文章" height="18" width="19">
								</div>
								<div class="col-md-8 ucp-notice-text">
									<img src="${ctx}/static/image/icon_topic_newest.gif" alt="查看最新未读帖子" title="查看最新未读帖子" height="9" width="18">
									<p> AWS Ubuntu 黑客松Ubuntu Core & Snap技术培训正在进行中</p>
								</div>
								<div class="col-md-3">
									<div>
										<p>2016-08-31 15:05</p>
										<div>
											<a>onlylove</a>
											<img src="${ctx}/static/image/icon_topic_latest.gif" alt="查看最新帖子" title="查看最新帖子" height="9" width="18">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="list-group-item">
							<div class="row">
								<div class="col-md-1">
									<img src="${ctx}/static/image/announce_unread.gif" alt="未读文章" title="未读文章" height="18" width="19">
								</div>
								<div class="col-md-8 ucp-notice-text">
									<img src="${ctx}/static/image/icon_topic_newest.gif" alt="查看最新未读帖子" title="查看最新未读帖子" height="9" width="18">
									<p>查看最新未读帖子 Ubuntu开发者创新大赛线下培训 - 征集活动学校</p>
								</div>
								<div class="col-md-3">
									<div>
										<p>2016-08-31 15:05</p>
										<div>
											<a>onlylove</a>
											<img src="${ctx}/static/image/icon_topic_latest.gif" alt="查看最新帖子" title="查看最新帖子" height="9" width="18">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title text-center">您的信息</h3>
					</div>
					<div class="panel-body list-group">
						<p>注册: 	2014-04-14 19:27</p>
						<p>发贴总数: 2</p>
						<p style="position: relative;left:62px">[所有帖子的 0.00% / 每天 0.00 篇帖子]</p>
						<p style="position: relative;left:62px">显示您的帖子</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>
</body>
</html>