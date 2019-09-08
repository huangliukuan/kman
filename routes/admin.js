const express=require('express');
//引入连接池
const pool=require('../pool.js');
//创建路由器
var router=express.Router();

//管理者登录
router.get('/adminLogin/:aname&:pwd',(req,res)=>{
	var $aname=req.params.aname;
	var $pwd=req.params.pwd;
	var sql="select * from admin where name=? and pwd=?";
	pool.query(sql,[$aname,$pwd],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send("1");//管理员账号正确
		}else{
			res.send("0");//管理员账号错误
		}
	});
});
//导出路由器
module.exports=router;