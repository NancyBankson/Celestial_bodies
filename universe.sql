--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(15) NOT NULL,
    orbit character varying(10)
);


ALTER TABLE public.asteroids OWNER TO postgres;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asteroids_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroid_id_seq OWNER TO postgres;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asteroids_asteroid_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(15) NOT NULL,
    distance_in_kiloparsecs integer,
    shape text,
    diameter_in_kiloparsecs numeric(5,2)
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
    name character varying(15) NOT NULL,
    planet_id integer,
    planet_name character varying(15),
    diameter_in_km numeric(8,2),
    has_water boolean
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
    name character varying(15) NOT NULL,
    star_id integer,
    number_of_moons integer,
    mass_in_earth_masses numeric(6,2),
    has_rings boolean
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
    name character varying(15) NOT NULL,
    distance_in_light_years numeric(10,2),
    galaxy_id integer,
    color character varying(10)
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
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.asteroids VALUES (1, '1Ceres', 'Mars-Jup');
INSERT INTO public.asteroids VALUES (2, '4 Vesta', 'Main belt');
INSERT INTO public.asteroids VALUES (3, 'Apophis', 'Earth app');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 'Barred spiral', 50.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 770, 'Spiral', 60.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 890, 'Spiral', 10.00);
INSERT INTO public.galaxy VALUES (4, 'Lg Magellanic', 49, 'Irregular', 7.00);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 4200, 'Elliptical', 20.00);
INSERT INTO public.galaxy VALUES (6, 'Bodes Galaxy', 3700, 'Spiral', 28.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Enceladus', 6, 'Saturn', 504.00, true);
INSERT INTO public.moon VALUES (2, 'Ganymede', 5, 'Jupiter', 5268.00, true);
INSERT INTO public.moon VALUES (3, 'Callisto', 5, 'Jupiter', 5150.00, true);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'Jupiter', 3643.00, false);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'Jupiter', 3122.00, true);
INSERT INTO public.moon VALUES (6, 'Titan', 6, 'Saturn', 5150.00, true);
INSERT INTO public.moon VALUES (7, 'Rhea', 6, 'Saturn', 1527.00, NULL);
INSERT INTO public.moon VALUES (8, 'Moon', 3, 'Earth', 3474.00, true);
INSERT INTO public.moon VALUES (9, 'Triton', 8, 'Neptune', 2707.00, NULL);
INSERT INTO public.moon VALUES (10, 'Titania', 7, 'Uranus', 1578.00, NULL);
INSERT INTO public.moon VALUES (11, 'Oberon', 7, 'Uranus', 1523.00, true);
INSERT INTO public.moon VALUES (12, 'Iapetus', 6, 'Saturn', 1469.00, true);
INSERT INTO public.moon VALUES (13, 'Dion', 6, 'Saturn', 1123.00, true);
INSERT INTO public.moon VALUES (14, 'Tethys', 6, 'Saturn', 1062.00, true);
INSERT INTO public.moon VALUES (15, 'Mimas', 6, 'Saturn', 396.00, true);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, 'Uranus', 1169.00, true);
INSERT INTO public.moon VALUES (17, 'Ariel', 7, 'Uranus', 1158.00, true);
INSERT INTO public.moon VALUES (18, 'Miranda', 7, 'Uranus', 472.00, true);
INSERT INTO public.moon VALUES (19, 'Proteus', 8, 'Neptune', 420.00, true);
INSERT INTO public.moon VALUES (20, 'Nereid', 8, 'Neptune', 340.00, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 6, 0, 0.06, false);
INSERT INTO public.planet VALUES (3, 'Earth', 6, 1, 1.00, false);
INSERT INTO public.planet VALUES (2, 'Venus', 6, 0, 0.82, false);
INSERT INTO public.planet VALUES (4, 'Mars', 6, 2, 0.11, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 6, 95, 317.80, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 146, 95.20, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 6, 28, 14.50, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 6, 16, 17.20, true);
INSERT INTO public.planet VALUES (9, 'Prox Cent b', 3, 0, 1.20, false);
INSERT INTO public.planet VALUES (10, 'Prox Cent c', 3, NULL, 7.80, NULL);
INSERT INTO public.planet VALUES (11, 'Tau Ceti g', 5, NULL, 1.75, NULL);
INSERT INTO public.planet VALUES (12, 'Tau Ceti h', 5, NULL, 1.80, NULL);
INSERT INTO public.planet VALUES (13, 'Adrian', 5, NULL, 3.93, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S Andromedae', 2500000.00, 2, 'yellow');
INSERT INTO public.star VALUES (2, 'M31 RV', 2500000.00, 2, 'red');
INSERT INTO public.star VALUES (3, 'Prox Centauri', 4.25, 1, 'red');
INSERT INTO public.star VALUES (4, 'Alpha Centauri', 4.37, 1, 'yellow');
INSERT INTO public.star VALUES (5, 'Tau Ceti', 11.90, 1, 'yellow');
INSERT INTO public.star VALUES (6, 'Sun', 0.00, 1, 'yellow');


--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asteroids_asteroid_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


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
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT USAGE ON SCHEMA public TO freecodecamp;


--
-- Name: TABLE asteroids; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.asteroids TO freecodecamp;


--
-- Name: SEQUENCE asteroids_asteroid_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON SEQUENCE public.asteroids_asteroid_id_seq TO freecodecamp;


--
-- PostgreSQL database dump complete
--


