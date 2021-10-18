SELECT l.* FROM eclinical_active_log l
JOIN eclinical_subject_form f ON l.object_id=f.id AND l.object_type="form"
JOIN eclinical_subject_visit v ON f.subject_visit_id=v.id AND f.subject_version_id=v.subject_version_id
JOIN eclinical_subject_crfversion c ON f.subject_version_id=c.id AND c.is_lastest=TRUE
WHERE c.subject_id=288 AND v.visit_name REGEXP "Day 8"