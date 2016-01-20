define('components/tip/tip.js', function (require, exports, module) {

	console.log('tip.js is running...');

	var Vue = require('vue');

	module.exports = Vue.extend({
		props: ['close'], 
		template: __inline('./tpl/tip.tpl'),
		data:function () {
			return {
				message: '账号密码错误'
			}
		},
		methods: {
			toClose: function () {
				this.close = false;
				console.log(this.$parent);
				console.log(this.$root);
			}
		}
	})

});