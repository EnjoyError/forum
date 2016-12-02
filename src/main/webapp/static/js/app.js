var indexApp = angular.module('indexApp', []);

indexApp.controller('loginCtrl', function($scope, $http) {
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