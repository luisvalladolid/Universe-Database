--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: aliens; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aliens (
    aliens_id integer NOT NULL,
    name character varying(100) NOT NULL,
    name_2 character varying(100),
    name_3 character varying(100),
    name_4 character varying(100),
    nickname text
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_alien_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_alien_id_seq OWNED BY public.aliens.aliens_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    size numeric,
    has_life boolean,
    is_spherical boolean,
    nickanme text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    name_2 character varying(100),
    name_3 character varying(100),
    name_4 character varying(100),
    nickname text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_galaxy_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    name_2 character varying(100),
    name_3 character varying(100),
    name_4 character varying(100),
    nickname text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_galaxy_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    name_2 character varying(100),
    galaxy_id integer,
    name_3 character varying(100),
    name_4 character varying(100),
    nickanme text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.star_id;


--
-- Name: aliens aliens_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens ALTER COLUMN aliens_id SET DEFAULT nextval('public.aliens_alien_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: aliens; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aliens VALUES (1, 'Vanessa', 'Maria', NULL, NULL, NULL);
INSERT INTO public.aliens VALUES (2, 'Luis', 'Miguel', NULL, NULL, NULL);
INSERT INTO public.aliens VALUES (3, 'Barack', 'Obama', NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1234, 12, 1, true, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way 2', 234, 2, 1, true, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky Way 3', 234, 2, 1, true, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Milky way 4', 12, 11, 5, true, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky way 5', 12, 11, 5, true, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Milky way 6', 12, 11, 5, true, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Money', 'Mayweather', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Mooney', 'Mayweather', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Manny', 'Mayweather', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'Moon 4', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'Moon 5', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'Moon 6', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'Moon 7', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'Moon 8', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'Moon 9', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'Moon 10', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'Moon 11', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'Moon 12', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'Moon 13', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Moon 14', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'Moon 15', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'Moon 16', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'Moon 17', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'Moon 18', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'Moon 19', 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'Moon 20', 'Moon', NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Blue Planet', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (2, 'Mars', 'Red Planet', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (3, 'Saturn', 'Ring Planet', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (4, 'Planet 4', 'Planet', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (5, 'Planet 5', 'Planet', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'Planet 6', 'Planet', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, 'Planet 7', 'Planet', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (8, 'Planet 8', 'Planet', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (9, 'Planet 9', 'Planet', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Planet 10', 'Planet', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Planet 11', 'Planet', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'Planet 12', 'Planet', NULL, NULL, NULL, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'Sun', 'Red Fire', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Sun 2', 'Red Fire 2', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Sun 3', 'Red Fire 4', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Sun 4', 'Red Fire', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Sun 5', 'Red Fire', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'Sun 6', 'Red Fire', 1, NULL, NULL, NULL);


--
-- Name: aliens_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_alien_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_galaxy_id_seq', 20, true);


--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_galaxy_id_seq', 12, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 10, true);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (aliens_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: aliens name_3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT name_3 UNIQUE (name_3);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon unique_name_3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_3 UNIQUE (name_3);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: planet fk2_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk2_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk2_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk2_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

