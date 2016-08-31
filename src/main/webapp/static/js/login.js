$(function() {
	$('#alert').hide();
})

var app = angular.module('webApp', []);

app.service('tipService', function() {
	this.showTip = function(elem, msg) {
		$(elem).popover({
			title: '提示信息',
			container: 'body',
			trigger: 'manual',
			placement: 'right',
			content: msg
		});
		$(elem).popover('show');
	}
	
	this.hideTip = function(elem) {
		$(elem).popover('hide');
	}
	
	this.showAlert = function(msg) {
		$('#alert .alert-success').html(msg)
		$('#alert').show();
	}
	
	this.hideAlert = function() {
		$('#alert').hide();
	}
});

app.controller('loginCtrl', function($scope, tipService) {
	$scope.username = '';
	$scope.password = '';
	$scope.rememberMe = false;
	
	$scope.login = function() {
		if ($.trim($scope.username) == '') {
			tipService.showTip('#username', '用户名不能为空');
			return;
		}
		
		if (!/\w{4,20}/.test($scope.username)) {
			tipService.showTip('#username', '用户名为3～20个字符(字母和数字)');
			return;
		}
		
		if ($.trim($scope.password) == '') {
			tipService.showTip('#password', '密码不能为空');
			return;
		}
		
		if (!/\w{6,}/.test($scope.password)) {
			tipService.showTip('#password', '密码必须大于6位');
			return;
		}
		
		var userData = {username: $scope.username, password: $scope.password, rememberMe: $scope.rememberMe};
		$.ajax({
			type: 'post',
			url: global.ctx + '/login.action?method=login',
			dataType:"json",
			contentType:"application/json",
			data: JSON.stringify(userData),
			success: function(data) {
				if (data.success) {
					window.location.href = global.ctx + '/jsp/index.jsp';
				} else {
					tipService.showAlert(data.message);
				}
			}
		});
	}
	
	$scope.hideUserTip = function() {
		tipService.hideTip('#username');
		tipService.hideAlert();
	}
	
	$scope.hidePasswordTip = function() {
		tipService.hideTip('#password');
		tipService.hideAlert();
	}
});