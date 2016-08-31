  drop table  corporation
  drop table department
  drop table activity
  insert into corporation values(1)
  insert into department values(1,1)
  insert into department values(2,2)
  insert into activity values(1,2)


  --社团表
  create table corporation(
    cid int primary key,
    chairman varchar2(30),
    cname varchar2(100), --社团名
    cintroduce varchar2(2000), --社团简介
    honor varchar2(1000),--社团荣誉
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
  
  --个人信息表
  create table personal(
  pid int constraint personal_pid references Cuser(usid),
  pname varchar2(50),--姓名
  pclass varchar2(70),--班级
  phone number(20) --联系方式
  )

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

drop table infomation
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
