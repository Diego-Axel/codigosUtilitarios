SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'NOME_BANCO'
 AND pid <> pg_backend_pid();
ALTER DATABASE NOME_BANCO RENAME TO NOME_BANCO; --ver numeração