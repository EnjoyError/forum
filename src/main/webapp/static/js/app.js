/**
 * 首页
 */
var indexApp = angular.module('indexApp', []);

indexApp.controller('menubarCtrl', function($scope, $http) {
	$scope.isLogin = false;
	
	$http.get(global.ctx + '/static/json/notlogin.json')
	     .success(function(response) {
	    	 if (response.success == true) {
	    		 $scope.isLogin = true;
	    		 $scope.username = response.data.username;
	    	 }
	     });
});

indexApp.controller('indexCtrl', function($scope, $http) {
	$http.get(global.ctx + '/static/json/index.json')
	     .success(function(response) {
	    	 $scope.data = response.data;
	     });
});



/**
 * 登录页面
 */
var loginApp = angular.module('loginApp', []);

loginApp.directive('popoverDirective', function() {
	return {
		restrict: 'E',
		scope: {
			content: '@content'
		},
		template: '<div class="popover fade right in" role="tooltip" style="top: -24px; left: 165px; display: block;">' +
			'<div class="arrow" style="top: 50%;"></div>' +
			'<h3 class="popover-title">提示信息</h3>' +
			'<div class="popover-content">{{ content }}</div>' +
			'</div>'
	};
});

loginApp.controller('loginCtrl', function($scope, $http) {
	$scope.username = '';
	$scope.password = '';
	$scope.rememberMe = false;
	
	// 弹框提示信息
	$scope.tipContent = '';
	$scope.showUserTip = false;
	$scope.showPassTip = false;
	
	// 错误提示信息
	$scope.alertContent = '';
	$scope.alertShow = false;
	
	var _hideTip = function() {
		$scope.showUserTip = false;
		$scope.showPassTip = false;
		$scope.tipContent = '';
		
		$scope.alertShow = false;
		$scope.alertContent = '';
	}
	
	var _showUserTip = function(content) {
		$scope.showUserTip = true;
		$scope.tipContent = content;
	}
	
	var _showPassTip = function(content) {
		$scope.showPassTip = true;
		$scope.tipContent = content;
	}
	
	var _showAlert = function(msg) {
		$scope.alertShow = true;
		$scope.alertContent = msg;
	}
	
	
	
	$scope.hideTip = function() {
		_hideTip();
	}
	
	$scope.login = function() {
		if ($.trim($scope.username) == '') {
			_showUserTip('用户名不能为空');
			return;
		}
		
		if (!/\w{4,20}/.test($scope.username)) {
			_showUserTip('用户名为3～20个字符(字母和数字)');
			return;
		}
		
		if ($.trim($scope.password) == '') {
			_showPassTip('密码不能为空');
			return;
		}
		
		if (!/\w{6,}/.test($scope.password)) {
			_showPassTip('密码必须大于6位');
			return;
		}
		
		$http.post(global.ctx + '/user/login', {
			username: $scope.username, 
			password: $scope.password, 
			rememberMe: $scope.rememberMe
		}).success(function(data) {
			if (data.success) {
				window.location.href = global.ctx + '/index';
			} else {
				_showAlert(data.message);
			}
		});
	}
});



/**
 * 注册页面
 */
var registerApp = angular.module('registerApp', []);

registerApp.service('modalService', function() {
	this.show = function(msg) {
		$('#prompt-msg').html(msg);
		$('#prompt').modal('show');
	}
	
	this.hide = function() {
		$('#prompt-msg').html('');
		$('#prompt').modal('hide');
	}
});

registerApp.controller('registerCtrl', function($scope, modalService) {
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



/**
 * 发表主题页面
 */
var topicApp = angular.module('topicApp', []);

topicApp.directive('paletteDirective', function() {
	return {
		controller: "labelCtrl",
		template: function(tElement, tAttrs) {
			var colors = ['00', '40', '80', 'BF', 'FF'];
			var table = angular.element('<table></table>');
			
			for (var number = 0; number < colors.length; number++) {
				for (var col = 0; col < colors.length; col++) {
					var tr = angular.element('<tr></tr>');
					for (var row = 0; row < colors.length; row++) {
						var color = colors[number] + colors[col] + colors[row];
						tr.append('<td style="background-color: #' + color + '" data-color="#' + color + '"></td>');
					}
					table.append(tr);
				}
			}
			
			return table;
		},
		link: function(scope, element, attrs, labelCtrl) {
			element.find('td').bind('click', function() {
				var $this = angular.element(this);
				var color = $this.data('color');
				
				labelCtrl.editText('[color=' + color + ']', '[/color]');
			});
		}
	};
});

topicApp.controller('labelCtrl', function($scope) {
	this.editText = function(prefix, suffix) {
		var $editor = angular.element('#editor');
		var textarea = $editor.get(0);
		
		var content = $editor.val();
		
		var start = textarea.selectionStart;
		var end = textarea.selectionEnd;
		
		var frontText = content.substr(0, start);
		var backText = content.substr(end, content.length);
		var selectText = content.substr(start, end);
		
		if (start == end) {
			content = frontText + prefix + suffix + backText;
			
			$editor.val(content);
			textarea.focus();
			
			textarea.selectionStart = start + prefix.length;
			textarea.selectionEnd = end + prefix.length;
		} else {
			content = frontText + prefix + selectText + suffix + backText;
			
			$editor.val(content);
			textarea.focus();
			
			textarea.selectionStart = content.length;
			textarea.selectionEnd = content.length;
		}
	}
	
	$scope.click = function($target) {
	}
});

topicApp.controller('emoticonCtrl', function($scope) {
});

topicApp.controller('editorCtrl', function($scope) {
});

topicApp.controller('topicCtrl', function($scope) {
	$scope.preview = function() {
		console.log('preview');
	}
	
	$scope.submit = function() {
		console.log('submit');
	}
	
	$scope.save = function() {
		console.log('svae');
	}
	
	$scope.cancel = function() {
		console.log('cancel');
	}
});

topicApp.controller('uploadCtrl', function($scope) {
	$scope.addFile = function() {
		console.log('addFile');
	}
	
	$scope.preview = function() {
		console.log('preview');
	}
	
	$scope.submit = function() {
		console.log('submit');
	}
	
	$scope.cancel = function() {
		console.log('cancel');
	}
});