SELECT 
    skills,
    ROUND (AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' 
    AND job_work_from_home = TRUE
   AND salary_year_avg IS NOT NULL
GROUP BY
    skills 
ORDER BY 
    avg_salary DESC
LIMIT 25;




/*

Insights into the Top-Paying Skills for Data Analysts
Big Data and Cloud Technologies Dominate

PySpark ($208,172), Databricks ($141,907), Airflow ($126,103), and GCP ($122,500) are top earners.
These are essential for big data processing, cloud computing, and workflow automation.
DevOps & Version Control Skills Are Lucrative

Bitbucket ($189,155), GitLab ($154,500), Jenkins ($125,436), and Kubernetes ($132,500) show that DevOps skills significantly boost salaries.
Version control and CI/CD pipelines are becoming must-have skills for data professionals.
AI & Machine Learning Libraries Have High Demand

Watson ($160,515), DataRobot ($155,486), Scikit-learn ($125,781), and Pandas/Numpy ($151,821/$143,513) indicate the importance of AI, ML, and data science in high-paying roles.
Programming Languages & Databases Are Key

Swift ($153,750), Golang ($145,000), Scala ($124,903), and PostgreSQL ($123,879) highlight demand for versatile programming and database management.
BI and Analytics Tools Still Pay Well

MicroStrategy ($121,619) and Elasticsearch ($145,000) suggest strong salaries for analytics and data search technologies.
Key Takeaways
Specializing in big data, cloud computing, and DevOps can significantly increase earnings.
Machine learning and AI expertise are among the highest-paying skills.
SQL alone isn’t enough—learning PostgreSQL, Airflow, and Databricks gives a competitive edge.
Would you like me to visualize these salary trends? 📊

Você disse:
This is amazing but i need this shorted to 3 bullet points
O ChatGPT disse:
Top Trends in High-Paying Data Analyst Skills
Big Data & Cloud Pay the Most – Skills like PySpark ($208K), Databricks ($141K), and GCP ($122K) show strong demand for big data and cloud expertise.
DevOps & Version Control Matter – Bitbucket ($189K), GitLab ($154K), and Kubernetes ($132K) highlight the importance of CI/CD and automation.
AI & ML Skills Boost Salaries – Watson ($160K), DataRobot ($155K), and Scikit-learn ($125K) prove that machine learning expertise is highly valued.

*\