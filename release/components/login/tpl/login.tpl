<style>*{padding:0;margin:0;text-decoration:none;list-style:none;box-sizing:border-box}body{background-color:#f2f5e9;font-size:14px}input{display:block;width:100%;margin:0;padding:9px 10px;border:1px solid #ccc;outline:0;font-size:15px;line-height:24px;border-radius:4px;box-shadow:none;font-family:helvetica,Arial;-webkit-tap-highlight-color:transparent}input:active{outline:0;background:#afd3ca}.logo{display:block;height:100px;line-height:100px;text-align:center;color:#a6bbb6;font-size:48px;margin-top:40px}.bd{padding:20px}.row{padding:5px}.warmInfo{display:none}.warm-transition{transition:all .3s ease;color:red;display:block;font-size:12px;padding:9px 3px 0}.warm-enter{padding:0;opacity:0}.warm-leave{height:0;padding:0 0 0 13px;opacity:0}.login-transition{transition:all .2s ease}.login-enter,.login-leave{padding:0;opacity:0}</style>
<section transition="login" transition="login">
	<div class="hd">
		<h1 class="logo">Daily</h1>
	</div>
	<div class="bd">
		<form id="loginForm">
			<div class="row">
				<input type="text" v-model="username" placeholder="请输入工号" v-on:change="unTest">
				<span class="warmInfo" v-if="test1" transition="warm">请输入正确的工号</span>
			</div>
			<div class="row">
				<a href="javascript:;" class="btn-submit" v-on:click="sub">
					登录
				</a>
			</div>
		</form>	
	</div>
	<tip-component v-if='tip' :close.sync='tip' keep-alive></tip-component> 
</section>