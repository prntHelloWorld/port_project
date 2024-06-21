/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles and set job location to India
- Why? It provides a detailed look at which high-paying jobs demand certain skills, 
    helping job seekers understand which skills to develop that align with top salaries
*/


WITH top_paying_jobs AS (
    SELECT
    jp.job_id,
    name as company_name,
    job_title,
    job_location,
    salary_year_avg    
FROM 
    job_postings_fact jp
LEFT JOIN
    company_dim cd ON
    cd.company_id = jp.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg is NOT NULL
    AND job_country = 'India'
ORDER BY salary_year_avg DESC
)
SELECT 
    top_paying_jobs.*,
    skills

FROM top_paying_jobs
INNER JOIN skills_job_dim ON
    top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON
    skills_dim.skill_id = skills_job_dim.skill_id
ORDER BY 
    salary_year_avg DESC


/*
### Top Skills Required for Data Analyst Jobs in India

- **SQL**: 31 occurrences
- **Excel**: 26 occurrences
- **Python**: 23 occurrences
- **Tableau**: 17 occurrences
- **R**: 13 occurrences
- **Power BI**: 12 occurrences
- **Looker**: 10 occurrences
- **PowerPoint**: 7 occurrences
- **Azure**: 6 occurrences
- **Spark**: 5 occurrences


[
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "sql"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "python"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "nosql"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "scala"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "shell"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "databricks"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "aws"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "oracle"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "snowflake"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "spark"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "pandas"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "pyspark"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "airflow"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "kafka"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "unix"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "linux"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "power bi"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "jenkins"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "flow"
  },
  {
    "job_id": 283661,
    "company_name": "Srijan Technologies",
    "job_title": "Technical Data Architect - Healthcare",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "165000.0",
    "skills": "gitlab"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "sql"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "python"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "mongodb"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "mongo"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "mysql"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "postgresql"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "sql server"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "mongodb"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "azure"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "aws"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "redshift"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "oracle"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "spark"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "hadoop"
  },
  {
    "job_id": 954793,
    "company_name": "Bosch Group",
    "job_title": "Data Architect 2023",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "power bi"
  },
  {
    "job_id": 1041666,
    "company_name": "Bosch Group",
    "job_title": "Data Architect - Data Migration",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "oracle"
  },
  {
    "job_id": 1041666,
    "company_name": "Bosch Group",
    "job_title": "Data Architect - Data Migration",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "165000.0",
    "skills": "sap"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "sql"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "python"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "scala"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "go"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "mongodb"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "no-sql"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "neo4j"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "mongodb"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "azure"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "databricks"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "aws"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "oracle"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "spark"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "hadoop"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "gdpr"
  },
  {
    "job_id": 406320,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "power bi"
  },
  {
    "job_id": 781346,
    "company_name": "Eagle Genomics Ltd",
    "job_title": "Data Architect",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "163782.0",
    "skills": "gdpr"
  },
  {
    "job_id": 325402,
    "company_name": "Deutsche Bank",
    "job_title": "Senior Business & Data Analyst",
    "job_location": "India",
    "salary_year_avg": "119250.0",
    "skills": "sql"
  },
  {
    "job_id": 325402,
    "company_name": "Deutsche Bank",
    "job_title": "Senior Business & Data Analyst",
    "job_location": "India",
    "salary_year_avg": "119250.0",
    "skills": "excel"
  },
  {
    "job_id": 325402,
    "company_name": "Deutsche Bank",
    "job_title": "Senior Business & Data Analyst",
    "job_location": "India",
    "salary_year_avg": "119250.0",
    "skills": "visio"
  },
  {
    "job_id": 325402,
    "company_name": "Deutsche Bank",
    "job_title": "Senior Business & Data Analyst",
    "job_location": "India",
    "salary_year_avg": "119250.0",
    "skills": "jira"
  },
  {
    "job_id": 325402,
    "company_name": "Deutsche Bank",
    "job_title": "Senior Business & Data Analyst",
    "job_location": "India",
    "salary_year_avg": "119250.0",
    "skills": "confluence"
  },
  {
    "job_id": 908967,
    "company_name": "ACA Group",
    "job_title": "Sr. Enterprise Data Analyst",
    "job_location": "India",
    "salary_year_avg": "118140.0",
    "skills": "sql"
  },
  {
    "job_id": 908967,
    "company_name": "ACA Group",
    "job_title": "Sr. Enterprise Data Analyst",
    "job_location": "India",
    "salary_year_avg": "118140.0",
    "skills": "azure"
  },
  {
    "job_id": 908967,
    "company_name": "ACA Group",
    "job_title": "Sr. Enterprise Data Analyst",
    "job_location": "India",
    "salary_year_avg": "118140.0",
    "skills": "excel"
  },
  {
    "job_id": 908967,
    "company_name": "ACA Group",
    "job_title": "Sr. Enterprise Data Analyst",
    "job_location": "India",
    "salary_year_avg": "118140.0",
    "skills": "power bi"
  },
  {
    "job_id": 908967,
    "company_name": "ACA Group",
    "job_title": "Sr. Enterprise Data Analyst",
    "job_location": "India",
    "salary_year_avg": "118140.0",
    "skills": "flow"
  },
  {
    "job_id": 1498936,
    "company_name": "DoorDash",
    "job_title": "Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 1498936,
    "company_name": "DoorDash",
    "job_title": "Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "r"
  },
  {
    "job_id": 1498936,
    "company_name": "DoorDash",
    "job_title": "Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "go"
  },
  {
    "job_id": 1498936,
    "company_name": "DoorDash",
    "job_title": "Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "airflow"
  },
  {
    "job_id": 1498936,
    "company_name": "DoorDash",
    "job_title": "Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 1498936,
    "company_name": "DoorDash",
    "job_title": "Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 1655824,
    "company_name": "Addepar",
    "job_title": "Sr. Data Analyst - Product Analytics",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 1655824,
    "company_name": "Addepar",
    "job_title": "Sr. Data Analyst - Product Analytics",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 1655824,
    "company_name": "Addepar",
    "job_title": "Sr. Data Analyst - Product Analytics",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 1655824,
    "company_name": "Addepar",
    "job_title": "Sr. Data Analyst - Product Analytics",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "power bi"
  },
  {
    "job_id": 1655824,
    "company_name": "Addepar",
    "job_title": "Sr. Data Analyst - Product Analytics",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "looker"
  },
  {
    "job_id": 696697,
    "company_name": "Arcadia",
    "job_title": "Data Analyst/Senior Data Analyst - Customer Support and Services...",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "electron"
  },
  {
    "job_id": 696697,
    "company_name": "Arcadia",
    "job_title": "Data Analyst/Senior Data Analyst - Customer Support and Services...",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 696697,
    "company_name": "Arcadia",
    "job_title": "Data Analyst/Senior Data Analyst - Customer Support and Services...",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "word"
  },
  {
    "job_id": 696697,
    "company_name": "Arcadia",
    "job_title": "Data Analyst/Senior Data Analyst - Customer Support and Services...",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 135517,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 135517,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 135517,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "r"
  },
  {
    "job_id": 135517,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "spark"
  },
  {
    "job_id": 135517,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "express"
  },
  {
    "job_id": 135517,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 135517,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "looker"
  },
  {
    "job_id": 135517,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 925148,
    "company_name": "DAZN",
    "job_title": "Data Analyst - Digital Ad's",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 925148,
    "company_name": "DAZN",
    "job_title": "Data Analyst - Digital Ad's",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 925148,
    "company_name": "DAZN",
    "job_title": "Data Analyst - Digital Ad's",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "111175.0",
    "skills": "looker"
  },
  {
    "job_id": 814149,
    "company_name": "NielsenIQ",
    "job_title": "Senior Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 814149,
    "company_name": "NielsenIQ",
    "job_title": "Senior Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "r"
  },
  {
    "job_id": 814149,
    "company_name": "NielsenIQ",
    "job_title": "Senior Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "bash"
  },
  {
    "job_id": 814149,
    "company_name": "NielsenIQ",
    "job_title": "Senior Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "azure"
  },
  {
    "job_id": 814149,
    "company_name": "NielsenIQ",
    "job_title": "Senior Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "spark"
  },
  {
    "job_id": 814149,
    "company_name": "NielsenIQ",
    "job_title": "Senior Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "pandas"
  },
  {
    "job_id": 1122466,
    "company_name": "Spotify",
    "job_title": "Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 696686,
    "company_name": "ChargePoint",
    "job_title": "Data Analyst",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 696686,
    "company_name": "ChargePoint",
    "job_title": "Data Analyst",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 696686,
    "company_name": "ChargePoint",
    "job_title": "Data Analyst",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "go"
  },
  {
    "job_id": 696686,
    "company_name": "ChargePoint",
    "job_title": "Data Analyst",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 696686,
    "company_name": "ChargePoint",
    "job_title": "Data Analyst",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 696686,
    "company_name": "ChargePoint",
    "job_title": "Data Analyst",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 696686,
    "company_name": "ChargePoint",
    "job_title": "Data Analyst",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "outlook"
  },
  {
    "job_id": 696686,
    "company_name": "ChargePoint",
    "job_title": "Data Analyst",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "jira"
  },
  {
    "job_id": 696686,
    "company_name": "ChargePoint",
    "job_title": "Data Analyst",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "slack"
  },
  {
    "job_id": 1751462,
    "company_name": "Framestore",
    "job_title": "Recruitment Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 1751462,
    "company_name": "Framestore",
    "job_title": "Recruitment Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "power bi"
  },
  {
    "job_id": 1578311,
    "company_name": "GoTo Group",
    "job_title": "Data Analyst - Food Growth",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 1578311,
    "company_name": "GoTo Group",
    "job_title": "Data Analyst - Food Growth",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 309885,
    "company_name": "Zscaler",
    "job_title": "Senior Analyst , Product Revenue (Data Analyst / Analytics)",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "snowflake"
  },
  {
    "job_id": 309885,
    "company_name": "Zscaler",
    "job_title": "Senior Analyst , Product Revenue (Data Analyst / Analytics)",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 309885,
    "company_name": "Zscaler",
    "job_title": "Senior Analyst , Product Revenue (Data Analyst / Analytics)",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 998086,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 998086,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 998086,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "r"
  },
  {
    "job_id": 998086,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "spark"
  },
  {
    "job_id": 998086,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "express"
  },
  {
    "job_id": 998086,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 998086,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "looker"
  },
  {
    "job_id": 998086,
    "company_name": "Poshmark",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 895116,
    "company_name": "Publicis Groupe",
    "job_title": "Data Analyst 2",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 895116,
    "company_name": "Publicis Groupe",
    "job_title": "Data Analyst 2",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "power bi"
  },
  {
    "job_id": 895116,
    "company_name": "Publicis Groupe",
    "job_title": "Data Analyst 2",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "word"
  },
  {
    "job_id": 895116,
    "company_name": "Publicis Groupe",
    "job_title": "Data Analyst 2",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 554452,
    "company_name": "Arcadia",
    "job_title": "Data Analyst - Operations - Onboarding and Subscription Management",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 554452,
    "company_name": "Arcadia",
    "job_title": "Data Analyst - Operations - Onboarding and Subscription Management",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "electron"
  },
  {
    "job_id": 554452,
    "company_name": "Arcadia",
    "job_title": "Data Analyst - Operations - Onboarding and Subscription Management",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 554452,
    "company_name": "Arcadia",
    "job_title": "Data Analyst - Operations - Onboarding and Subscription Management",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "word"
  },
  {
    "job_id": 554452,
    "company_name": "Arcadia",
    "job_title": "Data Analyst - Operations - Onboarding and Subscription Management",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 1643119,
    "company_name": "Bosch Group",
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 1643119,
    "company_name": "Bosch Group",
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 1643119,
    "company_name": "Bosch Group",
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "r"
  },
  {
    "job_id": 1643119,
    "company_name": "Bosch Group",
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "azure"
  },
  {
    "job_id": 1643119,
    "company_name": "Bosch Group",
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "matplotlib"
  },
  {
    "job_id": 1643119,
    "company_name": "Bosch Group",
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "plotly"
  },
  {
    "job_id": 1643119,
    "company_name": "Bosch Group",
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 1643119,
    "company_name": "Bosch Group",
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "power bi"
  },
  {
    "job_id": 1643119,
    "company_name": "Bosch Group",
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "kubernetes"
  },
  {
    "job_id": 1643119,
    "company_name": "Bosch Group",
    "job_title": "Mobility Data Analyst - IN/MKR",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "docker"
  },
  {
    "job_id": 1018545,
    "company_name": "Addepar",
    "job_title": "Technical Data Analyst (India)",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 494523,
    "company_name": "NielsenIQ",
    "job_title": "Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 494523,
    "company_name": "NielsenIQ",
    "job_title": "Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "r"
  },
  {
    "job_id": 494523,
    "company_name": "NielsenIQ",
    "job_title": "Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "bash"
  },
  {
    "job_id": 494523,
    "company_name": "NielsenIQ",
    "job_title": "Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "azure"
  },
  {
    "job_id": 494523,
    "company_name": "NielsenIQ",
    "job_title": "Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "spark"
  },
  {
    "job_id": 494523,
    "company_name": "NielsenIQ",
    "job_title": "Methods and Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "pandas"
  },
  {
    "job_id": 1025126,
    "company_name": "Truecaller",
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 1025126,
    "company_name": "Truecaller",
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "spark"
  },
  {
    "job_id": 1025126,
    "company_name": "Truecaller",
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 1127808,
    "company_name": "Snowflake Inc.",
    "job_title": "Data Analyst - Procurement",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 1127808,
    "company_name": "Snowflake Inc.",
    "job_title": "Data Analyst - Procurement",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 1127808,
    "company_name": "Snowflake Inc.",
    "job_title": "Data Analyst - Procurement",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "bigquery"
  },
  {
    "job_id": 1127808,
    "company_name": "Snowflake Inc.",
    "job_title": "Data Analyst - Procurement",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "redshift"
  },
  {
    "job_id": 1127808,
    "company_name": "Snowflake Inc.",
    "job_title": "Data Analyst - Procurement",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "snowflake"
  },
  {
    "job_id": 1127808,
    "company_name": "Snowflake Inc.",
    "job_title": "Data Analyst - Procurement",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 1127808,
    "company_name": "Snowflake Inc.",
    "job_title": "Data Analyst - Procurement",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 1127808,
    "company_name": "Snowflake Inc.",
    "job_title": "Data Analyst - Procurement",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "power bi"
  },
  {
    "job_id": 1127808,
    "company_name": "Snowflake Inc.",
    "job_title": "Data Analyst - Procurement",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "looker"
  },
  {
    "job_id": 601909,
    "company_name": "Bosch Group",
    "job_title": "Process and Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 601909,
    "company_name": "Bosch Group",
    "job_title": "Process and Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 601909,
    "company_name": "Bosch Group",
    "job_title": "Process and Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "sap"
  },
  {
    "job_id": 1781493,
    "company_name": "Freshworks",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 1781493,
    "company_name": "Freshworks",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 1781493,
    "company_name": "Freshworks",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "power bi"
  },
  {
    "job_id": 1781493,
    "company_name": "Freshworks",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "111175.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 943701,
    "company_name": "Avaloq",
    "job_title": "Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 943701,
    "company_name": "Avaloq",
    "job_title": "Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "power bi"
  },
  {
    "job_id": 943701,
    "company_name": "Avaloq",
    "job_title": "Data Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "111175.0",
    "skills": "dax"
  },
  {
    "job_id": 646083,
    "company_name": "Razorpay",
    "job_title": "Data Analyst (Contractual Role)",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 646083,
    "company_name": "Razorpay",
    "job_title": "Data Analyst (Contractual Role)",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 646083,
    "company_name": "Razorpay",
    "job_title": "Data Analyst (Contractual Role)",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "dax"
  },
  {
    "job_id": 646083,
    "company_name": "Razorpay",
    "job_title": "Data Analyst (Contractual Role)",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "111175.0",
    "skills": "looker"
  },
  {
    "job_id": 485259,
    "company_name": "Media.Monks",
    "job_title": "Product Data Manager - 3D",
    "job_location": "New Delhi, Delhi, India",
    "salary_year_avg": "105650.0",
    "skills": "express"
  },
  {
    "job_id": 485259,
    "company_name": "Media.Monks",
    "job_title": "Product Data Manager - 3D",
    "job_location": "New Delhi, Delhi, India",
    "salary_year_avg": "105650.0",
    "skills": "unreal"
  },
  {
    "job_id": 525119,
    "company_name": "Ramboll",
    "job_title": "Executive - Credit Controller and Project Data Analyst",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "105000.0",
    "skills": "excel"
  },
  {
    "job_id": 525119,
    "company_name": "Ramboll",
    "job_title": "Executive - Credit Controller and Project Data Analyst",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "105000.0",
    "skills": "power bi"
  },
  {
    "job_id": 682096,
    "company_name": "ZeroFox",
    "job_title": "Data Analyst - Finance",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "105000.0",
    "skills": "sheets"
  },
  {
    "job_id": 682096,
    "company_name": "ZeroFox",
    "job_title": "Data Analyst - Finance",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "105000.0",
    "skills": "flow"
  },
  {
    "job_id": 614701,
    "company_name": "NielsenIQ",
    "job_title": "Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "105000.0",
    "skills": "python"
  },
  {
    "job_id": 614701,
    "company_name": "NielsenIQ",
    "job_title": "Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "105000.0",
    "skills": "r"
  },
  {
    "job_id": 614701,
    "company_name": "NielsenIQ",
    "job_title": "Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "105000.0",
    "skills": "spss"
  },
  {
    "job_id": 563703,
    "company_name": "GoTo Group",
    "job_title": "Data Analyst - Transport",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "105000.0",
    "skills": "sql"
  },
  {
    "job_id": 563703,
    "company_name": "GoTo Group",
    "job_title": "Data Analyst - Transport",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "105000.0",
    "skills": "swift"
  },
  {
    "job_id": 563703,
    "company_name": "GoTo Group",
    "job_title": "Data Analyst - Transport",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "105000.0",
    "skills": "tableau"
  },
  {
    "job_id": 563703,
    "company_name": "GoTo Group",
    "job_title": "Data Analyst - Transport",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "105000.0",
    "skills": "git"
  },
  {
    "job_id": 591307,
    "company_name": "Clarivate",
    "job_title": "HR Data Operations Analyst",
    "job_location": "India",
    "salary_year_avg": "104550.0",
    "skills": "excel"
  },
  {
    "job_id": 591307,
    "company_name": "Clarivate",
    "job_title": "HR Data Operations Analyst",
    "job_location": "India",
    "salary_year_avg": "104550.0",
    "skills": "word"
  },
  {
    "job_id": 591307,
    "company_name": "Clarivate",
    "job_title": "HR Data Operations Analyst",
    "job_location": "India",
    "salary_year_avg": "104550.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 315691,
    "company_name": "Conga",
    "job_title": "Financial Data Analyst / Financial Analyst",
    "job_location": "Ahmedabad, Gujarat, India",
    "salary_year_avg": "104500.0",
    "skills": "tableau"
  },
  {
    "job_id": 315691,
    "company_name": "Conga",
    "job_title": "Financial Data Analyst / Financial Analyst",
    "job_location": "Ahmedabad, Gujarat, India",
    "salary_year_avg": "104500.0",
    "skills": "alteryx"
  },
  {
    "job_id": 315691,
    "company_name": "Conga",
    "job_title": "Financial Data Analyst / Financial Analyst",
    "job_location": "Ahmedabad, Gujarat, India",
    "salary_year_avg": "104500.0",
    "skills": "zoom"
  },
  {
    "job_id": 1526060,
    "company_name": "Bosch Group",
    "job_title": "IN RBIN Dy. Manager/ Asst Manager Data Analyst  MFC",
    "job_location": "Nashik, Maharashtra, India",
    "salary_year_avg": "102500.0",
    "skills": "sql"
  },
  {
    "job_id": 1526060,
    "company_name": "Bosch Group",
    "job_title": "IN RBIN Dy. Manager/ Asst Manager Data Analyst  MFC",
    "job_location": "Nashik, Maharashtra, India",
    "salary_year_avg": "102500.0",
    "skills": "python"
  },
  {
    "job_id": 1526060,
    "company_name": "Bosch Group",
    "job_title": "IN RBIN Dy. Manager/ Asst Manager Data Analyst  MFC",
    "job_location": "Nashik, Maharashtra, India",
    "salary_year_avg": "102500.0",
    "skills": "pandas"
  },
  {
    "job_id": 1526060,
    "company_name": "Bosch Group",
    "job_title": "IN RBIN Dy. Manager/ Asst Manager Data Analyst  MFC",
    "job_location": "Nashik, Maharashtra, India",
    "salary_year_avg": "102500.0",
    "skills": "numpy"
  },
  {
    "job_id": 1526060,
    "company_name": "Bosch Group",
    "job_title": "IN RBIN Dy. Manager/ Asst Manager Data Analyst  MFC",
    "job_location": "Nashik, Maharashtra, India",
    "salary_year_avg": "102500.0",
    "skills": "excel"
  },
  {
    "job_id": 1526060,
    "company_name": "Bosch Group",
    "job_title": "IN RBIN Dy. Manager/ Asst Manager Data Analyst  MFC",
    "job_location": "Nashik, Maharashtra, India",
    "salary_year_avg": "102500.0",
    "skills": "sharepoint"
  },
  {
    "job_id": 1431,
    "company_name": "Glean",
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "102500.0",
    "skills": "sql"
  },
  {
    "job_id": 1431,
    "company_name": "Glean",
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "102500.0",
    "skills": "c"
  },
  {
    "job_id": 1431,
    "company_name": "Glean",
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "102500.0",
    "skills": "bigquery"
  },
  {
    "job_id": 1431,
    "company_name": "Glean",
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "102500.0",
    "skills": "github"
  },
  {
    "job_id": 1431,
    "company_name": "Glean",
    "job_title": "Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "102500.0",
    "skills": "slack"
  },
  {
    "job_id": 580497,
    "company_name": "Etraveli Group",
    "job_title": "Pricing Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "100500.0",
    "skills": "excel"
  },
  {
    "job_id": 580497,
    "company_name": "Etraveli Group",
    "job_title": "Pricing Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "100500.0",
    "skills": "looker"
  },
  {
    "job_id": 580497,
    "company_name": "Etraveli Group",
    "job_title": "Pricing Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "100500.0",
    "skills": "qlik"
  },
  {
    "job_id": 758031,
    "company_name": "Openlogix Corporation",
    "job_title": "Data Analyst",
    "job_location": "Visakhapatnam, Andhra Pradesh, India",
    "salary_year_avg": "100500.0",
    "skills": "flow"
  },
  {
    "job_id": 88344,
    "company_name": "Fresh Gravity",
    "job_title": "Cosultant/Sr. Consultant, Data Analyst - DBA",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "100500.0",
    "skills": "sql"
  },
  {
    "job_id": 88344,
    "company_name": "Fresh Gravity",
    "job_title": "Cosultant/Sr. Consultant, Data Analyst - DBA",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "100500.0",
    "skills": "azure"
  },
  {
    "job_id": 88344,
    "company_name": "Fresh Gravity",
    "job_title": "Cosultant/Sr. Consultant, Data Analyst - DBA",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "100500.0",
    "skills": "aws"
  },
  {
    "job_id": 112064,
    "company_name": "Publicis Groupe",
    "job_title": "Senior Associate CSR/ESG Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "100500.0",
    "skills": "excel"
  },
  {
    "job_id": 729465,
    "company_name": "Etraveli Group",
    "job_title": "Data Analyst - Air Content",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "98500.0",
    "skills": "excel"
  },
  {
    "job_id": 729465,
    "company_name": "Etraveli Group",
    "job_title": "Data Analyst - Air Content",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "98500.0",
    "skills": "tableau"
  },
  {
    "job_id": 729465,
    "company_name": "Etraveli Group",
    "job_title": "Data Analyst - Air Content",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "98500.0",
    "skills": "power bi"
  },
  {
    "job_id": 729465,
    "company_name": "Etraveli Group",
    "job_title": "Data Analyst - Air Content",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "98500.0",
    "skills": "looker"
  },
  {
    "job_id": 315816,
    "company_name": "Energy Aspects Ltd",
    "job_title": "Data Analyst - Upstream",
    "job_location": "Kolkata, West Bengal, India",
    "salary_year_avg": "98500.0",
    "skills": "sql"
  },
  {
    "job_id": 315816,
    "company_name": "Energy Aspects Ltd",
    "job_title": "Data Analyst - Upstream",
    "job_location": "Kolkata, West Bengal, India",
    "salary_year_avg": "98500.0",
    "skills": "python"
  },
  {
    "job_id": 315816,
    "company_name": "Energy Aspects Ltd",
    "job_title": "Data Analyst - Upstream",
    "job_location": "Kolkata, West Bengal, India",
    "salary_year_avg": "98500.0",
    "skills": "excel"
  },
  {
    "job_id": 1218280,
    "company_name": "Loop Health",
    "job_title": "Financial Data Analyst",
    "job_location": "India",
    "salary_year_avg": "93600.0",
    "skills": "sql"
  },
  {
    "job_id": 1218280,
    "company_name": "Loop Health",
    "job_title": "Financial Data Analyst",
    "job_location": "India",
    "salary_year_avg": "93600.0",
    "skills": "python"
  },
  {
    "job_id": 1218280,
    "company_name": "Loop Health",
    "job_title": "Financial Data Analyst",
    "job_location": "India",
    "salary_year_avg": "93600.0",
    "skills": "r"
  },
  {
    "job_id": 1218280,
    "company_name": "Loop Health",
    "job_title": "Financial Data Analyst",
    "job_location": "India",
    "salary_year_avg": "93600.0",
    "skills": "sheets"
  },
  {
    "job_id": 1815416,
    "company_name": "H&M Group",
    "job_title": "Director - Product Data Analysis",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "93600.0",
    "skills": "python"
  },
  {
    "job_id": 1815416,
    "company_name": "H&M Group",
    "job_title": "Director - Product Data Analysis",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "93600.0",
    "skills": "azure"
  },
  {
    "job_id": 1815416,
    "company_name": "H&M Group",
    "job_title": "Director - Product Data Analysis",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "93600.0",
    "skills": "gcp"
  },
  {
    "job_id": 1815416,
    "company_name": "H&M Group",
    "job_title": "Director - Product Data Analysis",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "93600.0",
    "skills": "spark"
  },
  {
    "job_id": 1815416,
    "company_name": "H&M Group",
    "job_title": "Director - Product Data Analysis",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "93600.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 544240,
    "company_name": "Clarivate",
    "job_title": "Healthcare Research & Data Analyst",
    "job_location": "India",
    "salary_year_avg": "89118.0",
    "skills": "sql"
  },
  {
    "job_id": 544240,
    "company_name": "Clarivate",
    "job_title": "Healthcare Research & Data Analyst",
    "job_location": "India",
    "salary_year_avg": "89118.0",
    "skills": "python"
  },
  {
    "job_id": 544240,
    "company_name": "Clarivate",
    "job_title": "Healthcare Research & Data Analyst",
    "job_location": "India",
    "salary_year_avg": "89118.0",
    "skills": "excel"
  },
  {
    "job_id": 544240,
    "company_name": "Clarivate",
    "job_title": "Healthcare Research & Data Analyst",
    "job_location": "India",
    "salary_year_avg": "89118.0",
    "skills": "tableau"
  },
  {
    "job_id": 544240,
    "company_name": "Clarivate",
    "job_title": "Healthcare Research & Data Analyst",
    "job_location": "India",
    "salary_year_avg": "89118.0",
    "skills": "word"
  },
  {
    "job_id": 483959,
    "company_name": "Amazon.com",
    "job_title": "Business Intelligence Engineer",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "sql"
  },
  {
    "job_id": 483959,
    "company_name": "Amazon.com",
    "job_title": "Business Intelligence Engineer",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "python"
  },
  {
    "job_id": 483959,
    "company_name": "Amazon.com",
    "job_title": "Business Intelligence Engineer",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "nosql"
  },
  {
    "job_id": 483959,
    "company_name": "Amazon.com",
    "job_title": "Business Intelligence Engineer",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "r"
  },
  {
    "job_id": 483959,
    "company_name": "Amazon.com",
    "job_title": "Business Intelligence Engineer",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "sas"
  },
  {
    "job_id": 483959,
    "company_name": "Amazon.com",
    "job_title": "Business Intelligence Engineer",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "dynamodb"
  },
  {
    "job_id": 483959,
    "company_name": "Amazon.com",
    "job_title": "Business Intelligence Engineer",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "aws"
  },
  {
    "job_id": 483959,
    "company_name": "Amazon.com",
    "job_title": "Business Intelligence Engineer",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "redshift"
  },
  {
    "job_id": 483959,
    "company_name": "Amazon.com",
    "job_title": "Business Intelligence Engineer",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "oracle"
  },
  {
    "job_id": 483959,
    "company_name": "Amazon.com",
    "job_title": "Business Intelligence Engineer",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "tableau"
  },
  {
    "job_id": 483959,
    "company_name": "Amazon.com",
    "job_title": "Business Intelligence Engineer",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "sas"
  },
  {
    "job_id": 1656171,
    "company_name": "Appian",
    "job_title": "Senior Product Manager - Metrics (Chennai)",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "79200.0",
    "skills": "excel"
  },
  {
    "job_id": 1656171,
    "company_name": "Appian",
    "job_title": "Senior Product Manager - Metrics (Chennai)",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "79200.0",
    "skills": "kubernetes"
  },
  {
    "job_id": 733296,
    "company_name": "Miratech",
    "job_title": "Data Integration and Business Intelligence Analyst",
    "job_location": "India",
    "salary_year_avg": "79200.0",
    "skills": "sql"
  },
  {
    "job_id": 733296,
    "company_name": "Miratech",
    "job_title": "Data Integration and Business Intelligence Analyst",
    "job_location": "India",
    "salary_year_avg": "79200.0",
    "skills": "unix"
  },
  {
    "job_id": 733296,
    "company_name": "Miratech",
    "job_title": "Data Integration and Business Intelligence Analyst",
    "job_location": "India",
    "salary_year_avg": "79200.0",
    "skills": "windows"
  },
  {
    "job_id": 733296,
    "company_name": "Miratech",
    "job_title": "Data Integration and Business Intelligence Analyst",
    "job_location": "India",
    "salary_year_avg": "79200.0",
    "skills": "tableau"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "python"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "scala"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "java"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "r"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "cassandra"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "azure"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "databricks"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "aws"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "gcp"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "spark"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "hadoop"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "excel"
  },
  {
    "job_id": 560376,
    "company_name": "Databricks",
    "job_title": "Solutions Architect : Big Data , Enterprise",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "79200.0",
    "skills": "unify"
  },
  {
    "job_id": 1032002,
    "company_name": "Innovaccer",
    "job_title": "Lead Data Analyst",
    "job_location": "Noida, Uttar Pradesh, India",
    "salary_year_avg": "79200.0",
    "skills": "sql"
  },
  {
    "job_id": 1032002,
    "company_name": "Innovaccer",
    "job_title": "Lead Data Analyst",
    "job_location": "Noida, Uttar Pradesh, India",
    "salary_year_avg": "79200.0",
    "skills": "python"
  },
  {
    "job_id": 1032002,
    "company_name": "Innovaccer",
    "job_title": "Lead Data Analyst",
    "job_location": "Noida, Uttar Pradesh, India",
    "salary_year_avg": "79200.0",
    "skills": "nosql"
  },
  {
    "job_id": 1032002,
    "company_name": "Innovaccer",
    "job_title": "Lead Data Analyst",
    "job_location": "Noida, Uttar Pradesh, India",
    "salary_year_avg": "79200.0",
    "skills": "mongodb"
  },
  {
    "job_id": 1032002,
    "company_name": "Innovaccer",
    "job_title": "Lead Data Analyst",
    "job_location": "Noida, Uttar Pradesh, India",
    "salary_year_avg": "79200.0",
    "skills": "elasticsearch"
  },
  {
    "job_id": 1032002,
    "company_name": "Innovaccer",
    "job_title": "Lead Data Analyst",
    "job_location": "Noida, Uttar Pradesh, India",
    "salary_year_avg": "79200.0",
    "skills": "mongodb"
  },
  {
    "job_id": 1032002,
    "company_name": "Innovaccer",
    "job_title": "Lead Data Analyst",
    "job_location": "Noida, Uttar Pradesh, India",
    "salary_year_avg": "79200.0",
    "skills": "azure"
  },
  {
    "job_id": 1032002,
    "company_name": "Innovaccer",
    "job_title": "Lead Data Analyst",
    "job_location": "Noida, Uttar Pradesh, India",
    "salary_year_avg": "79200.0",
    "skills": "aws"
  },
  {
    "job_id": 363652,
    "company_name": "Sutherland",
    "job_title": "Lead - Data Analytics",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "sql"
  },
  {
    "job_id": 363652,
    "company_name": "Sutherland",
    "job_title": "Lead - Data Analytics",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "sql server"
  },
  {
    "job_id": 363652,
    "company_name": "Sutherland",
    "job_title": "Lead - Data Analytics",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "azure"
  },
  {
    "job_id": 363652,
    "company_name": "Sutherland",
    "job_title": "Lead - Data Analytics",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "oracle"
  },
  {
    "job_id": 363652,
    "company_name": "Sutherland",
    "job_title": "Lead - Data Analytics",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "ssis"
  },
  {
    "job_id": 720545,
    "company_name": "Publicis Groupe",
    "job_title": "Lead Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "sql"
  },
  {
    "job_id": 720545,
    "company_name": "Publicis Groupe",
    "job_title": "Lead Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "python"
  },
  {
    "job_id": 720545,
    "company_name": "Publicis Groupe",
    "job_title": "Lead Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "r"
  },
  {
    "job_id": 720545,
    "company_name": "Publicis Groupe",
    "job_title": "Lead Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "bigquery"
  },
  {
    "job_id": 720545,
    "company_name": "Publicis Groupe",
    "job_title": "Lead Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "redshift"
  },
  {
    "job_id": 720545,
    "company_name": "Publicis Groupe",
    "job_title": "Lead Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "hadoop"
  },
  {
    "job_id": 720545,
    "company_name": "Publicis Groupe",
    "job_title": "Lead Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "plotly"
  },
  {
    "job_id": 152699,
    "company_name": "AlphaSense",
    "job_title": "Ai Research Engineer",
    "job_location": "India",
    "salary_year_avg": "79200.0",
    "skills": "python"
  },
  {
    "job_id": 152699,
    "company_name": "AlphaSense",
    "job_title": "Ai Research Engineer",
    "job_location": "India",
    "salary_year_avg": "79200.0",
    "skills": "tensorflow"
  },
  {
    "job_id": 152699,
    "company_name": "AlphaSense",
    "job_title": "Ai Research Engineer",
    "job_location": "India",
    "salary_year_avg": "79200.0",
    "skills": "pytorch"
  },
  {
    "job_id": 1431198,
    "company_name": "Amazon.com",
    "job_title": "Research Analyst, ICQA",
    "job_location": "Lucknow, Uttar Pradesh, India",
    "salary_year_avg": "79200.0",
    "skills": "sql"
  },
  {
    "job_id": 1431198,
    "company_name": "Amazon.com",
    "job_title": "Research Analyst, ICQA",
    "job_location": "Lucknow, Uttar Pradesh, India",
    "salary_year_avg": "79200.0",
    "skills": "excel"
  },
  {
    "job_id": 682691,
    "company_name": "Bosch Group",
    "job_title": "Bosch Group Employee Data Management & Org. Management  HRS-IN",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "sap"
  },
  {
    "job_id": 769789,
    "company_name": "Model N",
    "job_title": "Principal Member Technical Staff (Platform- Data Analytics)",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "java"
  },
  {
    "job_id": 769789,
    "company_name": "Model N",
    "job_title": "Principal Member Technical Staff (Platform- Data Analytics)",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "azure"
  },
  {
    "job_id": 769789,
    "company_name": "Model N",
    "job_title": "Principal Member Technical Staff (Platform- Data Analytics)",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "aws"
  },
  {
    "job_id": 769789,
    "company_name": "Model N",
    "job_title": "Principal Member Technical Staff (Platform- Data Analytics)",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "spark"
  },
  {
    "job_id": 769789,
    "company_name": "Model N",
    "job_title": "Principal Member Technical Staff (Platform- Data Analytics)",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "hadoop"
  },
  {
    "job_id": 769789,
    "company_name": "Model N",
    "job_title": "Principal Member Technical Staff (Platform- Data Analytics)",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "kafka"
  },
  {
    "job_id": 769789,
    "company_name": "Model N",
    "job_title": "Principal Member Technical Staff (Platform- Data Analytics)",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "spring"
  },
  {
    "job_id": 769789,
    "company_name": "Model N",
    "job_title": "Principal Member Technical Staff (Platform- Data Analytics)",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "79200.0",
    "skills": "docker"
  },
  {
    "job_id": 207480,
    "company_name": "Visa",
    "job_title": "Financial Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "python"
  },
  {
    "job_id": 207480,
    "company_name": "Visa",
    "job_title": "Financial Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "r"
  },
  {
    "job_id": 207480,
    "company_name": "Visa",
    "job_title": "Financial Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "vba"
  },
  {
    "job_id": 207480,
    "company_name": "Visa",
    "job_title": "Financial Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "excel"
  },
  {
    "job_id": 207480,
    "company_name": "Visa",
    "job_title": "Financial Data Analyst",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "79200.0",
    "skills": "power bi"
  },
  {
    "job_id": 989706,
    "company_name": "Cargill",
    "job_title": "Data Analyst - Price hub",
    "job_location": "India",
    "salary_year_avg": "75067.5",
    "skills": "sql"
  },
  {
    "job_id": 989706,
    "company_name": "Cargill",
    "job_title": "Data Analyst - Price hub",
    "job_location": "India",
    "salary_year_avg": "75067.5",
    "skills": "oracle"
  },
  {
    "job_id": 989706,
    "company_name": "Cargill",
    "job_title": "Data Analyst - Price hub",
    "job_location": "India",
    "salary_year_avg": "75067.5",
    "skills": "excel"
  },
  {
    "job_id": 989706,
    "company_name": "Cargill",
    "job_title": "Data Analyst - Price hub",
    "job_location": "India",
    "salary_year_avg": "75067.5",
    "skills": "word"
  },
  {
    "job_id": 989706,
    "company_name": "Cargill",
    "job_title": "Data Analyst - Price hub",
    "job_location": "India",
    "salary_year_avg": "75067.5",
    "skills": "outlook"
  },
  {
    "job_id": 989706,
    "company_name": "Cargill",
    "job_title": "Data Analyst - Price hub",
    "job_location": "India",
    "salary_year_avg": "75067.5",
    "skills": "flow"
  },
  {
    "job_id": 1528940,
    "company_name": "WNS Global Services",
    "job_title": "Assistant Manager - MIS / Data Analysis",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "72000.0",
    "skills": "power bi"
  },
  {
    "job_id": 50757,
    "company_name": "dentsu international",
    "job_title": "Manager (DB/ETL)",
    "job_location": "Thane, Maharashtra, India",
    "salary_year_avg": "72000.0",
    "skills": "sql"
  },
  {
    "job_id": 50757,
    "company_name": "dentsu international",
    "job_title": "Manager (DB/ETL)",
    "job_location": "Thane, Maharashtra, India",
    "salary_year_avg": "72000.0",
    "skills": "python"
  },
  {
    "job_id": 50757,
    "company_name": "dentsu international",
    "job_title": "Manager (DB/ETL)",
    "job_location": "Thane, Maharashtra, India",
    "salary_year_avg": "72000.0",
    "skills": "shell"
  },
  {
    "job_id": 50757,
    "company_name": "dentsu international",
    "job_title": "Manager (DB/ETL)",
    "job_location": "Thane, Maharashtra, India",
    "salary_year_avg": "72000.0",
    "skills": "sql server"
  },
  {
    "job_id": 50757,
    "company_name": "dentsu international",
    "job_title": "Manager (DB/ETL)",
    "job_location": "Thane, Maharashtra, India",
    "salary_year_avg": "72000.0",
    "skills": "azure"
  },
  {
    "job_id": 50757,
    "company_name": "dentsu international",
    "job_title": "Manager (DB/ETL)",
    "job_location": "Thane, Maharashtra, India",
    "salary_year_avg": "72000.0",
    "skills": "aws"
  },
  {
    "job_id": 50757,
    "company_name": "dentsu international",
    "job_title": "Manager (DB/ETL)",
    "job_location": "Thane, Maharashtra, India",
    "salary_year_avg": "72000.0",
    "skills": "redshift"
  },
  {
    "job_id": 50757,
    "company_name": "dentsu international",
    "job_title": "Manager (DB/ETL)",
    "job_location": "Thane, Maharashtra, India",
    "salary_year_avg": "72000.0",
    "skills": "oracle"
  },
  {
    "job_id": 50757,
    "company_name": "dentsu international",
    "job_title": "Manager (DB/ETL)",
    "job_location": "Thane, Maharashtra, India",
    "salary_year_avg": "72000.0",
    "skills": "unix"
  },
  {
    "job_id": 1018519,
    "company_name": "Bristol Myers Squibb",
    "job_title": "Data Analyst I",
    "job_location": "India",
    "salary_year_avg": "71600.0",
    "skills": "python"
  },
  {
    "job_id": 1018519,
    "company_name": "Bristol Myers Squibb",
    "job_title": "Data Analyst I",
    "job_location": "India",
    "salary_year_avg": "71600.0",
    "skills": "r"
  },
  {
    "job_id": 1018519,
    "company_name": "Bristol Myers Squibb",
    "job_title": "Data Analyst I",
    "job_location": "India",
    "salary_year_avg": "71600.0",
    "skills": "excel"
  },
  {
    "job_id": 1797441,
    "company_name": "Merck Group",
    "job_title": "IT Data Analytic Architect - Biopharma Commercial",
    "job_location": "India",
    "salary_year_avg": "64800.0",
    "skills": "sql"
  },
  {
    "job_id": 1797441,
    "company_name": "Merck Group",
    "job_title": "IT Data Analytic Architect - Biopharma Commercial",
    "job_location": "India",
    "salary_year_avg": "64800.0",
    "skills": "python"
  },
  {
    "job_id": 680822,
    "company_name": "Allucent",
    "job_title": "clinical data manager III",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "excel"
  },
  {
    "job_id": 680822,
    "company_name": "Allucent",
    "job_title": "clinical data manager III",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "word"
  },
  {
    "job_id": 680822,
    "company_name": "Allucent",
    "job_title": "clinical data manager III",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "sharepoint"
  },
  {
    "job_id": 680822,
    "company_name": "Allucent",
    "job_title": "clinical data manager III",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "flow"
  },
  {
    "job_id": 189765,
    "company_name": "Western Digital",
    "job_title": "Analyst 4, Data Analytics",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "sql"
  },
  {
    "job_id": 189765,
    "company_name": "Western Digital",
    "job_title": "Analyst 4, Data Analytics",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "python"
  },
  {
    "job_id": 189765,
    "company_name": "Western Digital",
    "job_title": "Analyst 4, Data Analytics",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "r"
  },
  {
    "job_id": 189765,
    "company_name": "Western Digital",
    "job_title": "Analyst 4, Data Analytics",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "oracle"
  },
  {
    "job_id": 189765,
    "company_name": "Western Digital",
    "job_title": "Analyst 4, Data Analytics",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "tableau"
  },
  {
    "job_id": 189765,
    "company_name": "Western Digital",
    "job_title": "Analyst 4, Data Analytics",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "alteryx"
  },
  {
    "job_id": 867802,
    "company_name": "Janes",
    "job_title": "Research Analyst I - Defence Data Development",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "excel"
  },
  {
    "job_id": 867802,
    "company_name": "Janes",
    "job_title": "Research Analyst I - Defence Data Development",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "word"
  },
  {
    "job_id": 1401644,
    "company_name": "WNS Global Services",
    "job_title": "REF38585A - Associate Director - Data Management",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "no-sql"
  },
  {
    "job_id": 1401644,
    "company_name": "WNS Global Services",
    "job_title": "REF38585A - Associate Director - Data Management",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "sap"
  },
  {
    "job_id": 944186,
    "company_name": "Myntra",
    "job_title": "Manager - Data Analytics",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "sql"
  },
  {
    "job_id": 944186,
    "company_name": "Myntra",
    "job_title": "Manager - Data Analytics",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "python"
  },
  {
    "job_id": 944186,
    "company_name": "Myntra",
    "job_title": "Manager - Data Analytics",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "r"
  },
  {
    "job_id": 944186,
    "company_name": "Myntra",
    "job_title": "Manager - Data Analytics",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "64800.0",
    "skills": "excel"
  },
  {
    "job_id": 76732,
    "company_name": "Civica UK Ltd",
    "job_title": "Data Analytics and Reporting Lead",
    "job_location": "Vadodara, Gujarat, India",
    "salary_year_avg": "64800.0",
    "skills": "sql"
  },
  {
    "job_id": 76732,
    "company_name": "Civica UK Ltd",
    "job_title": "Data Analytics and Reporting Lead",
    "job_location": "Vadodara, Gujarat, India",
    "salary_year_avg": "64800.0",
    "skills": "excel"
  },
  {
    "job_id": 76732,
    "company_name": "Civica UK Ltd",
    "job_title": "Data Analytics and Reporting Lead",
    "job_location": "Vadodara, Gujarat, India",
    "salary_year_avg": "64800.0",
    "skills": "power bi"
  },
  {
    "job_id": 306376,
    "company_name": "Array",
    "job_title": "Project Associate - Data Analytics (Contract)",
    "job_location": "India",
    "salary_year_avg": "64800.0",
    "skills": "sql"
  },
  {
    "job_id": 306376,
    "company_name": "Array",
    "job_title": "Project Associate - Data Analytics (Contract)",
    "job_location": "India",
    "salary_year_avg": "64800.0",
    "skills": "python"
  },
  {
    "job_id": 306376,
    "company_name": "Array",
    "job_title": "Project Associate - Data Analytics (Contract)",
    "job_location": "India",
    "salary_year_avg": "64800.0",
    "skills": "r"
  },
  {
    "job_id": 306376,
    "company_name": "Array",
    "job_title": "Project Associate - Data Analytics (Contract)",
    "job_location": "India",
    "salary_year_avg": "64800.0",
    "skills": "excel"
  },
  {
    "job_id": 214915,
    "company_name": "Sutherland",
    "job_title": "Associate Manager - Data Analytics",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "64800.0",
    "skills": "sql"
  },
  {
    "job_id": 214915,
    "company_name": "Sutherland",
    "job_title": "Associate Manager - Data Analytics",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "64800.0",
    "skills": "sql server"
  },
  {
    "job_id": 214915,
    "company_name": "Sutherland",
    "job_title": "Associate Manager - Data Analytics",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "64800.0",
    "skills": "azure"
  },
  {
    "job_id": 214915,
    "company_name": "Sutherland",
    "job_title": "Associate Manager - Data Analytics",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "64800.0",
    "skills": "oracle"
  },
  {
    "job_id": 214915,
    "company_name": "Sutherland",
    "job_title": "Associate Manager - Data Analytics",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "64800.0",
    "skills": "ssis"
  },
  {
    "job_id": 946307,
    "company_name": "Amwell",
    "job_title": "Associate Data Analyst",
    "job_location": "India",
    "salary_year_avg": "64600.0",
    "skills": "sql"
  },
  {
    "job_id": 946307,
    "company_name": "Amwell",
    "job_title": "Associate Data Analyst",
    "job_location": "India",
    "salary_year_avg": "64600.0",
    "skills": "t-sql"
  },
  {
    "job_id": 946307,
    "company_name": "Amwell",
    "job_title": "Associate Data Analyst",
    "job_location": "India",
    "salary_year_avg": "64600.0",
    "skills": "vba"
  },
  {
    "job_id": 946307,
    "company_name": "Amwell",
    "job_title": "Associate Data Analyst",
    "job_location": "India",
    "salary_year_avg": "64600.0",
    "skills": "sql server"
  },
  {
    "job_id": 946307,
    "company_name": "Amwell",
    "job_title": "Associate Data Analyst",
    "job_location": "India",
    "salary_year_avg": "64600.0",
    "skills": "looker"
  },
  {
    "job_id": 946307,
    "company_name": "Amwell",
    "job_title": "Associate Data Analyst",
    "job_location": "India",
    "salary_year_avg": "64600.0",
    "skills": "ms access"
  },
  {
    "job_id": 299655,
    "company_name": "YouGov",
    "job_title": "Graduate Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "57500.0",
    "skills": "sql"
  },
  {
    "job_id": 299655,
    "company_name": "YouGov",
    "job_title": "Graduate Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "57500.0",
    "skills": "python"
  },
  {
    "job_id": 299655,
    "company_name": "YouGov",
    "job_title": "Graduate Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "57500.0",
    "skills": "r"
  },
  {
    "job_id": 299655,
    "company_name": "YouGov",
    "job_title": "Graduate Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "57500.0",
    "skills": "excel"
  },
  {
    "job_id": 667697,
    "company_name": "DAZN",
    "job_title": "Data Analyst - CRM",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "57500.0",
    "skills": "sql"
  },
  {
    "job_id": 667697,
    "company_name": "DAZN",
    "job_title": "Data Analyst - CRM",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "57500.0",
    "skills": "snowflake"
  },
  {
    "job_id": 667697,
    "company_name": "DAZN",
    "job_title": "Data Analyst - CRM",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "57500.0",
    "skills": "tableau"
  },
  {
    "job_id": 667697,
    "company_name": "DAZN",
    "job_title": "Data Analyst - CRM",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "57500.0",
    "skills": "looker"
  },
  {
    "job_id": 1441112,
    "company_name": "Miratech",
    "job_title": "Business/Data Analyst",
    "job_location": "Gurugram, Haryana, India",
    "salary_year_avg": "57500.0",
    "skills": "sheets"
  },
  {
    "job_id": 722446,
    "company_name": "WPP",
    "job_title": "Junior Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "57500.0",
    "skills": "sql"
  },
  {
    "job_id": 722446,
    "company_name": "WPP",
    "job_title": "Junior Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "57500.0",
    "skills": "alteryx"
  },
  {
    "job_id": 1813390,
    "company_name": "Verisk",
    "job_title": "Data Analyst",
    "job_location": "New Delhi, Delhi, India",
    "salary_year_avg": "57500.0",
    "skills": "sql"
  },
  {
    "job_id": 1813390,
    "company_name": "Verisk",
    "job_title": "Data Analyst",
    "job_location": "New Delhi, Delhi, India",
    "salary_year_avg": "57500.0",
    "skills": "python"
  },
  {
    "job_id": 1813390,
    "company_name": "Verisk",
    "job_title": "Data Analyst",
    "job_location": "New Delhi, Delhi, India",
    "salary_year_avg": "57500.0",
    "skills": "aws"
  },
  {
    "job_id": 663306,
    "company_name": "Freshworks",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "57500.0",
    "skills": "tableau"
  },
  {
    "job_id": 663306,
    "company_name": "Freshworks",
    "job_title": "Data Analyst",
    "job_location": "Chennai, Tamil Nadu, India",
    "salary_year_avg": "57500.0",
    "skills": "power bi"
  },
  {
    "job_id": 671340,
    "company_name": "NetApp",
    "job_title": "Business Data Analyst",
    "job_location": "India",
    "salary_year_avg": "54988.0",
    "skills": "tableau"
  },
  {
    "job_id": 1614840,
    "company_name": "Experian",
    "job_title": "Product Engineer I - Matching/ Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "53014.0",
    "skills": "sql"
  },
  {
    "job_id": 1614840,
    "company_name": "Experian",
    "job_title": "Product Engineer I - Matching/ Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "53014.0",
    "skills": "java"
  },
  {
    "job_id": 1614840,
    "company_name": "Experian",
    "job_title": "Product Engineer I - Matching/ Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "53014.0",
    "skills": "r"
  },
  {
    "job_id": 1614840,
    "company_name": "Experian",
    "job_title": "Product Engineer I - Matching/ Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "53014.0",
    "skills": "mongo"
  },
  {
    "job_id": 1614840,
    "company_name": "Experian",
    "job_title": "Product Engineer I - Matching/ Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "53014.0",
    "skills": "cassandra"
  },
  {
    "job_id": 1614840,
    "company_name": "Experian",
    "job_title": "Product Engineer I - Matching/ Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "53014.0",
    "skills": "db2"
  },
  {
    "job_id": 1614840,
    "company_name": "Experian",
    "job_title": "Product Engineer I - Matching/ Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "53014.0",
    "skills": "aws"
  },
  {
    "job_id": 1614840,
    "company_name": "Experian",
    "job_title": "Product Engineer I - Matching/ Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "53014.0",
    "skills": "oracle"
  },
  {
    "job_id": 1614840,
    "company_name": "Experian",
    "job_title": "Product Engineer I - Matching/ Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "53014.0",
    "skills": "excel"
  },
  {
    "job_id": 1614840,
    "company_name": "Experian",
    "job_title": "Product Engineer I - Matching/ Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "53014.0",
    "skills": "git"
  },
  {
    "job_id": 1614840,
    "company_name": "Experian",
    "job_title": "Product Engineer I - Matching/ Data Analyst",
    "job_location": "Mumbai, Maharashtra, India",
    "salary_year_avg": "53014.0",
    "skills": "bitbucket"
  },
  {
    "job_id": 59394,
    "company_name": "Janes",
    "job_title": "Research Analyst I - Defence Data Development",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "50400.0",
    "skills": "excel"
  },
  {
    "job_id": 59394,
    "company_name": "Janes",
    "job_title": "Research Analyst I - Defence Data Development",
    "job_location": "Bengaluru, Karnataka, India",
    "salary_year_avg": "50400.0",
    "skills": "word"
  },
  {
    "job_id": 566080,
    "company_name": "Sutherland",
    "job_title": "EDI Enrollment Analyst",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "50400.0",
    "skills": "go"
  },
  {
    "job_id": 566080,
    "company_name": "Sutherland",
    "job_title": "EDI Enrollment Analyst",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "50400.0",
    "skills": "excel"
  },
  {
    "job_id": 566080,
    "company_name": "Sutherland",
    "job_title": "EDI Enrollment Analyst",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "50400.0",
    "skills": "word"
  },
  {
    "job_id": 566080,
    "company_name": "Sutherland",
    "job_title": "EDI Enrollment Analyst",
    "job_location": "Hyderabad, Telangana, India",
    "salary_year_avg": "50400.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 833077,
    "company_name": "IntegriChain",
    "job_title": "Data Quality Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "50400.0",
    "skills": "sql"
  },
  {
    "job_id": 833077,
    "company_name": "IntegriChain",
    "job_title": "Data Quality Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "50400.0",
    "skills": "python"
  },
  {
    "job_id": 833077,
    "company_name": "IntegriChain",
    "job_title": "Data Quality Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "50400.0",
    "skills": "azure"
  },
  {
    "job_id": 833077,
    "company_name": "IntegriChain",
    "job_title": "Data Quality Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "50400.0",
    "skills": "aws"
  },
  {
    "job_id": 833077,
    "company_name": "IntegriChain",
    "job_title": "Data Quality Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "50400.0",
    "skills": "excel"
  },
  {
    "job_id": 833077,
    "company_name": "IntegriChain",
    "job_title": "Data Quality Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "50400.0",
    "skills": "git"
  },
  {
    "job_id": 833077,
    "company_name": "IntegriChain",
    "job_title": "Data Quality Analyst",
    "job_location": "Pune, Maharashtra, India",
    "salary_year_avg": "50400.0",
    "skills": "jenkins"
  },
  {
    "job_id": 1696350,
    "company_name": "BlackRock",
    "job_title": "Analyst Invoice Processing (Data Operations)",
    "job_location": "India",
    "salary_year_avg": "32400.0",
    "skills": "excel"
  },
  {
    "job_id": 1696350,
    "company_name": "BlackRock",
    "job_title": "Analyst Invoice Processing (Data Operations)",
    "job_location": "India",
    "salary_year_avg": "32400.0",
    "skills": "terminal"
  }
]
*/