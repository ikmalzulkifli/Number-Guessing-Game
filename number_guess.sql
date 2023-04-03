--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 21);
INSERT INTO public.games VALUES (2, 453, 21);
INSERT INTO public.games VALUES (3, 141, 22);
INSERT INTO public.games VALUES (4, 544, 22);
INSERT INTO public.games VALUES (5, 457, 21);
INSERT INTO public.games VALUES (6, 360, 21);
INSERT INTO public.games VALUES (7, 211, 21);
INSERT INTO public.games VALUES (8, 505, 23);
INSERT INTO public.games VALUES (9, 146, 23);
INSERT INTO public.games VALUES (10, 333, 24);
INSERT INTO public.games VALUES (11, 896, 24);
INSERT INTO public.games VALUES (12, 337, 23);
INSERT INTO public.games VALUES (13, 75, 23);
INSERT INTO public.games VALUES (14, 946, 23);
INSERT INTO public.games VALUES (15, 833, 25);
INSERT INTO public.games VALUES (16, 254, 25);
INSERT INTO public.games VALUES (17, 86, 26);
INSERT INTO public.games VALUES (18, 820, 26);
INSERT INTO public.games VALUES (19, 915, 25);
INSERT INTO public.games VALUES (20, 257, 25);
INSERT INTO public.games VALUES (21, 301, 25);
INSERT INTO public.games VALUES (22, 269, 28);
INSERT INTO public.games VALUES (23, 12, 28);
INSERT INTO public.games VALUES (24, 806, 29);
INSERT INTO public.games VALUES (25, 21, 29);
INSERT INTO public.games VALUES (26, 411, 28);
INSERT INTO public.games VALUES (27, 762, 28);
INSERT INTO public.games VALUES (28, 851, 28);
INSERT INTO public.games VALUES (29, 149, 30);
INSERT INTO public.games VALUES (30, 199, 30);
INSERT INTO public.games VALUES (31, 302, 31);
INSERT INTO public.games VALUES (32, 888, 31);
INSERT INTO public.games VALUES (33, 454, 30);
INSERT INTO public.games VALUES (34, 413, 30);
INSERT INTO public.games VALUES (35, 881, 30);
INSERT INTO public.games VALUES (36, 766, 36);
INSERT INTO public.games VALUES (37, 173, 36);
INSERT INTO public.games VALUES (38, 697, 37);
INSERT INTO public.games VALUES (39, 368, 37);
INSERT INTO public.games VALUES (40, 735, 36);
INSERT INTO public.games VALUES (41, 237, 36);
INSERT INTO public.games VALUES (42, 447, 36);
INSERT INTO public.games VALUES (43, 9, 38);
INSERT INTO public.games VALUES (44, 9, 38);
INSERT INTO public.games VALUES (45, 1, 39);
INSERT INTO public.games VALUES (46, 663, 39);
INSERT INTO public.games VALUES (47, 121, 40);
INSERT INTO public.games VALUES (48, 42, 40);
INSERT INTO public.games VALUES (49, 400, 39);
INSERT INTO public.games VALUES (50, 442, 39);
INSERT INTO public.games VALUES (51, 755, 39);
INSERT INTO public.games VALUES (52, 541, 41);
INSERT INTO public.games VALUES (53, 995, 41);
INSERT INTO public.games VALUES (54, 411, 42);
INSERT INTO public.games VALUES (55, 796, 42);
INSERT INTO public.games VALUES (56, 103, 41);
INSERT INTO public.games VALUES (57, 75, 41);
INSERT INTO public.games VALUES (58, 775, 41);
INSERT INTO public.games VALUES (59, 23, 38);
INSERT INTO public.games VALUES (60, 1, 43);
INSERT INTO public.games VALUES (61, 914, 43);
INSERT INTO public.games VALUES (62, 364, 44);
INSERT INTO public.games VALUES (63, 339, 44);
INSERT INTO public.games VALUES (64, 604, 43);
INSERT INTO public.games VALUES (65, 609, 43);
INSERT INTO public.games VALUES (66, 769, 43);
INSERT INTO public.games VALUES (67, 160, 45);
INSERT INTO public.games VALUES (68, 902, 45);
INSERT INTO public.games VALUES (69, 226, 46);
INSERT INTO public.games VALUES (70, 16, 46);
INSERT INTO public.games VALUES (71, 634, 45);
INSERT INTO public.games VALUES (72, 212, 45);
INSERT INTO public.games VALUES (73, 517, 45);
INSERT INTO public.games VALUES (74, 397, 47);
INSERT INTO public.games VALUES (75, 148, 47);
INSERT INTO public.games VALUES (76, 598, 48);
INSERT INTO public.games VALUES (77, 715, 48);
INSERT INTO public.games VALUES (78, 330, 47);
INSERT INTO public.games VALUES (79, 162, 47);
INSERT INTO public.games VALUES (80, 163, 47);
INSERT INTO public.games VALUES (81, 600, 49);
INSERT INTO public.games VALUES (82, 228, 49);
INSERT INTO public.games VALUES (83, 919, 50);
INSERT INTO public.games VALUES (84, 15, 50);
INSERT INTO public.games VALUES (85, 22, 49);
INSERT INTO public.games VALUES (86, 771, 49);
INSERT INTO public.games VALUES (87, 73, 49);
INSERT INTO public.games VALUES (88, 1, 51);
INSERT INTO public.games VALUES (89, 1, 52);
INSERT INTO public.games VALUES (90, 610, 52);
INSERT INTO public.games VALUES (91, 378, 53);
INSERT INTO public.games VALUES (92, 414, 53);
INSERT INTO public.games VALUES (93, 300, 52);
INSERT INTO public.games VALUES (94, 601, 52);
INSERT INTO public.games VALUES (95, 128, 52);
INSERT INTO public.games VALUES (96, 1, 54);
INSERT INTO public.games VALUES (97, 222, 54);
INSERT INTO public.games VALUES (98, 423, 55);
INSERT INTO public.games VALUES (99, 212, 55);
INSERT INTO public.games VALUES (100, 28, 54);
INSERT INTO public.games VALUES (101, 316, 54);
INSERT INTO public.games VALUES (102, 371, 54);
INSERT INTO public.games VALUES (103, 1, 56);
INSERT INTO public.games VALUES (104, 722, 56);
INSERT INTO public.games VALUES (105, 209, 57);
INSERT INTO public.games VALUES (106, 333, 57);
INSERT INTO public.games VALUES (107, 819, 56);
INSERT INTO public.games VALUES (108, 801, 56);
INSERT INTO public.games VALUES (109, 347, 56);
INSERT INTO public.games VALUES (110, 13, 38);
INSERT INTO public.games VALUES (111, 1, 58);
INSERT INTO public.games VALUES (112, 632, 58);
INSERT INTO public.games VALUES (113, 693, 59);
INSERT INTO public.games VALUES (114, 759, 59);
INSERT INTO public.games VALUES (115, 435, 58);
INSERT INTO public.games VALUES (116, 494, 58);
INSERT INTO public.games VALUES (117, 194, 58);
INSERT INTO public.games VALUES (118, 338, 60);
INSERT INTO public.games VALUES (119, 409, 60);
INSERT INTO public.games VALUES (120, 593, 61);
INSERT INTO public.games VALUES (121, 430, 61);
INSERT INTO public.games VALUES (122, 494, 60);
INSERT INTO public.games VALUES (123, 209, 60);
INSERT INTO public.games VALUES (124, 5, 60);
INSERT INTO public.games VALUES (125, 9, 62);
INSERT INTO public.games VALUES (126, 728, 62);
INSERT INTO public.games VALUES (127, 1, 63);
INSERT INTO public.games VALUES (128, 192, 63);
INSERT INTO public.games VALUES (129, 842, 62);
INSERT INTO public.games VALUES (130, 952, 62);
INSERT INTO public.games VALUES (131, 279, 62);
INSERT INTO public.games VALUES (132, 1, 64);
INSERT INTO public.games VALUES (133, 122, 64);
INSERT INTO public.games VALUES (134, 1, 65);
INSERT INTO public.games VALUES (135, 745, 65);
INSERT INTO public.games VALUES (136, 118, 64);
INSERT INTO public.games VALUES (137, 192, 64);
INSERT INTO public.games VALUES (138, 906, 64);
INSERT INTO public.games VALUES (139, 363, 66);
INSERT INTO public.games VALUES (140, 340, 66);
INSERT INTO public.games VALUES (141, 89, 67);
INSERT INTO public.games VALUES (142, 802, 67);
INSERT INTO public.games VALUES (143, 404, 66);
INSERT INTO public.games VALUES (144, 821, 66);
INSERT INTO public.games VALUES (145, 400, 66);
INSERT INTO public.games VALUES (146, 722, 68);
INSERT INTO public.games VALUES (147, 289, 68);
INSERT INTO public.games VALUES (148, 112, 69);
INSERT INTO public.games VALUES (149, 224, 69);
INSERT INTO public.games VALUES (150, 694, 68);
INSERT INTO public.games VALUES (151, 252, 68);
INSERT INTO public.games VALUES (152, 519, 68);
INSERT INTO public.games VALUES (153, 798, 70);
INSERT INTO public.games VALUES (154, 975, 70);
INSERT INTO public.games VALUES (155, 716, 71);
INSERT INTO public.games VALUES (156, 261, 71);
INSERT INTO public.games VALUES (157, 480, 70);
INSERT INTO public.games VALUES (158, 793, 70);
INSERT INTO public.games VALUES (159, 607, 70);
INSERT INTO public.games VALUES (160, 969, 72);
INSERT INTO public.games VALUES (161, 6, 72);
INSERT INTO public.games VALUES (162, 516, 73);
INSERT INTO public.games VALUES (163, 348, 73);
INSERT INTO public.games VALUES (164, 929, 72);
INSERT INTO public.games VALUES (165, 922, 72);
INSERT INTO public.games VALUES (166, 171, 72);
INSERT INTO public.games VALUES (167, 1, 74);
INSERT INTO public.games VALUES (168, 783, 74);
INSERT INTO public.games VALUES (169, 507, 75);
INSERT INTO public.games VALUES (170, 529, 75);
INSERT INTO public.games VALUES (171, 147, 74);
INSERT INTO public.games VALUES (172, 608, 74);
INSERT INTO public.games VALUES (173, 518, 74);
INSERT INTO public.games VALUES (174, 590, 76);
INSERT INTO public.games VALUES (175, 716, 76);
INSERT INTO public.games VALUES (176, 718, 77);
INSERT INTO public.games VALUES (177, 200, 77);
INSERT INTO public.games VALUES (178, 549, 76);
INSERT INTO public.games VALUES (179, 930, 76);
INSERT INTO public.games VALUES (180, 934, 76);
INSERT INTO public.games VALUES (181, 724, 78);
INSERT INTO public.games VALUES (182, 793, 78);
INSERT INTO public.games VALUES (183, 25, 79);
INSERT INTO public.games VALUES (184, 693, 79);
INSERT INTO public.games VALUES (185, 640, 78);
INSERT INTO public.games VALUES (186, 151, 78);
INSERT INTO public.games VALUES (187, 739, 78);
INSERT INTO public.games VALUES (188, 2, 80);
INSERT INTO public.games VALUES (189, 405, 80);
INSERT INTO public.games VALUES (190, 450, 81);
INSERT INTO public.games VALUES (191, 410, 81);
INSERT INTO public.games VALUES (192, 231, 80);
INSERT INTO public.games VALUES (193, 956, 80);
INSERT INTO public.games VALUES (194, 7, 80);
INSERT INTO public.games VALUES (195, 283, 86);
INSERT INTO public.games VALUES (196, 352, 86);
INSERT INTO public.games VALUES (197, 332, 87);
INSERT INTO public.games VALUES (198, 659, 87);
INSERT INTO public.games VALUES (199, 595, 86);
INSERT INTO public.games VALUES (200, 916, 86);
INSERT INTO public.games VALUES (201, 158, 86);
INSERT INTO public.games VALUES (202, 236, 88);
INSERT INTO public.games VALUES (203, 756, 88);
INSERT INTO public.games VALUES (204, 662, 89);
INSERT INTO public.games VALUES (205, 122, 89);
INSERT INTO public.games VALUES (206, 581, 88);
INSERT INTO public.games VALUES (207, 573, 88);
INSERT INTO public.games VALUES (208, 976, 88);
INSERT INTO public.games VALUES (209, 546, 90);
INSERT INTO public.games VALUES (210, 42, 90);
INSERT INTO public.games VALUES (211, 2, 91);
INSERT INTO public.games VALUES (212, 238, 91);
INSERT INTO public.games VALUES (213, 270, 90);
INSERT INTO public.games VALUES (214, 8, 90);
INSERT INTO public.games VALUES (215, 16, 90);
INSERT INTO public.games VALUES (216, 648, 92);
INSERT INTO public.games VALUES (217, 812, 92);
INSERT INTO public.games VALUES (218, 208, 93);
INSERT INTO public.games VALUES (219, 265, 93);
INSERT INTO public.games VALUES (220, 84, 92);
INSERT INTO public.games VALUES (221, 466, 92);
INSERT INTO public.games VALUES (222, 569, 92);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1680494590581');
INSERT INTO public.users VALUES (2, 'user_1680494590580');
INSERT INTO public.users VALUES (3, 'user_1680494706625');
INSERT INTO public.users VALUES (4, 'user_1680494706624');
INSERT INTO public.users VALUES (5, 'user_1680496291171');
INSERT INTO public.users VALUES (6, 'user_1680496291170');
INSERT INTO public.users VALUES (7, 'user_1680496687173');
INSERT INTO public.users VALUES (8, 'user_1680496687172');
INSERT INTO public.users VALUES (9, 'kimka');
INSERT INTO public.users VALUES (10, 'ok');
INSERT INTO public.users VALUES (11, 'sad');
INSERT INTO public.users VALUES (12, 'asd');
INSERT INTO public.users VALUES (13, 'sd');
INSERT INTO public.users VALUES (14, 'sdadas');
INSERT INTO public.users VALUES (15, 'user_1680497470532');
INSERT INTO public.users VALUES (16, 'user_1680497470531');
INSERT INTO public.users VALUES (17, 'user_1680497962020');
INSERT INTO public.users VALUES (18, 'user_1680497962019');
INSERT INTO public.users VALUES (19, 'user_1680497998996');
INSERT INTO public.users VALUES (20, 'user_1680497998995');
INSERT INTO public.users VALUES (21, 'user_1680498167604');
INSERT INTO public.users VALUES (22, 'user_1680498167603');
INSERT INTO public.users VALUES (23, 'user_1680498245094');
INSERT INTO public.users VALUES (24, 'user_1680498245093');
INSERT INTO public.users VALUES (25, 'user_1680498289420');
INSERT INTO public.users VALUES (26, 'user_1680498289419');
INSERT INTO public.users VALUES (27, 'ikmal');
INSERT INTO public.users VALUES (28, 'user_1680504146437');
INSERT INTO public.users VALUES (29, 'user_1680504146436');
INSERT INTO public.users VALUES (30, 'user_1680504235003');
INSERT INTO public.users VALUES (31, 'user_1680504235002');
INSERT INTO public.users VALUES (32, 'user_1680504478423');
INSERT INTO public.users VALUES (33, 'user_1680504478422');
INSERT INTO public.users VALUES (34, 'user_1680504734972');
INSERT INTO public.users VALUES (35, 'user_1680504734971');
INSERT INTO public.users VALUES (36, 'user_1680504870328');
INSERT INTO public.users VALUES (37, 'user_1680504870327');
INSERT INTO public.users VALUES (38, 'farah');
INSERT INTO public.users VALUES (39, 'user_1680504973415');
INSERT INTO public.users VALUES (40, 'user_1680504973414');
INSERT INTO public.users VALUES (41, 'user_1680505045509');
INSERT INTO public.users VALUES (42, 'user_1680505045508');
INSERT INTO public.users VALUES (43, 'user_1680505168468');
INSERT INTO public.users VALUES (44, 'user_1680505168467');
INSERT INTO public.users VALUES (45, 'user_1680505202080');
INSERT INTO public.users VALUES (46, 'user_1680505202079');
INSERT INTO public.users VALUES (47, 'user_1680505229376');
INSERT INTO public.users VALUES (48, 'user_1680505229375');
INSERT INTO public.users VALUES (49, 'user_1680505276008');
INSERT INTO public.users VALUES (50, 'user_1680505276007');
INSERT INTO public.users VALUES (51, 'user_1680505301098');
INSERT INTO public.users VALUES (52, 'user_1680505342109');
INSERT INTO public.users VALUES (53, 'user_1680505342108');
INSERT INTO public.users VALUES (54, 'user_1680505597243');
INSERT INTO public.users VALUES (55, 'user_1680505597242');
INSERT INTO public.users VALUES (56, 'user_1680505852971');
INSERT INTO public.users VALUES (57, 'user_1680505852970');
INSERT INTO public.users VALUES (58, 'user_1680505921577');
INSERT INTO public.users VALUES (59, 'user_1680505921576');
INSERT INTO public.users VALUES (60, 'user_1680505948143');
INSERT INTO public.users VALUES (61, 'user_1680505948142');
INSERT INTO public.users VALUES (62, 'user_1680505975551');
INSERT INTO public.users VALUES (63, 'user_1680505975550');
INSERT INTO public.users VALUES (64, 'user_1680506023822');
INSERT INTO public.users VALUES (65, 'user_1680506023821');
INSERT INTO public.users VALUES (66, 'user_1680506033632');
INSERT INTO public.users VALUES (67, 'user_1680506033631');
INSERT INTO public.users VALUES (68, 'user_1680506064955');
INSERT INTO public.users VALUES (69, 'user_1680506064954');
INSERT INTO public.users VALUES (70, 'user_1680506076036');
INSERT INTO public.users VALUES (71, 'user_1680506076035');
INSERT INTO public.users VALUES (72, 'user_1680506088079');
INSERT INTO public.users VALUES (73, 'user_1680506088078');
INSERT INTO public.users VALUES (74, 'user_1680506137407');
INSERT INTO public.users VALUES (75, 'user_1680506137406');
INSERT INTO public.users VALUES (76, 'user_1680506189926');
INSERT INTO public.users VALUES (77, 'user_1680506189925');
INSERT INTO public.users VALUES (78, 'user_1680506236067');
INSERT INTO public.users VALUES (79, 'user_1680506236066');
INSERT INTO public.users VALUES (80, 'user_1680506275738');
INSERT INTO public.users VALUES (81, 'user_1680506275737');
INSERT INTO public.users VALUES (82, 'user_1680506288877');
INSERT INTO public.users VALUES (83, 'user_1680506288876');
INSERT INTO public.users VALUES (84, 'user_1680506310519');
INSERT INTO public.users VALUES (85, 'user_1680506310518');
INSERT INTO public.users VALUES (86, 'user_1680506392772');
INSERT INTO public.users VALUES (87, 'user_1680506392771');
INSERT INTO public.users VALUES (88, 'user_1680506423827');
INSERT INTO public.users VALUES (89, 'user_1680506423826');
INSERT INTO public.users VALUES (90, 'user_1680506438838');
INSERT INTO public.users VALUES (91, 'user_1680506438837');
INSERT INTO public.users VALUES (92, 'user_1680506546241');
INSERT INTO public.users VALUES (93, 'user_1680506546240');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 222, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_id_seq', 93, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

