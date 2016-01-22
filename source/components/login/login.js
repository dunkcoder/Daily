
define('components/login/login.js', function (require, exports, module){

	console.log('login.js is running...');

	var Vue = require('vue');
	var zepto = require('zepto');

	module.exports = Vue.extend({
		template: __inline('./tpl/login.tpl'),
		props: ['listDate'],
		activate: function (done) {
			done();
		},
		data: function (){
			return {
				username: '',
				test1: false,
				once: true,
				tip: false
			}
		},
		methods: {
			sub: function () {
				var parent = this.$parent,
					$this = this,
					un = this.username,
					date = new Date(),
					time = date.getTime();

				var URL = localStorage.getItem('URL');

				//执行校验
				$this.unTest();

				if (!this.test1 && !this.once) {

					$.ajax({
						url: URL,
						data: {
							action: 'list',
							_: time,
							id: un
						},
						dataType: 'jsonp',
						success: function (data) {
							console.log(data);
							if (data.length > 0) {
								//un2ls
								localStorage.setItem('GH',$this.username);
								// localStorage.setItem('NAME',$this.username);
								//hash
								window.location.hash = 'page-b';

							} else {
								$this.tip = true;
							}
						}
					});
				}
			},
			unTest: function () {
				console.log(this.$parent);
				this.test1 = (this.username.length >= 4) ? false : true;
				this.once = false;
			}
		},
		components: {
			'tip-component': require('tip')
		}
	});

});