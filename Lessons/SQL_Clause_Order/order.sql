SELECT column_name1, column_name2, ....
FROM TableName1
Join TableName2
--ON join_condition
ON TableName1.column_name = TableName2.column_name
WHERE condition
GROUP BY column
HAVING condition
ORDER BY column_name1
LIMIT number;


/*
Find the top 10 companies from posting hobs
They must have >300 postings
limit this to onnly Us Jobs

*/


SELECT
cd.name as company_name,
count(jpf.*) as postings_count
from job_postings_fact as jpf
LEFT JOIN company_dim as cd
on jpf.company_id = cd.company_id
where jpf.job_country = 'United States'
Group by cd.name;



SELECT
cd.name as company_name,
count(jpf.*) as postings_count
from job_postings_fact as jpf
LEFT JOIN company_dim as cd
on jpf.company_id = cd.company_id
Group by cd.name
having count(jpf.*) > 3000
order by postings_count desc
limit 10;

Explain analyze
SELECT
cd.name as company_name,
count(jpf.*) as postings_count
from job_postings_fact as jpf
LEFT JOIN company_dim as cd
on jpf.company_id = cd.company_id
where jpf.job_country = 'United States'
Group by cd.name
having count(jpf.job_id) > 3000
order by postings_count desc
limit 10;



