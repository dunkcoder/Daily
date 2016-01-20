<link rel="stylesheet" href="../login.scss?__inline">
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