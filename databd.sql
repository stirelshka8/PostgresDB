-- Добавляем жанры
insert into "Genre" ("name") values('Rock');
insert into "Genre" ("name")values('POP');
insert into "Genre" ("name")values('Metall');
insert into "Genre" ("name")values('Hard Rock');
insert into "Genre" ("name")values('Heavy Metall');

-- Добавляем артистов
insert into "Artist" ("Name") values ('А. Рахман Хассан');
insert into "Artist" ("Name") values ('МакSим');
insert into "Artist" ("Name") values ('Юлия Савичева');
insert into "Artist" ("Name") values ('Валерий Меладзе');
insert into "Artist" ("Name") values ('Руки Вверх');
insert into "Artist" ("Name") values ('Дима Билан');
insert into "Artist" ("Name") values ('Нюша');
insert into "Artist" ("Name") values ('Валерия');
insert into "Artist" ("Name") values ('Цой');
insert into "Artist" ("Name") values ('РадиоТапок');

-- Добавляем треки
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_1', '0', 204);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_2', '0', 333);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_3', '0', 124);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_4', '0', 210);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_5', '0', 326);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_6', '0', 439);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_7', '0', 372);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_8', '0', 262);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_9', '0', 196);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_10_мой', '0', 135);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_11_my', '0', 372);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_12', '0', 213);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_13', '0', 428);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_14', '0', 201);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_15', '0', 256);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_16', '0', 152);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_17', '0', 141);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_18', '0', 462);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_19', '0', 549);
insert into "Track" ("track_name", "albun_id", "duration") values ('Track_20', '0', 486);

-- Добавляем альбомы
insert into "albums" ("Name", "Year") values ('Al_one', 2018);
insert into "albums" ("Name", "Year") values ('Al_two', 2016);
insert into "albums" ("Name", "Year") values ('Al_three', 2014);
insert into "albums" ("Name", "Year") values ('Al_four', 2018);
insert into "albums" ("Name", "Year") values ('Al_five', 2015);
insert into "albums" ("Name", "Year") values ('Al_six', 2019);
insert into "albums" ("Name", "Year") values ('Al_seven', 2019);
insert into "albums" ("Name", "Year") values ('Al_eight', 2020);
insert into "albums" ("Name", "Year") values ('Al_nine',2021);
insert into "albums" ("Name", "Year") values ('Al_ten', 2008);

-- Добавляем коллекцию
insert into "Collection_track_list" ("Track", "Year_issue") values ('Track_1', 2018);
insert into "Collection_track_list" ("Track", "Year_issue") values ('Track_2', 2020);
insert into "Collection_track_list" ("Track", "Year_issue") values ('Track_3', 2016);
insert into "Collection_track_list" ("Track", "Year_issue") values ('Track_4', 2012);
insert into "Collection_track_list" ("Track", "Year_issue") values ('Track_5', 2022);
insert into "Collection_track_list" ("Track", "Year_issue") values ('Track_6', 2021);
insert into "Collection_track_list" ("Track", "Year_issue") values ('Track_7', 2019);
insert into "Collection_track_list" ("Track", "Year_issue") values ('Track_8', 2018);

-- Добавляем жанры артистов
insert into "Artist_genre" ("artist", "genre") values ('А. Рахман Хассан', 'Rock');
insert into "Artist_genre" ("artist", "genre") values ('МакSим', 'POP');
insert into "Artist_genre" ("artist", "genre") values ('Юлия Савичева', 'POP');
insert into "Artist_genre" ("artist", "genre") values ('Валерий Меладзе', 'Metall');
insert into "Artist_genre" ("artist", "genre") values ('Руки Вверх', 'Hard Rock');
insert into "Artist_genre" ("artist", "genre") values ('Дима Билан', 'Heavy Metall');
insert into "Artist_genre" ("artist", "genre") values ('Нюша', 'Rock');
insert into "Artist_genre" ("artist", "genre") values ('Валерия', 'Heavy Metall');
insert into "Artist_genre" ("artist", "genre") values ('Цой', 'Rock');
insert into "Artist_genre" ("artist", "genre") values ('РадиоТапок', 'Rock');

-- Добавляем альбомы артистов
insert into "artist_album" ("Artist", "Album") values ('А. Рахман Хассан', 'Al_one');
insert into "artist_album" ("Artist", "Album") values ('МакSим', 'Al_two');
insert into "artist_album" ("Artist", "Album") values ('Юлия Савичева', 'Al_three');
insert into "artist_album" ("Artist", "Album") values ('Валерий Меладзе', 'Al_four');
insert into "artist_album" ("Artist", "Album") values ('Руки Вверх', 'Al_five');
insert into "artist_album" ("Artist", "Album") values ('Дима Билан', 'Al_six');
insert into "artist_album" ("Artist", "Album") values ('Нюша', 'Al_seven');
insert into "artist_album" ("Artist", "Album") values ('Валерия', 'Al_eight');
insert into "artist_album" ("Artist", "Album") values ('Цой', 'Al_nine');
insert into "artist_album" ("Artist", "Album") values ('РадиоТапок', 'Al_ten');
