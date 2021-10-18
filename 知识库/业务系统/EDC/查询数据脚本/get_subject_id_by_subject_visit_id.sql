SELECT s.name,v.visit_name,v.sn FROM eclinical_subject_visit v
JOIN eclinical_subject_crfversion c ON v.subject_version_id=c.id
JOIN eclinical_subject s on c.subject_id=s.id
WHERE v.id in (5,10)


SELECT v.* FROM eclinical_subject_visit_status vs
JOIN eclinical_subject_visit v on vs.subject_visit_id=v.id
JOIN eclinical_subject_crfversion c on v.subject_version_id=c.id
WHERE c.is_lastest=TRUE and vs.sign=FALSE and v.disabled=FALSE;


SELECT f.* FROM eclinical_subject_form_status fs
JOIN eclinical_subject_form f on fs.subject_form_id=f.id
JOIN eclinical_subject_crfversion c on f.subject_version_id=c.id
WHERE c.is_lastest=TRUE and fs.sign=FALSE and f.disabled=FALSE;