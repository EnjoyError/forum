var app = angular.module('webApp', []);

app.service('modalService', function() {
	this.show = function(msg) {
		$('#prompt-msg').html(msg);
		$('#prompt').modal('show');
	}
	
	this.hide = function() {
		$('#prompt-msg').html('');
		$('#prompt').modal('hide');
	}
});

app.controller('registerCtrl', function($scope, modalService) {
	$scope.username = '';
	$scope.email = '';
	$scope.password = '';
	$scope.repassword = '';
	$scope.captcha = '';
	
	$scope.submit = function() {
		if ($scope.username == '') {
			modalService.show('请填写用户名');
			return;
		}
		
		if (!/\w{4,20}/.test($scope.username)) {
			modalService.show('用户名为3～20个字符(字母和数字)');
			return;
		}
		
		if ($scope.email == '') {
			modalService.show('请填写email地址');
			return;
		}
		
		if (!/^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/.test($scope.email)) {
			modalService.show('email地址不合法');
			return;
		}
		
		if ($scope.password == '') {
			modalService.show('请输入密码');
			return;
		}
		
		if (!/\w{6,}/.test($scope.password)) {
			modalService.show('密码必须大于6位');
			return;
		}
		
		if ($scope.repassword == '') {
			modalService.show('请输入确认密码');
			return;
		}
		
		if ($scope.password != $scope.repassword) {
			modalService.show('两次输入的密码不一致');
			return;
		}
		
		if ($scope.captcha == '') {
			modalService.show('请输入验证码');
			return;
		}
		
		var paramJson = {
			username: $scope.username,
			email: $scope.email,
			password: $scope.password,
			captcha: $scope.captcha
		};
		$.ajax({
			type: 'post',
			url: global.ctx + '/user/register',
			dataType:"json",
			contentType:"application/json",
			data: JSON.stringify(paramJson),
			success: function(data) {
				if (data.success) {
					window.location.href = global.ctx + '/login';
				} else {
					modalService.show(data.message);
				}
			}
		});
	}
	
	$scope.reset = function() {
		$scope.username = '';
		$scope.email = '';
		$scope.password = '';
		$scope.repassword = '';
		$scope.captcha = '';
	}
	
	$scope.refresh = function() {
		var now = new Date();
		var url = global.ctx + '/captcha?time=' + now.getTime();
		$('#captchaImg').attr('src', url);
	}
});