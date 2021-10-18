SELECT i.* FROM eclinical_subject_item i
INNER JOIN eclinical_subject_ig ig ON i.subject_ig_id=ig.id
INNER JOIN eclinical_subject_form f ON ig.subject_form_id=f.id
INNER JOIN eclinical_subject_visit v ON f.subject_visit_id=v.id
INNER JOIN eclinical_subject_crfversion c ON v.subject_version_id=c.id
INNER JOIN eclinical_subject s ON c.subject_id=s.id
WHERE s.name="001-006" AND v.visit_name="Screening" AND f.form_name="Screening Disposition" AND c.crf_version_id=77