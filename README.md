# SQL_Data_Wrangling

![](https://github.com/lolabode/SQL_Data_Wrangling/blob/main/intro.image.jpeg)
---

## Introduction:

Many organizations find designing fair and competitive pay structures challenging. Salaries often vary by experience, education, department, role, or location, while factors like age and gender can also raise questions of equity.
This dataset of 10,000 employees across different departments and locations provides a chance to explore what drives compensation. By analyzing it, we can uncover key factors influencing pay, detect possible gaps across gender or departments, and understand how education and experience shape salary growth.
The findings aim to highlight potential inequalities while offering insights that can guide fairer, more effective compensation strategies and support employee retention.


**_Disclaimer_**: _All datasets and reports do not represent any company, institution, or country; it is just a sample dataset to demonstrate my capabilities of SQL_

## Problem statement:

1. What is the relationship between employee experience and salary?
2. How does education level impact salary among employees?
3. Is there a gender pay gap across the company?
4. Which locations have the highest average salaries?
5. How does employee salary vary across different ranges of years of experience, and does salary growth follow a consistent trend as employees gain more experience?
6. Are there departments with a higher proportion of female vs. male employees?
7. What is the relationship between employees’ education levels and departments in determining salary, and which combinations of education and department have the highest average salaries?


## Skills/ concepts demonstrated:

The following SQL features were incorporated:
-  Exploratory Data Analysis 
- Data Cleaning and Transformation
- Correlation Analysis
- Sub querying
- Visualization

## Exploratory Data Analysis:

[Click to view code](https://github.com/lolabode/SQL_Data_Wrangling/blob/main/Employee%20Data%20Analysis.sql)

## Data Output:

![](https://github.com/lolabode/SQL_Data_Wrangling/blob/main/EDA%201.jpg)

## Visualization:
The report answers 5 questions:

1. What is the relationship between employee experience and salary?
2. How does education level impact salary among employees?
3. Is there a gender pay gap across the company?
4. Which locations have the highest average salaries?
5. How does employee salary vary across different ranges of years of experience, and does salary growth follow a consistent trend as employees gain more experience?
6. Are there departments with a higher proportion of female vs. male employees?
7. What is the relationship between employees’ education levels and departments in determining salary, and which combinations of education and department have the highest average salaries?

##  Relationship between employee experience and salary:

![](https://github.com/lolabode/SQL_Data_Wrangling/blob/main/Problem%20statement%201.jpg)

Analysis:
- The data shows that salaries generally rise with experience—employees with more years on the job earn more than those just starting out. But after about 25–30 years, the growth slows down, suggesting that factors like job title, department, or education start to play a bigger role in pay than experience alone.

## Education level impacts salary among employees:

![](https://github.com/lolabode/SQL_Data_Wrangling/blob/main/Problem%20statement%202.jpg)

Analysis:
- Employees with higher education levels tend to earn more. On average, PhD holders have the highest salaries, followed by Master’s degree holders, while those with only a Bachelor’s earn much less. This shows that education plays a strong role in shaping pay.

## Is there a gender pay gap across the company?

![](https://github.com/lolabode/SQL_Data_Wrangling/blob/main/Problem%20statement%203.jpg)

Analysis:
- The Output suggests a slight gender pay gap. On average, men earn about 116k while women earn around 115k. The gap isn’t very large, and both groups have similar minimum and maximum salaries, but it still shows that men make a little more overall.

## Locations with the highest average salaries:

![](https://github.com/lolabode/SQL_Data_Wrangling/blob/main/Problem%20statement%204.jpg)

Analysis:
- Among all locations, New York offers the highest average salary at about 116k, closely followed by San Francisco and Seattle. Chicago and Austin trail slightly behind, with Austin having the lowest average pay. This suggests that while salaries are fairly competitive across cities, New York and San Francisco stand out as the top-paying locations. 

## Daily salary more than #50:

![](problem5.png)

Analysis:
- We had about seven employees whose daily salary were more than #50 

## Challenges ecountered:

1. The problem I encountered was the increased values on the y-axis for visualisation that was showing. It wasn't showing because it was a string column, so I used the case function to convert the data type to a float column.

2. The $ sign also gave me a problem and because i didnt want to take it out of my code, i then used the substring so the postgresql does not pick the $ sign 

3. I couldnt get dates greater than 1981-06-30 but defined to 1981 only, so i has to intorduce 'date_part' to temporarily seperate the year from the date and then extract it. 


## Conclusion:
It was really an interesting dataset to workwith and I think they should not reduce the clerk's salary anymore 😄
