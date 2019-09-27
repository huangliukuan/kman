
/*******************轮播图****************/

 //图片下标位置
 var i=0;
 //每次轮播长度
 var LIWIDTH=1184;
 // 每次自动轮播默认时间
 var DURATION=500;
 //li的数量
 var LICOUNT=4;
 //获得了轮播图的ul
 var ulImgs=document.querySelector("section .carousel>.carCont>#ulImg");
 // 获得小圆点ul
 var ulIdxs=document.querySelector("section .carousel>.carCont>#ulIdxs");
// 获得小圆点
var lis=ulIdxs.children;
function moveTo(to){
	//如果没有给to赋值,则i+1,为让图片播放下一张
	if(to==undefined){
		to=i+1;
	}
	if(i==0){
		if(to>i){
			ulImgs.className="trans";
		}else{
			ulImgs.className="";
			ulImgs.style.marginLeft=-LIWIDTH*LICOUNT+"px";
			setTimeout(function(){
				moveTo(LICOUNT-1);
			},100);
			return;
		}
	}
	i=to;
	ulImgs.style.marginLeft=-i*LIWIDTH+"px";
	for(var li of lis){
		li.className="";
	}
	if(i==LICOUNT){
		i=0;
		setTimeout(function(){
			ulImgs.className="";
			ulImgs.style.marginLeft=0;
		},DURATION)
	}
	lis[i].className="active";
}
//左右按钮
var btnNext=document.querySelector("section .carCont>.btnNext");
var btnPrev=document.querySelector("section .carCont>.btnPrev");
var canClick=true;
function move(n){
	if(canClick){
		moveTo(i+n);
		canClick=false;
		setTimeout(function(){
			canClick=true;
		},DURATION+100);
	}
}
btnPrev.onclick=function(){
	move(-1);
}
btnNext.onclick=function(){
	move(1);
}
// 自动轮播
var times=3000;
var timer=setInterval(function(){
	moveTo();
},times);

var carCont=document.querySelector("section .carousel>.carCont");
carCont.onmouseover=function(){
	clearInterval(timer);
}
carCont.onmouseout=function(){
	timer=setInterval(function(){
		moveTo();
	},times);
}
//点击小圆点跳转页面
ulIdxs.onclick=function(e){
  if(canClick){
    if(e.target.nodeName=="LI"){
      if(e.target.className!=="active"){
        for(var i=0;i<lis.length;i++){
          if(lis[i]==e.target){
            break;
          }
        }
        moveTo(i);
        setTimeout(() => {
          canClick=true;
        },DURATION);
      }
    }
  }
}

/***************人气榜 ******************/
//先获得
var ranks=document.querySelector(".floor_1>.popula>.rank");
ranks.onmouseover=function(e){
	if(e.target.className=="ranking_col"){
		var blocks=document.querySelectorAll(".floor_1>.popula>.rank .ranking_block");
		for(block of blocks){
			if(block.previousElementSibling==e.target){
				e.target.nextElementSibling.style.height="169px"
			}else{
				block.style.height="0px"
			}
		}
	}
}
/*****************类别轮换****************/














/****************** 按钮****************/

// 1.查找触发事件的元素
// 查找所有带有data-click属性,且属性值为tab的元素
var btns=document.querySelectorAll("[data-click=tab]");
(function(){
    //定义一个局部的zIndex=1
    var zIndex=1;
    //2.绑定事件处理函数
    //遍历btns为每个按钮绑定点击时间
    for(var btn of btns){
        btn.onclick=function(){
					//3.查找要修改的元素
					//查找按钮a对应的div
					//先获得当前a上的data-id属性的值
					var $id=this.dataset.id;
									//this.getAttribute("data-id");
					//用id查找对应的div
					var $div=document.getElementById($id);
					//4.修改元素
					//让div的zIndex为当前zIndex+1
					$div.style.zIndex=++zIndex;
        }
    }
})();
