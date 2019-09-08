const express=require("express");
//引入连接池
const pool=require("../pool.js");
//创建路由器
var router=express.Router();
//漫画添加
router.post('/v1/cartoonadd',(req,res)=>{
	var $cname=req.body.cname;
	var $cauthor=req.body.cauthor;
	var $cimg=req.body.cimg;
	var $intro=req.body.intro;
	var $popularity=req.body.popularity;
	var $approval=req.body.approval;
	var $type_id=req.body.type_id;
	var $theme_id=req.body.theme_id;
	if(!$cname){res.send("0");return;}
	if(!$cauthor){res.send("0");return;}
	if(!$cimg){res.send("0");return;}
	if(!$intro){res.send("0");return;}
	if(!$popularity){res.send("0");return;}
	if(!$approval){res.send("0");return;}
	if(!$type_id){res.send("0");return;}
	if(!$theme_id){res.send("0");return;}
	var sql="INSERT INTO ct_cartoon values(null,?,?,?,?,?,?,?,?)";
	pool.query(sql,[$cname,$cauthor,$cimg,$intro,$popularity,$approval,$type_id,$theme_id],(err,result)=>{
		if(err) throw err;
		res.send("1");
	});
});







//导出路由器
module.exports=router;

