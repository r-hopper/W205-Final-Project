--25 busiest departing airports 2012-2016

DROP TABLE IF EXISTS busy_2012_2016;
CREATE TABLE busy_2012_2016 AS 
SELECT airlineid,
       year,
       month, 
       origin,
       dest, 
       route,
       depdelayminutes,
       arrdelayminutes,
       CASE WHEN AVG(depdelayminutes) > 30 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan30min,
       CASE WHEN AVG(depdelayminutes) > 60 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan1hr,
       CASE WHEN AVG(arrdelayminutes) > 30 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan30min,
       CASE WHEN AVG(arrdelayminutes) > 60 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan1hr
FROM flights_2012_2016
WHERE airlineid IN ('10397', '13930', '11298', '11292', '12892', '14107', '12266', '12889', '11433', '13487', '11618', '14869', 
             '14771', '13204', '10721', '11057', '12478', '12953', '10821', '14747', '14100', '14679', '13232', '11278', '15304')
ORDER BY avgdepdelay DESC
;
