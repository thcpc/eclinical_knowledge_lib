```sql
select t.dataset_id, t.name  
 from (select distinct dataset_id, name, count(id) cnt  
 from (  
 select id,  
 dataset_id,  
 json_unquote(json_extract(locale, concat('$.name.', 'en_US'))) name  
 from eclinical_crf_variable  
 where is_delete = false) tmp  
 group by dataset_id, name) t  
 where t.cnt > 1

```