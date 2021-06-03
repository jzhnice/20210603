create database  if not exists xuexiao default charset = utf8;   -- 创建数据库

create -- 创建
exists -- 存在
 if not exists -- 不存在
use -- 使用 

use xuexiao;  -- 使用数据库

create table studentInfo(
	`name` varchar(10),
	sex char,
	age int,
	address varchar(10)
	
	);
	
	show tables;   -- 显示表格
	
	-- 插入数据
	insert into studentInfo ( `name` ,sex,age,address) values ('zhangsan','男',18,"河南省许昌市");
	
	select*from studentInfo; --  查询表格里面的数据
	-- 要插入的数据顺序和创建表格的数据顺序相同，则字段可以省略
	insert into studentInfo value('李四','女',20,"河南河南省安阳市");
		-- 要插入的数据顺序和创建表格的数据顺序不同，则字段不可以省略省安阳市");
		-- 要插入的数据顺序和创建表格的数据顺序不同，则字段不可以省略  要求一一对应
	insert into studentInfo ( sex , address , age , `name`) values ('男' , "美国拉斯维加斯" , 18 , '安德伍德' );
	insert into studentInfo (`name`) values ('小爱');  -- 没默认值，只给一个字段，则其他字段为空
		
		
		
		create table if not exists studentInfo2(  -- 如果没有就创建一个表格
	`name` varchar(10),
	sex char default '男',
	age int default 18,
	address varchar(10) default "河南省"	
	);
	select*from studentInfo2;
	
	insert into studentInfo2( `name` ,sex,age,address) values ('张三','男',18,"河南省许昌市");
iOK美女
	insert into studentInfo2 values ('张三','男',18,"河南省许昌市");
	insert into studentInfo2 (`name`) values ('小爱');  -- 有默认值的情况，可以不给定值，但是字段需要写
	
	
	
		create table if not exists studentInfo3(  -- 如果没有就创建一个表格
		id int primary key auto_increment,
	`name` varchar(10),
	sex char default '男',
	age int default 18,
	address varchar(10) default "河南省"	
	);
	
	insert into  studentInfo3( `name` ,sex,age,address)  values('小红','女',19,"河南");
	select * from studentInfo3;
		insert into  studentInfo3( `name` ,sex,age,address)  values('小红','女',19,"河北"),
																															 ('小红','女',19,"海南"),
																															 ('小红','女',19,"漯河"),
																															 ('小红','女',19,"济南");
																															 
																															 
																															 
	-- 查询
	select  address='河北'  from  studentInfo3;
	select *from  studentInfo;
	select *from  studentInfo2;
	select `name` , sex,age,address from studentInfo;
	select  `name` ,age from studentInfo;  -- 自定义查询的字段；
	
	-- 更新
	update  studentInfo2 set age = age+1  where name = '小爱';
	update  studentInfo2 set age = age+1 ;
	update  studentInfo2 set age = 18 ;
	
	
	-- 删除
	delete from studentInfo where  name= "小爱";
	delete from studentInfo2;
	
	truncate table studentInfo;  -- 速度块  不能恢复