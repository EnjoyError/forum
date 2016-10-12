<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="include/global.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="include/head.jsp"%>
	<link href="${ctx}/static/css/home.css" rel="stylesheet" type="text/css" />
	<link href="${ctx}/static/css/topic.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${ctx}/static/js/topic.js"></script>
</head>
<body>
<%@ include file="include/navbar.jsp"%>

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
				<a href="${ctx}/index">首页</a>
			</div>
			<div class="col-md-offset-10 text-center">
				<p>当前时区为 UTC + 8 小时</p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-9">
				<h3>新闻和通知</h3>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12 text-center">
				<h4>发表主题</h4>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				<p>文章标题:</p>
			</div>
			
			<div class="col-md-8">
				<input class="topic-edit-title" type="text" size="50" />
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				<span>帖子内容:</span>
			</div>
			
			<div class="col-md-8">
				<input type="button" value=" B " />
				<input type="button" value=" i " />
				<input type="button" value=" u " />
				<input type="button" value=" Quote " />
				<input type="button" value=" Code " />
				<input type="button" value=" List " />
				<input type="button" value=" List= " />
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				<p>请在这里输入正文 </p>
			</div>
			
			<div class="col-md-8">
				<p>提示：点击格式选项可以将格式直接应用到选中的文字上</p>
			</div>
			
			<div class="col-md-1">
				<p class="topic-palette-text">文字颜色</p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				<p class="topic-emoticon-text">表情</p>
				<table>
					<tr>
						<td><img src="${ctx}/static/image/emoticon/Adore.png" alt=":Adore" title=":Adore" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/Afterboom.png" alt=":Afterboom" title=":Afterboom" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/Angry.png" alt=":Angry" title=":Angry" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/Cool.png" alt=":Cool" title=":Cool" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/Cry.png" alt=":Cry" title=":Cry" width="48" height="48"></td>
					</tr>
					<tr>
						<td><img src="${ctx}/static/image/emoticon/em01.gif" alt=":em01" title=":em01" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/em02.gif" alt=":em02" title=":em02" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/em03.gif" alt=":em03" title=":em03" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/em04.gif" alt=":em04" title=":em04" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/em05.gif" alt=":em05" title=":em05" width="48" height="48"></td>
					</tr>
					<tr>
						<td><img src="${ctx}/static/image/emoticon/em06.gif" alt=":em06" title=":em06" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/em09.gif" alt=":em09" title=":em09" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/em11.gif" alt=":em11" title=":em11" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/Faint.png" alt=":Faint" title=":Faint" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/Grimace.png" alt=":Grimace" title=":Grimace" width="48" height="48"></td>
					</tr>
					<tr>
						<td><img src="${ctx}/static/image/emoticon/Haha.png" alt=":Haha" title=":Haha" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/Hehe.png" alt=":Hehe" title=":Hehe" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/Love.png" alt=":Love" title=":Love" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/Misdoubt.png" alt=":Misdoubt" title=":Misdoubt" width="48" height="48"></td>
						<td><img src="${ctx}/static/image/emoticon/Music.png" alt=":Music" title=":Music" width="48" height="48"></td>
					</tr>
				</table>
				<p class="topic-emoticon-more">查看更多表情</p>
			</div>
			
			<div class="col-md-8">
				<textarea class="topic-edit-textbox"></textarea>
			</div>
			
			<div class="col-md-1">
				<table class="topic-palette-body"></table>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-3 topic-edit-option">
				<span>选项:</span>
				<p>BBCode 允许</p>
				<p>[img] 允许</p>
				<p>[flash] 允许</p>
				<p>[url] 允许</p>
				<p>表情 允许</p>
			</div>
			
			<div class="col-md-8 topic-edit-check">
				<div>
					<input type="checkbox" />禁止解析BBCode
				</div>
				<div>
					<input type="checkbox" />禁止生成表情
				</div>
				<div>
					<input type="checkbox" />禁止自动生成超链接
				</div>
				<div>
					<input type="checkbox" />添加签名（签名可以在用户控制面板修改）
				</div>
				<div>
					<input type="checkbox" />有人回复时，给我发送一封Email
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12 text-center">
				<input type="button" value="预览" />
				<input type="button" value="提交" />
				<input type="button" value="保存" />
				<input type="button" value="取消" />
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12 text-center">
				<h4>上传附件</h4>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				<p>上传附件前，请在下面填写详细信息</p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				<p>文件名</p>
			</div>
			
			<div class="col-md-8">
				<input type="file" />
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				<p>文件注释</p>
			</div>
			
			<div class="col-md-8">
				<textarea></textarea>
				<input type="button" value="添加文件" />
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12 text-center">
				<input type="button" value="预览" />
				<input type="button" value="提交" />
				<input type="button" value="取消" />
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">
				<p></p>
			</div>
		</div>
	</div>
</div>

<%@ include file="include/footer.jsp"%>
</body>
</html>