SELECT
    CASE
        WHEN YearsAtCompany <= 1              THEN '0 to 1 year'
        WHEN YearsAtCompany BETWEEN 2 AND 5   THEN '2 to 5 years'
        WHEN YearsAtCompany BETWEEN 6 AND 10  THEN '6 to 10 years'
        ELSE 'More than 10 years'
    END                                             AS tenure_group,
    COUNT(*)                                        AS total,
    SUM(Attrition_num)                              AS left_company,
    ROUND(SUM(Attrition_num) * 100.0 / COUNT(*), 1) AS attrition_pct
FROM employee
GROUP BY tenure_group
ORDER BY attrition_pct DESC
