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
		<div class="row">
			<div class="col-xs-1">
				<img src="${ctx}/image/icon_mini_register.gif" alt="*" height="13" width="12">
				<a href="${ctx}/jsp/login.jsp">登录</a>
			</div>
			<div class="col-xs-offset-11 text-center">
				<img src="${ctx}/image/icon_mini_faq.gif" alt="*" height="13" width="12">
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
				<div class="row text-center">
					<div class="col-xs-12">
						<p>注册</p>
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-4">
						<p>用户名:</p>
					</div>
					<div class="col-xs-8">
						<input type="text" placeholder="3～20个字符之间" />
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-4">
						<p>Email 地址:</p>
					</div>
					<div class="col-xs-8">
						<input type="text" />
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-4">
						<p>密码:</p>
					</div>
					<div class="col-xs-8">
						<input type="text" placeholder="6～30个字符之间" />
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-4">
						<p>确认新密码:</p>
					</div>
					<div class="col-xs-8">
						<input type="text" />
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row text-center">
					<div class="col-xs-12">
						<p>验证码</p>
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-12">
						<p>为了防止机器自动注册行为，请输入一组验证码，验证码显示在下面的图片中。</p>
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-offset-4">
						<img src="${ctx}/image/ucp.png" alt="验证码" />
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row">
					<div class="col-xs-4">
						<p>验证码:</p>
					</div>
					<div class="col-xs-8">
						<input type="text" placeholder="不区分大小写" maxLength="4" />
						<button type="button" class="btn btn-primary">刷新验证码</button>
					</div>
				</div>
			</li>
			
			<li class="list-group-item">
				<div class="row text-center">
					<div class="col-xs-12">
						<button type="button" class="btn btn-primary">提交</button>
						<button type="button" class="btn btn-primary">重置</button>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>

<%@ include file="/jsp/include/footer.jsp"%>
</body>
</html>