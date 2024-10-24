SELECT 
    id
FROM (
    SELECT
        id,
        recordDate,
        temperature,
        LAG(temperature, 1) OVER (
            ORDER BY
                recordDate
        ) prev_temp,
        LAG(recordDate, 1) OVER (
            ORDER BY
                recordDate
        ) prev_date
    FROM
        Weather
) AS new_data
WHERE
    temperature > prev_temp AND
    recorddate - prev_date = 1
;