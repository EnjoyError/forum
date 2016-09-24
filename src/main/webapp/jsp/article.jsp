<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/jsp/include/global.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="/jsp/include/head.jsp"%>
</head>
<body>
<%@ include file="/jsp/include/navbar.jsp"%>

<div class="headerwrap">
	<div class="container">
		<div class="row headerwrap-nav">
			<div class="col-xs-1">
				<img src="${ctx}/static/image/icon_mini_login.gif" alt="*" height="13" width="12" />
				<a href="${ctx}/jsp/register.jsp">注册</a>
			</div>
			<div class="col-xs-1">
				<img src="${ctx}/static/image/icon_mini_register.gif" alt="*" height="13" width="12" />
				<a href="${ctx}/jsp/login.jsp">登录</a>
			</div>
			<div class="col-xs-offset-11 text-center">
				<img src="${ctx}/static/image/icon_mini_faq.gif" alt="*" height="13" width="12" />
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
			<div class="col-xs-12">
				<h3>Ubuntu手机、平板等你来拿！Ubuntu亚马逊AWS黑客马拉松9月正式开启</h3>
			</div>
		</div>
		
		<div class="row">
			<div class="col-xs-1 topic-img">
				<img src="${ctx}/static/image/button_topic_new.gif" />
			</div>
			<div class="col-xs-1 topic-img">
				<img src="${ctx}/static/image/button_topic_reply.gif" />
			</div>
			<div class="col-xs-3 topic-num">
				<p>分享到<b>0</b></p>
			</div>
			<div class="col-xs-7 text-right topic-num">
				<p>分页： 1 / 77 [ 2 篇帖子 ]</p>
			</div>
		</div>
		
		<ul class="list-group">
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-1 text-center">
						<p>  打印预览</p>
					</div>
					<div class="col-xs-offset-10">
						<div class="text-right">
							<a>上一个主题</a> | <a>下一个主题</a>
						</div>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-2 text-center">
						<p>作者</p>
					</div>
					<div class="col-xs-10 text-center">
						<p>内容</p>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-2">
						<p>1 楼  <a>jazzi</a></p>
					</div>
					<div class="col-xs-10">
						<div class="col-xs-9">
							<p><span>文章标题<span>: IRC扫盲——你可以不会玩QQ，但不能不会IRC！</p>
						</div>
						<div class="col-xs-3 text-right">
							<div class="article-postdate">
								<img src="${ctx}/static/image/icon_post_target.gif" alt="帖子" title="帖子" height="9" width="12">
								<p>发表于: 2006-06-24 13:30</p>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row article-content">
					<div class="col-xs-2">
						<p><b>注册:</b> 2014-12-27 17:35</p>
						<p><b>帖子:</b> 27</p>
						<p><b>系统:</b> Ubuntu 14.10</p>
						<p><b>送出感谢:</b> 0 次</p>
						<p><b>接收感谢:</b> 0 次</p>
					</div>
					<div class="col-xs-10">
						<p>给大家发福利了，带来一场干货满满的培训会。</p>
						<p></p>
						<p>培训内容：</p>
						<ul>
							<li>Ubuntu 在IoT世界的使用</li>
							<li>什么是Ubuntu core，snap，以及snapcraft</li>
							<li>上手开发准备</li>
							<li>如何通过MQTT协议和AWS服务互通</li>
							<li>AWS账号的申请，开建，账号鉴证等等初建内容</li>
							<li>AWS云的IoT应用和使用</li>
						</ul>
						<p></p>
						<p>直播时间：8月31日下午2点到5点</p>
						<p></p>
						<p>在线视频直播观看链接：<a href="#">点击查看</a></p>
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-2">
						<p>2 楼  <a>jazzi</a></p>
					</div>
					<div class="col-xs-10">
						<div class="col-xs-9">
							<p><span>文章标题<span>: IRC扫盲——你可以不会玩QQ，但不能不会IRC！</p>
						</div>
						<div class="col-xs-3 text-right">
							<div class="article-postdate">
								<img src="${ctx}/static/image/icon_post_target.gif" alt="帖子" title="帖子" height="9" width="12">
								<p>发表于: 2006-06-24 13:30</p>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-2">
						<p><b>注册:</b> 2014-12-27 17:35</p>
						<p><b>帖子:</b> 27</p>
						<p><b>系统:</b> Ubuntu 14.10</p>
						<p><b>送出感谢:</b> 0 次</p>
						<p><b>接收感谢:</b> 0 次</p>
					</div>
					<div class="col-xs-10 article-content">
						<p>
							&nbsp;&nbsp;&nbsp;&nbsp;四年前，Adobe 决定停止更新 Linux 平台上的NPAPI版本 Flash Player，以后将只提供安全更新。如
							今 Adobe 改变了这一决定，宣布将保持各个分支的发布同步。Adobe 在声明中称，在完成充分的测试和收
							到社区的反馈后，他们将定期发布 Flash Player 的 NPAPI 版和 PPAPI 版，将保持大的版本号同步。
							Adobe做出这个决定主要是出于安全方面的考虑，因此部分特性如GPU 3D加速和付费视频的DRM在NPAPI 
							版上将不会完整实现，需要PPAPI 版。用户现在就可以下载 Linux 平台最新的NPAPI版 Flash Player。
						</p>
					</div>
				</div>
			</li>
		</ul>
		
		<ul class="list-group">
			<li class="list-group-item">
				<div class="col-xs-offset-4 topic-context">
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
				<p>正在浏览此版面的用户：没有注册用户 和 1 位游客<p>
			</div>
		</div>
	</div>
</div>

<%@ include file="/jsp/include/footer.jsp"%>
</body>
</html>