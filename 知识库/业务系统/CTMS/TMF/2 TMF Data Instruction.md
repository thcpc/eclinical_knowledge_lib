# TMF Schema Structure
| Database Table | Function | Module |
| :--- | :--- | :--- |
| eclinical_ctms_tmf | TMF Version初始化数据源，目前只有2个版本 | Basic Info |
| eclinical_ctms_tmf_artifact_category | Artifact初始化数据源 | TMF Template |
| eclinical_ctms_tmf_milestone_category | Milestone初始化数据源 | TMF Template |
| eclinical_ctms_milestone | TMF Template中初始化的System数据 | TMF Template |
| eclinical_ctms_study_milestone_category | TMF Template中初始化的数据 | TMF Template |
| eclinical_ctms_study_artifact_category | TMF Template中初始化的数据 | TMF Template |
| eclinical_ctms_study_milestone | Milestone Tracking中实例化的数据 | Milestone Tracking |
| eclinical_ctms_study_artifact | Artifact中实例化的数据 | Artifact |
| eclinical_ctms_artifact_expected_file | Study的Artifact的Expected File数据 | Artifact |
| eclinical_ctms_artifact_file | Study的Artifact的Expected File上传的文件 | Artifact/Essential Document |
| eclinical_ctms_task_artifact_milestone_rel | Study的Task+Artifact+Milestone关系表 | Artifact/My To Do |
| eclinical_ctms_artifact_task | 记录Study的Expected File和Upload File任务 | My To Do |
| eclinical_ctms_artifact_task_assignee | My To Do中任务的审核相关人员信息 | My To Do |
| eclinical_ctms_artifact_task_flow_config | My To Do中任务流情况 | My To Do |
| eclinical_ctms_artifact_task_history | My To Do的历史任务 | My To Do |
| eclinical_ctms_artifact_task_urging | My To Do的催办任务 | My To Do |
| eclinical_ctms_artifact_task_urging_receiver | My To Do的催办任务接收人 | My To Do |
| eclinical_ctms_study_artifact_warehouse_file | Document Wareouse的文件 | Document Warehouse |
| eclinical_ctms_study_essential_document_lock | Essential Document的Lock情况 | Essential Document |




