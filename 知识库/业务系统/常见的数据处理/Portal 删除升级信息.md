```sql
DELETE FROM eclinical_admin_release_version_system_rel WHERE release_version_id = (SELECT id FROM eclinical_admin_release_version WHERE version="V11_incremental_design");
DELETE FROM eclinical_admin_database_sql_execution WHERE sql_id in (SELECT id FROM eclinical_admin_database_sql WHERE name in ("V11__design_business_schema_incremental_sql", "V11__design_history_schema_incremental_sql"));
DELETE FROM eclinical_admin_database_sql WHERE name in ("V11__design_business_schema_incremental_sql", "V11__design_history_schema_incremental_sql");
```