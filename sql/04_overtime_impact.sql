-- Attrition rate by overtime
SELECT
    OverTime,
    COUNT(*)                                         AS total,
    SUM(Attrition_num)                               AS left_company,
    ROUND(SUM(Attrition_num) * 100.0 / COUNT(*), 1) AS attrition_pct
FROM employees
GROUP BY OverTime;
