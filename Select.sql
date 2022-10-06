-- название и год выхода альбомов, вышедших в 2018 году;
select "Name", "Year"  from "albums"
where "Year" = 2018;

-- название и продолжительность самого длительного трека;
select "track_name", "duration"  from "Track"
where "duration" = (select max("duration") from "Track");

--название треков, продолжительность которых не менее 3,5 минуты;
select "track_name" from "Track"
where "duration" <= 210; 

--названия сборников, вышедших в период с 2018 по 2020 год включительно;
select "Track"  from "Collection_track_list"
where "Year_issue" between 2018 and 2020;

--исполнители, чье имя состоит из 1 слова;
SELECT "Name" FROM "Artist"
WHERE (LENGTH("Name") - LENGTH(replace("Name", ' ', ''))) = 0;

--название треков, которые содержат слово "мой"/"my".
select "track_name" from "Track"
where "track_name" like '%my%' or "track_name" like '%мой%';


 