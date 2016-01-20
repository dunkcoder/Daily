<style>#check{padding:10px}#check .history{line-height:2.5;color:#999}#check .icon{display:inline-block;width:10px;height:10px;background-color:#a6bbb6;border-radius:50%;margin-right:20px;text-align:center}#check .history-list .item{position:relative;height:40px;line-height:40px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden}#check .history-list .item:after{content:'';width:100%;height:1px;line-height:0;position:absolute;bottom:0;left:0;background-color:#a6bbb6}#check .history-list .history-title{display:inline-block}@media only screen and (-Webkit-min-device-pixel-ratio:1.5){.history-list .item:after{content:'';transform:scaleY(.5);-webkit-transform:scaleY(.5)}}</style>
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