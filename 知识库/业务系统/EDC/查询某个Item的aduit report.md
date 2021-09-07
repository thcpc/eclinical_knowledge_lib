```sql
select s.name,t.* from eclinical_subject_item si  
join eclinical_audit_trail t on t.object_id = si.id and t.object_type = 7  
join eclinical_subject_crfversion sc on si.subject_version_id = sc.id  
join eclinical_subject s on s.id = sc.subject_id  
join eclinical_crf_item ci on si.crf_item_id = ci.id and sc.crf_version_id = ci.crf_version_id  
join eclinical_odm_item oi on oi.id = ci.ref_id and oi.crf_version_id = ci.crf_version_id  
WHERE oi.locale like "%RANDDAT%" and sc.is_lastest = true  
order by s.id,t.id
```