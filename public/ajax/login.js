function userLogin(){
	//获取用户数据
	var $phone=phone.value;
	var $upwd=upwd.value;
	//判断是否为空
	if($phone===""){
		pro.innerHTML="用户名为空";
		return;
	}
	if($upwd===""){
		pro.innerHTML="密码为空";
		return;
	}
	console.log(111);
	//创建异步对象
	var xhr=new XMLHttpRequest();
	//创建监听,接收响应
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4&&xhr.status==200){
			console.log(111);
			var result=xhr.responseText;
			if(result==1){
				console.log(111);
				pro.innerHTML="登录成功";
			}
			if(result==0){
				pro.innerHTML="登录失败";
			}
		}
	}
	//创建请求,建立连接
	xhr.open("get","/user/v1/login/"+$phone+"&"+$upwd,true);
	//发送请求
	xhr.send();
}



