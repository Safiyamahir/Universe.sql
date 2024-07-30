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
    name character varying(20) NOT NULL,
    has_life boolean,
    distance_from_earth numeric,
    color text
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
    name character varying(20) NOT NULL,
    descrpition text,
    age integer,
    radius integer,
    water boolean,
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
    name character varying(20) NOT NULL,
    description text,
    planet_types boolean,
    age integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_plant_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_plant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_plant_id_seq OWNER TO freecodecamp;

--
-- Name: planet_plant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_plant_id_seq OWNED BY public.planet.planet_id;


--
-- Name: rockets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rockets (
    rockets_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    water boolean,
    life boolean,
    age integer,
    radius integer
);


ALTER TABLE public.rockets OWNER TO freecodecamp;

--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rockets_rockets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rockets_rockets_id_seq OWNER TO freecodecamp;

--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rockets_rockets_id_seq OWNED BY public.rockets.rockets_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description text,
    star_types integer,
    is_spherical boolean NOT NULL,
    water boolean,
    name character varying(20),
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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_plant_id_seq'::regclass);


--
-- Name: rockets rockets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets ALTER COLUMN rockets_id SET DEFAULT nextval('public.rockets_rockets_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'cigar', true, 1250, NULL);
INSERT INTO public.galaxy VALUES (2, 'milky way', false, 3250, NULL);
INSERT INTO public.galaxy VALUES (3, 'comet', true, 7250, NULL);
INSERT INTO public.galaxy VALUES (4, 'canis major', true, 5980, NULL);
INSERT INTO public.galaxy VALUES (5, 'backward', false, 1150, NULL);
INSERT INTO public.galaxy VALUES (6, 'black eagle', true, 6250, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Blue', 'Bright', 900, 50, false, 1);
INSERT INTO public.moon VALUES (3, 'Red', 'Hot', 1100, 40, true, 12);
INSERT INTO public.moon VALUES (4, 'Green', 'Cool', 800, 60, false, 10);
INSERT INTO public.moon VALUES (5, 'Yellow', 'Sunny', 950, 55, true, 2);
INSERT INTO public.moon VALUES (6, 'Purple', 'Mysterious', 1000, 65, false, 2);
INSERT INTO public.moon VALUES (7, 'White', 'Shiny', 1200, 70, true, 6);
INSERT INTO public.moon VALUES (8, 'Black', 'Dark', 1300, 75, false, 5);
INSERT INTO public.moon VALUES (9, 'Gray', 'Neutral', 850, 80, true, 4);
INSERT INTO public.moon VALUES (10, 'Orange', 'Warm', 1150, 85, false, 10);
INSERT INTO public.moon VALUES (11, 'Brown', 'Earthy', 950, 90, true, 11);
INSERT INTO public.moon VALUES (12, 'Silver', 'Glittery', 1100, 95, false, 7);
INSERT INTO public.moon VALUES (13, 'Gold', 'Rich', 1250, 100, true, 8);
INSERT INTO public.moon VALUES (14, 'Copper', 'Rustic', 1050, 105, false, 6);
INSERT INTO public.moon VALUES (15, 'Bronze', 'Antique', 980, 110, true, 2);
INSERT INTO public.moon VALUES (16, 'Maroon', 'Deep', 1000, 115, false, 1);
INSERT INTO public.moon VALUES (17, 'Beige', 'Soft', 900, 120, true, 4);
INSERT INTO public.moon VALUES (18, 'Teal', 'Calm', 1150, 125, false, 3);
INSERT INTO public.moon VALUES (19, 'Ivory', 'Elegant', 1050, 130, true, 2);
INSERT INTO public.moon VALUES (20, 'Rose', 'Sweet', 950, 135, false, 1);
INSERT INTO public.moon VALUES (21, 'Lightblue', 'Calm', 1000, 140, true, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'venus', 'second planet from the sun', true, 4500, 1);
INSERT INTO public.planet VALUES (2, 'earth', 'our home planet', true, 4500, 1);
INSERT INTO public.planet VALUES (3, 'mars', 'the red planet', true, 4600, 6);
INSERT INTO public.planet VALUES (4, 'jupiter', 'the largest planet', true, 4600, 1);
INSERT INTO public.planet VALUES (5, 'saturn', 'known for its rings', true, 4600, 3);
INSERT INTO public.planet VALUES (6, 'uranus', 'has a unique tilt', true, 4600, 4);
INSERT INTO public.planet VALUES (7, 'neptune', 'farthest from the sun', true, 4600, 6);
INSERT INTO public.planet VALUES (8, 'pluto', 'dwarf planet', false, 4500, 5);
INSERT INTO public.planet VALUES (9, 'ceres', 'largest object in the asteroid belt', false, 4500, 4);
INSERT INTO public.planet VALUES (10, 'haumea', 'oval-shaped dwarf planet', false, 4500, 4);
INSERT INTO public.planet VALUES (11, 'makemake', 'dwarf planet in the Kuiper belt', false, 4500, 1);
INSERT INTO public.planet VALUES (12, 'eris', 'one of the largest known dwarf planets', false, 4500, 2);


--
-- Data for Name: rockets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rockets VALUES (1, 'delta', 'not successful', true, true, 1250, 50);
INSERT INTO public.rockets VALUES (2, 'My Shahuls rocket', 'THE BIGGEST ROCKET ON EARTH', false, false, 55, 1025);
INSERT INTO public.rockets VALUES (3, 'delta 2', 'reusable rocket by SpaceX', false, false, 10, 4);
INSERT INTO public.rockets VALUES (4, 'leo', 'launched many satellites', false, false, 63, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'nice', 3, true, true, 'cancer', 1);
INSERT INTO public.star VALUES (2, 'green color', 8, true, true, 'cassio', 1);
INSERT INTO public.star VALUES (3, 'dull', 5, true, false, 'canyx', 4);
INSERT INTO public.star VALUES (4, 'dots on the surface', 7, false, true, 'Lynx', 6);
INSERT INTO public.star VALUES (5, 'bright red', 4, true, false, 'Aldebaran', 3);
INSERT INTO public.star VALUES (6, 'very large', 9, true, false, 'Antares', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_plant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_plant_id_seq', 1, false);


--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rockets_rockets_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: rockets rockets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_pkey PRIMARY KEY (rockets_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galay_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galay_name UNIQUE (name);


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
-- Name: rockets unique_rockets_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT unique_rockets_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

