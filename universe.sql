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
    name character varying(15) NOT NULL,
    description text NOT NULL,
    age numeric,
    num_stars integer,
    size numeric,
    contains_black_hole boolean,
    has_life boolean,
    num_planets integer
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
-- Name: life_forms; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life_forms (
    life_forms_id integer NOT NULL,
    name character varying(15) NOT NULL,
    type text NOT NULL,
    hostile boolean,
    intelligence_level integer,
    established_contact boolean,
    population integer,
    life_span numeric
);


ALTER TABLE public.life_forms OWNER TO freecodecamp;

--
-- Name: life_forms_life_form_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_forms_life_form_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_forms_life_form_id_seq OWNER TO freecodecamp;

--
-- Name: life_forms_life_form_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_forms_life_form_id_seq OWNED BY public.life_forms.life_forms_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(15) NOT NULL,
    composition text NOT NULL,
    distance_from_planet_miles numeric,
    revs_per_year integer,
    diameter_miles integer,
    spherical boolean,
    has_life boolean
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
    star_id integer,
    name character varying(15) NOT NULL,
    type text NOT NULL,
    age numeric,
    num_of_moons integer,
    size numeric,
    has_life boolean,
    contains_water boolean,
    life_form_id integer
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
    galaxy_id integer,
    name character varying(15) NOT NULL,
    description text NOT NULL,
    age numeric,
    dead_star boolean,
    temp_in_k integer,
    diameter_miles integer,
    rotates boolean
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
-- Name: life_forms life_forms_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms ALTER COLUMN life_forms_id SET DEFAULT nextval('public.life_forms_life_form_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'UNA NOVA', 'Gaseaous galaxy on outer edge', 4000000.7, 150005550, 8888, false, false, 7352);
INSERT INTO public.galaxy VALUES (2, 'SECUNDUS NOVA', 'Gaseaous galaxy on outer edge', 7890000.7, 745621, 22156, false, true, 4552);
INSERT INTO public.galaxy VALUES (3, 'TERTIUS NOVA', 'Gaseaous galaxy on outer edge', 78941553321.32, 3325456, 7895554, true, false, 996588);
INSERT INTO public.galaxy VALUES (4, 'QUARTIOUS NOVA', 'Gaseaous galaxy on outer edge', 4000000.7, 150005550, 32665, true, true, 9987455);
INSERT INTO public.galaxy VALUES (5, 'QUINT NOVA', 'Gaseaous galaxy on outer edge', 99877754.445, 885444256, 99564, false, false, 112544);
INSERT INTO public.galaxy VALUES (6, 'SEPTIM NOVA', 'Gaseaous galaxy on outer edge', 66564444.71, 33322545, 36541, true, true, 36625);


--
-- Data for Name: life_forms; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life_forms VALUES (2, 'Mordocs', 'Aquatic', true, 4, false, 20000000, 50);
INSERT INTO public.life_forms VALUES (3, 'Simians', 'Tripod', true, 5, true, 798885, 80);
INSERT INTO public.life_forms VALUES (4, 'Kronos', 'Amphibian', true, 8, false, 32655, 250);
INSERT INTO public.life_forms VALUES (5, 'Asgardian', 'Mammal', false, 9, true, 765, 75);
INSERT INTO public.life_forms VALUES (6, 'Hobbit', 'Dwarf Mammal', false, 7, true, 9832, 150);
INSERT INTO public.life_forms VALUES (7, 'Sboggs', 'Crustacean', true, 1, false, 1669990, 90);
INSERT INTO public.life_forms VALUES (8, 'N/A', 'N/A', false, 0, false, 0, 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 11, 'Primero', 'Ice', 66510, 450, 6650, true, false);
INSERT INTO public.moon VALUES (2, 11, 'Segundo', 'Earth', 45512, 12, 6512, true, false);
INSERT INTO public.moon VALUES (3, 11, 'Tercero', 'Ice', 21745, 98, 5551, true, false);
INSERT INTO public.moon VALUES (4, 11, 'Cuarto', 'Diamond', 156135, 320, 1234, true, false);
INSERT INTO public.moon VALUES (6, 11, 'Quinto', 'Silver', 4651531, 21, 225, true, false);
INSERT INTO public.moon VALUES (7, 11, 'Sexto', 'Ice', 54356, 114, 996, true, false);
INSERT INTO public.moon VALUES (10, 8, 'Noveno', 'Ice', 388400, 45, 364, true, false);
INSERT INTO public.moon VALUES (11, 11, 'Decimo', 'Earth', 52256, 445, 996, true, false);
INSERT INTO public.moon VALUES (12, 4, 'Decimoun', 'Ice', 988551, 78, 855, true, false);
INSERT INTO public.moon VALUES (13, 4, 'Doce', 'Ice', 43213, 450, 102, true, false);
INSERT INTO public.moon VALUES (16, 7, 'Trece', 'Diamond', 9955, 45, 3364, true, false);
INSERT INTO public.moon VALUES (17, 1, 'Catorce', 'Diamond', 43610, 665, 9964, true, false);
INSERT INTO public.moon VALUES (18, 6, 'Quince', 'Ice', 66658, 12, 2254, true, false);
INSERT INTO public.moon VALUES (21, 12, 'Decimoseis', 'Ice', 22154, 99, 7785, true, false);
INSERT INTO public.moon VALUES (22, 12, 'W123', 'Earth', 7778550, 32, 6331, true, false);
INSERT INTO public.moon VALUES (23, 12, 'X12X1', 'Ice', 882000, 125, 2236, true, false);
INSERT INTO public.moon VALUES (26, 8, 'G1223G', 'Mercury', 88560, 320, 66995, true, false);
INSERT INTO public.moon VALUES (27, 8, 'Duodecimo', 'Ice', 6654, 450, 85220, true, false);
INSERT INTO public.moon VALUES (28, 11, 'Septimo', 'Ice', 55220, 65, 456, true, false);
INSERT INTO public.moon VALUES (29, 6, 'Octavo', 'Water', 66555, 220, 458, true, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 3, 'Planet X', 'Gaseaous', 50000, 1, 62331, true, true, 2);
INSERT INTO public.planet VALUES (2, 1, 'Asgard', 'Earthy', 10000000, 0, 55600, true, true, 5);
INSERT INTO public.planet VALUES (3, 6, 'Middle Earth', 'Earthy', 336000, 1, 665887, true, true, 2);
INSERT INTO public.planet VALUES (4, 1, 'Animal Planet', 'Gaseaous', 50000, 3, 445550, false, false, 8);
INSERT INTO public.planet VALUES (5, 4, 'Oreo', 'Gaseaous', 52000, 7, 995888, false, true, 8);
INSERT INTO public.planet VALUES (6, 1, 'Mordotion', 'Gaseaous', 200000, 1, 32000, false, false, 8);
INSERT INTO public.planet VALUES (7, 2, 'Noven', 'Gaseaous', 860000, 2, 81000, true, true, 2);
INSERT INTO public.planet VALUES (8, 6, 'X1455', 'Gaseaous', 4500000, 10, 650000, true, true, 2);
INSERT INTO public.planet VALUES (9, 6, 'Y4885', 'Gaseaous', 980000, 6, 9987755, false, false, 8);
INSERT INTO public.planet VALUES (10, 6, 'Z455X', 'Gaseaous', 954000, 3, 111622, false, false, 8);
INSERT INTO public.planet VALUES (11, 3, 'Aquatica', 'Aquatic', 112000, 65, 11000050, false, false, 8);
INSERT INTO public.planet VALUES (12, 6, 'LK5655', 'Gaseaous', 780000, 16, 3220000, false, false, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 5, 'Twinkle Twinkle', 'Dwarf star', 4559885, false, 150000, 4451558, true);
INSERT INTO public.star VALUES (2, 5, 'Smoky Twinkle', 'super star, no longer active', 66522322, true, 6000, 602402, false);
INSERT INTO public.star VALUES (3, 6, 'Strato', 'Oldest star recorded', 9955545887, false, 2533000, 65877855, true);
INSERT INTO public.star VALUES (4, 2, 'WinnDixie', 'No signs of activity. Dead for millions of years', 9966655545, false, 0, 3326458, false);
INSERT INTO public.star VALUES (5, 1, 'Orion', 'Part of a belt', 22345, false, 3065500, 4451558, true);
INSERT INTO public.star VALUES (6, 6, 'Sun', 'Yellow star. Highly active', 122351125, false, 150000, 33620315, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_forms_life_form_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_forms_life_form_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


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
-- Name: life_forms life_forms_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT life_forms_name_key UNIQUE (name);


--
-- Name: life_forms life_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT life_forms_pkey PRIMARY KEY (life_forms_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
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
-- PostgreSQL database dump complete
--

