# Design
```sql
set @lastVersion = (SELECT id FROM eclinical_crf_version WHERE latest = true);  
  
SELECT * FROM (SELECT count(1) as countOfVisit FROM eclinical_odm_studyevent WHERE crf_version_id = @lastVersion and is_delete = 0 and type is not null) as t1  
inner join (SELECT count(1) as countOfForm FROM eclinical_crf_form WHERE crf_version_id = @lastVersion and is_delete = 0 and study_event_id!=1) as t2  
inner join (SELECT count(1) as countOfDataSet FROM eclinical_crf_dataset) as t3  
inner join (SELECT count(1) as countOfVariable FROM eclinical_crf_variable) as t4;
```

# EDC

```sql
set @lastVersion = (SELECT id FROM eclinical_crf_version WHERE latest = true);  
SELECT * FROM (SELECT count(1) as countOfVisit FROM eclinical_odm_studyevent WHERE crf_version_id = @lastVersion and is_delete = 0) as t1  
inner join (SELECT count(1) as countOfForm FROM eclinical_crf_form WHERE crf_version_id = @lastVersion and is_delete = 0) as t2  
inner join (SELECT count(1) as countOfDataSet FROM eclinical_crf_dataset) as t3  
inner join (SELECT count(1) as countOfVariable FROM eclinical_crf_variable) as t4;
```