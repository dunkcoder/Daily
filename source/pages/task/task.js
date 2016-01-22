define('static/js/task/task.js', function (require, exports, module) {

	console.log('task.js is running...');

	var Vue = require('vue');
	var zepto = require('zepto');

	var app = new Vue({
		el: '#task',
		data: {
			view: ''
		},
		components: {
			'page-a': require('login'),
			'page-b': require('main')
		}
	});

	//url2ls
	var host = 'http://10.252.56.175',
		port = ':8080',
		path = '/dailyreport/api',
		URL = host + port + path;
	localStorage.setItem('URL', URL);

	//hash管理page
	(function () {
		var hash = window.location.hash;

		//查看lg中是否登录
		var GH = localStorage.getItem('GH');

		if (GH) {
			window.location.hash = 'page-b';
		} else if (hash.length == 0) {
			window.location.hash = 'page-a';
		}

		//运用hash值来保存view状态 防止刷新回退
		function route () {

		  	app.view = window.location.hash.slice(1) || 'page-a'

		}

		window.addEventListener('hashchange', route);
		window.addEventListener('load', route);

	})();

});