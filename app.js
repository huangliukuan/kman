const express=require("express");
//引入body-parser中间件
const bodyParser=require('body-parser');
//引入userRouter路由器
const userRouter=require('./routes/user.js');


//创建服务器
var app=express();
app.listen(8080);
//使用body-parser中间件,将post请求数据解析为对象
app.use(bodyParser.urlencoded({
	extended:false
}));

//托管静态资源到public目录
app.use(express.static('./public'));

//使用路由器挂载到/user
app.use('/user',userRouter);
