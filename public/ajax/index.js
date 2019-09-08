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
