
define('components/weekly/weekly.js', function (require, exports, module){

	console.log('weekly.js is running...');

	var Vue = require('vue');
	var check = require('check');
	console.log('checkcheckcheckcheckcheck');
	console.log(check);
	module.exports = Vue.extend({
		template: __inline('./tpl/weekly.tpl'),
		activate: function (done) {
			done();
		},
		data: function () {
			return {
				current: '',
				next: ''
			}
		},
		methods: {
			submit: function () {

				var _this = this;

				var time = this.getTime(),
					content = this.current,
					GH = localStorage.getItem('GH'),
					name = localStorage.getItem('NAME'),
					data = {
						id: GH,
						action: 'add',
						name: name,
						date: time,
						content: content
					};

				$.ajax({
					url: 'http://10.252.56.175:8080/dailyreport/api',
					data: data,
					dataType: 'jsonp',
					success: function (data) {

						alert('success');
						_this.$dispatch('child-msg', {
							name: name,
							date: time,
							content: content
						});
					}
				})
			},
			getTime: function () {

				var date = new Date();
				var year = date.getFullYear();
				var month = date.getMonth()+1;
				var date1 = date.getDate();
				var res = year + "-" + month + "-" + date1;

				return res
			}
		}
	});

});