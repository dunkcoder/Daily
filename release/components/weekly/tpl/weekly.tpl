<style>@charset "UTF-8";.fix-h1{width:100%;height:120px;overflow:hidden}.fix-h2{height:240px;overflow:hidden}.fix-h2 .add-h{height:220px}.comment-content{position:absolute;background:transparent;z-index:999;width:100%;height:100px;padding:8px 9px;border-radius:3px;font-size:15px;line-height:24px;margin-bottom:20px;resize:none;display:inline-block;border:0;outline:0;overflow:auto;font-family:helvetica,Arial;-webkit-appearance:none;box-sizing:border-box;-webkit-tap-highlight-color:transparent}.comment-content:focus{border:0;outline:0}.textarea1{position:relative}.textarea1:after{position:absolute;top:0;left:0;display:block;content:'';width:100%;height:100px;border:1px solid red;border-radius:3px;box-sizing:border-box}.textarea2{position:relative}.textarea2:after{position:absolute;top:0;left:0;display:block;content:'';width:100%;height:220px;border:1px solid red;border-radius:3px;box-sizing:border-box}.title{height:40px;padding:8px 5px;text-align:left;margin-bottom:10px;color:#666;line-height:24px;font-size:15px;font-weight:400;background:#fff;border-radius:4px;background-color:#f2f5e9;-webkit-tap-highlight-color:transparent}.r1bl{position:relative}.r1bl:after{content:'';display:block;position:absolute;top:-10px;left:0;width:100%;height:1px;line-height:0;background-color:#ccc}.r2bl{position:relative;border:0}.r2bl:before{position:absolute;top:0;left:0;content:'';display:block;width:100%;height:40px;border:1px solid #ccc;border-radius:4px;-webkit-border-radius:5px;transform-origin:0 0;-webkit-transform-origin:0 0}@media only screen and (-Webkit-min-device-pixel-ratio:1.5){.r1bl:after{-webkit-transform:scaleY(.5);transform:scaleY(.5)}.r2bl{position:relative;border:0}.r2bl:before{position:absolute;top:0;left:0;content:'';display:block;width:200%;height:80px;border:1px solid #ccc;border-radius:8px;-webkit-border-radius:8px;-webkit-transform:scale(.5);transform:scale(.5);transform-origin:0 0;-webkit-transform-origin:0 0}.textarea1{position:relative}.textarea1:after{position:absolute;top:0;left:0;display:block;content:'';width:200%;height:200px;border:1px solid #ccc;border-radius:3px;-webkit-transform:scale(.5);transform:scale(.5);transform-origin:0 0;-webkit-transform-origin:0 0;box-sizing:border-box}.textarea2{position:relative}.textarea2:after{position:absolute;top:0;left:0;display:block;content:'';width:200%;height:440px;border:1px solid #ccc;border-radius:3px;-webkit-transform:scale(.5);transform:scale(.5);transform-origin:0 0;-webkit-transform-origin:0 0;box-sizing:border-box}}</style>

<section>
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
</section>