 --  字符串函数
-- 连接字符串
select concat("hello ,""world");
-- 求长度
select length("hello");
-- 求大写
select  ucase("hello");
-- 求小写
select lcase("ABCDEFG");
-- 取出左侧空格
select ltrim("     sdfds");
-- 去除右侧空格
select rtrim("           adsad     ");
-- 去除两侧的空格
select trim("        abcdefg       ");

-- 替换
select replace("hello world" , "hello" , "nihoa");
										-- 日期函数

  -- 获取当前的日期和时间
select now();				 
   -- 获取当前年月日
select curdate();
-- 获取当前时分秒
select curtime();
-- 获取当前日期时间戳
select unix_timestamp();
-- 将时间戳转换为对应的年月日 时间
select from_unixtime("1622593863");


						--	数学函数
-- 绝对值
select abs(-25);
-- 向上取整
select ceil(14.6);
 -- 向下取整
select floor(16.9);
-- 四舍五入
select round(16.6);
 -- 随机数
select rand() *1000;
   -- 取余
select mod(10,3);

-- 当前数据库
select database();
 -- 当前用户
select user();
 -- 当前myhsql的版本
select version();

insert into studentinfo(`name`,sex,age,address) values ("小蓝","男",20,"终南山")；
  -- 最后一条插入记录的主键id
  select last_insert_id();