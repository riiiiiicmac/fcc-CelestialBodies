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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    comets_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: comets_comets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_comets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_comets_id_seq OWNER TO freecodecamp;

--
-- Name: comets_comets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_comets_id_seq OWNED BY public.comets.comets_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    curiosity text NOT NULL,
    size integer NOT NULL,
    has_life boolean DEFAULT false NOT NULL,
    name character varying(255)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxyid_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxyid_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
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
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planetid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planetid_seq OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planetid_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    radius numeric(10,2) NOT NULL,
    color character varying(50) NOT NULL,
    galaxy_id integer,
    name character varying(255)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_starid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_starid_seq OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_starid_seq OWNED BY public.star.star_id;


--
-- Name: comets comets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN comets_id SET DEFAULT nextval('public.comets_comets_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxyid_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planetid_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_starid_seq'::regclass);


--
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES (1, 'Chiron', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'In the Babylonian epic poem Enūma Eliš, the Milky Way is created from the severed tail of the primeval salt water dragoness Tiamat, set in the sky by Marduk, the Babylonian national god, after slaying her', 100000, true, 'Milky way');
INSERT INTO public.galaxy VALUES (2, 'The Sombrero Galaxy, officially Messier 104 (M104), is a spiral galaxy known for its distinct shape resembling a Mexican sombrero.', 94500, false, 'Sombrero Galaxy');
INSERT INTO public.galaxy VALUES (3, 'M63 was first discovered by the French astronomer Pierre Méchain, then later verified by his colleague Charles Messier on 14 June 1779.', 13000, false, 'Sunflower Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Because this nearby galaxy is seen edge-on from Earth, professional astronomers observe this galaxy to better understand the gas and stars located outside the plane of the galaxy. .', 30000000, false, 'Whale Galaxy');
INSERT INTO public.galaxy VALUES (5, 'With a surface brightness of only 14.42 magnitude, NGC 5829 can be classified as a low-surface brightness galaxy.', 28100000, false, 'Spider Galaxy');
INSERT INTO public.galaxy VALUES (6, 'Though the galaxy can be detected with binoculars or a small telescope, to observe the spiral structure in a telescope without a camera requires a fairly large instrument, very dark skies, and a low-power eyepiece', 2100000, false, 'Pinwheel Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 7, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1, 7, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1, 7, 4);
INSERT INTO public.moon VALUES (4, 'IO', 1, 7, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1, 7, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1, 7, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 1, 7, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 1, 7, 5);
INSERT INTO public.moon VALUES (9, 'Titan', 1, 7, 6);
INSERT INTO public.moon VALUES (10, 'Rhea', 1, 7, 6);
INSERT INTO public.moon VALUES (11, 'Iapetus', 1, 7, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 1, 7, 6);
INSERT INTO public.moon VALUES (13, 'Tethys', 1, 7, 6);
INSERT INTO public.moon VALUES (14, 'Enceladus', 1, 7, 6);
INSERT INTO public.moon VALUES (15, 'Hyperion', 1, 7, 6);
INSERT INTO public.moon VALUES (16, 'Mimas', 1, 7, 6);
INSERT INTO public.moon VALUES (17, 'Titania', 1, 7, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', 1, 7, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', 1, 7, 7);
INSERT INTO public.moon VALUES (20, 'Ariel', 1, 7, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 7, 'Mercury');
INSERT INTO public.planet VALUES (2, 1, 7, 'Venus');
INSERT INTO public.planet VALUES (3, 1, 7, 'Earth');
INSERT INTO public.planet VALUES (4, 1, 7, 'Mars');
INSERT INTO public.planet VALUES (5, 1, 7, 'Jupiter');
INSERT INTO public.planet VALUES (6, 1, 7, 'Saturn');
INSERT INTO public.planet VALUES (7, 1, 7, 'Uranus');
INSERT INTO public.planet VALUES (8, 1, 7, 'Neptune');
INSERT INTO public.planet VALUES (9, 1, 7, 'Pluto');
INSERT INTO public.planet VALUES (10, 1, 7, 'Ceres');
INSERT INTO public.planet VALUES (11, 1, 7, 'Haumea');
INSERT INTO public.planet VALUES (12, 1, 7, 'Makemake');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 2000.00, 'Red', 1, 'UY Scuti');
INSERT INTO public.star VALUES (2, 1420.00, 'Red', 1, 'VY Canis Majoris');
INSERT INTO public.star VALUES (3, 1411.00, 'Red', 1, 'AH Scorpii');
INSERT INTO public.star VALUES (4, 25.00, 'Orange', 1, 'Arcturus');
INSERT INTO public.star VALUES (5, 1.70, 'White', 1, 'Sirius');
INSERT INTO public.star VALUES (6, 2.40, 'Blue', 1, 'Vega');
INSERT INTO public.star VALUES (7, 696.00, 'White', 1, 'Sun');


--
-- Name: comets_comets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_comets_id_seq', 1, false);


--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxyid_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planetid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planetid_seq', 1, false);


--
-- Name: star_starid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starid_seq', 1, false);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: comets fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

