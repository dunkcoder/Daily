<style>*{padding:0;margin:0;text-decoration:none;list-style:none;box-sizing:border-box}body{background-color:#f2f5e9}input{display:block;width:100%;margin:0;padding:9px 10px;border:1px solid #ccc;outline:0;font-size:15px;line-height:24px;border-radius:4px;box-shadow:none;font-family:helvetica,Arial;-webkit-appearance:none}input:active{background:#afd3ca}.btn-submit{display:block;width:100%;text-align:center;padding:10px 0;color:#fff;background-color:#a6bbb6;border:0;font-size:16px;line-height:24px;font-weight:700;outline:0;-webkit-tap-highlight-color:transparent;border-radius:4px}.btn-submit:active{background:#afd3ca}#componentTip{position:absolute;top:0;left:0;right:0;bottom:0;width:100%;height:100%;background-color:rgba(0,0,0,.3)}.component-tip{position:absolute;top:0;left:0;right:0;bottom:0;margin:auto;width:260px;height:200px;background-color:#f2f5e9;border-radius:5%;overflow:hidden}.component-tip .hd{height:40px;text-align:center;line-height:40px;padding:10px;background-color:#a6bbb6;font-weight:700;font-size:16px;color:#fff}.component-tip .cn{padding:20px;text-align:center;font-weight:700;font-size:16px;color:gray}.component-tip .sr{text-align:center;display:block;width:150px;height:40px;line-height:40px;background-color:#a6bbb6;margin:auto;color:#fff;text-decoration:none;border-radius:5%;font-weight:700;font-size:16px}</style>

<section id="componentTip" v-if="close" transition="tip">
	<div class="component-tip">
		<div class="hd">温馨提示<span class="cl"></span></div>
		<div class="bd">
			<div class="cn">{{ message }}</div>
			<a href="javascript:;" class="sr" v-on:click="toClose">确定</a>
		</div>
	</div>
</section>