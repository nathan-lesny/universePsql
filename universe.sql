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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    name character varying(40)
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
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer NOT NULL,
    name character varying(40),
    is_spherical boolean,
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
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer NOT NULL,
    name character varying(40),
    has_life boolean,
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
    age_in_millions_of_years integer,
    distance_from_earth integer NOT NULL,
    star_id integer NOT NULL,
    description text,
    name character varying(40),
    mass numeric(8,1),
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'North America', 'North of Equator', 3);
INSERT INTO public.continent VALUES (2, 'South America', 'South of Equator', 3);
INSERT INTO public.continent VALUES (3, 'Europe', 'North of Equator', 3);
INSERT INTO public.continent VALUES (4, 'Asia', 'North of Equator', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral Galaxy', 13610, 0, 'Milky Way Galaxy');
INSERT INTO public.galaxy VALUES (2, 'Barred Spiral Galaxy', 10000, 2570000, 'Andromeda Galaxy');
INSERT INTO public.galaxy VALUES (3, 'Undetermined type', 13000, 30000000, 'Sombrero Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Grand-design Spiral Galaxy', 400, 23000000, 'Whirlpool Galaxy');
INSERT INTO public.galaxy VALUES (5, 'Face On Spiral Galaxy', 10000, 21000000, 'Pinwheel Galaxy');
INSERT INTO public.galaxy VALUES (6, 'Starburst Galaxy', 500, 12000000, 'Cigar Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Rocky', 4500, 238000, 'Moon', true, 3);
INSERT INTO public.moon VALUES (2, 'Rocky', 4500, 446000000, 'Europa', true, 5);
INSERT INTO public.moon VALUES (3, 'Rocky', 4500, 446000000, 'Io', true, 5);
INSERT INTO public.moon VALUES (4, 'Rocky', 4500, 446000000, 'Ganymede', true, 5);
INSERT INTO public.moon VALUES (5, 'Rocky', 4500, 446000000, 'Callisto', true, 5);
INSERT INTO public.moon VALUES (6, 'Rocky', 4500, 446000000, 'Jupiter LXI', true, 5);
INSERT INTO public.moon VALUES (7, 'Rocky', 4500, 446000000, 'Himalia', true, 5);
INSERT INTO public.moon VALUES (8, 'Rocky', 4500, 446000000, 'Amalthea', false, 5);
INSERT INTO public.moon VALUES (9, 'Rocky', 4500, 446000000, 'Kallichore', false, 5);
INSERT INTO public.moon VALUES (10, 'Rocky', 4500, 446000000, 'Cyllene', true, 5);
INSERT INTO public.moon VALUES (11, 'Rocky', 4500, 225000000, 'Phobos', false, 4);
INSERT INTO public.moon VALUES (12, 'Rocky', 4500, 225000000, 'Deimos', false, 4);
INSERT INTO public.moon VALUES (14, 'Rocky', 4500, 817000000, 'Titan', true, 6);
INSERT INTO public.moon VALUES (15, 'Rocky', 4500, 817000000, 'Mimas', true, 6);
INSERT INTO public.moon VALUES (16, 'Rocky', 4500, 817000000, 'Tethys', true, 6);
INSERT INTO public.moon VALUES (17, 'Rocky', 4500, 817000000, 'Iapetus', true, 6);
INSERT INTO public.moon VALUES (18, 'Rocky', 4500, 817000000, 'Rhea', true, 6);
INSERT INTO public.moon VALUES (19, 'Rocky', 4500, 817000000, 'Enceladus', true, 6);
INSERT INTO public.moon VALUES (20, 'Rocky', 4500, 817000000, 'Dione', true, 6);
INSERT INTO public.moon VALUES (21, 'Rocky', 4500, 817000000, 'Epimethius', true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terrestrial', 4500, 82000000, 'Mercury', false, 1);
INSERT INTO public.planet VALUES (2, 'Terrestrial', 4500, 27000000, 'Venus', false, 1);
INSERT INTO public.planet VALUES (3, 'Terrestrial', 4500, 0, 'Earth', true, 1);
INSERT INTO public.planet VALUES (4, 'Terrestrial', 4600, 225000000, 'Mars', false, 1);
INSERT INTO public.planet VALUES (5, 'Gas Giant', 4600, 446000000, 'Jupiter', false, 1);
INSERT INTO public.planet VALUES (6, 'Gas Giant', 4600, 817000000, 'Saturn', false, 1);
INSERT INTO public.planet VALUES (7, 'Gas Giant', 4600, 1700000000, 'Uranus', false, 1);
INSERT INTO public.planet VALUES (8, 'Gas Giant', 4600, 2000000000, 'Neptune', false, 1);
INSERT INTO public.planet VALUES (9, 'Dwarf Planet', 4600, 2000000000, 'Pluto', false, 1);
INSERT INTO public.planet VALUES (10, 'ExoPlanet', 4800, 4, 'Proxima Centauri B', NULL, 7);
INSERT INTO public.planet VALUES (11, 'ExoPlanet', 4800, 4, 'Proxima Centauri D', NULL, 7);
INSERT INTO public.planet VALUES (12, 'ExoPlanet', 4800, 4, 'Proxima Centauri C', NULL, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4600, 93, 1, 'Yellow Dwarf', 'Sun', 2.0, 1);
INSERT INTO public.star VALUES (60, 97, 2, 'Blue SubGiant', 'Alpha Andromeda', 7.6, 2);
INSERT INTO public.star VALUES (10, 643, 3, 'Red Supergiant', 'Betelgeuse', 21.9, 1);
INSERT INTO public.star VALUES (230, 9, 4, 'Canis Majoris', 'Sirius', 2.1, 1);
INSERT INTO public.star VALUES (60, 97, 5, 'MO III', 'Beta Andromedae', 7.6, 2);
INSERT INTO public.star VALUES (NULL, 9500, 6, 'Red Hypergiant', 'UY Scuti', 14.0, 1);
INSERT INTO public.star VALUES (4800, 4, 7, 'M5.5VE', 'Proxima Centauri', NULL, 1);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 4, true);


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
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


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
-- Name: continent fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

