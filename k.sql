SET NAMES UTF8;
#丢弃数据库cartoon,如果他存在
DROP DATABASE IF EXISTS	ct;
#创建数据库cartoon
CREATE DATABASE ct CHARSET=UTF8;
#进入数据库
USE ct;
/****用户信息****/
CREATE TABLE ct_user(
	uid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	uname VARCHAR(32),	#用户名
	upwd VARCHAR(32),	#用户密码
	phone VARCHAR(16) NOT NULL UNIQUE,	#手机号
	avater VARCHAR(128)   #头像路径
);
INSERT INTO ct_user VALUES (NULL,"lingling","123456","15812345678","image/avater/lingling.png");
INSERT INTO ct_user VALUES (NULL,"xuanxuan","123456","15812345698","image/avater/xuanxuan.png");
INSERT INTO ct_user VALUES (NULL,"shanshan","123456","15812345668","image/avater/shanshan.png");
INSERT INTO ct_user VALUES (NULL,"feifei","123456","15812345658","image/avater/feifei.png");
INSERT INTO ct_user VALUES (NULL,"jiaojiao","123456","15812345648","image/avater/jiaojiao.png");
INSERT INTO ct_user VALUES (NULL,"dingding","123456","15812345638","image/avater/dingding.png");
INSERT INTO ct_user VALUES (NULL,"dangdang","123456","15812345628","image/avater/dangdang.png");
INSERT INTO ct_user VALUES (NULL,"wenwen","123456","15812345618","image/avater/wenwen.png");
INSERT INTO ct_user VALUES (NULL,"lingling","123456","15912345678","image/avater/lingling.png");
INSERT INTO ct_user VALUES (NULL,"xuanxuan","123456","15912345698","image/avater/xuanxuan.png");
INSERT INTO ct_user VALUES (NULL,"shanshan","123456","15912345668","image/avater/shanshan.png");
INSERT INTO ct_user VALUES (NULL,"feifei","123456","15912345658","image/avater/feifei.png");
INSERT INTO ct_user VALUES (NULL,"jiaojiao","123456","15912345648","image/avater/jiaojiao.png");
INSERT INTO ct_user VALUES (NULL,"dingding","123456","15912345638","image/avater/dingding.png");
INSERT INTO ct_user VALUES (NULL,"dangdang","123456","15912345628","image/avater/dangdang.png");
INSERT INTO ct_user VALUES (NULL,"wenwen","123456","15912345618","image/avater/wenwen.png");
INSERT INTO ct_user VALUES (NULL,"lingling","123456","15712345678","image/avater/lingling.png");
INSERT INTO ct_user VALUES (NULL,"xuanxuan","123456","15712345698","image/avater/xuanxuan.png");
INSERT INTO ct_user VALUES (NULL,"shanshan","123456","15712345668","image/avater/shanshan.png");
INSERT INTO ct_user VALUES (NULL,"feifei","123456","15712345658","image/avater/feifei.png");
INSERT INTO ct_user VALUES (NULL,"jiaojiao","123456","15712345648","image/avater/jiaojiao.png");
INSERT INTO ct_user VALUES (NULL,"dingding","123456","15712345638","image/avater/dingding.png");
INSERT INTO ct_user VALUES (NULL,"dangdang","123456","15712345628","image/avater/dangdang.png");
INSERT INTO ct_user VALUES (NULL,"wenwen","123456","15712345618","image/avater/wenwen.png");
INSERT INTO ct_user VALUES (NULL,"lingling","123456","15612345678","image/avater/lingling.png");
INSERT INTO ct_user VALUES (NULL,"xuanxuan","123456","15612345698","image/avater/xuanxuan.png");
INSERT INTO ct_user VALUES (NULL,"shanshan","123456","15612345668","image/avater/shanshan.png");
INSERT INTO ct_user VALUES (NULL,"feifei","123456","15612345658","image/avater/feifei.png");
INSERT INTO ct_user VALUES (NULL,"jiaojiao","123456","15612345648","image/avater/jiaojiao.png");
INSERT INTO ct_user VALUES (NULL,"dingding","123456","15612345638","image/avater/dingding.png");
INSERT INTO ct_user VALUES (NULL,"dangdang","123456","15612345628","image/avater/dangdang.png");
INSERT INTO ct_user VALUES (NULL,"wenwen","123456","15612345618","image/avater/wenwen.png");

/****用户关注****/
CREATE TABLE ct_attention(
	aid	INT PRIMARY KEY AUTO_INCREMENT,
	user_id	INT,	#用户id
	cartoon_id INT	#漫画id
);

INSERT INTO ct_attention VALUES(NULL,1,1);
INSERT INTO ct_attention VALUES(NULL,1,2);
INSERT INTO ct_attention VALUES(NULL,1,3);
INSERT INTO ct_attention VALUES(NULL,2,2);
INSERT INTO ct_attention VALUES(NULL,2,7);
INSERT INTO ct_attention VALUES(NULL,3,9);
INSERT INTO ct_attention VALUES(NULL,3,10);
INSERT INTO ct_attention VALUES(NULL,4,8);
INSERT INTO ct_attention VALUES(NULL,5,3);
INSERT INTO ct_attention VALUES(NULL,6,15);
INSERT INTO ct_attention VALUES(NULL,8,14);

/****漫画类型****/
CREATE TABLE ct_cartoon_type(
	ty_id INT PRIMARY KEY  AUTO_INCREMENT,
	ty_name VARCHAR(16)	#类别名
);
INSERT INTO ct_cartoon_type value (null,"连载中");
INSERT INTO ct_cartoon_type value (null,"已完结");

/****漫画题材****/
CREATE TABLE ct_cartoon_theme(
	th_id INT PRIMARY KEY  AUTO_INCREMENT,
	th_name VARCHAR(16)	#题材名
);
INSERT INTO ct_cartoon_theme values (null,"恋爱");
INSERT INTO ct_cartoon_theme values (null,"古风");
INSERT INTO ct_cartoon_theme values (null,"校园");
INSERT INTO ct_cartoon_theme values (null,"奇幻");
INSERT INTO ct_cartoon_theme values (null,"大女生");
INSERT INTO ct_cartoon_theme values (null,"治愈");
INSERT INTO ct_cartoon_theme values (null,"总裁");
INSERT INTO ct_cartoon_theme values (null,"完结");
INSERT INTO ct_cartoon_theme values (null,"唯美");
INSERT INTO ct_cartoon_theme values (null,"日漫");
INSERT INTO ct_cartoon_theme values (null,"韩漫");
INSERT INTO ct_cartoon_theme values (null,"穿越");
INSERT INTO ct_cartoon_theme values (null,"正能量");
INSERT INTO ct_cartoon_theme values (null,"灵异");
INSERT INTO ct_cartoon_theme values (null,"爆笑");
INSERT INTO ct_cartoon_theme values (null,"都市");
INSERT INTO ct_cartoon_theme values (null,"萌系");
INSERT INTO ct_cartoon_theme values (null,"玄幻");
INSERT INTO ct_cartoon_theme values (null,"日常");
INSERT INTO ct_cartoon_theme values (null,"投稿");
/****漫画信息****/
CREATE TABLE ct_cartoon(
	cid INT PRIMARY KEY  AUTO_INCREMENT,
	cname VARCHAR(64),	
	cauthor VARCHAR(64),#作者
	cimg VARCHAR(128),	#图片路径
	intro VARCHAR(256),	#简介
	popularity BIGINT,  #人气值
	approval BIGINT,	#点赞量
	type_id	INT,	#类别
	theme_id INT	#题材
);
INSERT INTO ct_cartoon values(null,"魔道祖师","墨香铜臭（原著）+落地成球","image/cartoon/modaozushi/cover.png","改编自墨香铜臭原创同名小说，前世掀起腥风血雨的一代魔道祖师，竟重生成一个脑残！此生的魏无羡与故人一同祛除邪魔匡扶正义，不知这一次是否能迎来圆满结局？【独家/每周一更新 责编：林早上】",20089000000,990000,0,4);

 
/****漫画章节****/
CREATE TABLE ct_cartoon_hapter(
	ch_id INT NOT NULL,
	ch_img VARCHAR(128),	#图片路径
	ch_hapter  INT, #章节
	ch_approval BIGINT,	#点赞量
	ch_uptime	BIGINT #更新时间
); 
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",1,690000,79500000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",2,700000,79620000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",3,720000,79720000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",4,740000,79820000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",5,870000,79920000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",6,860000,80020000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",7,820000,80120000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",8,830000,80220000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",9,790000,80320000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",10,780000,80400000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",11,860000,80500000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",12,950000,80610000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",13,930000,80700000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",14,890000,80800000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",15,880000,80900000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",16,900000,81000000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",17,960000,81100000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",18,920000,81200000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",19,890000,81300000000000);
INSERT INTO ct_cartoon_hapter VALUES(1,"image/cartoon/modaozushi/hapter.png",20,1000000,81400000000000);




/****网页信息****/
CREATE TABLE ct_web_infor(
	web_name VARCHAR(16),
	login VARCHAR(64)
);


/****导航条目****/
CREATE TABLE ct_direc(
	dname VARCHAR(16),
	url VARCHAR(64),
	title VARCHAR(64)
);
/****首页轮播图****/
CREATE TABLE ct_index_carousel(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),		#图片地址
  title VARCHAR(64),	#图片标题
  href VARCHAR(128)		#图片网址
);
/****首页题材合辑****/
CREATE TABLE ct_index_mix(
	mix_id INT NOT NULL, #合辑id
	mix_name VARCHAR(128),	#合辑中漫画名字
	mix_author VARCHAR(64),	#漫画作者
	mix_img	VARCHAR(128),	#图片
	mix_approval INT,	#点赞量
	mix_theme INT			#题材
);
/****首页人气榜****/
CREATE TABLE ct_index_polist(
	po_id INT NOT NULL,	#人气id
	po_name VARCHAR(128), #人气榜漫画名字
	po_img VARCHAR(128), #图片
	po_theme INT,	#漫画题材
	po_intro VARCHAR(256), #简介
	po_chapter INT #最新章节
);
/****首页每日更新****/
CREATE TABLE ct_index_update(
	up_id INT NOT NULL, #更新id
	up_time BIGINT, #更新日期
	up_name VARCHAR(128), #漫画名字
	up_author VARCHAR(63), #作者
	up_img	VARCHAR(128), #图片
	up_approval INT, #点赞量
	up_theme INT #题材
);
/****首页类型展示****/
CREATE TABLE ct_index_typeshow(
	ts_id INT NOT NULL,
	ts_typeid	INT,  #类别id
	ts_name VARCHAR(128), #漫画名字
	ts_author VARCHAR(63), #作者
	ts_img	VARCHAR(128), #图片
	ts_approval INT #点赞量
);
/****首页榜单展示****/
CREATE TABLE ct_index_ranking(
	rid INT NOT NULL,
	compare VARCHAR(64), #与上周比较
	rname VARCHAR(128), #漫画名字
	rauthor VARCHAR(63), #作者
	rimg	VARCHAR(128), #图片
	rintro VARCHAR(256),	#简介
	ranking VARCHAR(16)	#所属榜
);