-- Attrition rate by job role
SELECT
    JobRole,
    COUNT(*)                                         AS total,
    SUM(Attrition_num)                               AS left_company,
    ROUND(SUM(Attrition_num) * 100.0 / COUNT(*), 1) AS attrition_pct
FROM employees
GROUP BY JobRole
ORDER BY attrition_pct DESC;
