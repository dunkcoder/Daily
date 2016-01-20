<style>.nav{display:-webkit-box}.nav .nav-column{-webkit-box-flex:1;box-sizing:border-box;width:50%;padding:5px;border-bottom:2px solid transparent}.nav .nav-column a{display:block;height:40px;line-height:40px;color:#999;text-align:center;text-shadow:1px 1px rgba(255,255,255,.75);-webkit-tap-highlight-color:rgba(0,0,0,.05)}.nav .on{border-bottom:2px solid #a6bbb6}.nav .on a{color:#666}.main{padding:10px;background-color:#fff}footer{padding:12px 15px}footer .quit a{color:#99aaa5;font-size:14px}.contain-transition{transition:all .5s ease}.contain-enter,.contain-leave{padding:0;opacity:0}.fade-transition{transition:opacity .3s ease}.fade-enter,.fade-leave{opacity:0}a{display:block;color:#000}</style>
<section class="contain" transition="contain">
	<header>
		<nav>
			<ul class="nav">
				<li class="nav-column on" v-on:click="switchPage('page-check', $event)">
					<a href="javascript:;">查看</a>
				</li>
				<li class="nav-column"  v-on:click="switchPage('page-weekly', $event)">
					<a href="javascript:;">周报</a>
				</li>
			</ul>
		</nav>
	</header>
	<section class="main">
		<component :is="view" keep-alive></component>
	</section>
	<footer>
		<ul class="f">
			<li class="quit"><a href="javascript:;" v-on:click="quit()">退出</a></li>
		</ul>
	</footer>
</section>