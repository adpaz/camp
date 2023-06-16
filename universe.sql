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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    count integer NOT NULL,
    age integer,
    shape text,
    "exists" boolean,
    testing numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    count integer NOT NULL,
    age integer,
    shape text,
    "exists" boolean,
    location_id integer,
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
    name character varying(30) NOT NULL,
    count integer NOT NULL,
    age integer,
    shape text,
    "exists" boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    count integer NOT NULL,
    age integer,
    shape text,
    "exists" boolean,
    location_id integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: testing; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.testing (
    hello character varying(30) NOT NULL,
    testing_id integer NOT NULL,
    word character varying(30),
    name character varying(30),
    moon_id integer
);


ALTER TABLE public.testing OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'world', 3, 4, 'circle', true, 4);
INSERT INTO public.galaxy VALUES (3, 'kiss', 3, 4, 'circle', true, 4);
INSERT INTO public.galaxy VALUES (2, 'no', 3, 4, 'circle', true, 4);
INSERT INTO public.galaxy VALUES (4, 'no', 3, 4, 'circle', true, 4);
INSERT INTO public.galaxy VALUES (5, 'no', 3, 4, 'circle', true, 4);
INSERT INTO public.galaxy VALUES (6, 'no', 3, 4, 'circle', true, 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'no', 3, 4, 'circle', true, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (2, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (3, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (4, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (5, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (6, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (7, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (8, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (9, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (10, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (11, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (12, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (13, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (14, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (15, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (16, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (17, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (18, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (19, 'no', 3, 4, 'circle', true, NULL);
INSERT INTO public.planet VALUES (20, 'no', 3, 4, 'circle', true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.star VALUES (2, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.star VALUES (3, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.star VALUES (4, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.star VALUES (5, 'no', 3, 4, 'circle', true, NULL, NULL);
INSERT INTO public.star VALUES (1, 'no', 3, 4, 'circle', true, NULL, NULL);


--
-- Data for Name: testing; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.testing VALUES ('hello', 3, 'bye', NULL, NULL);
INSERT INTO public.testing VALUES ('ask', 1, 'hello', NULL, NULL);
INSERT INTO public.testing VALUES ('test', 2, 'ni', NULL, NULL);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 1, false);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 1, false);


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
-- Name: testing testing_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.testing
    ADD CONSTRAINT testing_pkey PRIMARY KEY (testing_id);


--
-- Name: testing unique_hello; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.testing
    ADD CONSTRAINT unique_hello UNIQUE (hello);


--
-- Name: galaxy unique_id_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id_galaxy UNIQUE (galaxy_id);


--
-- Name: planet unique_id_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_id_planet UNIQUE (planet_id);


--
-- Name: star unique_id_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_id_star UNIQUE (star_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

