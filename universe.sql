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
    name character varying(30),
    age_in_millions_of_years numeric NOT NULL,
    planet_types text NOT NULL,
    explorated boolean,
    sci_name character varying(60)
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
    name character varying(30),
    planet_types text NOT NULL,
    distance_from_earth integer NOT NULL,
    habitable boolean NOT NULL,
    sci_name character varying(60),
    planet_id integer
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
    name character varying(30),
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    explorated boolean,
    sci_name character varying(60),
    star_id integer
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
    name character varying(30),
    planet_types text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    sci_name character varying(60),
    galaxy_id integer
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    habitable boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    color character varying(30) NOT NULL,
    height numeric NOT NULL,
    name character varying(30) NOT NULL,
    sci_name character varying(60)
);


ALTER TABLE public.sun OWNER TO freecodecamp;

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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (0, 'a', 0, 'a', true, 'a');
INSERT INTO public.galaxy VALUES (1, 'b', 1, 'b', false, 'b');
INSERT INTO public.galaxy VALUES (2, 'c', 2, 'c', true, 'c');
INSERT INTO public.galaxy VALUES (3, 'd', 3, 'd', false, 'd');
INSERT INTO public.galaxy VALUES (4, 'e', 4, 'e', true, 'e');
INSERT INTO public.galaxy VALUES (5, 'f', 5, 'f', false, 'f');
INSERT INTO public.galaxy VALUES (6, 'Messier 82', 80, 'Inner planets, Ice giants', true, 'Messier 82 Sci');
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', 300, 'Terrestrial planets', false, 'Whirlpool Galaxy Sci');
INSERT INTO public.galaxy VALUES (8, 'Black Eye Galaxy', 150, 'Gas giants', true, 'Black Eye Galaxy Sci');
INSERT INTO public.galaxy VALUES (9, 'Sombrero Galaxy', 700, 'Inner planets, Terrestrial planets', false, 'Sombrero Galaxy Sci');
INSERT INTO public.galaxy VALUES (10, 'Pinwheel Galaxy', 400, 'Ice giants', true, 'Pinwheel Galaxy Sci');
INSERT INTO public.galaxy VALUES (11, 'Sunflower Galaxy', 200, 'Inner planets, Gas giants', false, 'Sunflower Galaxy Sci');
INSERT INTO public.galaxy VALUES (12, 'Sculptor Galaxy', 600, 'Terrestrial planets, Ice giants', true, 'Sculptor Galaxy Sci');
INSERT INTO public.galaxy VALUES (13, 'Cigar Galaxy', 500, 'Gas giants', false, 'Cigar Galaxy Sci');
INSERT INTO public.galaxy VALUES (14, 'Leo I', 400, 'Inner planets', true, 'Leo I Sci');
INSERT INTO public.galaxy VALUES (15, 'Leo II', 300, 'Terrestrial planets, Gas giants', false, 'Leo II Sci');
INSERT INTO public.galaxy VALUES (16, 'Leo A', 200, 'Ice giants', true, 'Leo A Sci');
INSERT INTO public.galaxy VALUES (17, 'Whale Galaxy', 150, 'Inner planets, Terrestrial planets', false, 'Whale Galaxy Sci');
INSERT INTO public.galaxy VALUES (18, 'Pegasus Dwarf', 100, 'Gas giants', true, 'Pegasus Dwarf Sci');
INSERT INTO public.galaxy VALUES (19, 'Sextans A', 50, 'Terrestrial planets, Ice giants', false, 'Sextans A Sci');
INSERT INTO public.galaxy VALUES (20, 'Sextans B', 30, 'Inner planets', true, 'Sextans B Sci');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (0, 'a', 'a', 0, true, 'a', 0);
INSERT INTO public.moon VALUES (1, 'Phobos', 'terrestrial', 9380, false, 'Phobos Sci', 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 'terrestrial', 23460, false, 'Deimos Sci', 2);
INSERT INTO public.moon VALUES (3, 'Io', 'terrestrial', 421600, false, 'Io Sci', 3);
INSERT INTO public.moon VALUES (4, 'Europa', 'terrestrial', 671034, false, 'Europa Sci', 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'terrestrial', 1070412, false, 'Ganymede Sci', 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 'terrestrial', 1882709, false, 'Callisto Sci', 6);
INSERT INTO public.moon VALUES (7, 'Mimas', 'terrestrial', 185520, false, 'Mimas Sci', 7);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'terrestrial', 238020, false, 'Enceladus Sci', 8);
INSERT INTO public.moon VALUES (9, 'Tethys', 'terrestrial', 294619, false, 'Tethys Sci', 9);
INSERT INTO public.moon VALUES (10, 'Dione', 'terrestrial', 377400, false, 'Dione Sci', 10);
INSERT INTO public.moon VALUES (11, 'Rhea', 'terrestrial', 527040, false, 'Rhea Sci', 11);
INSERT INTO public.moon VALUES (12, 'Titan', 'terrestrial', 1221860, false, 'Titan Sci', 12);
INSERT INTO public.moon VALUES (13, 'Iapetus', 'terrestrial', 3561300, false, 'Iapetus Sci', 13);
INSERT INTO public.moon VALUES (14, 'Miranda', 'terrestrial', 129390, false, 'Miranda Sci', 14);
INSERT INTO public.moon VALUES (15, 'Ariel', 'terrestrial', 191020, false, 'Ariel Sci', 15);
INSERT INTO public.moon VALUES (16, 'Umbriel', 'terrestrial', 266300, false, 'Umbriel Sci', 16);
INSERT INTO public.moon VALUES (17, 'Titania', 'terrestrial', 435840, false, 'Titania Sci', 17);
INSERT INTO public.moon VALUES (18, 'Oberon', 'terrestrial', 583520, false, 'Oberon Sci', 18);
INSERT INTO public.moon VALUES (19, 'Triton', 'terrestrial', 354760, false, 'Triton Sci', 19);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (0, 'a', 0, 0, true, 'a', 0);
INSERT INTO public.planet VALUES (1, 'Venus', 108, 5000, true, 'Venus Sci', 1);
INSERT INTO public.planet VALUES (2, 'Earth', 150, 4600, true, 'Earth Sci', 2);
INSERT INTO public.planet VALUES (3, 'Mars', 228, 4000, true, 'Mars Sci', 3);
INSERT INTO public.planet VALUES (4, 'Jupiter', 778, 6000, true, 'Jupiter Sci', 4);
INSERT INTO public.planet VALUES (5, 'Saturn', 1427, 7000, true, 'Saturn Sci', 5);
INSERT INTO public.planet VALUES (6, 'Uranus', 2871, 8000, true, 'Uranus Sci', 6);
INSERT INTO public.planet VALUES (7, 'Neptune', 4497, 8500, true, 'Neptune Sci', 7);
INSERT INTO public.planet VALUES (8, 'Pluto', 5913, 3000, true, 'Pluto Sci', 8);
INSERT INTO public.planet VALUES (9, 'Eris', 10, 2000, false, 'Eris Sci', 9);
INSERT INTO public.planet VALUES (10, 'Haumea', 13, 1500, false, 'Haumea Sci', 10);
INSERT INTO public.planet VALUES (11, 'Makemake', 14, 1000, false, 'Makemake Sci', 11);
INSERT INTO public.planet VALUES (12, 'Mer', 57, 4500, true, 'Mer Sci', 12);
INSERT INTO public.planet VALUES (13, 'Ven', 108, 4000, false, 'Ven Sci', 13);
INSERT INTO public.planet VALUES (14, 'Eart', 0, 4000, true, 'Eart Sci', 14);
INSERT INTO public.planet VALUES (15, 'Mar', 225, 3500, false, 'Mar Sci', 15);
INSERT INTO public.planet VALUES (16, 'Jupite', 588, 5000, true, 'Jupite Sci', 16);
INSERT INTO public.planet VALUES (17, 'Satur', 1190, 4800, false, 'Satur Sci', 17);
INSERT INTO public.planet VALUES (18, 'Uranu', 1770, 4700, true, 'Uranu Sci', 18);
INSERT INTO public.planet VALUES (19, 'Neptun', 2790, 4600, false, 'Neptun Sci', 19);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (0, 'a', 'a', 0, 0, 'a', 0);
INSERT INTO public.star VALUES (1, 'b', 'b', 1, 1, 'b', 1);
INSERT INTO public.star VALUES (2, 'c', 'c', 2, 2, 'c', 2);
INSERT INTO public.star VALUES (3, 'd', 'd', 3, 3, 'd', 3);
INSERT INTO public.star VALUES (4, 'e', 'e', 4, 4, 'e', 4);
INSERT INTO public.star VALUES (5, 'f', 'f', 5, 5, 'f', 5);
INSERT INTO public.star VALUES (6, 'Canopus', 'Inner planets, Terrestrial planets', 7000, 40, 'Canopus Sci', 6);
INSERT INTO public.star VALUES (7, 'Alpha Centauri B', 'Gas giants', 6000, 4, 'Alpha Centauri B Sci', 7);
INSERT INTO public.star VALUES (8, 'Rigel', 'Inner planets, Ice giants', 11000, 100, 'Rigel Sci', 8);
INSERT INTO public.star VALUES (9, 'Procyon', 'Gas giants', 8000, 11, 'Procyon Sci', 9);
INSERT INTO public.star VALUES (10, 'Achernar', 'Inner planets', 7000, 100, 'Achernar Sci', 10);
INSERT INTO public.star VALUES (11, 'Altair', 'Inner planets, Terrestrial planets', 6000, 17, 'Altair Sci', 11);
INSERT INTO public.star VALUES (12, 'Aldebaran', 'Gas giants', 12000, 60, 'Aldebaran Sci', 12);
INSERT INTO public.star VALUES (13, 'Antares', 'Inner planets, Ice giants', 13000, 400, 'Antares Sci', 13);
INSERT INTO public.star VALUES (14, 'Spica', 'Inner planets', 8000, 260, 'Spica Sci', 14);
INSERT INTO public.star VALUES (15, 'Pollux', 'Gas giants', 7000, 34, 'Pollux Sci', 15);
INSERT INTO public.star VALUES (16, 'Fomalhaut', 'Inner planets, Terrestrial planets', 3000, 25, 'Fomalhaut Sci', 16);
INSERT INTO public.star VALUES (17, 'Deneb', 'Gas giants', 15000, 1200, 'Deneb Sci', 17);
INSERT INTO public.star VALUES (18, 'Regulus', 'Inner planets', 9000, 40, 'Regulus Sci', 18);
INSERT INTO public.star VALUES (19, 'Capella', 'Inner planets, Gas giants', 7000, 42, 'Capella Sci', 19);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (0, true, 0, 'a', 0, 'a', 'a');
INSERT INTO public.sun VALUES (1, false, 1, 'b', 1, 'b', 'b');
INSERT INTO public.sun VALUES (2, true, 2, 'c', 2, 'c', 'c');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_sci_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_sci_name_key UNIQUE (sci_name);


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
-- Name: planet planet_sci_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_sci_name_key UNIQUE (sci_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: sun sun_sci_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_sci_name_key UNIQUE (sci_name);


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
-- Name: star star_galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

