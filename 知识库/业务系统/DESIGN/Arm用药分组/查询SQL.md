查询一个版本中，一个arm关联某个访视下的表单

```sql
SELECT @latest_version :=(SELECT id from eclinical_crf_version WHERE latest = true);  
  
SELECT ecf.id as form_id, ecf.locale as form_name, ecasf.is_delete as is_unlinked, ecas.arm_id as arm_id  
FROM eclinical_crf_form ecf  
 left join eclinical_crf_arm_studyevent_form ecasf  
 on ecf.id = ecasf.form_id and ecf.crf_version_id = ecasf.crf_version_id  
 left join eclinical_crf_arm_studyevent ecas  
 on ecasf.studyevent_id = ecas.id and ecasf.crf_version_id = ecas.crf_version_id  
WHERE ecas.study_event_id = (SELECT id  
 FROM eclinical_odm_studyevent eos  
 WHERE eos.locale -> '$.name.en_US' = 'Screening' and eos.crf_version_id = @latest_version)  
  and ecas.crf_version_id = @latest_version;
```