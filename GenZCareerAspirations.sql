-- What is the gender distribution of respondents from India?
SELECT 
    Gender, 
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
WHERE 
    Country = 'India'
GROUP BY 
    Gender;

-- What percentage of respondents from India are interested in education abroad and sponsorship?
SELECT 
    HigherEducation AS Response,
    COUNT(*) AS Respondent_Count,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM genzcareeraspirations WHERE Country = 'India')), 2) AS Percentage
FROM 
    genzcareeraspirations
WHERE 
    Country = 'India'
GROUP BY 
    HigherEducation;
    
-- What are the 6 top influences on career aspirations for respondents in India?
SELECT 
    CareerAspirations,
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
WHERE 
    Country = 'India'
GROUP BY 
    CareerAspirations
ORDER BY 
    Respondent_Count DESC
LIMIT 6;

-- How do career aspiration influences vary by gender in India?
SELECT 
    Gender,
    CareerAspirations,
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
WHERE 
    Country = 'India'
GROUP BY 
    Gender, CareerAspirations
ORDER BY 
    Gender, Respondent_Count DESC;
    
-- What percentage of respondents are willing to work for a company for at least 3 years?
SELECT 
    COUNT(*) AS Willing_Respondents,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM genzcareeraspirations)), 2) AS Percentage
FROM 
    genzcareeraspirations
WHERE 
    LikelihoodofStaying = 'Will work for 3 years or more';
    
-- How many respondents prefer to work for socially impactful companies?
SELECT 
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
WHERE 
    PreferredWorkSetup = 'Socially Impactful Companies';
    
-- How does the preference for socially impactful companies vary by gender?
SELECT 
    Gender,
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
WHERE 
    PreferredWorkSetup = 'Socially Impactful Companies'
GROUP BY 
    Gender
ORDER BY 
    Respondent_Count DESC;
    
-- What is the distribution of minimum expected salary in the first three years among respondents?
SELECT 
    MinimumMonthlySalaryforFirst3Years AS Salary_Range,
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
GROUP BY 
    MinimumMonthlySalaryforFirst3Years
ORDER BY 
    Respondent_Count DESC;
    
-- What is the expected minimum monthly salary in hand?
SELECT 
    AVG(CAST(MinimumMonthlySalaryforFirst3Years AS DECIMAL)) AS Average_Minimum_Salary
FROM 
    genzcareeraspirations;
    
-- What percentage of respondents prefer remote working?
SELECT 
    COUNT(*) AS Remote_Work_Respondents,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM genzcareeraspirations)), 2) AS Percentage
FROM 
    genzcareeraspirations
WHERE 
    PreferredWorkSetup = 'Remote';
    
-- What is the preferred number of daily work hours?
SELECT 
    DailyHoursYouAreWillingToWork,
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
GROUP BY 
    DailyHoursYouAreWillingToWork
ORDER BY 
    Respondent_Count DESC
LIMIT 1;

-- What are the common work frustrations among respondents?
SELECT 
    WhatFrustrateYouAtWork,
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
GROUP BY 
    WhatFrustrateYouAtWork
ORDER BY 
    Respondent_Count DESC;
    
-- How does the need for work-life balance interventions vary by gender?
SELECT 
    Gender,
    DailyHoursYouAreWillingToWork,
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
GROUP BY 
    Gender, DailyHoursYouAreWillingToWork
ORDER BY 
    Gender, Respondent_Count DESC;
    
-- How many respondents are willing to work under an abusive manager?
SELECT 
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
WHERE 
    WorkforaManagerwithAbusiveBehavior = 'Yes';
    
-- What is the distribution of minimum expected salary after five years?
SELECT 
    MinimumMonthlySalaryAfter5Years AS Salary_Range,
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
GROUP BY 
    MinimumMonthlySalaryAfter5Years
ORDER BY 
    Respondent_Count DESC;
    
-- What are the remote working preferences by gender?
SELECT 
    Gender,
    PreferredWorkSetup,
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
GROUP BY 
    Gender, PreferredWorkSetup
ORDER BY 
    Gender, Respondent_Count DESC;
    
-- What are the top work frustrations for each gender?
SELECT 
    Gender,
    WhatFrustrateYouAtWork,
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
GROUP BY 
    Gender, WhatFrustrateYouAtWork
ORDER BY 
    Gender, Respondent_Count DESC;
    
-- What factors boost work happiness and productivity for respondents?
SELECT 
    WhatBoostsYourHappinessAndProductivity,
    COUNT(*) AS Respondent_Count
FROM 
    genzcareeraspirations
GROUP BY 
    WhatBoostsYourHappinessAndProductivity
ORDER BY 
    Respondent_Count DESC;
    
-- What percentage of respondents need sponsorship for education abroad?
SELECT 
    COUNT(*) AS Sponsorship_Need_Respondents,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM genzcareeraspirations)), 2) AS Percentage
FROM 
    genzcareeraspirations
WHERE 
    HigherEducation = 'Yes';



