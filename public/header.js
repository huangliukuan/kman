Vue.component("Myheader",{
	template:`<div class="header">
	<div class="hbody">
		<div class="logo float">
			<a href="#"><img src="image/logo.jpg" alt="logo"></a>
		</div>
		<div class="direc float">
			<ul>
				<li>
					<a href="./index.html">首页</a>
				</li>					
				<li>
					<a href="./classification.html">分类</a>
				</li>					
				<li>
					<a href="#">排行榜</a>
				</li>					
				<li>
					<a href="#">APP下载</a>
				</li>					
				<li>
					<a href="#">我要投稿</a>
				</li>					
				<li>
					<a href="#">动漫</a>
				</li>					
				<li>
					<a href="#">游戏中心</a>
				</li>					
				<li>
					<a href="#">条漫大赛</a>
				</li>
			</ul>
		</div>
		<div class="sc float">
			<input class="search" type="text" placeholder="搜索作品、作者名">
			<a href="#"><img class="isearch" src="image/search.png" alt="搜索"></a>
		</div>
		<div class="user float">
			<a href="./login.html">登录</a>|
			<a href="./register.html">注册</a>
		</div>
	</div>
</div>
`,
	 data(){
	   return {
	   }
	 },
  })
	