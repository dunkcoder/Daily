define("components/login/login.js",function(n,t,i){console.log("login.js is running...");{var o=n("vue");n("zepto")}i.exports=o.extend({template:'<style>*{padding:0;margin:0;text-decoration:none;list-style:none;box-sizing:border-box}body{background-color:#f2f5e9;font-size:14px}input{display:block;width:100%;margin:0;padding:9px 10px;border:1px solid #ccc;outline:0;font-size:15px;line-height:24px;border-radius:4px;box-shadow:none;font-family:helvetica,Arial;-webkit-tap-highlight-color:transparent}input:active{outline:0;background:#afd3ca}.logo{display:block;height:100px;line-height:100px;text-align:center;color:#a6bbb6;font-size:48px;margin-top:40px}.bd{padding:20px}.row{padding:5px}.warmInfo{display:none}.warm-transition{transition:all .3s ease;color:red;display:block;font-size:12px;padding:9px 3px 0}.warm-enter{padding:0;opacity:0}.warm-leave{height:0;padding:0 0 0 13px;opacity:0}.login-transition{transition:all .2s ease}.login-enter,.login-leave{padding:0;opacity:0}</style>\n<section transition="login" transition="login">\n	<div class="hd">\n		<h1 class="logo">Daily</h1>\n	</div>\n	<div class="bd">\n		<form id="loginForm">\n			<div class="row">\n				<input type="text" v-model="username" placeholder="请输入工号" v-on:change="unTest">\n				<span class="warmInfo" v-if="test1" transition="warm">请输入正确的工号</span>\n			</div>\n			<div class="row">\n				<a href="javascript:;" class="btn-submit" v-on:click="sub">\n					登录\n				</a>\n			</div>\n		</form>	\n	</div>\n	<tip-component v-if=\'tip\' :close.sync=\'tip\' keep-alive></tip-component> \n</section>',props:["listDate"],activate:function(n){n()},data:function(){return{username:"",test1:!1,once:!0,tip:!1}},methods:{sub:function(){var n=(this.$parent,this),t=this.username,i=new Date,o=i.getTime();n.unTest(),this.test1||this.once||(console.log("ajax"),$.ajax({url:"http://10.252.56.175:8080/dailyreport/api",data:{action:"list",_:o,id:t},dataType:"jsonp",success:function(t){console.log(t),t.length>0?(localStorage.setItem("GH",n.username),window.location.hash="page-b"):n.tip=!0}}))},unTest:function(){console.log(this.$parent),this.test1=this.username.length>=4?!1:!0,this.once=!1}},components:{"tip-component":n("tip")}})});