SELECT
 job_id,
 job_title_short,
 salary_year_avg,
 company_id,
FROM
job_postings_fact
Limit 10;

select
 company_id,
 name
FROM
company_dim
Limit 10;


select
 *
FROM
company_dim
Limit 10;


select
 *
FROM
company_dim
WHERE
name IN ('Facebook', 'meta');

select 
*
FROM
skills_job_dim
Limit 10;


select 
*
FROM
skills_dim
Limit 10;


SELECT *
from information_schema.tables;

SELECT *
from information_schema.tables
WHERE
table_catalog = 'data_jobs';


SELECT *
from information_schema.key_column_usage
WHERE
table_catalog = 'data_jobs';



PRAGMA table_info('company_dim');

PRAGMA show_tables_expanded;