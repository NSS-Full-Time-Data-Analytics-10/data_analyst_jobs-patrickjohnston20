--Q1 --- Answer - 1793 rows

SELECT COUNT(*)
FROM data_analyst_jobs;

-- Q2 --- Answer - ExxonMobil (Dawn soap for the win!)

SELECT *
FROM data_analyst_jobs
LIMIT 10;

-- Q3 --- A)21

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN';


--Q3 ---  B)27

SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';


--Q4 --- Answer - 3

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating > 4.000;



-- Q5 ---  Answer - 151

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count >= 500 AND review_count <= 1000;



--Q6 --- Answer - Nebraska

SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL  AND star_rating IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC;


-- Q7 --- Answer - 881, (included process of titles and counts of numbers)


SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;



-- Q8 --- Answer - 230

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';




-- q9 redo --

SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE company IS NOT NULL
GROUP BY company
HAVING SUM(review_count) > 5000;


SELECT *
FROM data_analyst_jobs;

-- Q9 --- Answer - part 2 shown -- 1088 companies  

SELECT COUNT(DISTINCT company)
FROM data_analyst_jobs
WHERE company IS NOT NULL
HAVING SUM(review_count) > 5000;


-- Q 10 --- ANSWER  - Google, 4.3

SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE company IS NOT NULL
GROUP BY company
HAVING SUM(review_count) > 5000
ORDER BY AVG(star_rating) DESC;


-- Q11 --- A) 774


SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';



-- Q 11 --- B) ANSWER - 774


SELECT COUNT(DISTINCT title) AS analyst_job_title
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';



-- Q 12 ---A)  ANSWER -- 4


SELECT COUNT(DISTINCT title) 
from data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' AND title NOT ILIKE '%Analytics%';


-- Q 12 -- B) ANSWER-- Tableau

SELECT DISTINCT title AS not_analytics_jobtitle
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' AND title NOT ILIKE '%Analytics%'
GROUP BY not_analytics_jobtitle;



SELECT *
FROM data_analyst_jobs


--BONUS--- (62)internet and software, banks and financial services, health care


SELECT COUNT(title) AS num_of_jobs, domain
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%' AND days_since_posting > 21
AND domain IS NOT NULL
GROUP BY domain
ORDER BY num_of_jobs DESC;



SELECT COUNT(DISTINCT title) AS num_of_jobs, domain
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%' AND days_since_posting > 21
AND domain IS NOT NULL
GROUP BY domain
ORDER BY num_of_jobs DESC
LIMIT 4;







