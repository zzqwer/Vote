  drop table  corporation
  drop table department
  drop table activity
  insert into corporation values(1)
  insert into department values(1,1)
  insert into department values(2,2)
  insert into activity values(1,2)

select * from corporation;
  --社团表
  create table corporation(
    cid int primary key,
    chairman varchar2(30),
    cname varchar2(100), --社团名
    cintroduce varchar2(2000), --社团简介
    honor varchar2(1000),--精品活动
    email  varchar2(50)
     
  )
  --部门表
  create table department(
  did  int primary key,
  cid int constraint department_cid references corporation(cid),
  dname varchar2(50),--部门名
  dintroduce varchar2(2000)--部门简介  
  )
  --用户表
  create table Cuser(
    usid int primary key,
    username varchar2(50),
    uspassword varchar2(50),
    cid int constraint Cuser_cid references corporation(cid),
     email varchar2(100),
 sex varchar2(20),
 age int,
 userclass varchar2(100),
 home varchar2(20),
 phone varchar2(100)
  )
  select * from users
  --个人信息表
  create table personal(
  pid int constraint personal_pid references Cuser(usid),
  pname varchar2(50),--姓名
  pclass varchar2(70),--班级
  phone number(20) --联系方式
  )
--活动表

--信息表
create table infomation(
   infoid int primary key,
   title varchar2(200),  --信息标题
   infodate date, --日期
   content varchar2(2000),
   infotype varchar2(20), --信息的类型
   club varchar2(20) --发布该信息的社团
)
commit
select * from infomation where infotype='activeannounced'
drop table infomation
insert into infomation values(info_infoid.nextval,'书画协会页面测试',to_date('2016-8-28','yyyy-MM-dd'),'测试','activeannounced','shuhua');

create sequence info_infoid start with 1 increment by 1
insert into infomation values(info_infoid.nextval,'青协百里毅行',to_date('2016-8-28','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'职协生存挑战赛',to_date('2016-8-26','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'青协换届大会',to_date('2016-8-28','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'职协换届大会',to_date('2016-8-29','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'计算机协会义务修电脑',to_date('2016-8-31','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'英语协会晨读活动',to_date('2016-8-18','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'计算机协会招新',to_date('2016-8-24','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'文艺爱好者协会招新',to_date('2016-8-26','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'文艺艾哈着协会招新',to_date('2016-8-26','yyyy-MM-dd'),'计信青协将于后天举行百里毅行','12345678','qingxie');

insert into infomation values(info_infoid.nextval,'网站公告2',to_date('2016-8-28','yyyy-MM-dd'),'网站公告2内容','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'网站公告3',to_date('2016-8-28','yyyy-MM-dd'),'网站公告3内容','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'网站公告4',to_date('2016-8-28','yyyy-MM-dd'),'网站公告4内容','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'网站公告5',to_date('2016-8-28','yyyy-MM-dd'),'网站公告5内容','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'网站公6',to_date('2016-8-28','yyyy-MM-dd'),'网站公告6内容','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'网站公告7',to_date('2016-8-28','yyyy-MM-dd'),'网站公告7内容','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'网站公告8',to_date('2016-8-28','yyyy-MM-dd'),'网站公告8内容','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'网站公告9',to_date('2016-8-28','yyyy-MM-dd'),'网站公告9内容','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'网站公告10',to_date('2016-8-28','yyyy-MM-dd'),'网站公告10内容','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'网站公告11',to_date('2016-8-28','yyyy-MM-dd'),'网站公告11内容','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动1',to_date('2016-8-29','yyyy-MM-dd'),'精品活动1内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动2',to_date('2016-8-30','yyyy-MM-dd'),'精品活动2内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动3',to_date('2016-8-30','yyyy-MM-dd'),'精品活动3内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动4',to_date('2016-8-22','yyyy-MM-dd'),'精品活动4内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动5',to_date('2016-8-24','yyyy-MM-dd'),'精品活动5内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动6',to_date('2016-8-25','yyyy-MM-dd'),'精品活动6内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动7',to_date('2016-8-21','yyyy-MM-dd'),'精品活动7内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动8',to_date('2016-8-15','yyyy-MM-dd'),'精品活动8内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动9',to_date('2016-8-31','yyyy-MM-dd'),'精品活动9内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'社团动态1',to_date('2016-8-28','yyyy-MM-dd'),'社团动态2内容','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'社团动态2',to_date('2016-8-28','yyyy-MM-dd'),'社团动态2内容','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'社团动态3',to_date('2016-8-28','yyyy-MM-dd'),'社团动态3内容','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'社团动态4',to_date('2016-8-28','yyyy-MM-dd'),'社团动态4内容','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'社团动态5',to_date('2016-8-28','yyyy-MM-dd'),'社团动态5内容','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'社团动态6',to_date('2016-8-28','yyyy-MM-dd'),'社团动态6内容','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'社团动态7',to_date('2016-8-28','yyyy-MM-dd'),'社团动态7内容','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'社团动态8',to_date('2016-8-28','yyyy-MM-dd'),'社团动态8内容','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'社团动态9',to_date('2016-8-28','yyyy-MM-dd'),'社团动态9内容','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'社团动态10',to_date('2016-8-28','yyyy-MM-dd'),'社团动态10内容','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'社团动态11',to_date('2016-8-28','yyyy-MM-dd'),'社团动态11内容','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'社团荣誉1',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉2内容','glory','qingxie');
insert into infomation values(info_infoid.nextval,'社团荣誉2',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉2内容','glory','qingxie');
insert into infomation values(info_infoid.nextval,'社团荣誉3',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉3内容','glory','qingxie');
insert into infomation values(info_infoid.nextval,'社团荣誉4',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉4内容','glory','qingxie');
insert into infomation values(info_infoid.nextval,'社团荣誉5',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉5内容','glory','qingxie');
insert into infomation values(info_infoid.nextval,'社团荣誉6',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉6内容','glory','qingxie');
insert into infomation values(info_infoid.nextval,'社团荣誉7',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉7内容','glory','qingxie');
insert into infomation values(info_infoid.nextval,'社团荣誉8',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉8内容','glory','qingxie');
insert into infomation values(info_infoid.nextval,'社团荣誉9',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉9内容','glory','qingxie');
insert into infomation values(info_infoid.nextval,'社团荣誉10',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉10内容','glory','qingxie');
insert into infomation values(info_infoid.nextval,'社团荣誉11',to_date('2016-8-28','yyyy-MM-dd'),'社团荣誉11内容','glory','qingxie');
insert into infomation values(info_infoid.nextval,'对外交流1',to_date('2016-8-28','yyyy-MM-dd'),'对外交流2内容','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'对外交流2',to_date('2016-8-28','yyyy-MM-dd'),'对外交流2内容','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'对外交流3',to_date('2016-8-28','yyyy-MM-dd'),'对外交流3内容','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'对外交流4',to_date('2016-8-28','yyyy-MM-dd'),'对外交流4内容','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'对外交流5',to_date('2016-8-28','yyyy-MM-dd'),'对外交流5内容','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'对外交流6',to_date('2016-8-28','yyyy-MM-dd'),'对外交流6内容','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'对外交流7',to_date('2016-8-28','yyyy-MM-dd'),'对外交流7内容','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'对外交流8',to_date('2016-8-28','yyyy-MM-dd'),'对外交流8内容','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'对外交流9',to_date('2016-8-28','yyyy-MM-dd'),'对外交流9内容','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'对外交流10',to_date('2016-8-28','yyyy-MM-dd'),'对外交流10内容','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'对外交流11',to_date('2016-8-28','yyyy-MM-dd'),'对外交流11内容','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动1',to_date('2016-8-28','yyyy-MM-dd'),'精品活动2内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动2',to_date('2016-8-28','yyyy-MM-dd'),'精品活动2内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动3',to_date('2016-8-28','yyyy-MM-dd'),'精品活动3内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动4',to_date('2016-8-28','yyyy-MM-dd'),'精品活动4内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动5',to_date('2016-8-28','yyyy-MM-dd'),'精品活动5内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动6',to_date('2016-8-28','yyyy-MM-dd'),'精品活动6内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动7',to_date('2016-8-28','yyyy-MM-dd'),'精品活动7内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动8',to_date('2016-8-28','yyyy-MM-dd'),'精品活动8内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动9',to_date('2016-8-28','yyyy-MM-dd'),'精品活动9内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动10',to_date('2016-8-28','yyyy-MM-dd'),'精品活动10内容','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'精品活动11',to_date('2016-8-28','yyyy-MM-dd'),'精品活动11内容','Boutique','qingxie');
  --客服表
  create table customservice(
  csid int primary key,
  csname varchar2(50),
  cssex varchar2(20) 
  )
--留言表
create table  leaveword(
 lid int primary key,
 message varchar2(1000),
 ldate date
)

--管理员表
drop table admin;
drop sequence admin_aid ;
create sequence admin_aid start with 1 increment by 1;
create table admin(
  aid int primary key,
  aname varchar2(20), 
  apwd varchar2(20),
  aemail varchar2(100),  --邮箱账号
  aphone varchar2(11),         --手机号/支付宝账号
  qq  varchar2(20),             --qq账号
  root int           --权限    1:普通管理员   2:超级管理员
)
insert into admin values(admin_aid.nextval,'计信青协','jxqx','1634556914@qq.com','18274716931','1634556914',2);
insert into admin values(admin_aid.nextval,'tsh','aa','1634556914@qq.com','18274716931','1634556914',2);
select * from admin;