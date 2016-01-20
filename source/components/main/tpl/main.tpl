<link rel="stylesheet" href="../main.scss?__inline">
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