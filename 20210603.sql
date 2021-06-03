			创建数据库   
create database if not exists  schoolbd  default charset=utf8;
use schoolbd;
-- 创建表
create table studentinfo(
 id int auto_increment primary key,
 `name` varchar(10),
 sex char,
 age int,
 address varchar(50)
);
-- 插入数据
insert into studentinfo(`name`,sex,age,address) values ('宋江','男',30,"山东郓城"),
																											 ('黑嗣李逵','男',28,"梁山" ),
																											 ('小李广华容','男',18,"河南" ),
																											 ('扈三娘','女',20,"河北" ),
																											 ('孙二娘','女',38,"湖北" ),
																											 ('潘金莲','女',16,"河北" ),
																											 ('呼延灼','男',58,'四川')
			-- 模糊查询    *  通配符 表示所有的意思																								 ('呼延灼','男',58,"四川" );
	select *from studentinfo;
-- 查询所有，建议写全字段
select id,`name`,sex,age,address from studentinfo;
	
	
	-- 条件查询
	
	select * from studentinfo where sex='女';
	select * from studentinfo where age < 20;
	select * from studentinfo where age != 20;
	select * from studentinfo where age <> 20;
	select * from studentinfo where not(age=  20);
	select * from studentinfo where notage <=20 and sex='女';
	
	
	
	-- 排序  order by asc  递增  asc 可省略   order  by desc  递减
	select *from studentinfo order by age desc;
	
	-- 多重字段参与排序   多列排序
		select *from studentinfo order by age asc,id asc;
		
		
	-- 限制显示的条数
	select *from studentinfo	limit 3; 
	-- 显示索引从四开始的数据，往后的三条  索引从零计算
	select *from studentinfo	limit 4, 3; 
		select *from studentinfo where sex='男' order by age desc limit 6;
		
		-- 别名 alies;   as  可以省略
		select id as 身份编号,`name` as 名字,sex as 性别,age as 年龄,address as 地址 from studentinfo;
		select id 身份编号,`name`  名字,sex  性别,age  年龄,address  地址 from studentinfo;
		
		
			select * DISTINCT `name` from studentinfo;
		-- 去重 distinct 去除重复的数据
		select DISTINCT `name` ,sex,age,address from studentinfo;