/*
Question: What are the highest-paying skills for data engineers?
- Calculate the median salary for each skill required in data engineer positions
- Focus on remote positions with specified salaries
- Include skill frequency to identify both salary and demand
- Why? Helps identify which skills command the highest compensation while also showing 
    how common those skills are, providing a more complete picture for skill development priorities
*/

SELECT

sd.skills,
ROUND(MEDIAN(jpf.salary_year_avg), 0) AS median_salary,
COUNT(jpf.*) AS demand_count
FROM 
job_postings_fact AS jpf
INNER JOIN skills_job_dim AS sjd
   ON jpf.job_id = sjd.job_id
INNER JOIN skills_dim AS sd
   ON sjd.skill_id = sd.skill_id
WHERE
jpf.job_title_short = 'Data Engineer'
AND jpf.job_work_from_home = True

GROUP BY
sd.skills
HAVING
COUNT(jpf.*) > 100

ORDER BY
median_salary DESC


LIMIT  25;




/*
Here's a breakdown of the highest-paying skills for Data Engineers:

Key Insights:
• Rust has the highest median salary at 210,000.

• Golang and Terraform rank second at 184,000.

• Terraform has the strongest demand among the top 10, with 3,248 postings.

• Spring ranks fourth with a median salary of 175,500.

• Neo4j, GDPR, Zoom, and GraphQL all have median salaries above 167,000.

• FastAPI ranks tenth at 157,500.

• Rust offers the highest salary, but its demand count is only 232.

• Terraform stands out as the strongest combination of high salary and high demand.

• Salary and demand do not always move together. Some high-paying skills have relatively low demand.

• For career planning, Terraform, Golang, and Spring offer a stronger balance between salary and demand than several niche skills.
Takeaway: While the very top-paying skill (Rust) still has less demand than major cloud and data tools, most of the top-paying skills have both solid salaries and significant demand. This suggests that learning tools like Terraform, Golang, Spring, Neo4j, and especially core data engineering tools (Airflow, Kubernetes) provides a strong balance between compensation and marketability.

┌────────────┬───────────────┬──────────────┐
│   skills   │ median_salary │ demand_count │
│  varchar   │    double     │    int64     │
├────────────┼───────────────┼──────────────┤
│ rust       │      210000.0 │          232 │
│ golang     │      184000.0 │          912 │
│ terraform  │      184000.0 │         3248 │
│ spring     │      175500.0 │          364 │
│ neo4j      │      170000.0 │          277 │
│ gdpr       │      169616.0 │          582 │
│ zoom       │      168438.0 │          127 │
│ graphql    │      167500.0 │          445 │
│ mongo      │      162250.0 │          265 │
│ fastapi    │      157500.0 │          204 │
│ bitbucket  │      155000.0 │          478 │
│ django     │      155000.0 │          265 │
│ crystal    │      154224.0 │          129 │
│ atlassian  │      151500.0 │          249 │
│ c          │      151500.0 │          444 │
│ typescript │      151000.0 │          388 │
│ kubernetes │      150500.0 │         4202 │
│ ruby       │      150000.0 │          736 │
│ node       │      150000.0 │          179 │
│ airflow    │      150000.0 │         9996 │
│ css        │      150000.0 │          262 │
│ redis      │      149000.0 │          605 │
│ vmware     │      148798.0 │          136 │
│ ansible    │      148798.0 │          475 │
│ jupyter    │      147500.0 │          400 │
└────────────┴───────────────┴──────────────┘
  25 rows                         3 columns
*/