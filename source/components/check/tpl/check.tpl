<link rel="stylesheet" href="../check.scss?__inline">
<section id="check">
	<div class="history"><div class="icon"></div>历史周报</div>
	<div class="history-list">
		<div class="item" v-for="list in lists">
			<div class="icon"></div>
			<p class="history-title"><a href="javascript:;">{{ list.name }}</a></p>
			<p class="history-title"><a href="javascript:;">{{ list.date }}</a></p>
			<p class="history-title"><a href="javascript:;">{{ list.content }}</a></p>
		</div>
	</div>
</section>