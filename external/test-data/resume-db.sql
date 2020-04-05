-- SQL Manager for PostgreSQL 6.1.0.53492
-- ---------------------------------------
-- Хост         : localhost
-- База данных  : resume
-- Версия       : PostgreSQL 10.12, compiled by Visual C++ build 1800, 64-bit



SET check_function_bodies = false;
--
-- Structure for table certificate (OID = 16396) :
--
SET search_path = public, pg_catalog;
CREATE TABLE public.certificate (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(50) NOT NULL,
    large_url varchar(255) NOT NULL,
    small_url varchar(255) NOT NULL
)
WITH (oids = false);
--
-- Definition for sequence certificate_seq (OID = 16402) :
--
CREATE SEQUENCE public.certificate_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table course (OID = 16404) :
--
CREATE TABLE public.course (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(60) NOT NULL,
    school varchar(60) NOT NULL,
    finish_date date
)
WITH (oids = false);
--
-- Definition for sequence course_seq (OID = 16407) :
--
CREATE SEQUENCE public.course_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table education (OID = 16409) :
--
CREATE TABLE public.education (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    summary varchar(100) NOT NULL,
    begin_year integer NOT NULL,
    finish_year integer,
    university text NOT NULL,
    faculty varchar(255) NOT NULL
)
WITH (oids = false);
--
-- Definition for sequence education_seq (OID = 16415) :
--
CREATE SEQUENCE public.education_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table hobby (OID = 16417) :
--
CREATE TABLE public.hobby (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(30) NOT NULL
)
WITH (oids = false);
--
-- Definition for sequence hobby_seq (OID = 16420) :
--
CREATE SEQUENCE public.hobby_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table language (OID = 16422) :
--
CREATE TABLE public.language (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(30) NOT NULL,
    level varchar(18) NOT NULL,
    type varchar(7) DEFAULT 0 NOT NULL
)
WITH (oids = false);
--
-- Definition for sequence language_seq (OID = 16426) :
--
CREATE SEQUENCE public.language_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table persistent_logins (OID = 16428) :
--
CREATE TABLE public.persistent_logins (
    username varchar(64) NOT NULL,
    series varchar(64) NOT NULL,
    token varchar(64) NOT NULL,
    last_used timestamp without time zone NOT NULL
)
WITH (oids = false);
--
-- Structure for table practic (OID = 16431) :
--
CREATE TABLE public.practic (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    "position" varchar(100) NOT NULL,
    company varchar(100) NOT NULL,
    begin_date date NOT NULL,
    finish_date date,
    responsibilities text NOT NULL,
    demo varchar(255),
    src varchar(255)
)
WITH (oids = false);
--
-- Definition for sequence practic_seq (OID = 16437) :
--
CREATE SEQUENCE public.practic_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table profile (OID = 16439) :
--
CREATE TABLE public.profile (
    id bigint NOT NULL,
    uid varchar(100) NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    birth_day date,
    phone varchar(20),
    email varchar(100),
    country varchar(60),
    city varchar(100),
    objective text,
    summary text,
    large_photo varchar(255),
    small_photo varchar(255),
    info text,
    password varchar(255) NOT NULL,
    completed boolean NOT NULL,
    created timestamp(0) without time zone DEFAULT now() NOT NULL,
    skype varchar(80),
    vkontakte varchar(255),
    facebook varchar(255),
    linkedin varchar(255),
    github varchar(255),
    stackoverflow varchar(255)
)
WITH (oids = false);
--
-- Structure for table profile_restore (OID = 16446) :
--
CREATE TABLE public.profile_restore (
    id bigint NOT NULL,
    token varchar(255) NOT NULL
)
WITH (oids = false);
--
-- Definition for sequence profile_seq (OID = 16449) :
--
CREATE SEQUENCE public.profile_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table skill (OID = 16451) :
--
CREATE TABLE public.skill (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    category varchar(50) NOT NULL,
    value text NOT NULL
)
WITH (oids = false);
--
-- Structure for table skill_category (OID = 16457) :
--
CREATE TABLE public.skill_category (
    id bigint NOT NULL,
    category varchar(50) NOT NULL
)
WITH (oids = false);
--
-- Definition for sequence skill_seq (OID = 16460) :
--
CREATE SEQUENCE public.skill_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Data for table public.certificate (OID = 16396) (LIMIT 0,28)
--
INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (1, 2, 'Mongo certificate.jpg', '/media/certificates/089b7f95-9dd0-4483-a175-cd0b3bc235da.jpg', '/media/certificates/089b7f95-9dd0-4483-a175-cd0b3bc235da-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (2, 3, 'Jee certificate.jpg', '/media/certificates/dc499550-ee90-48ac-ba1f-33008763116f.jpg', '/media/certificates/dc499550-ee90-48ac-ba1f-33008763116f-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (3, 3, 'Mongo certificate.jpg', '/media/certificates/73ceada4-5086-4216-b5f6-67de8ecebc9c.jpg', '/media/certificates/73ceada4-5086-4216-b5f6-67de8ecebc9c-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (4, 4, 'Mongo certificate.jpg', '/media/certificates/0a0196a1-ffa2-4233-a1c3-f4b2477d0a6b.jpg', '/media/certificates/0a0196a1-ffa2-4233-a1c3-f4b2477d0a6b-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (5, 5, 'Mongo certificate.jpg', '/media/certificates/a9614b56-db19-4e3f-9d2c-04aa6f66d9ef.jpg', '/media/certificates/a9614b56-db19-4e3f-9d2c-04aa6f66d9ef-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (6, 6, 'Jee certificate.jpg', '/media/certificates/b7ce1d46-74b8-41ee-95d5-31313e3dec0b.jpg', '/media/certificates/b7ce1d46-74b8-41ee-95d5-31313e3dec0b-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (7, 6, 'Mongo certificate.jpg', '/media/certificates/faa0cb4f-92e1-4ab1-b31b-20997928d78f.jpg', '/media/certificates/faa0cb4f-92e1-4ab1-b31b-20997928d78f-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (8, 7, 'Jee certificate.jpg', '/media/certificates/078f8211-5647-4f62-9d0a-5f762368c23a.jpg', '/media/certificates/078f8211-5647-4f62-9d0a-5f762368c23a-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (9, 7, 'Mongo certificate.jpg', '/media/certificates/79350e2d-49b8-4a85-88dd-c1eaa95a34c1.jpg', '/media/certificates/79350e2d-49b8-4a85-88dd-c1eaa95a34c1-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (10, 8, 'Mongo certificate.jpg', '/media/certificates/ed4c8bef-a23f-4c00-af7e-936e60eeae45.jpg', '/media/certificates/ed4c8bef-a23f-4c00-af7e-936e60eeae45-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (11, 9, 'Jee certificate.jpg', '/media/certificates/915eabe6-fbc3-479c-9630-d3d14cfc0955.jpg', '/media/certificates/915eabe6-fbc3-479c-9630-d3d14cfc0955-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (12, 9, 'Mongo certificate.jpg', '/media/certificates/d8c1e6fe-2587-4639-983b-9bdbf627c5e7.jpg', '/media/certificates/d8c1e6fe-2587-4639-983b-9bdbf627c5e7-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (13, 10, 'Mongo certificate.jpg', '/media/certificates/1584de9e-a38f-4f86-81d6-3197f34cf754.jpg', '/media/certificates/1584de9e-a38f-4f86-81d6-3197f34cf754-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (14, 12, 'Mongo certificate.jpg', '/media/certificates/f9baea59-6628-4766-b735-28a841cc71a3.jpg', '/media/certificates/f9baea59-6628-4766-b735-28a841cc71a3-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (15, 12, 'Jee certificate.jpg', '/media/certificates/fe4f8513-ff1e-40d3-98b0-cf258ec1b186.jpg', '/media/certificates/fe4f8513-ff1e-40d3-98b0-cf258ec1b186-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (16, 13, 'Jee certificate.jpg', '/media/certificates/5961a0cf-cd5a-421c-94a3-f70a113e63ea.jpg', '/media/certificates/5961a0cf-cd5a-421c-94a3-f70a113e63ea-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (17, 14, 'Jee certificate.jpg', '/media/certificates/11eb79bc-2763-4e6e-8fb5-bc1e71158ff0.jpg', '/media/certificates/11eb79bc-2763-4e6e-8fb5-bc1e71158ff0-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (18, 14, 'Mongo certificate.jpg', '/media/certificates/8ea13872-3244-493f-b36c-c5935875bb7d.jpg', '/media/certificates/8ea13872-3244-493f-b36c-c5935875bb7d-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (19, 15, 'Mongo certificate.jpg', '/media/certificates/348a1a1b-bc93-49fb-bba6-8afad64bfd90.jpg', '/media/certificates/348a1a1b-bc93-49fb-bba6-8afad64bfd90-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (20, 15, 'Jee certificate.jpg', '/media/certificates/e62889cc-59cf-4fb2-8393-20c84daee548.jpg', '/media/certificates/e62889cc-59cf-4fb2-8393-20c84daee548-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (21, 18, 'Mongo certificate.jpg', '/media/certificates/d7a113f5-3bbd-48e7-ba11-4997d4492a9c.jpg', '/media/certificates/d7a113f5-3bbd-48e7-ba11-4997d4492a9c-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (22, 19, 'Jee certificate.jpg', '/media/certificates/714ad023-2900-44a7-8202-2ced6aab40d7.jpg', '/media/certificates/714ad023-2900-44a7-8202-2ced6aab40d7-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (23, 20, 'Mongo certificate.jpg', '/media/certificates/7ed3e18c-dec6-49e6-82e8-52326c392401.jpg', '/media/certificates/7ed3e18c-dec6-49e6-82e8-52326c392401-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (24, 21, 'Mongo certificate.jpg', '/media/certificates/2e7d8b74-1aab-463f-977f-ed09de88d365.jpg', '/media/certificates/2e7d8b74-1aab-463f-977f-ed09de88d365-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (25, 21, 'Jee certificate.jpg', '/media/certificates/1e9e7d27-775e-4998-8b4d-6667e9851b94.jpg', '/media/certificates/1e9e7d27-775e-4998-8b4d-6667e9851b94-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (26, 22, 'Mongo certificate.jpg', '/media/certificates/06619804-a6cd-4b62-b2eb-9cdabc4d69d6.jpg', '/media/certificates/06619804-a6cd-4b62-b2eb-9cdabc4d69d6-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (27, 22, 'Jee certificate.jpg', '/media/certificates/df1c6da2-37f4-448c-be85-796588b6696e.jpg', '/media/certificates/df1c6da2-37f4-448c-be85-796588b6696e-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (28, 24, 'Jee certificate.jpg', '/media/certificates/592f7632-4f60-4684-9167-16b7c5b454eb.jpg', '/media/certificates/592f7632-4f60-4684-9167-16b7c5b454eb-sm.jpg');

--
-- Data for table public.course (OID = 16404) (LIMIT 0,8)
--
INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (1, 4, 'Java Advanced Course', 'SourceIt', '2018-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (2, 9, 'Java Advanced Course', 'SourceIt', '2017-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (3, 14, 'Java Advanced Course', 'SourceIt', NULL);

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (4, 16, 'Java Advanced Course', 'SourceIt', '2017-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (5, 17, 'Java Advanced Course', 'SourceIt', '2019-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (6, 18, 'Java Advanced Course', 'SourceIt', '2018-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (7, 19, 'Java Advanced Course', 'SourceIt', '2014-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (8, 23, 'Java Advanced Course', 'SourceIt', '2014-06-30');

--
-- Data for table public.education (OID = 16409) (LIMIT 0,24)
--
INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (1, 1, 'The specialist degree in Electronic Engineering', 2012, 2017, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (2, 2, 'The specialist degree in Electronic Engineering', 2007, 2012, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (3, 3, 'The specialist degree in Electronic Engineering', 2015, NULL, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (4, 4, 'The specialist degree in Electronic Engineering', 2015, NULL, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (5, 5, 'The specialist degree in Electronic Engineering', 2008, 2013, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (6, 6, 'The specialist degree in Electronic Engineering', 2009, 2014, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (7, 7, 'The specialist degree in Electronic Engineering', 2011, 2016, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (8, 8, 'The specialist degree in Electronic Engineering', 2015, NULL, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (9, 9, 'The specialist degree in Electronic Engineering', 2010, 2015, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (10, 10, 'The specialist degree in Electronic Engineering', 2008, 2013, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (11, 11, 'The specialist degree in Electronic Engineering', 2012, 2017, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (12, 12, 'The specialist degree in Electronic Engineering', 2013, 2018, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (13, 13, 'The specialist degree in Electronic Engineering', 2009, 2014, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (14, 14, 'The specialist degree in Electronic Engineering', 2014, 2019, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (15, 15, 'The specialist degree in Electronic Engineering', 2010, 2015, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (16, 16, 'The specialist degree in Electronic Engineering', 2014, 2019, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (17, 17, 'The specialist degree in Electronic Engineering', 2014, 2019, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (18, 18, 'The specialist degree in Electronic Engineering', 2013, 2018, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (19, 19, 'The specialist degree in Electronic Engineering', 2010, 2015, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (20, 20, 'The specialist degree in Electronic Engineering', 2014, 2019, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (21, 21, 'The specialist degree in Electronic Engineering', 2013, 2018, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (22, 22, 'The specialist degree in Electronic Engineering', 2010, 2015, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (23, 23, 'The specialist degree in Electronic Engineering', 2007, 2012, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (24, 24, 'The specialist degree in Electronic Engineering', 2015, NULL, '
Moscow State University named after Lomonosov, Russia', 'Computer Science');

--
-- Data for table public.hobby (OID = 16417) (LIMIT 0,120)
--
INSERT INTO hobby (id, id_profile, name)
VALUES (1, 1, 'Shooting');

INSERT INTO hobby (id, id_profile, name)
VALUES (2, 1, 'Roller skating');

INSERT INTO hobby (id, id_profile, name)
VALUES (3, 1, 'Photo');

INSERT INTO hobby (id, id_profile, name)
VALUES (4, 1, 'Darts');

INSERT INTO hobby (id, id_profile, name)
VALUES (5, 1, 'Rowing');

INSERT INTO hobby (id, id_profile, name)
VALUES (6, 2, 'Cricket');

INSERT INTO hobby (id, id_profile, name)
VALUES (7, 2, 'Music');

INSERT INTO hobby (id, id_profile, name)
VALUES (8, 2, 'Photo');

INSERT INTO hobby (id, id_profile, name)
VALUES (9, 2, 'Skateboarding');

INSERT INTO hobby (id, id_profile, name)
VALUES (10, 2, 'Automobiles');

INSERT INTO hobby (id, id_profile, name)
VALUES (11, 3, 'Movie');

INSERT INTO hobby (id, id_profile, name)
VALUES (12, 3, 'Traveling');

INSERT INTO hobby (id, id_profile, name)
VALUES (13, 3, 'Roller skating');

INSERT INTO hobby (id, id_profile, name)
VALUES (14, 3, 'Skiing');

INSERT INTO hobby (id, id_profile, name)
VALUES (15, 3, 'Book reading');

INSERT INTO hobby (id, id_profile, name)
VALUES (16, 4, 'Shooting');

INSERT INTO hobby (id, id_profile, name)
VALUES (17, 4, 'Traveling');

INSERT INTO hobby (id, id_profile, name)
VALUES (18, 4, 'Boxing');

INSERT INTO hobby (id, id_profile, name)
VALUES (19, 4, 'Kayak slalom');

INSERT INTO hobby (id, id_profile, name)
VALUES (20, 4, 'Movie');

INSERT INTO hobby (id, id_profile, name)
VALUES (21, 5, 'Skating');

INSERT INTO hobby (id, id_profile, name)
VALUES (22, 5, 'Tennis');

INSERT INTO hobby (id, id_profile, name)
VALUES (23, 5, 'Roller skating');

INSERT INTO hobby (id, id_profile, name)
VALUES (24, 5, 'Baseball');

INSERT INTO hobby (id, id_profile, name)
VALUES (25, 5, 'Animals');

INSERT INTO hobby (id, id_profile, name)
VALUES (26, 6, 'Painting');

INSERT INTO hobby (id, id_profile, name)
VALUES (27, 6, 'Automobiles');

INSERT INTO hobby (id, id_profile, name)
VALUES (28, 6, 'Cooking');

INSERT INTO hobby (id, id_profile, name)
VALUES (29, 6, 'Traveling');

INSERT INTO hobby (id, id_profile, name)
VALUES (30, 6, 'Pubs');

INSERT INTO hobby (id, id_profile, name)
VALUES (31, 7, 'Ice hockey');

INSERT INTO hobby (id, id_profile, name)
VALUES (32, 7, 'Pubs');

INSERT INTO hobby (id, id_profile, name)
VALUES (33, 7, 'Cooking');

INSERT INTO hobby (id, id_profile, name)
VALUES (34, 7, 'Painting');

INSERT INTO hobby (id, id_profile, name)
VALUES (35, 7, 'Boxing');

INSERT INTO hobby (id, id_profile, name)
VALUES (36, 8, 'Boxing');

INSERT INTO hobby (id, id_profile, name)
VALUES (37, 8, 'Cooking');

INSERT INTO hobby (id, id_profile, name)
VALUES (38, 8, 'Singing');

INSERT INTO hobby (id, id_profile, name)
VALUES (39, 8, 'Foreign lang');

INSERT INTO hobby (id, id_profile, name)
VALUES (40, 8, 'Painting');

INSERT INTO hobby (id, id_profile, name)
VALUES (41, 9, 'Collecting');

INSERT INTO hobby (id, id_profile, name)
VALUES (42, 9, 'Cooking');

INSERT INTO hobby (id, id_profile, name)
VALUES (43, 9, 'Archery');

INSERT INTO hobby (id, id_profile, name)
VALUES (44, 9, 'Fishing');

INSERT INTO hobby (id, id_profile, name)
VALUES (45, 9, 'Rowing');

INSERT INTO hobby (id, id_profile, name)
VALUES (46, 10, 'Badminton');

INSERT INTO hobby (id, id_profile, name)
VALUES (47, 10, 'Foreign lang');

INSERT INTO hobby (id, id_profile, name)
VALUES (48, 10, 'Billiards');

INSERT INTO hobby (id, id_profile, name)
VALUES (49, 10, 'Volleyball');

INSERT INTO hobby (id, id_profile, name)
VALUES (50, 10, 'Singing');

INSERT INTO hobby (id, id_profile, name)
VALUES (51, 11, 'Golf');

INSERT INTO hobby (id, id_profile, name)
VALUES (52, 11, 'Cooking');

INSERT INTO hobby (id, id_profile, name)
VALUES (53, 11, 'Movie');

INSERT INTO hobby (id, id_profile, name)
VALUES (54, 11, 'Darts');

INSERT INTO hobby (id, id_profile, name)
VALUES (55, 11, 'Foreign lang');

INSERT INTO hobby (id, id_profile, name)
VALUES (56, 12, 'Ice hockey');

INSERT INTO hobby (id, id_profile, name)
VALUES (57, 12, 'Painting');

INSERT INTO hobby (id, id_profile, name)
VALUES (58, 12, 'Skiing');

INSERT INTO hobby (id, id_profile, name)
VALUES (59, 12, 'Billiards');

INSERT INTO hobby (id, id_profile, name)
VALUES (60, 12, 'Movie');

INSERT INTO hobby (id, id_profile, name)
VALUES (61, 13, 'Pubs');

INSERT INTO hobby (id, id_profile, name)
VALUES (62, 13, 'Cycling');

INSERT INTO hobby (id, id_profile, name)
VALUES (63, 13, 'Skateboarding');

INSERT INTO hobby (id, id_profile, name)
VALUES (64, 13, 'Codding');

INSERT INTO hobby (id, id_profile, name)
VALUES (65, 13, 'Tennis');

INSERT INTO hobby (id, id_profile, name)
VALUES (66, 14, 'Weightlifting');

INSERT INTO hobby (id, id_profile, name)
VALUES (67, 14, 'Kayak slalom');

INSERT INTO hobby (id, id_profile, name)
VALUES (68, 14, 'Basketball');

INSERT INTO hobby (id, id_profile, name)
VALUES (69, 14, 'Diving');

INSERT INTO hobby (id, id_profile, name)
VALUES (70, 14, 'Games of chance');

INSERT INTO hobby (id, id_profile, name)
VALUES (71, 15, 'Archery');

INSERT INTO hobby (id, id_profile, name)
VALUES (72, 15, 'Collecting');

INSERT INTO hobby (id, id_profile, name)
VALUES (73, 15, 'Foreign lang');

INSERT INTO hobby (id, id_profile, name)
VALUES (74, 15, 'Shooting');

INSERT INTO hobby (id, id_profile, name)
VALUES (75, 15, 'Badminton');

INSERT INTO hobby (id, id_profile, name)
VALUES (76, 16, 'Traveling');

INSERT INTO hobby (id, id_profile, name)
VALUES (77, 16, 'Basketball');

INSERT INTO hobby (id, id_profile, name)
VALUES (78, 16, 'Ice hockey');

INSERT INTO hobby (id, id_profile, name)
VALUES (79, 16, 'Weightlifting');

INSERT INTO hobby (id, id_profile, name)
VALUES (80, 16, 'Volleyball');

INSERT INTO hobby (id, id_profile, name)
VALUES (81, 17, 'Basketball');

INSERT INTO hobby (id, id_profile, name)
VALUES (82, 17, 'Codding');

INSERT INTO hobby (id, id_profile, name)
VALUES (83, 17, 'Table tennis');

INSERT INTO hobby (id, id_profile, name)
VALUES (84, 17, 'Camping');

INSERT INTO hobby (id, id_profile, name)
VALUES (85, 17, 'Shooting');

INSERT INTO hobby (id, id_profile, name)
VALUES (86, 18, 'Badminton');

INSERT INTO hobby (id, id_profile, name)
VALUES (87, 18, 'Volleyball');

INSERT INTO hobby (id, id_profile, name)
VALUES (88, 18, 'Painting');

INSERT INTO hobby (id, id_profile, name)
VALUES (89, 18, 'Cycling');

INSERT INTO hobby (id, id_profile, name)
VALUES (90, 18, 'Shooting');

INSERT INTO hobby (id, id_profile, name)
VALUES (91, 19, 'Foreign lang');

INSERT INTO hobby (id, id_profile, name)
VALUES (92, 19, 'Weightlifting');

INSERT INTO hobby (id, id_profile, name)
VALUES (93, 19, 'Shopping');

INSERT INTO hobby (id, id_profile, name)
VALUES (94, 19, 'Table tennis');

INSERT INTO hobby (id, id_profile, name)
VALUES (95, 19, 'Archery');

INSERT INTO hobby (id, id_profile, name)
VALUES (96, 20, 'Ice hockey');

INSERT INTO hobby (id, id_profile, name)
VALUES (97, 20, 'Skating');

INSERT INTO hobby (id, id_profile, name)
VALUES (98, 20, 'Cricket');

INSERT INTO hobby (id, id_profile, name)
VALUES (99, 20, 'Skiing');

INSERT INTO hobby (id, id_profile, name)
VALUES (100, 20, 'Music');

INSERT INTO hobby (id, id_profile, name)
VALUES (101, 21, 'Cooking');

INSERT INTO hobby (id, id_profile, name)
VALUES (102, 21, 'Baseball');

INSERT INTO hobby (id, id_profile, name)
VALUES (103, 21, 'Football');

INSERT INTO hobby (id, id_profile, name)
VALUES (104, 21, 'Handball');

INSERT INTO hobby (id, id_profile, name)
VALUES (105, 21, 'Rowing');

INSERT INTO hobby (id, id_profile, name)
VALUES (106, 22, 'Swimming');

INSERT INTO hobby (id, id_profile, name)
VALUES (107, 22, 'Disco');

INSERT INTO hobby (id, id_profile, name)
VALUES (108, 22, 'Shooting');

INSERT INTO hobby (id, id_profile, name)
VALUES (109, 22, 'Skating');

INSERT INTO hobby (id, id_profile, name)
VALUES (110, 22, 'Table tennis');

INSERT INTO hobby (id, id_profile, name)
VALUES (111, 23, 'Shooting');

INSERT INTO hobby (id, id_profile, name)
VALUES (112, 23, 'Singing');

INSERT INTO hobby (id, id_profile, name)
VALUES (113, 23, 'Games of chance');

INSERT INTO hobby (id, id_profile, name)
VALUES (114, 23, 'Ice hockey');

INSERT INTO hobby (id, id_profile, name)
VALUES (115, 23, 'Codding');

INSERT INTO hobby (id, id_profile, name)
VALUES (116, 24, 'Shopping');

INSERT INTO hobby (id, id_profile, name)
VALUES (117, 24, 'Cycling');

INSERT INTO hobby (id, id_profile, name)
VALUES (118, 24, 'Roller skating');

INSERT INTO hobby (id, id_profile, name)
VALUES (119, 24, 'Singing');

INSERT INTO hobby (id, id_profile, name)
VALUES (120, 24, 'Automobiles');

--
-- Data for table public.language (OID = 16422) (LIMIT 0,62)
--
INSERT INTO language (id, id_profile, name, level, type)
VALUES (1, 1, 'English', 'proficiency', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (2, 1, 'English', 'proficiency', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (3, 2, 'English', 'intermediate', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (4, 3, 'English', 'beginner', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (5, 3, 'English', 'beginner', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (6, 3, 'Italian', 'advanced', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (7, 3, 'Italian', 'advanced', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (8, 4, 'English', 'beginner', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (9, 4, 'English', 'beginner', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (10, 4, 'German', 'elementary', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (11, 5, 'English', 'pre_intermediate', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (12, 6, 'English', 'beginner', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (13, 7, 'English', 'proficiency', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (14, 7, 'English', 'proficiency', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (15, 8, 'English', 'advanced', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (16, 9, 'English', 'intermediate', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (17, 9, 'English', 'intermediate', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (18, 9, 'French', 'upper_intermediate', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (19, 9, 'French', 'upper_intermediate', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (20, 10, 'English', 'elementary', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (21, 10, 'English', 'elementary', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (22, 10, 'Spanish', 'elementary', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (23, 10, 'Spanish', 'elementary', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (24, 11, 'English', 'pre_intermediate', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (25, 11, 'English', 'pre_intermediate', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (26, 12, 'English', 'proficiency', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (27, 12, 'English', 'proficiency', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (28, 12, 'Italian', 'pre_intermediate', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (29, 13, 'English', 'beginner', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (30, 13, 'English', 'beginner', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (31, 14, 'English', 'pre_intermediate', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (32, 14, 'English', 'pre_intermediate', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (33, 14, 'Spanish', 'elementary', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (34, 15, 'English', 'pre_intermediate', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (35, 16, 'English', 'pre_intermediate', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (36, 16, 'English', 'pre_intermediate', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (37, 16, 'German', 'elementary', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (38, 16, 'German', 'elementary', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (39, 17, 'English', 'beginner', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (40, 17, 'English', 'beginner', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (41, 17, 'German', 'upper_intermediate', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (42, 18, 'English', 'pre_intermediate', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (43, 18, 'English', 'pre_intermediate', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (44, 18, 'Spanish', 'upper_intermediate', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (45, 19, 'English', 'upper_intermediate', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (46, 19, 'English', 'upper_intermediate', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (47, 19, 'Italian', 'advanced', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (48, 20, 'English', 'elementary', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (49, 20, 'English', 'elementary', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (50, 20, 'French', 'intermediate', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (51, 20, 'French', 'intermediate', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (52, 21, 'English', 'elementary', 'all');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (53, 22, 'English', 'elementary', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (54, 22, 'English', 'elementary', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (55, 22, 'German', 'beginner', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (56, 22, 'German', 'beginner', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (57, 23, 'English', 'elementary', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (58, 23, 'English', 'elementary', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (59, 23, 'Italian', 'upper_intermediate', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (60, 23, 'Italian', 'upper_intermediate', 'spoken');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (61, 24, 'English', 'pre_intermediate', 'writing');

INSERT INTO language (id, id_profile, name, level, type)
VALUES (62, 24, 'English', 'pre_intermediate', 'spoken');

--
-- Data for table public.practic (OID = 16431) (LIMIT 0,45)
--
INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (1, 1, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (2, 2, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (3, 2, 'Java Base Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (4, 3, 'Java Advanced Course', 'DevStudy.net', '2020-02-05', '2020-03-05', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (5, 3, 'Java Base Course', 'DevStudy.net', '2019-11-05', '2019-12-05', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (6, 4, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (7, 4, 'Java Base Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (8, 5, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (9, 5, 'Java Base Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (10, 6, 'Java Advanced Course', 'DevStudy.net', '2020-02-05', '2020-03-05', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (11, 6, 'Java Base Course', 'DevStudy.net', '2019-11-05', '2019-12-05', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (12, 7, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (13, 7, 'Java Base Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (14, 8, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (15, 8, 'Java Base Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (16, 9, 'Java Advanced Course', 'DevStudy.net', '2020-01-05', '2020-02-05', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (17, 9, 'Java Base Course', 'DevStudy.net', '2019-10-05', '2019-11-05', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (18, 9, 'Java Core Course', 'DevStudy.net', '2019-07-05', '2019-08-05', 'Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC', NULL, NULL);

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (19, 10, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (20, 10, 'Java Base Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (21, 11, 'Java Advanced Course', 'DevStudy.net', '2019-12-05', '2020-01-05', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (22, 12, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (23, 12, 'Java Base Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (24, 13, 'Java Advanced Course', 'DevStudy.net', '2020-02-05', '2020-03-05', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (25, 13, 'Java Base Course', 'DevStudy.net', '2020-01-05', '2020-02-05', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (26, 14, 'Java Advanced Course', 'DevStudy.net', '2020-02-05', '2020-03-05', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (27, 14, 'Java Base Course', 'DevStudy.net', '2019-11-05', '2019-12-05', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (28, 14, 'Java Core Course', 'DevStudy.net', '2019-08-05', '2019-09-05', 'Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC', NULL, NULL);

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (29, 15, 'Java Advanced Course', 'DevStudy.net', '2020-01-05', '2020-02-05', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (30, 15, 'Java Base Course', 'DevStudy.net', '2019-12-05', '2020-01-05', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (31, 16, 'Java Advanced Course', 'DevStudy.net', '2020-01-05', '2020-02-05', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (32, 17, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (33, 18, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (34, 18, 'Java Base Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (35, 19, 'Java Advanced Course', 'DevStudy.net', '2020-01-05', '2020-02-05', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (36, 19, 'Java Base Course', 'DevStudy.net', '2019-10-05', '2019-11-05', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (37, 20, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (38, 20, 'Java Base Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (39, 21, 'Java Advanced Course', 'DevStudy.net', '2020-01-05', '2020-02-05', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (40, 21, 'Java Base Course', 'DevStudy.net', '2019-11-05', '2019-12-05', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (41, 22, 'Java Advanced Course', 'DevStudy.net', '2020-02-05', '2020-03-05', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (42, 22, 'Java Base Course', 'DevStudy.net', '2020-01-05', '2020-02-05', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (43, 23, 'Java Base Course', 'DevStudy.net', '2020-01-05', '2020-02-05', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (44, 24, 'Java Advanced Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (45, 24, 'Java Base Course', 'DevStudy.net', '2020-03-05', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

--
-- Data for table public.profile (OID = 16439) (LIMIT 0,24)
--
INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (1, 'aly-dutta', 'Aly', 'Dutta', '1994-12-23', '+380509194176', 'aly-dutta@gmail.com', 'Russian', 'Novosibirsk', 'Junior java developer position', 'One Java professional course with developing web application resume (Link to demo is provided)', '/media/avatar/aac8dfe5-cf48-4c10-8fa4-de318dc521fd.jpg', '/media/avatar/aac8dfe5-cf48-4c10-8fa4-de318dc521fd-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', NULL, 'https://vk.com/aly-dutta', NULL, 'https://linkedin.com/aly-dutta', 'https://github.com/aly-dutta', NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (2, 'amy-fowler', 'Amy', 'Fowler', '1991-05-19', '+380507866785', 'amy-fowler@gmail.com', 'Russian', 'Saint Petersburg', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/740ac17a-54f5-4952-bdd0-ccd601e8c08a.jpg', '/media/avatar/740ac17a-54f5-4952-bdd0-ccd601e8c08a-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', NULL, 'https://vk.com/amy-fowler', NULL, NULL, 'https://github.com/amy-fowler', NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (3, 'bernadette-rostenkowski', 'Bernadette', 'Rostenkowski', '1999-07-20', '+380501244731', 'bernadette-rostenkowski@gmail.com', 'Russian', 'Novosibirsk', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/1059aead-b6b4-4074-9842-6063c3b117e4.jpg', '/media/avatar/1059aead-b6b4-4074-9842-6063c3b117e4-sm.jpg', 'Ut non enim eleifend felis pretium feugiat. Vivamus quis mi. Phasellus a est.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', 'bernadette-rostenkowski', NULL, 'https://facebook.com/bernadette-rostenkowski', 'https://linkedin.com/bernadette-rostenkowski', 'https://github.com/bernadette-rostenkowski', 'https://stackoverflow.com/bernadette-rostenkowski');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (4, 'bertram-gilfoyle', 'Bertram', 'Gilfoyle', '1997-10-19', '+380509232431', 'bertram-gilfoyle@gmail.com', 'Russian', 'Moscow', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/56bfad35-ed33-4bf0-9fd7-ff00070ae280.jpg', '/media/avatar/56bfad35-ed33-4bf0-9fd7-ff00070ae280-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (5, 'carla-walton', 'Carla', 'Walton', '1990-02-19', '+380502413766', 'carla-walton@gmail.com', 'Russian', 'Moscow', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/1e9ee8b3-c712-4a22-8c3e-38bf625abb98.jpg', '/media/avatar/1e9ee8b3-c712-4a22-8c3e-38bf625abb98-sm.jpg', 'Sed hendrerit. Morbi ac felis. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', 'carla-walton', 'https://vk.com/carla-walton', NULL, 'https://linkedin.com/carla-walton', 'https://github.com/carla-walton', 'https://stackoverflow.com/carla-walton');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (6, 'dinesh-chugtai', 'Dinesh', 'Chugtai', '1993-07-05', '+380505725682', 'dinesh-chugtai@gmail.com', 'Russian', 'Saint Petersburg', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/e9fa8983-35a4-4b33-949f-f636525c32dc.jpg', '/media/avatar/e9fa8983-35a4-4b33-949f-f636525c32dc-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', 'dinesh-chugtai', NULL, 'https://facebook.com/dinesh-chugtai', 'https://linkedin.com/dinesh-chugtai', 'https://github.com/dinesh-chugtai', 'https://stackoverflow.com/dinesh-chugtai');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (7, 'erlich-bachmann', 'Erlich', 'Bachmann', '1993-08-25', '+380506642652', 'erlich-bachmann@gmail.com', 'Russian', 'Novosibirsk', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/7cf32200-46e8-4746-a5c8-2ad7000cd5da.jpg', '/media/avatar/7cf32200-46e8-4746-a5c8-2ad7000cd5da-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', 'erlich-bachmann', 'https://vk.com/erlich-bachmann', NULL, NULL, 'https://github.com/erlich-bachmann', NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (8, 'harold-gunderson', 'Harold', 'Gunderson', '1999-07-12', '+380508583865', 'harold-gunderson@gmail.com', 'Russian', 'Saint Petersburg', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/4b0d692f-93d3-427e-8473-d5e64c3889da.jpg', '/media/avatar/4b0d692f-93d3-427e-8473-d5e64c3889da-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', 'harold-gunderson', 'https://vk.com/harold-gunderson', 'https://facebook.com/harold-gunderson', 'https://linkedin.com/harold-gunderson', 'https://github.com/harold-gunderson', 'https://stackoverflow.com/harold-gunderson');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (9, 'howard-wolowitz', 'Howard', 'Wolowitz', '1994-02-20', '+380508579149', 'howard-wolowitz@gmail.com', 'Russian', 'Moscow', 'Junior java developer position', 'Three Java professional courses with developing one console application and two web applications: blog and resume (Links to demo are provided)', '/media/avatar/792031f5-f426-4eb2-916e-7320d2225b32.jpg', '/media/avatar/792031f5-f426-4eb2-916e-7320d2225b32-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', NULL, 'https://vk.com/howard-wolowitz', NULL, 'https://linkedin.com/howard-wolowitz', NULL, NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (10, 'jared-dunn', 'Jared', 'Dunn', '1992-11-28', '+380505192388', 'jared-dunn@gmail.com', 'Russian', 'Novosibirsk', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/6c19626c-88a6-41a5-bf1f-7df88e1e8bcc.jpg', '/media/avatar/6c19626c-88a6-41a5-bf1f-7df88e1e8bcc-sm.jpg', 'Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', 'jared-dunn', NULL, NULL, NULL, NULL, NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (11, 'jen-barber', 'Jen', 'Barber', '1995-11-09', '+380504781514', 'jen-barber@gmail.com', 'Russian', 'Saint Petersburg', 'Junior java developer position', 'One Java professional course with developing web application resume (Link to demo is provided)', '/media/avatar/ea362722-0537-439b-a29c-1bd28fa322a3.jpg', '/media/avatar/ea362722-0537-439b-a29c-1bd28fa322a3-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', 'jen-barber', 'https://vk.com/jen-barber', NULL, NULL, 'https://github.com/jen-barber', 'https://stackoverflow.com/jen-barber');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (12, 'katrina-bennett', 'Katrina', 'Bennett', '1997-11-26', '+380501187387', 'katrina-bennett@gmail.com', 'Russian', 'Moscow', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/9858ccdc-eec1-4c4a-95ff-217210888068.jpg', '/media/avatar/9858ccdc-eec1-4c4a-95ff-217210888068-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', 'katrina-bennett', 'https://vk.com/katrina-bennett', 'https://facebook.com/katrina-bennett', 'https://linkedin.com/katrina-bennett', 'https://github.com/katrina-bennett', 'https://stackoverflow.com/katrina-bennett');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (13, 'leonard-hofstadter', 'Leonard', 'Hofstadter', '1991-05-20', '+380503377176', 'leonard-hofstadter@gmail.com', 'Russian', 'Saint Petersburg', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/de7c0cd3-cc2a-46cd-9a8b-dc8a26de4255.jpg', '/media/avatar/de7c0cd3-cc2a-46cd-9a8b-dc8a26de4255-sm.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In dui magna, posuere eget, vestibulum et, tempor auctor, justo. In ac felis quis tortor malesuada pretium.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', 'leonard-hofstadter', 'https://vk.com/leonard-hofstadter', NULL, 'https://linkedin.com/leonard-hofstadter', 'https://github.com/leonard-hofstadter', 'https://stackoverflow.com/leonard-hofstadter');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (14, 'leslie-winkle', 'Leslie', 'Winkle', '1998-12-16', '+380502815445', 'leslie-winkle@gmail.com', 'Russian', 'Moscow', 'Junior java developer position', 'Three Java professional courses with developing one console application and two web applications: blog and resume (Links to demo are provided)', '/media/avatar/6f2c7b74-b9a9-452a-bd69-dd1e2353c404.jpg', '/media/avatar/6f2c7b74-b9a9-452a-bd69-dd1e2353c404-sm.jpg', 'Proin faucibus arcu quis ante. In consectetuer turpis ut velit. Nulla sit amet est.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:43', 'leslie-winkle', 'https://vk.com/leslie-winkle', 'https://facebook.com/leslie-winkle', NULL, 'https://github.com/leslie-winkle', 'https://stackoverflow.com/leslie-winkle');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (15, 'logan-sanders', 'Logan', 'Sanders', '1993-04-22', '+380502847457', 'logan-sanders@gmail.com', 'Russian', 'Saint Petersburg', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/b3491194-e8df-4996-8c3f-3ada517644e3.jpg', '/media/avatar/b3491194-e8df-4996-8c3f-3ada517644e3-sm.jpg', 'Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:44', NULL, 'https://vk.com/logan-sanders', 'https://facebook.com/logan-sanders', NULL, NULL, 'https://stackoverflow.com/logan-sanders');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (16, 'maurice-moss', 'Maurice', 'Moss', '1996-09-22', '+380508183128', 'maurice-moss@gmail.com', 'Russian', 'Novosibirsk', 'Junior java developer position', 'One Java professional course with developing web application resume (Link to demo is provided)', '/media/avatar/2528009d-24e3-4958-947a-7c9cc12d17e0.jpg', '/media/avatar/2528009d-24e3-4958-947a-7c9cc12d17e0-sm.jpg', 'Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:44', NULL, 'https://vk.com/maurice-moss', 'https://facebook.com/maurice-moss', NULL, NULL, 'https://stackoverflow.com/maurice-moss');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (17, 'mike-ross', 'Mike', 'Ross', '1998-09-18', '+380504626698', 'mike-ross@gmail.com', 'Russian', 'Moscow', 'Junior java developer position', 'One Java professional course with developing web application resume (Link to demo is provided)', '/media/avatar/ce01ccb3-6eaf-4234-88eb-ce28a42e8a04.jpg', '/media/avatar/ce01ccb3-6eaf-4234-88eb-ce28a42e8a04-sm.jpg', 'Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:44', NULL, 'https://vk.com/mike-ross', 'https://facebook.com/mike-ross', NULL, 'https://github.com/mike-ross', NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (18, 'rachel-zane', 'Rachel', 'Zane', '1997-10-15', '+380503518241', 'rachel-zane@gmail.com', 'Russian', 'Saint Petersburg', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/ffd77d89-a0d4-42f5-95b1-3189c1140d73.jpg', '/media/avatar/ffd77d89-a0d4-42f5-95b1-3189c1140d73-sm.jpg', 'Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:44', NULL, 'https://vk.com/rachel-zane', NULL, 'https://linkedin.com/rachel-zane', 'https://github.com/rachel-zane', 'https://stackoverflow.com/rachel-zane');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (19, 'rajesh-koothrappali', 'Rajesh', 'Koothrappali', '1993-05-02', '+380502244567', 'rajesh-koothrappali@gmail.com', 'Russian', 'Moscow', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/c31b8da5-f55e-459d-ba93-ccc16e265a4b.jpg', '/media/avatar/c31b8da5-f55e-459d-ba93-ccc16e265a4b-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:44', 'rajesh-koothrappali', 'https://vk.com/rajesh-koothrappali', NULL, 'https://linkedin.com/rajesh-koothrappali', NULL, 'https://stackoverflow.com/rajesh-koothrappali');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (20, 'richard-hendricks', 'Richard', 'Hendricks', '1997-06-12', '+380502884848', 'richard-hendricks@gmail.com', 'Russian', 'Moscow', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/940b05e8-4067-4e28-9e31-14d25507f968.jpg', '/media/avatar/940b05e8-4067-4e28-9e31-14d25507f968-sm.jpg', 'Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:44', 'richard-hendricks', NULL, NULL, NULL, 'https://github.com/richard-hendricks', 'https://stackoverflow.com/richard-hendricks');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (21, 'roy-trenneman', 'Roy', 'Trenneman', '1996-11-28', '+380509179675', 'roy-trenneman@gmail.com', 'Russian', 'Novosibirsk', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/be084c0d-9b86-4a0e-976a-f0bee7b69c78.jpg', '/media/avatar/be084c0d-9b86-4a0e-976a-f0bee7b69c78-sm.jpg', 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:44', 'roy-trenneman', 'https://vk.com/roy-trenneman', NULL, 'https://linkedin.com/roy-trenneman', NULL, NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (22, 'sheldon-cooper', 'Sheldon', 'Cooper', '1994-04-14', '+380504152961', 'sheldon-cooper@gmail.com', 'Russian', 'Novosibirsk', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/6b2e6878-b7ec-4844-a738-994ef0ab85dd.jpg', '/media/avatar/6b2e6878-b7ec-4844-a738-994ef0ab85dd-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:44', NULL, NULL, NULL, 'https://linkedin.com/sheldon-cooper', 'https://github.com/sheldon-cooper', NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (23, 'stuart-bloom', 'Stuart', 'Bloom', '1991-03-05', '+380502841126', 'stuart-bloom@gmail.com', 'Russian', 'Moscow', 'Junior java trainee position', 'One Java professional course with developing web application blog (Link to demo is provided)', '/media/avatar/edefa3ab-480e-4e47-af9c-73be32f729ef.jpg', '/media/avatar/edefa3ab-480e-4e47-af9c-73be32f729ef-sm.jpg', 'Praesent nec nisl a purus blandit viverra. Praesent ac massa at ligula laoreet iaculis. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:44', NULL, 'https://vk.com/stuart-bloom', 'https://facebook.com/stuart-bloom', NULL, NULL, NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow)
VALUES (24, 'trevor-evans', 'Trevor', 'Evans', '1999-12-14', '+380505763322', 'trevor-evans@gmail.com', 'Russian', 'Saint Petersburg', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/2cfb8621-8aed-43c5-af05-774e17efd4e0.jpg', '/media/avatar/2cfb8621-8aed-43c5-af05-774e17efd4e0-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-05 04:02:44', 'trevor-evans', 'https://vk.com/trevor-evans', 'https://facebook.com/trevor-evans', NULL, 'https://github.com/trevor-evans', NULL);

--
-- Data for table public.skill (OID = 16451) (LIMIT 0,216)
--
INSERT INTO skill (id, id_profile, category, value)
VALUES (1, 1, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (2, 1, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (3, 1, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery');

INSERT INTO skill (id, id_profile, category, value)
VALUES (4, 1, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (5, 1, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (6, 1, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (7, 1, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (8, 1, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (9, 1, 'Cloud', 'AWS');

INSERT INTO skill (id, id_profile, category, value)
VALUES (10, 2, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (11, 2, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (12, 2, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (13, 2, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (14, 2, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (15, 2, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (16, 2, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (17, 2, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (18, 2, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (19, 3, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (20, 3, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (21, 3, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (22, 3, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (23, 3, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (24, 3, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (25, 3, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (26, 3, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (27, 3, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (28, 4, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (29, 4, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (30, 4, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (31, 4, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (32, 4, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (33, 4, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (34, 4, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (35, 4, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (36, 4, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (37, 5, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (38, 5, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (39, 5, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (40, 5, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (41, 5, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (42, 5, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (43, 5, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (44, 5, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (45, 5, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (46, 6, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (47, 6, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (48, 6, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (49, 6, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (50, 6, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (51, 6, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (52, 6, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (53, 6, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (54, 6, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (55, 7, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (56, 7, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (57, 7, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (58, 7, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (59, 7, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (60, 7, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (61, 7, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (62, 7, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (63, 7, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (64, 8, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (65, 8, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (66, 8, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (67, 8, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (68, 8, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (69, 8, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (70, 8, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (71, 8, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (72, 8, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (73, 9, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (74, 9, 'DBMS', 'Postgresql,Mysql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (75, 9, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (76, 9, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API,Threads,IO,JAXB,GSON');

INSERT INTO skill (id, id_profile, category, value)
VALUES (77, 9, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (78, 9, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (79, 9, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (80, 9, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (81, 9, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (82, 10, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (83, 10, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (84, 10, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (85, 10, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (86, 10, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (87, 10, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (88, 10, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (89, 10, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (90, 10, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (91, 11, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (92, 11, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (93, 11, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery');

INSERT INTO skill (id, id_profile, category, value)
VALUES (94, 11, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (95, 11, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (96, 11, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (97, 11, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (98, 11, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (99, 11, 'Cloud', 'AWS');

INSERT INTO skill (id, id_profile, category, value)
VALUES (100, 12, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (101, 12, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (102, 12, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (103, 12, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (104, 12, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (105, 12, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (106, 12, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (107, 12, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (108, 12, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (109, 13, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (110, 13, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (111, 13, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (112, 13, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (113, 13, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (114, 13, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (115, 13, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (116, 13, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (117, 13, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (118, 14, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (119, 14, 'DBMS', 'Postgresql,Mysql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (120, 14, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (121, 14, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API,Threads,IO,JAXB,GSON');

INSERT INTO skill (id, id_profile, category, value)
VALUES (122, 14, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (123, 14, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (124, 14, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (125, 14, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (126, 14, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (127, 15, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (128, 15, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (129, 15, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (130, 15, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (131, 15, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (132, 15, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (133, 15, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (134, 15, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (135, 15, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (136, 16, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (137, 16, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (138, 16, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery');

INSERT INTO skill (id, id_profile, category, value)
VALUES (139, 16, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (140, 16, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (141, 16, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (142, 16, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (143, 16, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (144, 16, 'Cloud', 'AWS');

INSERT INTO skill (id, id_profile, category, value)
VALUES (145, 17, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (146, 17, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (147, 17, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery');

INSERT INTO skill (id, id_profile, category, value)
VALUES (148, 17, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (149, 17, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (150, 17, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (151, 17, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (152, 17, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (153, 17, 'Cloud', 'AWS');

INSERT INTO skill (id, id_profile, category, value)
VALUES (154, 18, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (155, 18, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (156, 18, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (157, 18, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (158, 18, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (159, 18, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (160, 18, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (161, 18, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (162, 18, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (163, 19, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (164, 19, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (165, 19, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (166, 19, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (167, 19, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (168, 19, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (169, 19, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (170, 19, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (171, 19, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (172, 20, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (173, 20, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (174, 20, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (175, 20, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (176, 20, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (177, 20, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (178, 20, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (179, 20, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (180, 20, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (181, 21, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (182, 21, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (183, 21, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (184, 21, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (185, 21, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (186, 21, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (187, 21, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (188, 21, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (189, 21, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (190, 22, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (191, 22, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (192, 22, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (193, 22, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (194, 22, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (195, 22, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (196, 22, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (197, 22, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (198, 22, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (199, 23, 'Languages', 'Java,SQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (200, 23, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (201, 23, 'Web', 'HTML,CSS,JS,Foundation,JQuery');

INSERT INTO skill (id, id_profile, category, value)
VALUES (202, 23, 'Java', 'Servlets,Logback,JSP,JSTL,JDBC,Apache Commons,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (203, 23, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (204, 23, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (205, 23, 'Web Servers', 'Tomcat');

INSERT INTO skill (id, id_profile, category, value)
VALUES (206, 23, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (207, 23, 'Cloud', 'OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (208, 24, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (209, 24, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (210, 24, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (211, 24, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (212, 24, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (213, 24, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (214, 24, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (215, 24, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (216, 24, 'Cloud', 'AWS,OpenShift');

--
-- Data for table public.skill_category (OID = 16457) (LIMIT 0,9)
--
INSERT INTO skill_category (id, category)
VALUES (1, 'Languages');

INSERT INTO skill_category (id, category)
VALUES (2, 'DBMS');

INSERT INTO skill_category (id, category)
VALUES (3, 'Web');

INSERT INTO skill_category (id, category)
VALUES (4, 'Java');

INSERT INTO skill_category (id, category)
VALUES (5, 'IDE');

INSERT INTO skill_category (id, category)
VALUES (6, 'CVS');

INSERT INTO skill_category (id, category)
VALUES (7, 'Web Servers');

INSERT INTO skill_category (id, category)
VALUES (8, 'Build system');

INSERT INTO skill_category (id, category)
VALUES (9, 'Cloud');

--
-- Definition for index certificate_idx (OID = 16494) :
--
CREATE INDEX certificate_idx ON public.certificate USING btree (id_profile);
--
-- Definition for index course_idx (OID = 16495) :
--
CREATE INDEX course_idx ON public.course USING btree (finish_date);
--
-- Definition for index course_idx1 (OID = 16496) :
--
CREATE INDEX course_idx1 ON public.course USING btree (id_profile);
--
-- Definition for index education_idx (OID = 16497) :
--
CREATE INDEX education_idx ON public.education USING btree (id_profile);
--
-- Definition for index education_idx1 (OID = 16498) :
--
CREATE INDEX education_idx1 ON public.education USING btree (finish_year);
--
-- Definition for index hobbi_idx (OID = 16499) :
--
CREATE INDEX hobbi_idx ON public.hobby USING btree (id_profile);
--
-- Definition for index language_idx (OID = 16500) :
--
CREATE INDEX language_idx ON public.language USING btree (id_profile);
--
-- Definition for index practic_idx (OID = 16501) :
--
CREATE INDEX practic_idx ON public.practic USING btree (id_profile);
--
-- Definition for index practic_idx1 (OID = 16502) :
--
CREATE INDEX practic_idx1 ON public.practic USING btree (finish_date);
--
-- Definition for index skill_idx (OID = 16503) :
--
CREATE INDEX skill_idx ON public.skill USING btree (id_profile);
--
-- Definition for index certificate_pkey (OID = 16462) :
--
ALTER TABLE ONLY certificate
    ADD CONSTRAINT certificate_pkey
    PRIMARY KEY (id);
--
-- Definition for index course_pkey (OID = 16464) :
--
ALTER TABLE ONLY course
    ADD CONSTRAINT course_pkey
    PRIMARY KEY (id);
--
-- Definition for index education_pkey (OID = 16466) :
--
ALTER TABLE ONLY education
    ADD CONSTRAINT education_pkey
    PRIMARY KEY (id);
--
-- Definition for index hobbi_pkey (OID = 16468) :
--
ALTER TABLE ONLY hobby
    ADD CONSTRAINT hobbi_pkey
    PRIMARY KEY (id);
--
-- Definition for index language_pkey (OID = 16470) :
--
ALTER TABLE ONLY language
    ADD CONSTRAINT language_pkey
    PRIMARY KEY (id);
--
-- Definition for index persistent_logins_pkey (OID = 16472) :
--
ALTER TABLE ONLY persistent_logins
    ADD CONSTRAINT persistent_logins_pkey
    PRIMARY KEY (series);
--
-- Definition for index practic_pkey (OID = 16474) :
--
ALTER TABLE ONLY practic
    ADD CONSTRAINT practic_pkey
    PRIMARY KEY (id);
--
-- Definition for index profile_email_key (OID = 16476) :
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_email_key
    UNIQUE (email);
--
-- Definition for index profile_phone_key (OID = 16478) :
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_phone_key
    UNIQUE (phone);
--
-- Definition for index profile_pkey (OID = 16480) :
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_pkey
    PRIMARY KEY (id);
--
-- Definition for index profile_restore_pkey (OID = 16482) :
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT profile_restore_pkey
    PRIMARY KEY (id);
--
-- Definition for index profile_restore_uid_key (OID = 16484) :
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT profile_restore_uid_key
    UNIQUE (token);
--
-- Definition for index profile_uid_key (OID = 16486) :
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_uid_key
    UNIQUE (uid);
--
-- Definition for index skill_category_category_key (OID = 16488) :
--
ALTER TABLE ONLY skill_category
    ADD CONSTRAINT skill_category_category_key
    UNIQUE (category);
--
-- Definition for index skill_category_pkey (OID = 16490) :
--
ALTER TABLE ONLY skill_category
    ADD CONSTRAINT skill_category_pkey
    PRIMARY KEY (id);
--
-- Definition for index skill_pkey (OID = 16492) :
--
ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_pkey
    PRIMARY KEY (id);
--
-- Definition for index certificate_fk (OID = 16504) :
--
ALTER TABLE ONLY certificate
    ADD CONSTRAINT certificate_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index course_fk (OID = 16509) :
--
ALTER TABLE ONLY course
    ADD CONSTRAINT course_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index education_fk (OID = 16514) :
--
ALTER TABLE ONLY education
    ADD CONSTRAINT education_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index hobby_fk (OID = 16519) :
--
ALTER TABLE ONLY hobby
    ADD CONSTRAINT hobby_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index language_fk (OID = 16524) :
--
ALTER TABLE ONLY language
    ADD CONSTRAINT language_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index persistent_logins_fk (OID = 16529) :
--
ALTER TABLE ONLY persistent_logins
    ADD CONSTRAINT persistent_logins_fk
    FOREIGN KEY (username) REFERENCES profile(uid) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index practic_fk (OID = 16534) :
--
ALTER TABLE ONLY practic
    ADD CONSTRAINT practic_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index profile_restore_fk (OID = 16539) :
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT profile_restore_fk
    FOREIGN KEY (id) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index skill_fk (OID = 16544) :
--
ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Data for sequence public.certificate_seq (OID = 16402)
--
SELECT pg_catalog.setval('certificate_seq', 28, true);
--
-- Data for sequence public.course_seq (OID = 16407)
--
SELECT pg_catalog.setval('course_seq', 8, true);
--
-- Data for sequence public.education_seq (OID = 16415)
--
SELECT pg_catalog.setval('education_seq', 24, true);
--
-- Data for sequence public.hobby_seq (OID = 16420)
--
SELECT pg_catalog.setval('hobby_seq', 120, true);
--
-- Data for sequence public.language_seq (OID = 16426)
--
SELECT pg_catalog.setval('language_seq', 62, true);
--
-- Data for sequence public.practic_seq (OID = 16437)
--
SELECT pg_catalog.setval('practic_seq', 45, true);
--
-- Data for sequence public.profile_seq (OID = 16449)
--
SELECT pg_catalog.setval('profile_seq', 24, true);
--
-- Data for sequence public.skill_seq (OID = 16460)
--
SELECT pg_catalog.setval('skill_seq', 216, true);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
