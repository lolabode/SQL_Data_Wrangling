SELECT Top 10*
FROM Employers_data;

SELECT 
    MIN(Salary) AS min_salary,
    MAX(Salary) AS max_salary,
    AVG(Salary) AS avg_salary,
    (SELECT TOP 1 
        PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary) 
        OVER ()
     FROM Employers_data) AS median_salary
   FROM Employers_data;

   SELECT Education_Level,
    AVG(Salary) AS avg_salary,
    COUNT(*) AS employee_count
FROM Employers_data
GROUP BY Education_Level
ORDER BY avg_salary DESC;

SELECT 
    Experience_Years,
    AVG(Salary) AS avg_salary,
    COUNT(*) AS employee_count
FROM Employers_data
GROUP BY Experience_Years
ORDER BY Experience_Years DESC;

SELECT 
    Education_Level,
    department,
    AVG(Salary) AS avg_salary,
    COUNT(*) AS employee_count
FROM Employers_data
GROUP BY Education_Level, department
ORDER BY avg_salary DESC;

SELECT Gender,
 COUNT(*) AS total_employees,
    AVG(Salary) AS average_salary,
    MIN(Salary) AS min_salary,
    MAX(Salary) AS max_salary
FROM Employers_data
GROUP BY Gender;

SELECT 
    (MAX(CASE WHEN Gender = 'Male' THEN avg_salary END) -
     MAX(CASE WHEN Gender = 'Female' THEN avg_salary END)) AS gender_pay_gap
FROM (
    SELECT Gender, AVG(Salary) AS avg_salary
    FROM Employers_data
    GROUP BY Gender
) sub;

SELECT 
    Department,
    SUM(CASE WHEN Gender = 'Male' THEN 1 ELSE 0 END) AS male_count,
    SUM(CASE WHEN Gender = 'Female' THEN 1 ELSE 0 END) AS female_count,
    COUNT(*) AS total_employees,
    ROUND(100.0 * SUM(CASE WHEN Gender = 'Female' THEN 1 ELSE 0 END) / COUNT(*), 2) AS female_percentage,
    ROUND(100.0 * SUM(CASE WHEN Gender = 'Male' THEN 1 ELSE 0 END) / COUNT(*), 2) AS male_percentage
FROM Employers_data
GROUP BY Department
ORDER BY female_percentage DESC;

SELECT 
    Location,
    COUNT(*) AS total_employees,
    AVG(Salary) AS average_salary,
    MIN(Salary) AS min_salary,
    MAX(Salary) AS max_salary
FROM Employers_data
GROUP BY Location
ORDER BY average_salary DESC;

SELECT 
    Job_Title,
    Experience_Years,
    AVG(Salary) AS avg_salary,
    COUNT(*) AS total_employees
FROM Employers_data
GROUP BY Job_Title, Experience_Years
ORDER BY Job_Title, Experience_Years;