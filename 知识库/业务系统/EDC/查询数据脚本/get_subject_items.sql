SELECT s.* FROM eclinical_subject_item_status s
JOIN eclinical_subject_item i on s.subject_item_id=i.id
JOIN eclinical_subject_crfversion c on i.subject_version_id=c.id and c.is_lastest=TRUE
JOIN eclinical_subject b on c.subject_id=b.id
WHERE b.name = "001-002"