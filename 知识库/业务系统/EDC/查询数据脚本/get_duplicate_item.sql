SELECT * FROM `eclinical_system_query`
WHERE is_open = false and manual_close is NULL
# WHERE tip REGEXP 'Diastolic Blood Pressure" is outside the expected range.Please correct or clarify' and creator_dt in ('2020-11-16 12:39:03','2020-11-16 12:40:29');

SELECT a.des, count(a.des) FROM
(SELECT CONCAT(subject_item_id,'_', tip,'_',creator_dt) des FROM eclinical_system_query) a
GROUP BY a.des
HAVING COUNT(a.des) > 1;

SELECT * FROM `eclinical_system_query_reply`
WHERE (content REGEXP 'provided' ) or (content REGEXP 'FARMOVS ranges for DBP = 50-90mmHg' and create_dt='2020-11-17 10:55:43') or (content REGEXP 'Not done' and create_dt='2020-11-25 13:33:50')


SELECT a.des, count(a.des) FROM
(SELECT CONCAT(content,'_',create_dt) des FROM eclinical_system_query_reply) a
GROUP BY a.des
HAVING COUNT(a.des) > 1;






SELECT a.des, count(a.des) FROM
(SELECT CONCAT(object_id,'_',object_type,'_',description,'_',operation_dt) des FROM eclinical_audit_trail) a
GROUP BY a.des
HAVING COUNT(a.des) > 1
