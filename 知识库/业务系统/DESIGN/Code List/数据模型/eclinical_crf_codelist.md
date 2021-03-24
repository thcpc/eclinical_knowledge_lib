存储Code List 的数据
```sql
create table eclinical_crf_codelist
(
	id int auto_increment primary key,
	oid varchar(255) null,
	name varchar(255) null,
	data_type varchar(45) null,
	sas_format varchar(20) null,
	creator_dt datetime null,
	modify_dt datetime null,
	creator_uid varchar(45) null,
	modify_uid varchar(45) null,
	is_delete bit default b'0' null,
	delete_dt bigint default 0 null,
	locale json null,
	source int default 1 null,
	code varchar(300) null,
	visible bit default b'0' null,
	constraint AK_uq_ecc_name
		unique (name, delete_dt)
);


```