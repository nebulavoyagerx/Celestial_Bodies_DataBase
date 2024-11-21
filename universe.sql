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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_types character varying(40),
    distance_from_earth numeric(4,1),
    name character varying(30) NOT NULL
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
-- Name: made_tables; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.made_tables (
    made_tables_id integer NOT NULL,
    name character varying(20),
    have_you_made_them boolean NOT NULL
);


ALTER TABLE public.made_tables OWNER TO freecodecamp;

--
-- Name: made_tables_made_tables_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.made_tables_made_tables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.made_tables_made_tables_id_seq OWNER TO freecodecamp;

--
-- Name: made_tables_made_tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.made_tables_made_tables_id_seq OWNED BY public.made_tables.made_tables_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer,
    planet_id integer,
    name character varying(30) NOT NULL
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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(40),
    distance_from_earth numeric(4,1),
    star_id integer,
    name character varying(30) NOT NULL
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
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric(4,1),
    galaxy_id integer,
    name character varying(30) NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: made_tables made_tables_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.made_tables ALTER COLUMN made_tables_id SET DEFAULT nextval('public.made_tables_made_tables_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Great spiral galaxy in  constellation andromeda', 10000, 'Elliptical', 2.5, 'Andromeda Galaxy');
INSERT INTO public.galaxy VALUES (2, 'named after constellation canis major', NULL, NULL, 0.0, 'Canis Major Dwarf Galaxy');
INSERT INTO public.galaxy VALUES (3, 'lies in northern constellation cygnus', 3, 'Double', 500.0, 'Cygnus A Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Lies near the border of constellations perseus and cassiopeia', 10000, 'Spiral', 9.8, 'Maffei 1 and 2 Galaxy');
INSERT INTO public.galaxy VALUES (5, 'Galaxy in which earth resides', 13681, 'Spiral', NULL, 'Milkyway Galaxy');
INSERT INTO public.galaxy VALUES (6, 'Galaxy in constellation virgo', 53, 'Elliptical', 55.0, 'M87 Galaxy');


--
-- Data for Name: made_tables; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.made_tables VALUES (1, 'Galaxy', true);
INSERT INTO public.made_tables VALUES (2, 'Star', true);
INSERT INTO public.made_tables VALUES (3, 'Planet', true);
INSERT INTO public.made_tables VALUES (4, 'Moon', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth Moon', 4530, 1, 'Earth Moon');
INSERT INTO public.moon VALUES (2, 'Phobos', 4503, 4, 'Phobos');
INSERT INTO public.moon VALUES (3, 'Deimos', 4503, 4, 'Deimos');
INSERT INTO public.moon VALUES (4, 'Europa', 4503, 5, 'Europa');
INSERT INTO public.moon VALUES (5, 'Ganymede', 4503, 5, 'Ganymede');
INSERT INTO public.moon VALUES (6, 'Lo', 4503, 5, 'Lo');
INSERT INTO public.moon VALUES (7, 'Callisto', 4503, 5, 'Callisto');
INSERT INTO public.moon VALUES (8, 'Amalthea', 4503, 5, 'Amalthea');
INSERT INTO public.moon VALUES (9, 'Carme', 4503, 5, 'Carme');
INSERT INTO public.moon VALUES (10, 'Jupiter LXI', 4503, 5, 'Jupiter LXI');
INSERT INTO public.moon VALUES (11, 'Himalia', 4503, 5, 'Himalia');
INSERT INTO public.moon VALUES (12, 'Sponde', 4503, 5, 'Sponde');
INSERT INTO public.moon VALUES (13, 'Elara', 4503, 5, 'Elara');
INSERT INTO public.moon VALUES (14, 'Thebe', 4503, 5, 'Thebe');
INSERT INTO public.moon VALUES (15, 'Erinome', 4503, 5, 'Erinome');
INSERT INTO public.moon VALUES (16, 'Aitne', 4503, 5, 'Aitne');
INSERT INTO public.moon VALUES (17, 'Mimas', 10, 6, 'Mimas');
INSERT INTO public.moon VALUES (18, 'Titan', 100, 6, 'Titan');
INSERT INTO public.moon VALUES (19, 'Rhea', 5, 6, 'Rhea');
INSERT INTO public.moon VALUES (20, 'Phoebe', 3, 6, 'Phoebe');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 5, 'terrestrial planet', 0.0, 5, 'Earth');
INSERT INTO public.planet VALUES (2, 'Mercury', false, true, 5, 'terrestrial planet', 137.4, 5, 'Mercury');
INSERT INTO public.planet VALUES (3, 'Venus', false, true, 5, 'terrestrial planet', 156.1, 5, 'Venus');
INSERT INTO public.planet VALUES (4, 'Mars', false, true, 5, 'terrestrial planet', 140.0, 5, 'Mars');
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 5, 'gas giant planet', 616.9, 5, 'Jupiter');
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 5, 'gas giant planet', 120.0, 5, 'Saturn');
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 5, 'ice giant planet', 277.0, 5, 'Uranus');
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 5, 'ice giant planet', 440.0, 5, 'Neptune');
INSERT INTO public.planet VALUES (9, 'Pluto', false, true, 5, 'dwarf planet', NULL, 5, 'Pluto');
INSERT INTO public.planet VALUES (10, 'Araes', true, true, 5, 'second planet', NULL, 3, 'Araes');
INSERT INTO public.planet VALUES (11, 'Hyperion', true, true, NULL, 'third planet', NULL, 3, 'Hyperion');
INSERT INTO public.planet VALUES (12, 'Tyloo', true, true, NULL, 'farthest dward planet', NULL, 3, 'Tyloo');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Brightest star is a binary star and part of pegasus', 60, 96.9, 1, 'Alpheratz');
INSERT INTO public.star VALUES (2, 'Colorful and Binary star in Andromeda Galaxy', NULL, 355.5, 1, 'Gamma Andromedae');
INSERT INTO public.star VALUES (3, 'Largest White Star in Cygnus A', 10, 261.6, 3, 'Deneb');
INSERT INTO public.star VALUES (4, 'Blue-White Giant star of spectral class B9', NULL, 166.3, 3, 'delta Cygni');
INSERT INTO public.star VALUES (5, 'Earth revolves around sun', 4605, NULL, 5, 'Sun');
INSERT INTO public.star VALUES (6, 'Red SuperGiant star in orion constellation', 10, 700.0, 5, 'Betelgeuse');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: made_tables_made_tables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.made_tables_made_tables_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: made_tables made_tables_made_tables_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.made_tables
    ADD CONSTRAINT made_tables_made_tables_id_key UNIQUE (made_tables_id);


--
-- Name: made_tables made_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.made_tables
    ADD CONSTRAINT made_tables_pkey PRIMARY KEY (made_tables_id);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


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

