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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (161, 2018, 'Final', 1103, 1104, 4, 2);
INSERT INTO public.games VALUES (162, 2018, 'Third Place', 1105, 1106, 2, 0);
INSERT INTO public.games VALUES (163, 2018, 'Semi-Final', 1104, 1106, 2, 1);
INSERT INTO public.games VALUES (164, 2018, 'Semi-Final', 1103, 1105, 1, 0);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 1104, 1107, 3, 2);
INSERT INTO public.games VALUES (166, 2018, 'Quarter-Final', 1106, 1108, 2, 0);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 1105, 1109, 2, 1);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 1103, 1110, 2, 0);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 1106, 1111, 2, 1);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 1108, 1112, 1, 0);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 1105, 1113, 3, 2);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 1109, 1114, 2, 0);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 1104, 1115, 2, 1);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 1107, 1116, 2, 1);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 1110, 1117, 2, 1);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 1103, 1118, 4, 3);
INSERT INTO public.games VALUES (177, 2014, 'Final', 1119, 1118, 1, 0);
INSERT INTO public.games VALUES (178, 2014, 'Third Place', 1120, 1109, 3, 0);
INSERT INTO public.games VALUES (179, 2014, 'Semi-Final', 1118, 1120, 1, 0);
INSERT INTO public.games VALUES (180, 2014, 'Semi-Final', 1119, 1109, 7, 1);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 1120, 1121, 1, 0);
INSERT INTO public.games VALUES (182, 2014, 'Quarter-Final', 1118, 1105, 1, 0);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 1109, 1111, 2, 1);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 1119, 1103, 1, 0);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 1109, 1122, 2, 1);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 1111, 1110, 2, 0);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 1103, 1123, 2, 0);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 1119, 1124, 2, 1);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 1120, 1114, 2, 1);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 1121, 1125, 2, 1);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 1118, 1112, 1, 0);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 1105, 1126, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1103, 'France');
INSERT INTO public.teams VALUES (1104, 'Croatia');
INSERT INTO public.teams VALUES (1105, 'Belgium');
INSERT INTO public.teams VALUES (1106, 'England');
INSERT INTO public.teams VALUES (1107, 'Russia');
INSERT INTO public.teams VALUES (1108, 'Sweden');
INSERT INTO public.teams VALUES (1109, 'Brazil');
INSERT INTO public.teams VALUES (1110, 'Uruguay');
INSERT INTO public.teams VALUES (1111, 'Colombia');
INSERT INTO public.teams VALUES (1112, 'Switzerland');
INSERT INTO public.teams VALUES (1113, 'Japan');
INSERT INTO public.teams VALUES (1114, 'Mexico');
INSERT INTO public.teams VALUES (1115, 'Denmark');
INSERT INTO public.teams VALUES (1116, 'Spain');
INSERT INTO public.teams VALUES (1117, 'Portugal');
INSERT INTO public.teams VALUES (1118, 'Argentina');
INSERT INTO public.teams VALUES (1119, 'Germany');
INSERT INTO public.teams VALUES (1120, 'Netherlands');
INSERT INTO public.teams VALUES (1121, 'Costa Rica');
INSERT INTO public.teams VALUES (1122, 'Chile');
INSERT INTO public.teams VALUES (1123, 'Nigeria');
INSERT INTO public.teams VALUES (1124, 'Algeria');
INSERT INTO public.teams VALUES (1125, 'Greece');
INSERT INTO public.teams VALUES (1126, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1126, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponenent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponenent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

