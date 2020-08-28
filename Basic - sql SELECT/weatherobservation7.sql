/*
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
https://www.hackerrank.com/challenges/weather-observation-station-7/problem
*/
select distinct  city from station where lower(city) like "%a" or lower(city) like "%e" or lower(city) like "%i" or lower(city) like "%o" or lower(city) like "%u"
