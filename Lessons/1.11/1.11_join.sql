-- Left Join
SELECT
    jpf.*,
    cd.*
FROM
job_postings_fact AS jpf
LEFT JOIN
company_dim AS cd
on jpf.company_id = cd.company_id
LIMIT 10;


SELECT
    job_id,
    job_title_short,
    name AS company_name,
    job_location,
FROM
job_postings_fact AS jpf
LEFT JOIN
company_dim AS cd
on jpf.company_id = cd.company_id
LIMIT 10;


SELECT
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM
job_postings_fact AS jpf
LEFT JOIN
company_dim AS cd
on jpf.company_id = cd.company_id
LIMIT 10;


-- Right Join
SELECT
    jpf.*,
    cd.*
FROM
job_postings_fact AS jpf
RIGHT JOIN
company_dim AS cd
on jpf.company_id = cd.company_id
LIMIT 10;

Select
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM
job_postings_fact AS jpf
RIGHT JOIN
company_dim AS cd
on jpf.company_id = cd.company_id
LIMIT 10;

-- Inner Join
Select
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM
job_postings_fact AS jpf
INNER JOIN
company_dim AS cd
on jpf.company_id = cd.company_id
LIMIT 10;

Select
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM
job_postings_fact AS jpf
INNER JOIN
company_dim AS cd
on jpf.company_id = cd.company_id;

-- Full Outer Join
Select
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM            
job_postings_fact AS jpf
FULL OUTER JOIN
company_dim AS cd
on jpf.company_id = cd.company_id
LIMIT 10;

Select
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name AS company_name,
    jpf.job_location
FROM            
job_postings_fact AS jpf
FULL OUTER JOIN
company_dim AS cd
on jpf.company_id = cd.company_id;


--skill
Select
   *
   from skills_job_dim
   limit 10;

select
*
from skills_dim
limit 10;


select
jpf.job_id,
jpf.job_title_short,
sjd.skill_id,
-- sd.skills
from job_postings_fact jpf
left join skills_job_dim sjd
on jpf.job_id = sjd.job_id
limit 10;

select
jpf.job_id,
jpf.job_title_short,
sjd.skill_id,
sd.skills
from job_postings_fact jpf
left join skills_job_dim sjd
on jpf.job_id = sjd.job_id
left join skills_dim sd
on sjd.skill_id = sd.skill_id
limit 10;


select
jpf.job_id,
jpf.job_title_short,
sjd.skill_id,
sd.skills
from job_postings_fact jpf
left join skills_job_dim sjd
on jpf.job_id = sjd.job_id
left join skills_dim sd
on sjd.skill_id = sd.skill_id;


-- inner join
select
jpf.job_id,
jpf.job_title_short,
sjd.skill_id,
sd.skills
from job_postings_fact jpf
inner join skills_job_dim sjd
on jpf.job_id = sjd.job_id
inner join skills_dim sd
on sjd.skill_id = sd.skill_id;

-- full outer join
select
jpf.job_id,
jpf.job_title_short,
sjd.skill_id,
sd.skills
from job_postings_fact jpf
full outer join skills_job_dim sjd
on jpf.job_id = sjd.job_id
full outer join skills_dim sd
on sjd.skill_id = sd.skill_id;