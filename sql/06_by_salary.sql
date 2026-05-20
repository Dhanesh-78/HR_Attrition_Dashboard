-- Attrition rate by salary range
SELECT
    CASE
        WHEN MonthlyIncome < 3000               THEN 'Below 3000'
        WHEN MonthlyIncome BETWEEN 3000 AND 6000 THEN '3000 to 6000'
        WHEN MonthlyIncome BETWEEN 6001 AND 10000 THEN '6001 to 10000'
        ELSE 'Above 10000'
    END                                              AS salary_range,
    COUNT(*)                                         AS total,
    SUM(Attrition_num)                               AS left_company,
    ROUND(SUM(Attrition_num) * 100.0 / COUNT(*), 1) AS attrition_pct
FROM employees
GROUP BY Age_Group
ORDER BY
    CASE
        WHEN Age_Group = 'UNDER 25' THEN 1
        WHEN Age_Group = '25-34' THEN 2
        WHEN Age_Group = '35-44' THEN 3
        WHEN Age_Group = '45-54' THEN 4
        ELSE 
    END
