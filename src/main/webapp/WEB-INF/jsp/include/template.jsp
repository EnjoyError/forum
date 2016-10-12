<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script type="text/x-mustache" id="notLoginedTemplate">
	<div class="col-xs-1">
		<img src="${ctx}/static/image/icon_mini_login.gif" alt="*" height="13" width="12" />
		<a href="${ctx}/register">注册</a>
	</div>
	<div class="col-xs-1">
		<img src="${ctx}/static/image/icon_mini_register.gif" alt="*" height="13" width="12" />
		<a href="${ctx}/login">登录</a>
	</div>
	<div class="col-xs-offset-11 text-center">
		<img src="${ctx}/static/image/icon_mini_faq.gif" alt="*" height="13" width="12" />
		<a href="#">FAQ</a>
	</div>
</script>

<script type="text/x-mustache" id="loginedTemplate">
	<div class="col-md-4 ucp-nav-left">
		<div>
			<img src="${ctx}/static/image/icon_mini_login.gif" alt="*" height="13" width="12" />
			<a href="#">退出[ {{username}} ]</a>
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
</script>