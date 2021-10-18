SELECT s.name, f.id subjectFormId, i.id subjectIgId, it.id subjectItemId FROM eclinical_subject_form f
JOIN eclinical_subject_ig i on f.subject_version_id=i.subject_version_id and f.id=i.subject_form_id
JOIN eclinical_subject_item it on i.subject_version_id=it.subject_version_id and  i.id=it.subject_ig_id
JOIN eclinical_subject_visit v on f.subject_version_id=v.subject_version_id and f.subject_visit_id=v.id
JOIN eclinical_subject_crfversion c on v.subject_version_id=c.id AND c.is_lastest=TRUE
JOIN eclinical_subject s on c.subject_id=s.id
WHERE f.form_name="Medical History" and v.visit_name="Screening" AND it.crf_item_id=36;