define('components/main/main.js', function (require, exports, module) {
	
	console.log('main.js is running...');

	var Vue = require('vue');

	module.exports = Vue.extend({
		template: __inline('./tpl/main.tpl'),
		activate: function (done) {
			done();
		},
		data: function () {
			return {
				view: 'page-check',
				tabs: [
					{
						name: '查看',
						eve: "page-check"
					},
					{
						name: '周报',
						eve: "page-weekly"
					}
				],
				isA: true,
				isB: false,
				listsCach: []
			}
		},
		events: {
			'child-msg': function (msg) {
		      	console.log(msg);
		      	this.$broadcast('test', msg);
		    }
		},
		methods: {
			switchPage: function (page, e) {
				var $el = e.currentTarget;
				this.view = page;
				$el.classList.add('on');
				if ($el.previousElementSibling) {
					$el.previousElementSibling.classList.remove('on');
				} else if ($el.nextElementSibling) {
					$el.nextElementSibling.classList.remove('on');
				}
			}, 
			quit: function () {
				localStorage.removeItem('GH');
				localStorage.removeItem('NAME');
				window.location.hash = 'page-a';
			}
		},
		components: {
			'page-weekly': require('weekly'),
			'page-check': require('check')
		}
	});

});	