//查看是否该手机注册过
var isReg=true;
function checkPhone(){
	if(phone.value==""){
		pro.innerHTML="手机号不能为空";
		return;
	}
	//ajax四部
	var xhr=new XMLHttpRequest();
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4&&xhr.status==200){
			var result=xhr.responseText;
			if(result==1){
				pro.innerHTML="该手机号已被注册";
				isReg=false;
			}else{
				pro.innerHTML="手机号正确";
			}
		}
	}
	xhr.open("get","/user/v1/checkphone/"+phone.value,true);
	xhr.send();
}
//判断注册的两次密码是否一致
function checkUpwd(){
	if(upwd.value===cpwd.value){
		pro.innerHTML="两次密码输入一致";
	}else{
		pro.innerHTML="两次密码不一致";
		isReg=false;
	}
}
function userReg(){
	var $phone=phone.value;
	var $upwd=upwd.value;
	var $uname=uname.value;
	//ajax四步
	var xhr=new XMLHttpRequest();
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4&&xhr.status==200){
			var result=xhr.responseText;
			if(result==1){
				alert("注册成功");
				location.href="http://127.0.0.1:8080/login.html";
			}else{
				alert(result);
			}
		}
	}
	xhr.open("post","/user/v1/register",true);
	var formdata=`phone=${$phone}&upwd=${$upwd}&uname=${$uname}`;
	xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

	if(isReg){
		xhr.send(formdata);
	}else{
		alert("信息错误,不能注册");
	}
}
