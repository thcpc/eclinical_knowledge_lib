SELECT s.name, v.visit_name, f.form_name  from eclinical_subject_form f
JOIN eclinical_subject_crfversion e ON f.subject_version_id = e.id  AND e.is_lastest = TRUE
JOIN eclinical_subject_visit v on f.subject_visit_id=v.id and f.subject_version_id = v.subject_version_id
JOIN eclinical_subject s on e.subject_id=s.id
WHERE f.disabled=TRUE and f.disabled_type=1;