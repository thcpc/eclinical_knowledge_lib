SELECT es.name, esv.* FROM eclinical_subject_visit esv
JOIN eclinical_subject_crfversion esc on esv.subject_version_id=esc.id and esc.is_lastest=TRUE
JOIN eclinical_subject es on esc.subject_id=es.id

WHERE esv.id in (select f.subject_visit_id from eclinical_subject_form f
join eclinical_subject_form_status fs on f.id = fs.subject_form_id
where fs.cra_review = true and EXISTS (
select null from eclinical_subject_ig g
join eclinical_subject_ig_status gs on g.id = gs.subject_ig_id
WHERE g.subject_form_id = f.id and gs.cra_review = false));



SELECT es.name,esc.crf_version_id, esf.* FROM eclinical_subject_form esf
join eclinical_subject_form_status esfs on esfs.subject_form_id=esf.id
JOIN eclinical_subject_crfversion esc on esf.subject_version_id=esc.id and esc.is_lastest=false
JOIN eclinical_subject es on esc.subject_id=es.id
WHERE esfs.id in (24,5,153,342,4340,5168,308,5808,240,3056,5582,7420,11491);


# get subject name by subject form id

SELECT es.name FROM eclinical_subject_form esf
JOIN eclinical_subject_crfversion esc on esf.subject_version_id=esc.id and esc.is_lastest=TRUE
JOIN eclinical_subject es on esc.subject_id=es.id
WHERE esf.id in (432045);



SELECT es.name, esv.locale FROM eclinical_subject_visit esv
JOIN eclinical_subject_crfversion esc on esv.subject_version_id=esc.id and esc.is_lastest=TRUE
JOIN eclinical_subject es on esc.subject_id=es.id
WHERE esv.id in (26276, 44468);