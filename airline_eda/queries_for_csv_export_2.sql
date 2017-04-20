--Longest departure delay by route per year
SELECT a16.route, AVG(a07.depdelayminutes) as avgdepdelay7, AVG(a08.depdelayminutes) as avgdepdelay8, 
AVG(a09.depdelayminutes) as avgdepdelay9, AVG(a10.depdelayminutes) as avgdepdelay10, AVG(a11.depdelayminutes) as avgdepdelay11, 
AVG(a12.depdelayminutes) as avgdepdelay12, AVG(a13.depdelayminutes) as avgdepdelay13, AVG(a14.depdelayminutes) as avgdepdelay14, 
AVG(a15.depdelayminutes) as avgdepdelay15, AVG(a16.depdelayminutes) as avgdepdelay16
FROM routes_2007 a07
inner join routes_2008 a08
on a07.route = a08.route
inner join routes_2009 a09
on a08.route = a09.route
inner join routes_2010 a10
on a09.route = a10.route
inner join routes_2011 a11
on a10.route = a11.route
inner join routes_2012 a12
on a11.route = a12.route
inner join routes_2013 a13
on a12.route = a13.route
inner join routes_2014 a14
on a13.route = a14.route
inner join routes_2015 a15
on a14.route = a15.route
inner join routes_2016 a16
on a15.route = a16.route
GROUP BY a16.route
ORDER BY avgdepdelay16 DESC
LIMIT 25;

SELECT a16.route, AVG(a14.depdelayminutes) as avgdepdelay14, 
AVG(a15.depdelayminutes) as avgdepdelay15, AVG(a16.depdelayminutes) as avgdepdelay16
FROM routes_2014 a14
inner join routes_2015 a15
on a14.route = a15.route
inner join routes_2016 a16
on a15.route = a16.route
GROUP BY a16.route
ORDER BY avgdepdelay16 DESC
LIMIT 25;




--Longest arrival delay by route
SELECT a16.route, AVG(a07.arrdelayminutes) as avgarrdelay7, AVG(a08.arrdelayminutes) as avgarrdelay8, 
AVG(a09.arrdelayminutes) as avgarrdelay9, AVG(a10.arrdelayminutes) as avgarrdelay10, AVG(a11.arrdelayminutes) as avgarrdelay11, 
AVG(a12.arrdelayminutes) as avgarrdelay12, AVG(a13.arrdelayminutes) as avgarrdelay13, AVG(a14.arrdelayminutes) as avgarrdelay14, 
AVG(a15.arrdelayminutes) as avgarrdelay15, AVG(a16.arrdelayminutes) as avgarrdelay16
FROM routes_2007 a07
inner join routes_2008 a08
on a07.route = a08.route
inner join routes_2009 a09
on a08.route = a09.route
inner join routes_2010 a10
on a09.route = a10.route
inner join routes_2011 a11
on a10.route = a11.route
inner join routes_2012 a12
on a11.route = a12.route
inner join routes_2013 a13
on a12.route = a13.route
inner join routes_2014 a14
on a13.route = a14.route
inner join routes_2015 a15
on a14.route = a15.route
inner join routes_2016 a16
on a15.route = a16.route
GROUP BY a16.route
ORDER BY avgarrdelay16 DESC
LIMIT 25;
