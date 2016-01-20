<link rel="stylesheet" href="../weekly.scss?__inline">

<!-- <div class="title r2bl">本周任务</div>
<div class="fix-h1">
	<div class="textarea1">
		<textarea class="comment-content" placeholder="请输入本周完成任务..." v-model="current"></textarea>
	</div>
</div> -->
<!-- <div class="title r1bl r2bl">下周计划</div>
<div class="fix-h1">
	<div class="textarea1">
		<textarea class="comment-content r3bl" rows="4" cols="50" placeholder="请输入下周计划..." v-model="next"></textarea>
	</div>
</div> -->
<!-- <div class="title r1bl r2bl">最终生成</div>
<div  class="fix-h2">
	<div class="textarea2">
		<textarea class="add-h comment-content" rows="4" cols="50" placeholder="请在此处介绍自己..." disabled style="color: #000">本周任务: \n{{ current }} \n下周任务: \n{{ next }}</textarea>
	</div>
</div> -->

<div class="title r2bl">今天任务</div>
<div class="fix-h1">
	<div class="textarea1">
		<textarea class="comment-content" placeholder="请输入今天做的任务..." v-model="current"></textarea>
	</div>
</div>

<div class="title r1bl r2bl">最终生成</div>
<div  class="fix-h2">
	<div class="textarea2">
		<textarea class="add-h comment-content" rows="4" cols="50" placeholder="请在此处介绍自己..." disabled style="color: #000">今天任务: \n{{ current }} </textarea>
	</div>
</div>
<a href="javascript:;" class="btn-submit" v-on:click="submit()">提交</a>