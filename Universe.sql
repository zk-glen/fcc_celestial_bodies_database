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
-- Name: alien_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien_life (
    alien_life_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    population_in_millions integer NOT NULL,
    hostile_to_earth boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.alien_life OWNER TO freecodecamp;

--
-- Name: alien_life_alien_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_life_alien_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_life_alien_life_id_seq OWNER TO freecodecamp;

--
-- Name: alien_life_alien_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_life_alien_life_id_seq OWNED BY public.alien_life.alien_life_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    galaxy_type character varying(255) NOT NULL,
    bigger_than_milky_way boolean NOT NULL
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
    name character varying(255) NOT NULL,
    low_gravity boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    supports_life boolean NOT NULL,
    circumference_in_km integer NOT NULL,
    age_in_millions_of_years numeric(255,0),
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance_from_earth_in_lightyears integer NOT NULL,
    is_red_star boolean NOT NULL,
    temp_in_kelvin integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: alien_life alien_life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_life ALTER COLUMN alien_life_id SET DEFAULT nextval('public.alien_life_alien_life_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: alien_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien_life VALUES (1, 'Zorgons', 'Purple-skinned, bug-eyed, humanoids', 50, false, 3);
INSERT INTO public.alien_life VALUES (2, 'Heebies', 'Cute, furry little bear-people', 5000, false, 7);
INSERT INTO public.alien_life VALUES (3, 'Xerks', 'Insectoid hive race', 20000, true, 12);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Alpha Galaxy', 'The closest galaxy', 'Normal', false);
INSERT INTO public.galaxy VALUES (2, 'Beta Galaxy', 'The second closest galaxy', 'Normal', true);
INSERT INTO public.galaxy VALUES (3, 'Gamma Galaxy', 'The third closest galaxy', 'Strange', true);
INSERT INTO public.galaxy VALUES (4, 'Delta Galaxy', 'The fourth closest galaxy', 'Strange', false);
INSERT INTO public.galaxy VALUES (5, 'Epsilon Galaxy', 'The fifth closest galaxy', 'Normal', false);
INSERT INTO public.galaxy VALUES (6, 'Zeta Galaxy', 'The sixth closest galaxy', 'Strange', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1 of Alpha 1', false, true, 3);
INSERT INTO public.moon VALUES (2, 'Moon 2 of Alpha 1', true, true, 3);
INSERT INTO public.moon VALUES (3, 'Moon 1 of Alpha 2', false, true, 4);
INSERT INTO public.moon VALUES (4, 'Moon 2 of Alpha 2', true, true, 4);
INSERT INTO public.moon VALUES (5, 'Moon 1 of Beta 1', true, true, 5);
INSERT INTO public.moon VALUES (6, 'Moon 2 of Beta 1', true, true, 5);
INSERT INTO public.moon VALUES (7, 'Moon 1 of Beta 2', false, true, 6);
INSERT INTO public.moon VALUES (8, 'Moon 2 of Beta 2', false, true, 6);
INSERT INTO public.moon VALUES (9, 'Moon 1 of Gamma 1', false, false, 7);
INSERT INTO public.moon VALUES (10, 'Moon 2 of Gamma 1', true, false, 7);
INSERT INTO public.moon VALUES (11, 'Moon 1 of Gamma 2', false, false, 8);
INSERT INTO public.moon VALUES (12, 'Moon 2 of Gamma 2', true, false, 8);
INSERT INTO public.moon VALUES (13, 'Moon 1 of Delta 1', false, true, 9);
INSERT INTO public.moon VALUES (14, 'Moon 2 of Delta 1', true, true, 9);
INSERT INTO public.moon VALUES (15, 'Moon 1 of Delta 2', false, true, 10);
INSERT INTO public.moon VALUES (16, 'Moon 2 of Delta 2', true, true, 10);
INSERT INTO public.moon VALUES (17, 'Moon 1 of Epsilon 1', true, true, 11);
INSERT INTO public.moon VALUES (18, 'Moon 1 of Epsilon 2', false, true, 12);
INSERT INTO public.moon VALUES (19, 'Moon 1 of Zeta 1', false, false, 13);
INSERT INTO public.moon VALUES (20, 'Moon 1 of Zeta 2', false, false, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Alpha Planet 1', true, 40000, 4, 2);
INSERT INTO public.planet VALUES (4, 'Alpha Planet 2', false, 45000, 5, 2);
INSERT INTO public.planet VALUES (5, 'Beta Planet 1', false, 50000, 4, 3);
INSERT INTO public.planet VALUES (6, 'Beta Planet 2', false, 35000, 4, 3);
INSERT INTO public.planet VALUES (7, 'Gamma Planet 1', true, 40000, 6, 4);
INSERT INTO public.planet VALUES (8, 'Gamma Planet 2', true, 60000, 6, 4);
INSERT INTO public.planet VALUES (9, 'Delta Planet 1', false, 50000, 8, 5);
INSERT INTO public.planet VALUES (10, 'Delta Planet 2', true, 45000, 7, 5);
INSERT INTO public.planet VALUES (11, 'Epsilon Planet 1', true, 35000, 2, 6);
INSERT INTO public.planet VALUES (12, 'Epsilon Planet 2', true, 25000, 2, 6);
INSERT INTO public.planet VALUES (13, 'Zeta Planet 1', false, 30000, 50, 7);
INSERT INTO public.planet VALUES (14, 'Zeta Planet 2', false, 80000, 55, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Alpha Star', 100, false, 6000, 1);
INSERT INTO public.star VALUES (3, 'Beta Star', 200, true, 7000, 2);
INSERT INTO public.star VALUES (4, 'Gamma Star', 300, false, 6000, 3);
INSERT INTO public.star VALUES (5, 'Delta Star', 300, true, 7000, 4);
INSERT INTO public.star VALUES (6, 'Epsilon Star', 500, false, 6000, 5);
INSERT INTO public.star VALUES (7, 'Zeta Star', 600, true, 7000, 6);


--
-- Name: alien_life_alien_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_life_alien_life_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: alien_life alien_life_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_life
    ADD CONSTRAINT alien_life_name_key UNIQUE (name);


--
-- Name: alien_life alien_life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_life
    ADD CONSTRAINT alien_life_pkey PRIMARY KEY (alien_life_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: alien_life alien_life_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_life
    ADD CONSTRAINT alien_life_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

