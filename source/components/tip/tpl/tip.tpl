<link rel="stylesheet" href="../tip.scss?__inline">

<section id="componentTip" v-if="close" transition="tip">
	<div class="component-tip">
		<div class="hd">温馨提示<span class="cl"></span></div>
		<div class="bd">
			<div class="cn">{{ message }}</div>
			<a href="javascript:;" class="sr" v-on:click="toClose">确定</a>
		</div>
	</div>
</section>