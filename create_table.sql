-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.2
-- PostgreSQL version: 12.0
-- Project Site: pgmodeler.io
-- Model Author: Евгений Шкатов PD-62


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: new_database | type: DATABASE --
-- -- DROP DATABASE IF EXISTS new_database;
-- CREATE DATABASE new_database;
-- -- ddl-end --
-- 

-- object: public."Track_list" | type: TABLE --
-- DROP TABLE IF EXISTS public."Track_list" CASCADE;
CREATE TABLE public."Track_list" (
	track_list_id serial NOT NULL,
	track text,
	collection text,
	CONSTRAINT "Track_list_pk" PRIMARY KEY (track_list_id)

);
-- ddl-end --
-- ALTER TABLE public."Track_list" OWNER TO postgres;
-- ddl-end --

-- object: public."Collection_track_list" | type: TABLE --
-- DROP TABLE IF EXISTS public."Collection_track_list" CASCADE;
CREATE TABLE public."Collection_track_list" (
	collection_track_list_id serial NOT NULL,
	"Track" text,
	"Year_issue" int4,
	"track_list_id_Track_list" integer,
	CONSTRAINT "Collection_track_list_pk" PRIMARY KEY (collection_track_list_id)

);
-- ddl-end --
-- ALTER TABLE public."Collection_track_list" OWNER TO postgres;
-- ddl-end --

-- object: public."Track" | type: TABLE --
-- DROP TABLE IF EXISTS public."Track" CASCADE;
CREATE TABLE public."Track" (
	track_id serial NOT NULL,
	track_name text,
	albun_id int4,
	duration integer,
	"track_list_id_Track_list" integer,
	CONSTRAINT "Track_pk" PRIMARY KEY (track_id)

);
-- ddl-end --
-- ALTER TABLE public."Track" OWNER TO postgres;
-- ddl-end --

-- object: public.albums | type: TABLE --
-- DROP TABLE IF EXISTS public.albums CASCADE;
CREATE TABLE public.albums (
	album_id serial NOT NULL,
	"Name" text,
	"Year" int4,
	"track_id_Track" integer,
	artist_album_id_artist_album integer,
	CONSTRAINT albums_pk PRIMARY KEY (album_id)

);
-- ddl-end --
-- ALTER TABLE public.albums OWNER TO postgres;
-- ddl-end --

-- object: public.artist_album | type: TABLE --
-- DROP TABLE IF EXISTS public.artist_album CASCADE;
CREATE TABLE public.artist_album (
	artist_album_id serial NOT NULL,
	"Artist" text,
	"Album" text,
	CONSTRAINT artist_album_pk PRIMARY KEY (artist_album_id)

);
-- ddl-end --
-- ALTER TABLE public.artist_album OWNER TO postgres;
-- ddl-end --

-- object: public."Artist" | type: TABLE --
-- DROP TABLE IF EXISTS public."Artist" CASCADE;
CREATE TABLE public."Artist" (
	artist_id serial NOT NULL,
	"Name" text,
	"artist_genre_id_Artist_genre" integer,
	artist_album_id_artist_album integer,
	CONSTRAINT "Artist_pk" PRIMARY KEY (artist_id)

);
-- ddl-end --
-- ALTER TABLE public."Artist" OWNER TO postgres;
-- ddl-end --

-- object: public."Artist_genre" | type: TABLE --
-- DROP TABLE IF EXISTS public."Artist_genre" CASCADE;
CREATE TABLE public."Artist_genre" (
	artist_genre_id serial NOT NULL,
	artist text,
	genre text,
	CONSTRAINT "Artist_genre_pk" PRIMARY KEY (artist_genre_id)

);
-- ddl-end --
-- ALTER TABLE public."Artist_genre" OWNER TO postgres;
-- ddl-end --

-- object: public."Genre" | type: TABLE --
-- DROP TABLE IF EXISTS public."Genre" CASCADE;
CREATE TABLE public."Genre" (
	genre_id serial NOT NULL,
	name text,
	"artist_genre_id_Artist_genre" integer,
	CONSTRAINT "Genre_pk" PRIMARY KEY (genre_id)

);
-- ddl-end --
-- ALTER TABLE public."Genre" OWNER TO postgres;
-- ddl-end --

-- object: "Track_list_fk" | type: CONSTRAINT --
-- ALTER TABLE public."Collection_track_list" DROP CONSTRAINT IF EXISTS "Track_list_fk" CASCADE;
ALTER TABLE public."Collection_track_list" ADD CONSTRAINT "Track_list_fk" FOREIGN KEY ("track_list_id_Track_list")
REFERENCES public."Track_list" (track_list_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: "Collection_track_list_uq" | type: CONSTRAINT --
-- ALTER TABLE public."Collection_track_list" DROP CONSTRAINT IF EXISTS "Collection_track_list_uq" CASCADE;
ALTER TABLE public."Collection_track_list" ADD CONSTRAINT "Collection_track_list_uq" UNIQUE ("track_list_id_Track_list");
-- ddl-end --

-- object: "Track_list_fk" | type: CONSTRAINT --
-- ALTER TABLE public."Track" DROP CONSTRAINT IF EXISTS "Track_list_fk" CASCADE;
ALTER TABLE public."Track" ADD CONSTRAINT "Track_list_fk" FOREIGN KEY ("track_list_id_Track_list")
REFERENCES public."Track_list" (track_list_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: "Track_uq" | type: CONSTRAINT --
-- ALTER TABLE public."Track" DROP CONSTRAINT IF EXISTS "Track_uq" CASCADE;
ALTER TABLE public."Track" ADD CONSTRAINT "Track_uq" UNIQUE ("track_list_id_Track_list");
-- ddl-end --

-- object: "Track_fk" | type: CONSTRAINT --
-- ALTER TABLE public.albums DROP CONSTRAINT IF EXISTS "Track_fk" CASCADE;
ALTER TABLE public.albums ADD CONSTRAINT "Track_fk" FOREIGN KEY ("track_id_Track")
REFERENCES public."Track" (track_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: albums_uq | type: CONSTRAINT --
-- ALTER TABLE public.albums DROP CONSTRAINT IF EXISTS albums_uq CASCADE;
ALTER TABLE public.albums ADD CONSTRAINT albums_uq UNIQUE ("track_id_Track");
-- ddl-end --

-- object: artist_album_fk | type: CONSTRAINT --
-- ALTER TABLE public.albums DROP CONSTRAINT IF EXISTS artist_album_fk CASCADE;
ALTER TABLE public.albums ADD CONSTRAINT artist_album_fk FOREIGN KEY (artist_album_id_artist_album)
REFERENCES public.artist_album (artist_album_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: albums_uq1 | type: CONSTRAINT --
-- ALTER TABLE public.albums DROP CONSTRAINT IF EXISTS albums_uq1 CASCADE;
ALTER TABLE public.albums ADD CONSTRAINT albums_uq1 UNIQUE (artist_album_id_artist_album);
-- ddl-end --

-- object: artist_album_fk | type: CONSTRAINT --
-- ALTER TABLE public."Artist" DROP CONSTRAINT IF EXISTS artist_album_fk CASCADE;
ALTER TABLE public."Artist" ADD CONSTRAINT artist_album_fk FOREIGN KEY (artist_album_id_artist_album)
REFERENCES public.artist_album (artist_album_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: "Artist_uq" | type: CONSTRAINT --
-- ALTER TABLE public."Artist" DROP CONSTRAINT IF EXISTS "Artist_uq" CASCADE;
ALTER TABLE public."Artist" ADD CONSTRAINT "Artist_uq" UNIQUE (artist_album_id_artist_album);
-- ddl-end --

-- object: "Artist_genre_fk" | type: CONSTRAINT --
-- ALTER TABLE public."Artist" DROP CONSTRAINT IF EXISTS "Artist_genre_fk" CASCADE;
ALTER TABLE public."Artist" ADD CONSTRAINT "Artist_genre_fk" FOREIGN KEY ("artist_genre_id_Artist_genre")
REFERENCES public."Artist_genre" (artist_genre_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: "Artist_uq1" | type: CONSTRAINT --
-- ALTER TABLE public."Artist" DROP CONSTRAINT IF EXISTS "Artist_uq1" CASCADE;
ALTER TABLE public."Artist" ADD CONSTRAINT "Artist_uq1" UNIQUE ("artist_genre_id_Artist_genre");
-- ddl-end --

-- object: "Artist_genre_fk" | type: CONSTRAINT --
-- ALTER TABLE public."Genre" DROP CONSTRAINT IF EXISTS "Artist_genre_fk" CASCADE;
ALTER TABLE public."Genre" ADD CONSTRAINT "Artist_genre_fk" FOREIGN KEY ("artist_genre_id_Artist_genre")
REFERENCES public."Artist_genre" (artist_genre_id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: "Genre_uq" | type: CONSTRAINT --
-- ALTER TABLE public."Genre" DROP CONSTRAINT IF EXISTS "Genre_uq" CASCADE;
ALTER TABLE public."Genre" ADD CONSTRAINT "Genre_uq" UNIQUE ("artist_genre_id_Artist_genre");
-- ddl-end --


