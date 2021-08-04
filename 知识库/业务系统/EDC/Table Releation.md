
```mermaid
graph BT
eclinical_subject_record[eclinical_subject_record] -->eclinical_suject_item[eclinical_suject_item];
eclinical_manual_query_reply[eclinical_manual_query_reply] -->
eclinical_manual_query[eclinical_manual_query] --> eclinical_suject_item[eclinical_suject_item];
eclinical_system_query_reply[eclinical_system_query_reply] -->
eclinical_system_query[eclinical_system_query] --> eclinical_suject_item[eclinical_suject_item];
eclinical_suject_item[eclinical_suject_item] --> eclincal_subject_ig[eclincal_subject_ig] -->eclincal_subject_form[eclincal_subject_form] --> eclinical_subject_visit[eclinical_subject_visit] -->elcinical_subject_crfversion[elcinical_subject_crfversion]
--> eclinical_subject[eclinical_subject];
eclinical_suject_item[eclinical_suject_item] --> eclinical_crf_item[eclinical_crf_item] --> eclincal_odm_item[eclincal_odm_item];
eclinical_crf_item[eclinical_crf_item]-->eclincal_crf_question[eclincal_crf_question] -->eclincal_crf_itemgroup[eclincal_crf_itemgroup];
eclincal_subject_ig[eclincal_subject_ig] -->eclincal_crf_itemgroup[eclincal_crf_itemgroup] -->eclinical_crf_form[eclinical_crf_form] --> eclinical_odm_form[eclinical_odm_form] --> eclinical_odm_studyevent_form[eclinical_odm_studyevent_form];
eclincal_subject_form[eclincal_subject_form] --> eclinical_crf_form[eclinical_crf_form]-->eclinical_odm_studyevent[eclinical_odm_studyevent] -->eclinical_odm_studyevent_form[eclinical_odm_studyevent_form];
eclinical_odm_studyevent[eclinical_odm_studyevent] -.- eclinical_subject_visit[eclinical_subject_visit]
```
eclinical_odm_studyevent 无法直接关联到eclinical_subject_visit， 因为无法 crf_version_id 无法直接关联到eclinical_subject_visit


# DataEntry
## 路径1
```mermaid
graph LR
eclinical_subject_record[eclinical_subject_record] --> eclinical_subject_item[eclinical_subject_item] --> eclinical_crf_item[eclinical_crf_item] --> eclinical_odm_item[eclinical_odm_item]
```

## 路径2
```mermaid
graph LR
eclinical_subject_record[eclinical_subject_record] --> eclinical_subject_item[eclinical_subject_item] --> eclinical_crf_item[eclinical_crf_item] --> eclincal_crf_question[eclincal_crf_question] -->eclinical_crf_itemgroup[eclinical_crf_itemgroup]-->eclinical_odm_itemgroup[eclinical_odm_itemgroup]
```

## 路径3
```mermaid
graph LR
eclinical_subject_record[eclinical_subject_record] --> eclinical_subject_item[eclinical_subject_item] --> eclinical_crf_item[eclinical_crf_item] --> eclincal_crf_question[eclincal_crf_question] -->eclinical_crf_itemgroup[eclinical_crf_itemgroup]-->
eclinical_crf_form[eclinical_crf_form]-->eclinical_odm_studyevent[eclinical_odm_studyevent] -->eclincal_odm_studyevent_form[eclincal_odm_studyevent_form]
eclinical_crf_form[eclinical_crf_form]-->eclinical_odm_form[eclinical_odm_form]-->
eclincal_odm_studyevent_form[eclincal_odm_studyevent_form]
```

## 路径4
```mermaid
graph LR
eclinical_subject_record[eclinical_subject_record] --> eclinical_subject_item[eclinical_subject_item] --> eclinical_subject_ig[eclinical_subject_ig] --> eclinical_subject_form[eclinical_subject_form] -->eclinical_subject_visit[eclinical_subject_visit]-->
eclinical_subject_crfversion[eclinical_subject_crfversion]-->eclinical_subject[eclinical_subject]
```

# Manual Query
## 路径1
```mermaid
graph LR
eclinical_manual_query_reply[eclinical_manual_query_reply] -->
eclinical_manual_query[eclinical_manual_query] --> eclinical_subject_item[eclinical_subject_item] --> eclinical_crf_item[eclinical_crf_item] --> eclinical_odm_item[eclinical_odm_item]
```

## 路径2
```mermaid
graph LR
eclinical_manual_query_reply[eclinical_manual_query_reply] -->
eclinical_manual_query[eclinical_manual_query] -->eclinical_subject_item[eclinical_subject_item] --> eclinical_crf_item[eclinical_crf_item] --> eclincal_crf_question[eclincal_crf_question] -->eclinical_crf_itemgroup[eclinical_crf_itemgroup]-->eclinical_odm_itemgroup[eclinical_odm_itemgroup]
```

## 路径3
```mermaid
graph LR
eclinical_manual_query_reply[eclinical_manual_query_reply] -->
eclinical_manual_query[eclinical_manual_query] --> eclinical_subject_item[eclinical_subject_item] --> eclinical_crf_item[eclinical_crf_item] --> eclincal_crf_question[eclincal_crf_question] -->eclinical_crf_itemgroup[eclinical_crf_itemgroup]-->
eclinical_crf_form[eclinical_crf_form]-->eclinical_odm_studyevent[eclinical_odm_studyevent] -->eclincal_odm_studyevent_form[eclincal_odm_studyevent_form]
eclinical_crf_form[eclinical_crf_form]-->eclinical_odm_form[eclinical_odm_form]-->
eclincal_odm_studyevent_form[eclincal_odm_studyevent_form]
```

## 路径4
```mermaid
graph LR
eclinical_manual_query_reply[eclinical_manual_query_reply] -->
eclinical_manual_query[eclinical_manual_query] --> eclinical_subject_item[eclinical_subject_item] --> eclinical_subject_ig[eclinical_subject_ig] --> eclinical_subject_form[eclinical_subject_form] -->eclinical_subject_visit[eclinical_subject_visit]-->
eclinical_subject_crfversion[eclinical_subject_crfversion]-->eclinical_subject[eclinical_subject]
```
# System Query
## 路径1
```mermaid
graph LR
eclinical_system_query_reply[eclinical_system_query_reply] -->
eclinical_system_query[eclinical_system_query] --> eclinical_subject_item[eclinical_subject_item] --> eclinical_crf_item[eclinical_crf_item] --> eclinical_odm_item[eclinical_odm_item]
```

## 路径2
```mermaid
graph LR
eclinical_system_query_reply[eclinical_system_query_reply] -->
eclinical_system_query[eclinical_system_query] -->
eclinical_subject_item[eclinical_subject_item] --> eclinical_crf_item[eclinical_crf_item] --> eclincal_crf_question[eclincal_crf_question] -->eclinical_crf_itemgroup[eclinical_crf_itemgroup]-->eclinical_odm_itemgroup[eclinical_odm_itemgroup]
```

## 路径3
```mermaid
graph LR
eclinical_system_query_reply[eclinical_system_query_reply] -->
eclinical_system_query[eclinical_system_query] -->
eclinical_subject_item[eclinical_subject_item] --> eclinical_crf_item[eclinical_crf_item] --> eclincal_crf_question[eclincal_crf_question] -->eclinical_crf_itemgroup[eclinical_crf_itemgroup]-->
eclinical_crf_form[eclinical_crf_form]-->eclinical_odm_studyevent[eclinical_odm_studyevent] -->eclincal_odm_studyevent_form[eclincal_odm_studyevent_form]
eclinical_crf_form[eclinical_crf_form]-->eclinical_odm_form[eclinical_odm_form]-->
eclincal_odm_studyevent_form[eclincal_odm_studyevent_form]
```

## 路径4
```mermaid
graph LR
eclinical_system_query_reply[eclinical_system_query_reply] -->
eclinical_system_query[eclinical_system_query] -->
eclinical_subject_item[eclinical_subject_item] --> eclinical_subject_ig[eclinical_subject_ig] --> eclinical_subject_form[eclinical_subject_form] -->eclinical_subject_visit[eclinical_subject_visit]-->
eclinical_subject_crfversion[eclinical_subject_crfversion]-->eclinical_subject[eclinical_subject]
```

