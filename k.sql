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
INSERT INTO ct_cartoon_theme values (1,"恋爱");
INSERT INTO ct_cartoon_theme values (2,"古风");
INSERT INTO ct_cartoon_theme values (3,"校园");
INSERT INTO ct_cartoon_theme values (4,"奇幻");
INSERT INTO ct_cartoon_theme values (5,"大女生");
INSERT INTO ct_cartoon_theme values (6,"治愈");
INSERT INTO ct_cartoon_theme values (7,"动作");
INSERT INTO ct_cartoon_theme values (8,"格斗");
INSERT INTO ct_cartoon_theme values (9,"唯美");
INSERT INTO ct_cartoon_theme values (10,"日漫");
INSERT INTO ct_cartoon_theme values (11,"韩漫");
INSERT INTO ct_cartoon_theme values (12,"穿越");
INSERT INTO ct_cartoon_theme values (13,"正能量");
INSERT INTO ct_cartoon_theme values (14,"魔幻");
INSERT INTO ct_cartoon_theme values (15,"爆笑");
INSERT INTO ct_cartoon_theme values (16,"都市");
INSERT INTO ct_cartoon_theme values (17,"萌系");
INSERT INTO ct_cartoon_theme values (18,"玄幻");
INSERT INTO ct_cartoon_theme values (19,"日常");
INSERT INTO ct_cartoon_theme values (20,"投稿");

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
INSERT INTO ct_cartoon values(null,"魔道祖师","墨香铜臭（原著）+落地成球","image/week/modaozushi.png","改编自墨香铜臭原创同名小说，前世掀起腥风血雨的一代魔道祖师，竟重生成一个脑残！此生的魏无羡与故人一同祛除邪魔匡扶正义，不知这一次是否能迎来圆满结局？【独家/每周一更新 责编：林早上】",20089000000,1000000,0,18);
INSERT INTO ct_cartoon values(null,"西行纪","百漫马赛克工作室","image/cartoon/xixingji.jpg","西天取经竟是天庭的一个惊天阴谋！？？数十年后【奇经】再次下落不明，天庭派大军大肆搜寻，为了不让【奇经】再次落入天庭之手，西行之旅再度上演！这是一个远古八大神族支配着神州大地，神明以外还充斥着各种各样的妖魔鬼怪，史上最颠覆的西游传奇便在此展开！【授权连载/停更】",15089000000,580000,0,14);
INSERT INTO ct_cartoon values(null,"斗破苍穹","知音漫客","image/cartoon/doupocangqiong.jpg","【每周六周日12点更新】正所谓三十年河东三十年河西，天才少年因忽然失去了天生的灵力，被所有人嘲笑排挤，为了一雪前耻他亲手毁掉婚约，一心进修、打怪、升级！重登人生巅峰的他让人们知道莫欺少年穷真的很重要！",146089000000,1000000,0,8);
INSERT INTO ct_cartoon values(null,"一人之下","动漫堂","image/cartoon/yirenzhixia.jpg","大学生张楚岚清明回乡，遭遇神秘少女冯宝宝。素未谋面的冯宝宝却对张楚岚异常熟悉，并将其带去自己打工的快递公司。为了帮冯宝宝寻找她的身世，也为了查清自己与爷爷身上的秘密，张楚岚的生活被彻底颠覆，与冯宝宝一同踏上异人之旅。",183089000000,1000000,0,7);
INSERT INTO ct_cartoon values(null,"蛊真人","燃绘文化","image/cartoon/guzhenren.jpg","本漫画经腾讯动漫授权改编自起点中文网文学作品《蛊真人》，原作者：蛊真人。人是万物之灵，蛊是天地真精。在一个养蛊、炼蛊、用蛊的奇特世界中，一个穿越者不断重生，矢志永生的励志故事。雄山漫道真如铁，如今迈步从头越。险就一身乾坤精，我心依旧望苍天！",2089000000,360000,0,2);
INSERT INTO ct_cartoon values(null,"苍白王座","DAZUI","image/cartoon/cangbaiwangzuo.jpg","少年沐白失手杀人，从此进入杀手的世界，一张黑色的卡片出现在家门口，苍白王座，谁能得到这件杀手之王——夜X留下的最终武器、成就最强杀手？杀道，遵循的是杀戮之路，亦是自我之路。",1409000000,540000,0,16);
INSERT INTO ct_cartoon values(null,"苍白王座","DAZUI","image/cartoon/cangbaiwangzuo.jpg","少年沐白失手杀人，从此进入杀手的世界，一张黑色的卡片出现在家门口，苍白王座，谁能得到这件杀手之王——夜X留下的最终武器、成就最强杀手？杀道，遵循的是杀戮之路，亦是自我之路。",1409000000,540000,0,16);



/****漫画章节****/
CREATE TABLE ct_cartoon_hapter(
	ch_id INT NOT NULL AUTO_INCREMENT,
	ch_img VARCHAR(128),	#图片路径
	ch_hapter INT, #章节
	ch_approval BIGINT,	#点赞量
	ch_uptime	BIGINT #更新时间
); 
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",1,690000,79500000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",2,700000,79620000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",3,720000,79720000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",4,740000,79820000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",5,870000,79920000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",6,860000,80020000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",7,820000,80120000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",8,830000,80220000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",9,790000,80320000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",10,780000,80400000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",11,860000,80500000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",12,950000,80610000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",13,930000,80700000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",14,890000,80800000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",15,880000,80900000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",16,900000,81000000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",17,960000,81100000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",18,920000,81200000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",19,890000,81300000000000);
INSERT INTO ct_cartoon_hapter VALUES(null,"image/cartoon/modaozushi/hapter.png",20,1000000,81400000000000);




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
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel1.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel2.jpg","传武","cartindex.html?lid='2'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel3.jpg","苍白王座","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel4.jpg","未来重启","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel5.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel6.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel7.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel8.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel9.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel10.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel11.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel12.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel13.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel14.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel15.jpg","斗破苍穹","cartindex.html?lid='1'");
INSERT INTO ct_cartoon_hapter VALUES(null,"image/carousel/carousel16.jpg","斗破苍穹","cartindex.html?lid='1'");

/****首页题材合辑****/
CREATE TABLE ct_index_mix(
	mix_id INT NOT NULL AUTO_INCREMENT, #合辑id
	mix_name VARCHAR(128),	#合辑中漫画名字
	mix_author VARCHAR(64),	#漫画作者
	mix_img	VARCHAR(128),	#图片
	mix_approval INT,	#点赞量
	mix_theme VARCHAR(16),	#题材
);
INSERT INTO ct_cartoon_hapter VALUES(null,"一人之下","动漫堂","image/cartoon/yirenzhixia.jpg","1000000","玄幻 格斗");
INSERT INTO ct_cartoon_hapter VALUES(null,"斗破苍穹","知音漫客","image/cartoon/doupocangqiong.jpg","1000000","魔幻 动作");
INSERT INTO ct_cartoon_hapter VALUES(null,"蛊真人","燃绘文化","image/cartoon/guzhenren.jpg","1000000","玄幻 古风");
INSERT INTO ct_cartoon_hapter VALUES(null,"苍白王座","DAZUI","image/cartoon/cangbaiwangzuo.jpg","1000000","热血 都市");
INSERT INTO ct_cartoon_hapter VALUES(null,"西行纪","百漫马赛克工作室","image/cartoon/xixingji.jpg","1000000","热血 魔幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"海贼王","尾田荣一郎","image/cartoon/haizeiwang.jpg","1000000","热血 冒险");
INSERT INTO ct_cartoon_hapter VALUES(null,"传武","GK工坊","image/cartoon/chuanwu.jpg","1000000","古风 恐怖");
INSERT INTO ct_cartoon_hapter VALUES(null,"百炼成神","燃哉工作室","image/cartoon/bailianchengshen.jpg","1000000","玄幻 冒险");
INSERT INTO ct_cartoon_hapter VALUES(null,"未来重启","木由子","image/cartoon/weilaichongqi.jpg","1000000","穿越 都市");
INSERT INTO ct_cartoon_hapter VALUES(null,"戒魔人","张三疯","image/cartoon/jiemoren.jpg","1000000","恐怖 冒险");

/****首页人气榜****/
CREATE TABLE ct_index_polist(
	po_id INT NOT NULL AUTO_INCREMENT,	#人气id
	po_name VARCHAR(128), #人气榜漫画名字
	po_img VARCHAR(128), #图片
	po_theme VARCHAR(16),	#漫画题材
	po_intro VARCHAR(256), #简介
	po_chapter VARCHAR(24) #最新章节
);
INSERT INTO ct_cartoon_hapter VALUES(null,"传武","image/cartoon/chuanwu.jpg","古风 恐怖","他说：“这世上本不该有鬼”。 然后，这世间为之一清。","第116章 拉拢");
INSERT INTO ct_cartoon_hapter VALUES(null,"传武","image/cartoon/chuanwu.jpg","古风 恐怖","他说：“这世上本不该有鬼”。 然后，这世间为之一清。","第116章 拉拢");
INSERT INTO ct_cartoon_hapter VALUES(null,"传武","image/cartoon/chuanwu.jpg","古风 恐怖","他说：“这世上本不该有鬼”。 然后，这世间为之一清。","第116章 拉拢");
INSERT INTO ct_cartoon_hapter VALUES(null,"传武","image/cartoon/chuanwu.jpg","古风 恐怖","他说：“这世上本不该有鬼”。 然后，这世间为之一清。","第116章 拉拢");
INSERT INTO ct_cartoon_hapter VALUES(null,"传武","image/cartoon/chuanwu.jpg","古风 恐怖","他说：“这世上本不该有鬼”。 然后，这世间为之一清。","第116章 拉拢");
INSERT INTO ct_cartoon_hapter VALUES(null,"传武","image/cartoon/chuanwu.jpg","古风 恐怖","他说：“这世上本不该有鬼”。 然后，这世间为之一清。","第116章 拉拢");
INSERT INTO ct_cartoon_hapter VALUES(null,"传武","image/cartoon/chuanwu.jpg","古风 恐怖","他说：“这世上本不该有鬼”。 然后，这世间为之一清。","第116章 拉拢");
INSERT INTO ct_cartoon_hapter VALUES(null,"传武","image/cartoon/chuanwu.jpg","古风 恐怖","他说：“这世上本不该有鬼”。 然后，这世间为之一清。","第116章 拉拢");
INSERT INTO ct_cartoon_hapter VALUES(null,"传武","image/cartoon/chuanwu.jpg","古风 恐怖","他说：“这世上本不该有鬼”。 然后，这世间为之一清。","第116章 拉拢");
INSERT INTO ct_cartoon_hapter VALUES(null,"传武","image/cartoon/chuanwu.jpg","古风 恐怖","他说：“这世上本不该有鬼”。 然后，这世间为之一清。","第116章 拉拢");


/****首页每日更新****/
CREATE TABLE ct_index_update(
	up_id INT NOT NULL AUTO_INCREMENT, #更新id
	up_time INT, #更新日期
	up_name VARCHAR(128), #漫画名字
	up_author VARCHAR(63), #作者
	up_img	VARCHAR(128), #图片
	up_approval INT, #点赞量
	up_theme VARCHAR(16) #题材
);
INSERT INTO ct_cartoon_hapter VALUES(null,"1","魔道祖师","墨香铜臭（原著）+落地成球","image/week/modaozushi.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"1","魔道祖师","墨香铜臭（原著）+落地成球","image/week/modaozushi.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"1","魔道祖师","墨香铜臭（原著）+落地成球","image/week/modaozushi.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"1","魔道祖师","墨香铜臭（原著）+落地成球","image/week/modaozushi.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"1","魔道祖师","墨香铜臭（原著）+落地成球","image/week/modaozushi.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"1","魔道祖师","墨香铜臭（原著）+落地成球","image/week/modaozushi.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"1","魔道祖师","墨香铜臭（原著）+落地成球","image/week/modaozushi.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"1","魔道祖师","墨香铜臭（原著）+落地成球","image/week/modaozushi.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"1","魔道祖师","墨香铜臭（原著）+落地成球","image/week/modaozushi.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"1","魔道祖师","墨香铜臭（原著）+落地成球","image/week/modaozushi.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"2","阎王不高兴","使徒子","image/week/yanwangbugaoxing.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"2","阎王不高兴","使徒子","image/week/yanwangbugaoxing.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"2","阎王不高兴","使徒子","image/week/yanwangbugaoxing.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"2","阎王不高兴","使徒子","image/week/yanwangbugaoxing.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"2","阎王不高兴","使徒子","image/week/yanwangbugaoxing.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"2","阎王不高兴","使徒子","image/week/yanwangbugaoxing.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"2","阎王不高兴","使徒子","image/week/yanwangbugaoxing.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"2","阎王不高兴","使徒子","image/week/yanwangbugaoxing.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"2","阎王不高兴","使徒子","image/week/yanwangbugaoxing.png",1000000,"奇幻");
INSERT INTO ct_cartoon_hapter VALUES(null,"2","阎王不高兴","使徒子","image/week/yanwangbugaoxing.png",1000000,"奇幻");




/****首页类型展示****/
CREATE TABLE ct_index_typeshow(
	ts_id INT NOT NULL AUTO_INCREMENT,
	ts_typeid	INT,  #类别id
	ts_name VARCHAR(128), #漫画名字
	ts_author VARCHAR(63), #作者
	ts_img	VARCHAR(128), #图片
	ts_approval INT #点赞量
);
INSERT INTO ct_cartoon_hapter VALUES(null,"18","一人之下","动漫堂","image/cartoon/yirenzhixia.jpg",100000);
INSERT INTO ct_cartoon_hapter VALUES(null,"18","一人之下","动漫堂","image/cartoon/yirenzhixia.jpg",100000);
INSERT INTO ct_cartoon_hapter VALUES(null,"18","一人之下","动漫堂","image/cartoon/yirenzhixia.jpg",100000);
INSERT INTO ct_cartoon_hapter VALUES(null,"18","一人之下","动漫堂","image/cartoon/yirenzhixia.jpg",100000);
INSERT INTO ct_cartoon_hapter VALUES(null,"18","一人之下","动漫堂","image/cartoon/yirenzhixia.jpg",100000);
INSERT INTO ct_cartoon_hapter VALUES(null,"18","一人之下","动漫堂","image/cartoon/yirenzhixia.jpg",100000);
INSERT INTO ct_cartoon_hapter VALUES(null,"18","一人之下","动漫堂","image/cartoon/yirenzhixia.jpg",100000);
INSERT INTO ct_cartoon_hapter VALUES(null,"18","一人之下","动漫堂","image/cartoon/yirenzhixia.jpg",100000);
INSERT INTO ct_cartoon_hapter VALUES(null,"18","一人之下","动漫堂","image/cartoon/yirenzhixia.jpg",100000);
INSERT INTO ct_cartoon_hapter VALUES(null,"18","一人之下","动漫堂","image/cartoon/yirenzhixia.jpg",100000);



/****首页榜单展示****/
CREATE TABLE ct_index_ranking(
	rid INT NOT NULL AUTO_INCREMENT,
	compare VARCHAR(64), #与上周比较
	rname VARCHAR(128), #漫画名字
	rauthor VARCHAR(63), #作者
	rimg	VARCHAR(128), #图片
	rintro VARCHAR(256),	#简介
	ranking VARCHAR(16)	#所属榜
);