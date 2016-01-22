
define('components/check/check.js', function (require, exports, module){

	console.log('check.js is running...');

	var Vue = require('vue');

	module.exports = Vue.extend({
		template: __inline('./tpl/check.tpl'),
		data: function () {
			
			return {
				lists: []
			}
		},
		created: function () {

			var _this = this;
			var GH = localStorage.getItem('GH');
			var date = new Date(),
				time = date.getTime();

			if (GH) {

				$.ajax({
					url: 'http://10.252.56.175:8080/dailyreport/api',
					data: {
						action: 'list',
						id: GH
					},
					dataType: 'jsonp',
					success: function (data) {

						console.log(data)
						
						_this.lists = data;

					}
				});

			}

		},
		events: {
			'test': function (msg) {
				this.lists.push(msg); 
			}
		}
	});

});