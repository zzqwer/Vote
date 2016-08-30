drop table users
drop  sequence seq_users_usid;
create table users(
 usid int primary key,
 username varchar2(50),
 password varchar2(60),
 email varchar2(100),
 sex varchar2(20),
 age int,
 userclass varchar2(100),
 home varchar2(20),
 phone varchar2(100),
 pic varchar2(1000)
)
select * from users;
--alter table users add pic varchar2(1000);

create sequence seq_users_usid start with 1;

insert into USERS values(seq_users_usid.nextval,'zz','a','623831277@qq.com','男',20,'信息1301','湖南','13142359843',null);
insert into USERS values(seq_users_usid.nextval,'tsh','a','1634556914@qq.com','女',21,'物联网1301','湖南','18274716931',null);
