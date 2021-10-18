
# 查看所有数据库容量大小

select
table_schema as 'schema',
sum(table_rows) as 'records',
sum(truncate(data_length/1024/1024, 2)) as 'data length(MB)',
sum(truncate(index_length/1024/1024, 2)) as 'index length(MB)'
from information_schema.tables
group by table_schema
order by sum(data_length) desc, sum(index_length) desc;


# 查看所有数据库各表容量大小

select
table_schema as 'schema',
table_name as 'table',
table_rows as 'records',
truncate(data_length/1024/1024, 2) as 'data length(MB)',
truncate(index_length/1024/1024, 2) as 'index length(MB)'
from information_schema.tables
order by data_length desc, index_length desc;


# 查看指定数据库容量大小

select
table_schema as 'schema',
sum(table_rows) as 'records',
sum(truncate(data_length/1024/1024, 2)) as 'data length(MB)',
sum(truncate(index_length/1024/1024, 2)) as 'index length(MB)'
from information_schema.tables
where table_schema='mysql';


# 查看指定数据库各表容量大小

select
table_schema as 'schema',
table_name as 'table',
table_rows as 'records',
truncate(data_length/1024/1024, 2) as 'data length(MB)',
truncate(index_length/1024/1024, 2) as 'index length(MB)'
from information_schema.tables
where table_schema='mysql'
order by data_length desc, index_length desc;
