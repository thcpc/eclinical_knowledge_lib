# 影响
- [[Domain#显示 |  design form 表单中的dataset显示]]
- design PDF 导出
- design EditCheck 导出


# 查询有重复变量名的Domain
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