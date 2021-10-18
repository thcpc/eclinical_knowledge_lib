SET @crfVersionId = 2;

SELECT count(*) FROM `eclinical_crf_item_rule` WHERE crf_version_id=@crfVersionId;

SELECT count(*) FROM `eclinical_crf_item_rule` WHERE crf_version_id=@crfVersionId and rule_type=1;

SELECT count(*) FROM `eclinical_crf_item_rule` WHERE crf_version_id=@crfVersionId and rule_type=2;