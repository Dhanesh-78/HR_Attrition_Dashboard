-- Attrition rate by age group
SELECT
    CASE
        WHEN Age < 25              THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 34 THEN '25 to 34'
        WHEN Age BETWEEN 35 AND 44 THEN '35 to 44'
        WHEN Age BETWEEN 45 AND 54 THEN '45 to 54'
        ELSE '55 and above'
    END                                              AS age_group,
    COUNT(*)                                         AS total,
    SUM(Attrition_num)                               AS left_company,
    ROUND(SUM(Attrition_num) * 100.0 / COUNT(*), 1) AS attrition_pct
FROM employees
GROUP BY age_group
ORDER BY attrition_pct DESC;
