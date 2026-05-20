-- Overall attrition rate
SELECT
    COUNT(*)                                         AS total_employees,
    SUM(Attrition_num)                               AS employees_left,
    ROUND(SUM(Attrition_num) * 100.0 / COUNT(*), 1) AS attrition_rate_pct
FROM employees;
