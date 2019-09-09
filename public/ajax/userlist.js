// 点击下拉菜单修改页面用户数量
var $select=document.querySelector("div.re_sear>div>select.records");
$select.onchange=function(){
	//获得下拉的值赋值给
	var $size=this.value;
	var $pno=1;
	getUser($size,$pno)
}

// 转换页
//获得页码中li的a
var $li_ans=document.querySelectorAll("div.page>ul>li.pno_n>a");
//遍历$li_as
for(let $li_an of $li_ans){
	$li_an.onclick=function(){
		var $pno=this.innerHTML;
		var $size=$select.value;
		getUser($size,$pno)
	}
}		
// 设置上一页和下一页
var $li_ats=document.querySelectorAll("div.page>ul>li.pno_t>a");
// 给下一页绑定事件
$li_ats[1].onclick=function(){
	for(let $li_an of $li_ans){
		$li_an.innerHTML=parseInt($li_an.innerHTML)+1;
	}
}
// 给上一页绑定事件
$li_ats[0].onclick=function(){
	for(let $li_an of $li_ans){
		var number=parseInt($li_an.innerHTML)
		if(number==1){
			break;
		}else{
			$li_an.innerHTML=number-1;
		}
	}	
}


//查询用户列表
function getUser($size,$pno){
	$size=$size||5;
	$pno=$pno||1;
	var xhr=new XMLHttpRequest();
		xhr.onreadystatechange=function(){
		if(xhr.readyState==4&&xhr.status==200){
			var result=xhr.responseText;
			//JSON
			var arr=JSON.parse(result);
			var str=``;
			for(var i=0;i<arr.length;i++){
				str+=`
					<tr>
						<td>
								<input type="checkbox">
						</td>
						<td>${arr[i].uid}</td>
						<td class="userimg">
							<img src=${arr[i].avater} alt="头像">
						</td>
						<td>${arr[i].uname}</td>
						<td>${arr[i].phone}</td>
						<td>
							<a href="javascript:delUser(${arr[i].uid})">删除</a>
							<a href="#">修改</a>
						</td>
					</tr>`;
			}
			var tbody=document.getElementById("usertext");
			tbody.innerHTML=str;
		}
	}
	xhr.open("get","user/v1/userlist/"+$pno+"&"+$size,true);
	xhr.send();
}
//删除用户
function delUser($uid){
	var xhr=new XMLHttpRequest();
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4&&xhr.status==200){
			var result=xhr.responseText;
			if(result==1){
				getUser();
			}else{
				alert("删除失败!");
			}
		}
	}
	xhr.open('delete',`/user/v1/deluser/${$uid}`,true);
	xhr.send();
}
// 手机查询
function Search(){
	var $phone=ps.value;
	var xhr=new XMLHttpRequest();
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4&&xhr.status==200){
			var result=xhr.responseText;
			var tbody=document.getElementById("usertext");
			var arr=JSON.parse(result);
			if(arr.length!=0){
				var	str=`
					<tr>
						<td>
								<input type="checkbox">
						</td>
						<td>${arr[0].uid}</td>
						<td class="userimg">
							<img src=${arr[0].avater} alt="头像">
						</td>
						<td>${arr[0].uname}</td>
						<td>${arr[0].phone}</td>
						<td>
							<a href="javascript:delUser(${arr[0].uid})">删除</a>
							<a href="#">修改</a>
						</td>
					</tr>`;
					tbody.innerHTML=str;
				}else{
					tbody.innerHTML="未找到索搜";

				}	
			}
		}
	xhr.open('get',`/user/v1/search/${$phone}`,true);
	xhr.send();
}


//设置选项
// 点击全选,tbody内选项被选中
// DOM 4步
//1. 查询触发事件的元素
var chbAll=document.querySelector("div.userinfor>table>thead>tr>th.all>label>input");
//2.绑定事件处理事件
	chbAll.onclick=function(){
	// 3查找需要修改的元素
		var chbs=document.querySelectorAll("div.userinfor>table>tbody>tr>td:first-child>input");
		//4修改元素 
		for(var chb of chbs){
			chb.checked=this.checked;
			// 当tbody中某一个选项不被选中,那么全选取消选中状态
			//给chb绑定处理事件
			chb.onclick=function(){
				// 优化:判断当前 chb是否为选中状态,如果为false则赋值chbAll为false
				if(this.checked==false){
					chbAll.checked=false;
				}else{
				// 查找tbody中是否有input未被选中
					var unchecked=document.querySelector("div.userinfor>table>tbody>tr>td>input:not(:checked)");
					//判断unchecked是否存在,如果存在就给chbAll.checked一个false
					//否则赋值一个true
					chbAll.checked=unchecked==null;
				}
			}
		}
}



