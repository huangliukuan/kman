const express=require('express');
//引入连接池
const pool=require('../pool.js');
//创建路由器
var router=express.Router();

//登录
router.get('/v1/login/:phone&:upwd',(req,res)=>{
	var $phone=req.params.phone;
	var $upwd=req.params.upwd;
	var sql="select * from ct_user";
	pool.query(sql,[$phone,$upwd],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send("1");//登录成功
		}else{
			res.send("0");//登录失败
		}
	});
});

//注册
router.post('/v1/register',(req,res)=>{
	var $phone=req.body.phone;
	var $upwd=req.body.upwd;
	var $uname=req.body.uname;
	if(!$uname){res.send("0");return;}
	if(!$upwd){res.send("0");return;}
	if(!$phone){res.send("0");return;}
	var sql="insert into ct_user values(null,?,?,?,null)";
	pool.query(sql,[$uname,$upwd,$phone],(err,result)=>{
		if(err) throw err;
		res.send("1");
	});
});
//查看该手机号是否注册过
router.get('/v1/checkphone/:phone',(req,res)=>{
	var $phone=req.params.phone;
	var sql=" select * from ct_user where phone=?";
	pool.query(sql,[$phone],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send("1");//注册过
		}else{
			res.send("0");//没有注册过
		}
	});
});

//用户查询
router.get('/v1/userlist/:pno&:size',(req,res)=>{
	var $pno=req.params.pno;
	var $size=req.params.size;
	if(!$size) $size=10;
	$pno=parseInt($pno);
	$size=parseInt($size);
	var $start=($pno-1)*$size;
	var sql="select * from ct_user limit ?,?";
	pool.query(sql,[$start,$size],(err,result)=>{
		if(err) throw err;
		res.send(result);
	
	});
});
//用户删除
router.delete('/v1/deluser/:uid',(req,res)=>{
	var $uid=req.params.uid;
	var sql="delete from ct_user where uid=?";
	pool.query(sql,[$uid],(err,result)=>{
		if(err) throw err;
		res.send("1");
	});
});

// 用户检索
router.get('/v1/search/:phone',(req,res)=>{
	var $phone=req.params.phone;
	sql="select * from ct_user where phone=?";
	pool.query(sql,[$phone],(err,result)=>{
		if(err) throw err;
		res.send(result);
	})
});

//导出路由器
module.exports=router;