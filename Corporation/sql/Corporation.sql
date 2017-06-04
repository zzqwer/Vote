drop table  corporation
drop table department
drop table activity

select * from ADMIN
insert into corporation values(1)
insert into department values(1,1)
insert into department values(2,2)
insert into activity values(1,2)
select endtime from ACTIVE where endtime<(select sysdate from dual)

--  164 JK1401   123456   1209614483@qq.com 男    23 计科1303班   天津市  18216021360 userPic/149485829246270770.jpg

--协会名人表
create table Hero(
	hid int primary key,   --协会名人ID
	hname varchar2(20),		--协会名人姓名
	hclass varchar2(20),	--协会名人班级
	hpic varchar2(100),		--协会名人个人照
	hstory clob				--协会名人事迹
)
create sequence hero_hid start with 1 increment by 1
insert into Hero values(hero_hid.nextval,'JK1401','计科1303班','userPic/149485829246270770.jpg','吃的多');
select * from Hero;
DELETE FROM Hero WHERE hname = 'JK1301';
drop table baoming;
--报名表
create table baoming(
	bid int primary key,
	aname varchar2(50), --活动名称
	bclass varchar(20),--报名人班级
	bname varchar(10),--报名人姓名
	tel number--联系方式
)
create sequence baoming_bid start with 1 increment by 1
select * from baoming
insert into baoming values(baoming_bid.nextval,'2016-10-10野炊','信息1301','周正',13142359843)

drop table active;
--活动表
create table active(
	aid int primary key,
	aname varchar2(50),
	atime varchar2(100), --活动时间
	acontent varchar2(1000),--活动内容
	place varchar2(30),--活动地点
	tel varchar2(12),--咨询电话
	acount int, --报名人数
	endtime varchar2(30)--报名截止日期
)
create sequence active_aid start with 1 increment by 1;
select * from active;
update active set acount=acount+1 where aname='2016-10-10野炊'
insert into active values(active_aid.nextval,'核辐射大幅度','2016-10-10一整天','大家自备材料自己做饭','天上人间','13142359843',0,'2016-9-16');
select * from ACTIVE where endtime&lt;(select sysdate from dual);


drop table corporation;
--社团表
create table corporation(
	cid int primary key,    --社团id
	cname varchar2(100), --社团名
	logo varchar2(2000),   --社团logo
	teacher varchar2(200),  --指导老师
	head varchar2(100),    --社团负责人/会长/头儿
	tel varchar2(20),      --官方联系电话
	email varchar2(200),  --官方联系邮箱
	cintroduce clob --社团简介
);
create sequence corporation_cid start with 1 increment by 1;
select * from corporation;
select * from Corporation where cname='计算机协会'
select * from USERS;
insert into corporation values(corporation_cid.nextval,'青年志愿者协会',null,'彭伟','谷禄帅','18216021360','1209614483@qq.com','');
insert into corporation values(corporation_cid.nextval,'书画协会',null,'彭伟','谷禄帅','18216021360','1209614483@qq.com','');
insert into corporation values(corporation_cid.nextval,'文艺爱好者协会',null,'彭伟','谷禄帅','18216021360','1209614483@qq.com','');
insert into corporation values(corporation_cid.nextval,'计算机协会',null,'彭伟','谷禄帅','18216021360','1209614483@qq.com','');


--部门表
create table department(
	did  int primary key,
	cname varchar2(20),--协会名
	dname varchar2(50),--部门名
	dintroduce varchar2(2000)--部门简介
)

create sequence department_did start with 1 increment by 1;
select d.did,c.cname as d.cid,d.dname,d.dintroduce from CORPORATION c,DEPARTMENT d where c.cid=d.cid

insert into DEPARTMENT values(department_did.nextval,'青年志愿者协会','外联部','拉赞助');
drop table department;
select * from DEPARTMENT
select * from CORPORATION
select d.did,c.cname,d.dname,d.dintroduce from CORPORATION c,DEPARTMENT d where c.cid=d.cid;
--用户表   会员表
create table users(
	usid int primary key,
	username varchar2(50),
	password varchar2(50),
	email varchar2(100),
	sex varchar2(20),
	age int,
	userclass varchar2(100),
	home varchar2(20),
	phone varchar2(100),
	pic varchar2(30)
)
select *from USERS
select * from baoming where aname='核辐射大幅度'
--活动表
drop table active;
create table active(
	aid int primary key,
	aname varchar2(50),
	atime varchar2(100), --活动时间
	acontent varchar2(1000),--活动内容
	place varchar(30),--活动地点
	tel number,--咨询电话
	acount int, --报名人数
	endtime varchar2(20)--报名截止日期
)
select * from active
drop table users;
insert into users values(1223,'WWmiccke','a','1@qq.com','a',23,'计科一班','hebei','122','../../img/149424519679686121.jpg');
select * from users

drop table personal;
--个人信息表
create table personal(
	pid int constraint personal_pid references Cuser(usid),
	pname varchar2(50),--姓名
	pclass varchar2(70),--班级
	phone number(20) --联系方式
)
select * from personal


--信息表
create table information(
	infoid int primary key,
	title varchar2(200),  --信息标题
	infodate varchar2(15), --日期
	content clob,
	infotype varchar2(20), --信息的类型
	club varchar2(20) --发布该信息的社团
)
create sequence information_infoid start with 1 increment by 1

commit
select * from information where infotype='activeannounced'
select * from information where infotype='webnotice'
drop table information
commit;
--客服表
create table customservice(
	csid int primary key,
	csname varchar2(50),
	cssex varchar2(20)
)
drop table customservice;


--留言表
create table  messageBoard(
	lid int primary key,
	lname varchar2(10),
	lclass varchar2(20),
	lsex varchar2(5),
	lpic varchar2(100),
	lmessage varchar2(1000),
	ldate varchar2(30)
)
drop table messageBoard;
select * from messageBoard
create sequence messageBoard_lid start with 1 increment by 1;
insert into leaveword values(leaveword_lid.nextval,'福建江夏学院 福建师范大学 福建商业高等专院 闽江学院 福建医科大学 莆田学院 福建中医药大学 福州大学阳光学院 仰恩大学 集美大学...','2017-06-01');
--管理员表
drop table admin;
drop sequence admin_aid ;
create table admin(
	aid int primary key,
	aname varchar2(20),
	apwd varchar2(20),
	aemail varchar2(100),  --邮箱账号
	aphone varchar2(11),         --手机号/支付宝账号
	qq  varchar2(20),             --qq账号
	root int           --权限    1:普通管理员   2:超级管理员
)
create sequence admin_aid start with 1 increment by 1;


select * from admin;

--理事会表
drop table director;
create table director(
	did int primary key,   --理事id
	dname varchar2(20),   --理事姓名
	demail varchar2(100),  --邮箱账号
	dphone varchar2(11),      --手机号/支付宝账号
	qq varchar2(20),       --QQ帐号
	corporation varchar2(40) ,     --所属协会
	department varchar2(20) ,      --所属部门
	place varchar2(20)       --部门职位
);
create sequence director_did start with 1 increment by 1;
select * from director;
--会员表
drop table member;
create table member(
	mid int primary key,   --会员id
	mname varchar2(20),   --会员姓名
	memail varchar2(100),  --邮箱账号
	mphone varchar2(11),      --手机号/支付宝账号
	qq varchar2(20),       --QQ帐号
	corporation varchar2(40) ,     --所属协会
	pay varchar2(20)          --会费交付情况
);
create sequence member_mid start with 1 increment by 1;
select * from member;
--文档&图片表
create table wordfile(
	wid int primary key,   --id
	wpath varchar2(200),   --path
	corporation varchar2(40),      --所属协会
	cname varchar2(20)
);
create sequence wordfile_wid start with 1 increment by 1;



select * from wordfile;
delete table wordorpic;
insert into wordfile values(wordfile_wid.nextval,'路径','青年志愿者协会','周丹');



insert into information values(info_infoid.nextval,'书画协会页面测试',to_date('2016-8-28','yyyy-MM-dd'),'测试','activeannounced','shuhua');
delete  from information where infotype='webnotice'
insert into information values(info_infoid.nextval,'青协百里毅行',to_date('2016-8-28','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into information values(info_infoid.nextval,'职协生存挑战赛',to_date('2016-8-26','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into information values(info_infoid.nextval,'青协换届大会',to_date('2016-8-28','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into information values(info_infoid.nextval,'职协换届大会',to_date('2016-8-29','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into information values(info_infoid.nextval,'计算机协会义务修电脑',to_date('2016-8-31','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into information values(info_infoid.nextval,'英语协会晨读活动',to_date('2016-8-18','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into information values(info_infoid.nextval,'计算机协会招新',to_date('2016-8-24','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into information values(info_infoid.nextval,'文艺爱好者协会招新',to_date('2016-8-26','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into information values(info_infoid.nextval,'文艺艾哈着协会招新',to_date('2016-8-26','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','12345678','qingxie');

insert into information values(info_infoid.nextval,'网站公告6',to_date('2016-8-28','yyyy-MM-dd'),'dddddddddddddd','webnotice','qingxie');
insert into information values(info_infoid.nextval,'网站公告3',to_date('2016-8-28','yyyy-MM-dd'),'网站公告3内容','webnotice','qingxie');
insert into information values(info_infoid.nextval,'网站公告4',to_date('2016-8-28','yyyy-MM-dd'),'网站公告4内容','webnotice','qingxie');
insert into information values(info_infoid.nextval,'网站公告5',to_date('2016-8-28','yyyy-MM-dd'),'网站公告5内容','webnotice','qingxie');
insert into information values(info_infoid.nextval,'网站公6',to_date('2016-8-28','yyyy-MM-dd'),'网站公告6内容','webnotice','qingxie');
insert into information values(info_infoid.nextval,'网站公告7',to_date('2016-8-28','yyyy-MM-dd'),'网站公告7内容','webnotice','qingxie');
insert into information values(info_infoid.nextval,'网站公告8',to_date('2016-8-28','yyyy-MM-dd'),'网站公告8内容','webnotice','qingxie');
insert into information values(info_infoid.nextval,'网站公告9',to_date('2016-8-28','yyyy-MM-dd'),'网站公告9内容','webnotice','qingxie');
insert into information values(info_infoid.nextval,'网站公告10',to_date('2016-8-28','yyyy-MM-dd'),'网站公告10内容','webnotice','qingxie');
insert into information values(info_infoid.nextval,'网站公告11',to_date('2016-8-28','yyyy-MM-dd'),'网站公告11内容','webnotice','qingxie');
insert into information values(info_infoid.nextval,'精品活动1',to_date('2016-8-29','yyyy-MM-dd'),'精品活动1内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动2',to_date('2016-8-30','yyyy-MM-dd'),'精品活动2内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动3',to_date('2016-8-30','yyyy-MM-dd'),'精品活动3内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动4',to_date('2016-8-22','yyyy-MM-dd'),'精品活动4内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动5',to_date('2016-8-24','yyyy-MM-dd'),'精品活动5内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动6',to_date('2016-8-25','yyyy-MM-dd'),'精品活动6内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动7',to_date('2016-8-21','yyyy-MM-dd'),'精品活动7内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动8',to_date('2016-8-15','yyyy-MM-dd'),'精品活动8内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动9',to_date('2016-8-31','yyyy-MM-dd'),'精品活动9内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'社团动态1',to_date('2016-8-28','yyyy-MM-dd'),'社团动态2内容','shetuandongtai','qingxie');
insert into information values(info_infoid.nextval,'社团动态2',to_date('2016-8-28','yyyy-MM-dd'),'社团动态2内容','shetuandongtai','qingxie');
insert into information values(info_infoid.nextval,'社团动态3',to_date('2016-8-28','yyyy-MM-dd'),'社团动态3内容','shetuandongtai','qingxie');
insert into information values(info_infoid.nextval,'社团动态4',to_date('2016-8-28','yyyy-MM-dd'),'社团动态4内容','shetuandongtai','qingxie');
insert into information values(info_infoid.nextval,'社团动态5',to_date('2016-8-28','yyyy-MM-dd'),'社团动态5内容','shetuandongtai','qingxie');
insert into information values(info_infoid.nextval,'社团动态6',to_date('2016-8-28','yyyy-MM-dd'),'社团动态6内容','shetuandongtai','qingxie');
insert into information values(info_infoid.nextval,'社团动态7',to_date('2016-8-28','yyyy-MM-dd'),'','shetuandongtai','qingxie');
insert into information values(info_infoid.nextval,'社团动态8',to_date('2016-8-28','yyyy-MM-dd'),'社团动态8内容','shetuandongtai','qingxie');
insert into information values(info_infoid.nextval,'社团动态9',to_date('2016-8-28','yyyy-MM-dd'),'社团动态9内容','shetuandongtai','qingxie');
insert into information values(info_infoid.nextval,'社团动态10',to_date('2016-8-28','yyyy-MM-dd'),'社团动态10内容','shetuandongtai','qingxie');
insert into information values(info_infoid.nextval,'社团动态11',to_date('2016-8-28','yyyy-MM-dd'),'社团动态11内容','shetuandongtai','qingxie');
insert into information values(info_infoid.nextval,'社团荣誉1',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉2内容','glory','qingxie');
insert into information values(info_infoid.nextval,'社团荣誉2',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉2内容','glory','qingxie');
insert into information values(info_infoid.nextval,'社团荣誉3',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉3内容','glory','qingxie');
insert into information values(info_infoid.nextval,'社团荣誉4',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉4内容','glory','qingxie');
insert into information values(info_infoid.nextval,'社团荣誉5',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉5内容','glory','qingxie');
insert into information values(info_infoid.nextval,'社团荣誉6',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉6内容','glory','qingxie');
insert into information values(info_infoid.nextval,'社团荣誉7',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉7内容','glory','qingxie');
insert into information values(info_infoid.nextval,'社团荣誉8',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉8内容','glory','qingxie');
insert into information values(info_infoid.nextval,'社团荣誉9',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉9内容','glory','qingxie');
insert into information values(info_infoid.nextval,'社团荣誉10',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉10内容','glory','qingxie');
insert into information values(info_infoid.nextval,'社团荣誉11',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉11内容','glory','qingxie');
insert into information values(info_infoid.nextval,'对外交流1',to_date('2016-8-28','yyyy-MM-dd'),'对外交流2内容','discuss','qingxie');
insert into information values(info_infoid.nextval,'对外交流2',to_date('2016-8-28','yyyy-MM-dd'),'对外交流2内容','discuss','qingxie');
insert into information values(info_infoid.nextval,'对外交流3',to_date('2016-8-28','yyyy-MM-dd'),'对外交流3内容','discuss','qingxie');
insert into information values(info_infoid.nextval,'对外交流4',to_date('2016-8-28','yyyy-MM-dd'),'对外交流4内容','discuss','qingxie');
insert into information values(info_infoid.nextval,'对外交流5',to_date('2016-8-28','yyyy-MM-dd'),'对外交流5内容','discuss','qingxie');
insert into information values(info_infoid.nextval,'对外交流6',to_date('2016-8-28','yyyy-MM-dd'),'对外交流6内容','discuss','qingxie');
insert into information values(info_infoid.nextval,'对外交流7',to_date('2016-8-28','yyyy-MM-dd'),'对外交流7内容','discuss','qingxie');
insert into information values(info_infoid.nextval,'对外交流8',to_date('2016-8-28','yyyy-MM-dd'),'对外交流8内容','discuss','qingxie');
insert into information values(info_infoid.nextval,'对外交流9',to_date('2016-8-28','yyyy-MM-dd'),'对外交流9内容','discuss','qingxie');
insert into information values(info_infoid.nextval,'对外交流10',to_date('2016-8-28','yyyy-MM-dd'),'对外交流10内容','discuss','qingxie');
insert into information values(info_infoid.nextval,'对外交流11',to_date('2016-8-28','yyyy-MM-dd'),'对外交流11内容','discuss','qingxie');
insert into information values(info_infoid.nextval,'精品活动1',to_date('2016-8-28','yyyy-MM-dd'),'精品活动2内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动2',to_date('2016-8-28','yyyy-MM-dd'),'精品活动2内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动3',to_date('2016-8-28','yyyy-MM-dd'),'精品活动3内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动4',to_date('2016-8-28','yyyy-MM-dd'),'精品活动4内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动5',to_date('2016-8-28','yyyy-MM-dd'),'精品活动5内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动6',to_date('2016-8-28','yyyy-MM-dd'),'精品活动6内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动7',to_date('2016-8-28','yyyy-MM-dd'),'精品活动7内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动8',to_date('2016-8-28','yyyy-MM-dd'),'精品活动8内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动9',to_date('2016-8-28','yyyy-MM-dd'),'精品活动9内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动10',to_date('2016-8-28','yyyy-MM-dd'),'精品活动10内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'精品活动11',to_date('2016-8-28','yyyy-MM-dd'),'精品活动11内容','Boutique','qingxie');
insert into information values(info_infoid.nextval,'媒体报道1',to_date('2016-8-28','yyyy-MM-dd'),'媒体报道1内容','mediaReport','qingxie');
insert into information values(info_infoid.nextval,'媒体报道2',to_date('2016-8-28','yyyy-MM-dd'),'媒体报道2内容','mediaReport','qingxie');
insert into information values(info_infoid.nextval,'媒体报道3',to_date('2016-8-28','yyyy-MM-dd'),'媒体报道3内容','mediaReport','qingxie');
insert into information values(info_infoid.nextval,'媒体报道4',to_date('2016-8-28','yyyy-MM-dd'),'媒体报道4内容','mediaReport','qingxie');
insert into information values(info_infoid.nextval,'媒体报道5',to_date('2016-8-28','yyyy-MM-dd'),'媒体报道5内容','mediaReport','qingxie');
insert into information values(info_infoid.nextval,'校园新闻1',to_date('2016-8-28','yyyy-MM-dd'),'校园新闻1内容','SchoolNews','qingxie');
insert into information values(info_infoid.nextval,'校园新闻2',to_date('2016-8-28','yyyy-MM-dd'),'校园新闻2内容','SchoolNews','qingxie');
insert into information values(info_infoid.nextval,'校园新闻3',to_date('2016-8-28','yyyy-MM-dd'),'校园新闻3内容','SchoolNews','qingxie');
insert into information values(info_infoid.nextval,'校园新闻4',to_date('2016-8-28','yyyy-MM-dd'),'校园新闻4内容','SchoolNews','qingxie');
insert into information values(info_infoid.nextval,'校园新闻5',to_date('2016-8-28','yyyy-MM-dd'),'校园新闻5内容','SchoolNews','qingxie');



insert into member values(member_mid.nextval,'谭生辉','1634556914@qq.com','18274716931','1634556914','青年志愿者协会','true');
insert into member values(member_mid.nextval,'谷禄帅','1634556914@qq.com','18274716931','1634556914','青年志愿者协会','false');
insert into member values(member_mid.nextval,'周正','1634556914@qq.com','18274716931','1634556914','职业发展与就业创业协会','true');
insert into member values(member_mid.nextval,'戴欢','1634556914@qq.com','18274716931','1634556914','职业发展与就业创业协会','false');



insert into director values(director_did.nextval,'谷禄帅1','1209614483@qq.com','18216021360','1209614483','青年志愿者协会','会长团','会长');
insert into director values(director_did.nextval,'谷禄帅2','1209614483@qq.com','18216021360','1209614483','青年志愿者协会','会长团','副会长');
insert into director values(director_did.nextval,'谷禄帅3','1209614483@qq.com','18216021360','1209614483','青年志愿者协会','会长团','副会长');
insert into director values(director_did.nextval,'谷禄帅4','1209614483@qq.com','18216021360','1209614483','青年志愿者协会','会长团','会助');
insert into director values(director_did.nextval,'谷禄帅5','1209614483@qq.com','18216021360','1209614483','青年志愿者协会','会长团','会助');
insert into director values(director_did.nextval,'谷禄帅6','1209614483@qq.com','18216021360','1209614483','青年志愿者协会','办公室','主任');
insert into director values(director_did.nextval,'谷禄帅7','1209614483@qq.com','18216021360','1209614483','青年志愿者协会','办公室','副主任');
insert into director values(director_did.nextval,'谷禄帅8','1209614483@qq.com','18216021360','1209614483','青年志愿者协会','办公室','副主任');
insert into director values(director_did.nextval,'谷禄帅9','1209614483@qq.com','18216021360','1209614483','青年志愿者协会','办公室','干事');
insert into director values(director_did.nextval,'谷禄帅10','1209614483@qq.com','18216021360','1209614483','青年志愿者协会','办公室','干事');

insert into director values(director_did.nextval,'周丹1','543919061@qq.com','15674732978','543919061','职业发展与就业创业协会','会长团','会长');
insert into director values(director_did.nextval,'周丹2','543919061@qq.com','15674732978','543919061','职业发展与就业创业协会','会长团','副会长');
insert into director values(director_did.nextval,'周丹3','543919061@qq.com','15674732978','543919061','职业发展与就业创业协会','会长团','副会长');
insert into director values(director_did.nextval,'周丹4','543919061@qq.com','15674732978','543919061','职业发展与就业创业协会','办公室','主任');
insert into director values(director_did.nextval,'周丹5','543919061@qq.com','15674732978','543919061','职业发展与就业创业协会','办公室','副主任');
insert into director values(director_did.nextval,'周丹6','543919061@qq.com','15674732978','543919061','职业发展与就业创业协会','办公室','副主任');
insert into director values(director_did.nextval,'周丹7','543919061@qq.com','15674732978','543919061','职业发展与就业创业协会','办公室','干事');


insert into admin values(admin_aid.nextval,'计信青协','jxqx','1634556914@qq.com','18274716931','1634556914',2);
insert into admin values(admin_aid.nextval,'tsh','aa','1634556914@qq.com','18274716931','1634556914',2);
insert into admin values(admin_aid.nextval,'计信职协','jxzx','1634556914@qq.com','18274716931','1634556914',1);
insert into admin values(admin_aid.nextval,'计信英协','jxyx','1634556914@qq.com','18274716931','1634556914',1);
