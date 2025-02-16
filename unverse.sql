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
    name character varying(200) NOT NULL,
    mass integer NOT NULL,
    size numeric(4,1) NOT NULL,
    dark_matter boolean NOT NULL,
    dark text,
    test_name character varying(225)
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
    name character varying(200) NOT NULL,
    mass integer NOT NULL,
    size numeric(4,1) NOT NULL,
    dark_matter boolean NOT NULL,
    planet_id integer,
    dark text,
    test_name character varying(225)
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
    name character varying(200) NOT NULL,
    mass integer NOT NULL,
    size numeric(4,1) NOT NULL,
    dark_matter boolean NOT NULL,
    star_id integer,
    dark text,
    test_name character varying(225)
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
    name character varying(200) NOT NULL,
    mass integer NOT NULL,
    size numeric(4,1) NOT NULL,
    dark_matter boolean NOT NULL,
    galaxy_id integer,
    dark text,
    test_name character varying(225)
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(225) NOT NULL,
    test_name character varying(225),
    test_name_test character varying(225)
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


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
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 20, 35.5, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Mesier', 20, 35.5, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel', 30, 40.0, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Mesier', 20, 35.5, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 30, 40.0, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Mesier', 20, 35.5, true, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Sirius', 10, 30.5, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Sirius', 10, 30.5, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Sirius', 10, 30.5, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Sirius', 10, 30.5, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Sirius', 10, 30.5, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Sirius', 10, 30.5, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Sirius', 10, 30.5, false, 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Sirius', 10, 30.5, false, 2, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Sirius', 10, 30.5, false, 2, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Sirius', 10, 30.5, false, 2, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Sirius', 10, 30.5, false, 2, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Sirius', 10, 30.5, false, 2, NULL, NULL);
INSERT INTO public.star VALUES (1, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Mesier', 20, 35.5, true, 2, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Cartwheel', 30, 40.0, false, 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Sirius', 10, 30.5, false, 2, NULL, NULL);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'jdjd', NULL, NULL);
INSERT INTO public.test VALUES (2, 'skssi', NULL, NULL);
INSERT INTO public.test VALUES (3, 'susus', NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 3, true);


--
-- Name: galaxy galaxy_dark_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_dark_key UNIQUE (dark);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_dark_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_dark_key UNIQUE (dark);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_dark_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_dark_key UNIQUE (dark);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_dark_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_dark_key UNIQUE (dark);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: test test_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_name UNIQUE (test_name);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


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

