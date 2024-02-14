--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-02-14 10:23:55

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

--
-- TOC entry 4967 (class 1262 OID 24755)
-- Name: avenger; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE avenger WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';


ALTER DATABASE avenger OWNER TO postgres;

\connect avenger

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 238 (class 1259 OID 24860)
-- Name: adresse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adresse (
    id_adresse integer NOT NULL,
    numero_rue character varying,
    nom_rue character varying,
    code_postal character varying,
    ville character varying,
    pays character varying
);


ALTER TABLE public.adresse OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 24859)
-- Name: adresse_ip_adresse_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.adresse_ip_adresse_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.adresse_ip_adresse_seq OWNER TO postgres;

--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 237
-- Name: adresse_ip_adresse_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.adresse_ip_adresse_seq OWNED BY public.adresse.id_adresse;


--
-- TOC entry 220 (class 1259 OID 24780)
-- Name: civil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.civil (
    id_civil integer NOT NULL,
    nom_civil character varying,
    prenom_civil character varying,
    genre character varying,
    date_naissance date,
    date_deces date,
    nationalite character varying,
    organisation character varying,
    commentaire character varying,
    date_ajout date,
    date_modif date,
    nb_incident integer,
    nb_mission integer,
    id_adresse integer,
    numero_tel character varying(10)
);


ALTER TABLE public.civil OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24779)
-- Name: civil_id_civil_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.civil_id_civil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.civil_id_civil_seq OWNER TO postgres;

--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 219
-- Name: civil_id_civil_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.civil_id_civil_seq OWNED BY public.civil.id_civil;


--
-- TOC entry 236 (class 1259 OID 24850)
-- Name: crise; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.crise (
    id_crise integer NOT NULL,
    avenger_demasque character varying,
    vilain_decouvert character varying,
    dommage_collateral character varying,
    frais character varying,
    proces character varying
);


ALTER TABLE public.crise OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 24849)
-- Name: crise_id_crise_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.crise_id_crise_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.crise_id_crise_seq OWNER TO postgres;

--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 235
-- Name: crise_id_crise_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.crise_id_crise_seq OWNED BY public.crise.id_crise;


--
-- TOC entry 224 (class 1259 OID 24798)
-- Name: incident; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.incident (
    id_incident integer NOT NULL,
    nature character varying,
    id_adresse integer,
    id_civil integer,
    id_organisation integer,
    id_hero integer,
    id_mission integer,
    id_vilain integer
);


ALTER TABLE public.incident OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24797)
-- Name: incident_id_incident_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.incident_id_incident_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.incident_id_incident_seq OWNER TO postgres;

--
-- TOC entry 4972 (class 0 OID 0)
-- Dependencies: 223
-- Name: incident_id_incident_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.incident_id_incident_seq OWNED BY public.incident.id_incident;


--
-- TOC entry 234 (class 1259 OID 24841)
-- Name: litige; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.litige (
    id_litige integer NOT NULL,
    objet character varying,
    type character varying,
    personnes_concernees character varying,
    cout character varying,
    degat_majeur character varying,
    deces_citoyens integer,
    casse_biens character varying,
    id_piece integer
);


ALTER TABLE public.litige OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 24840)
-- Name: litige_id_litige_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.litige_id_litige_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.litige_id_litige_seq OWNER TO postgres;

--
-- TOC entry 4973 (class 0 OID 0)
-- Dependencies: 233
-- Name: litige_id_litige_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.litige_id_litige_seq OWNED BY public.litige.id_litige;


--
-- TOC entry 226 (class 1259 OID 24807)
-- Name: mission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mission (
    id_mission integer NOT NULL,
    nature character varying,
    titre character varying,
    date_debut date,
    date_fin date,
    info character varying,
    niveau_gravite character varying,
    niveau_urgence character varying,
    id_litige integer
);


ALTER TABLE public.mission OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 24806)
-- Name: mission_id_mission_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mission_id_mission_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mission_id_mission_seq OWNER TO postgres;

--
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 225
-- Name: mission_id_mission_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mission_id_mission_seq OWNED BY public.mission.id_mission;


--
-- TOC entry 222 (class 1259 OID 24789)
-- Name: organisation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organisation (
    id_organisation integer NOT NULL,
    nom character varying,
    commentaire character varying,
    date_ajout date,
    date_modif date,
    nb_incident integer,
    nb_mission integer,
    dirigeant character varying,
    membre character varying,
    id_adresse integer,
    numero_tel character varying(10)
);


ALTER TABLE public.organisation OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24788)
-- Name: organisation_id_organisation_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.organisation_id_organisation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.organisation_id_organisation_seq OWNER TO postgres;

--
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 221
-- Name: organisation_id_organisation_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.organisation_id_organisation_seq OWNED BY public.organisation.id_organisation;


--
-- TOC entry 232 (class 1259 OID 24832)
-- Name: piece; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.piece (
    id_piece integer NOT NULL,
    type character varying,
    contenu character varying
);


ALTER TABLE public.piece OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 24831)
-- Name: piece_id_piece_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.piece_id_piece_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.piece_id_piece_seq OWNER TO postgres;

--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 231
-- Name: piece_id_piece_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.piece_id_piece_seq OWNED BY public.piece.id_piece;


--
-- TOC entry 228 (class 1259 OID 24816)
-- Name: rapport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rapport (
    id_rapport integer NOT NULL,
    interlocuteur character varying,
    evenement character varying,
    id_civil integer,
    id_hero integer,
    id_mission integer,
    id_crise integer
);


ALTER TABLE public.rapport OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 24815)
-- Name: rapport_id_rapport_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rapport_id_rapport_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rapport_id_rapport_seq OWNER TO postgres;

--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 227
-- Name: rapport_id_rapport_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rapport_id_rapport_seq OWNED BY public.rapport.id_rapport;


--
-- TOC entry 230 (class 1259 OID 24825)
-- Name: satisfaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.satisfaction (
    id_satisfation integer NOT NULL,
    note integer,
    id_piece integer
);


ALTER TABLE public.satisfaction OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 24824)
-- Name: satisfaction_id_satisfation_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.satisfaction_id_satisfation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.satisfaction_id_satisfation_seq OWNER TO postgres;

--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 229
-- Name: satisfaction_id_satisfation_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.satisfaction_id_satisfation_seq OWNED BY public.satisfaction.id_satisfation;


--
-- TOC entry 215 (class 1259 OID 24756)
-- Name: super_hero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.super_hero (
    id_hero integer NOT NULL,
    nom_hero character varying NOT NULL,
    identite_secrete character varying,
    pouvoir character varying,
    point_faible character varying,
    score integer,
    commentaire character varying,
    numero_tel character varying(10),
    id_adresse integer
);


ALTER TABLE public.super_hero OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24761)
-- Name: super_hero_id_hero_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.super_hero_id_hero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.super_hero_id_hero_seq OWNER TO postgres;

--
-- TOC entry 4979 (class 0 OID 0)
-- Dependencies: 216
-- Name: super_hero_id_hero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.super_hero_id_hero_seq OWNED BY public.super_hero.id_hero;


--
-- TOC entry 218 (class 1259 OID 24771)
-- Name: super_vilain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.super_vilain (
    id_vilain integer NOT NULL,
    nom_vilain character varying NOT NULL,
    identite_secrete character varying,
    pouvoir character varying,
    point_faible character varying,
    commentaire character varying
);


ALTER TABLE public.super_vilain OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24770)
-- Name: super_vilain_id_vilain_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.super_vilain_id_vilain_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.super_vilain_id_vilain_seq OWNER TO postgres;

--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 217
-- Name: super_vilain_id_vilain_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.super_vilain_id_vilain_seq OWNED BY public.super_vilain.id_vilain;


--
-- TOC entry 4754 (class 2604 OID 24863)
-- Name: adresse id_adresse; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse ALTER COLUMN id_adresse SET DEFAULT nextval('public.adresse_ip_adresse_seq'::regclass);


--
-- TOC entry 4745 (class 2604 OID 24783)
-- Name: civil id_civil; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.civil ALTER COLUMN id_civil SET DEFAULT nextval('public.civil_id_civil_seq'::regclass);


--
-- TOC entry 4753 (class 2604 OID 24853)
-- Name: crise id_crise; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crise ALTER COLUMN id_crise SET DEFAULT nextval('public.crise_id_crise_seq'::regclass);


--
-- TOC entry 4747 (class 2604 OID 24801)
-- Name: incident id_incident; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incident ALTER COLUMN id_incident SET DEFAULT nextval('public.incident_id_incident_seq'::regclass);


--
-- TOC entry 4752 (class 2604 OID 24844)
-- Name: litige id_litige; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.litige ALTER COLUMN id_litige SET DEFAULT nextval('public.litige_id_litige_seq'::regclass);


--
-- TOC entry 4748 (class 2604 OID 24810)
-- Name: mission id_mission; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mission ALTER COLUMN id_mission SET DEFAULT nextval('public.mission_id_mission_seq'::regclass);


--
-- TOC entry 4746 (class 2604 OID 24792)
-- Name: organisation id_organisation; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organisation ALTER COLUMN id_organisation SET DEFAULT nextval('public.organisation_id_organisation_seq'::regclass);


--
-- TOC entry 4751 (class 2604 OID 24835)
-- Name: piece id_piece; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.piece ALTER COLUMN id_piece SET DEFAULT nextval('public.piece_id_piece_seq'::regclass);


--
-- TOC entry 4749 (class 2604 OID 24819)
-- Name: rapport id_rapport; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rapport ALTER COLUMN id_rapport SET DEFAULT nextval('public.rapport_id_rapport_seq'::regclass);


--
-- TOC entry 4750 (class 2604 OID 24828)
-- Name: satisfaction id_satisfation; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.satisfaction ALTER COLUMN id_satisfation SET DEFAULT nextval('public.satisfaction_id_satisfation_seq'::regclass);


--
-- TOC entry 4743 (class 2604 OID 24762)
-- Name: super_hero id_hero; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.super_hero ALTER COLUMN id_hero SET DEFAULT nextval('public.super_hero_id_hero_seq'::regclass);


--
-- TOC entry 4744 (class 2604 OID 24774)
-- Name: super_vilain id_vilain; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.super_vilain ALTER COLUMN id_vilain SET DEFAULT nextval('public.super_vilain_id_vilain_seq'::regclass);


--
-- TOC entry 4961 (class 0 OID 24860)
-- Dependencies: 238
-- Data for Name: adresse; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.adresse VALUES (1, '13', 'de la gamelle', '14000', 'Felin', 'Chat');
INSERT INTO public.adresse VALUES (2, '15', 'de la chaussette', '14000', 'Tiroir', 'Meuble');
INSERT INTO public.adresse VALUES (3, '17', 'de la muerte', '14000', 'Amor', 'Valentin');
INSERT INTO public.adresse VALUES (4, '19', 'de la table', '14000', 'Ronde', 'Bois');


--
-- TOC entry 4943 (class 0 OID 24780)
-- Dependencies: 220
-- Data for Name: civil; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.civil VALUES (1, 'Yvert', 'Hugo', 'Homme', '2004-12-31', NULL, 'Français', 'CESI', 'Dumb', '2024-02-13', '2024-02-13', 100, 1, 2, NULL);


--
-- TOC entry 4959 (class 0 OID 24850)
-- Dependencies: 236
-- Data for Name: crise; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.crise VALUES (1, 'Thanos', 'Ultron', 'Villes détruites', '1000000', 'true');


--
-- TOC entry 4947 (class 0 OID 24798)
-- Dependencies: 224
-- Data for Name: incident; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.incident VALUES (7, 'Terrorisme', 4, 1, 1, 9, 2, 1);


--
-- TOC entry 4957 (class 0 OID 24841)
-- Dependencies: 234
-- Data for Name: litige; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.litige VALUES (2, 'Dommages matériels suite à un accident de la route', 'Accident', 'John Doe, Jane Doe', '5000', 'Véhicule endommagé', 0, 'Vitre brisée', 1);


--
-- TOC entry 4949 (class 0 OID 24807)
-- Dependencies: 226
-- Data for Name: mission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.mission VALUES (2, 'Intervention sur le terrain', 'Réparation des dommages', '2024-02-14', '2024-02-15', 'Réparation des dommages matériels causés par l accident', 'Moyen', 'Élevé', 2);


--
-- TOC entry 4945 (class 0 OID 24789)
-- Dependencies: 222
-- Data for Name: organisation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.organisation VALUES (1, 'Entreprise XYZ', 'Entreprise spécialisée dans la sécurité informatique', '2024-02-13', '2024-02-13', 10, 5, 'John Doe', 'Alice, Bob, Carol', 3, '0123456789');


--
-- TOC entry 4955 (class 0 OID 24832)
-- Dependencies: 232
-- Data for Name: piece; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.piece VALUES (1, 'Rapport d accident', 'Description détaillée de l accident, y compris les circonstances, les dommages matériels, et les témoignages.');


--
-- TOC entry 4951 (class 0 OID 24816)
-- Dependencies: 228
-- Data for Name: rapport; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rapport VALUES (1, 'John Doe', 'Réunion de coordination', 1, 9, 2, 1);


--
-- TOC entry 4953 (class 0 OID 24825)
-- Dependencies: 230
-- Data for Name: satisfaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.satisfaction VALUES (1, 5, 1);


--
-- TOC entry 4938 (class 0 OID 24756)
-- Dependencies: 215
-- Data for Name: super_hero; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.super_hero VALUES (9, 'catman', 'Samuel', 'langage des chats', 'Eau', 3, 'Aime les caresses', '0123456789', 1);


--
-- TOC entry 4941 (class 0 OID 24771)
-- Dependencies: 218
-- Data for Name: super_vilain; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.super_vilain VALUES (1, 'Thanos', 'Thanos', 'Les pierres', NULL, 'Le plus fort');


--
-- TOC entry 4981 (class 0 OID 0)
-- Dependencies: 237
-- Name: adresse_ip_adresse_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.adresse_ip_adresse_seq', 4, true);


--
-- TOC entry 4982 (class 0 OID 0)
-- Dependencies: 219
-- Name: civil_id_civil_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.civil_id_civil_seq', 1, true);


--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 235
-- Name: crise_id_crise_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.crise_id_crise_seq', 1, true);


--
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 223
-- Name: incident_id_incident_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.incident_id_incident_seq', 7, true);


--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 233
-- Name: litige_id_litige_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.litige_id_litige_seq', 2, true);


--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 225
-- Name: mission_id_mission_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mission_id_mission_seq', 2, true);


--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 221
-- Name: organisation_id_organisation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.organisation_id_organisation_seq', 1, true);


--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 231
-- Name: piece_id_piece_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.piece_id_piece_seq', 1, true);


--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 227
-- Name: rapport_id_rapport_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rapport_id_rapport_seq', 1, false);


--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 229
-- Name: satisfaction_id_satisfation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.satisfaction_id_satisfation_seq', 1, true);


--
-- TOC entry 4991 (class 0 OID 0)
-- Dependencies: 216
-- Name: super_hero_id_hero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.super_hero_id_hero_seq', 9, true);


--
-- TOC entry 4992 (class 0 OID 0)
-- Dependencies: 217
-- Name: super_vilain_id_vilain_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.super_vilain_id_vilain_seq', 1, true);


--
-- TOC entry 4778 (class 2606 OID 24867)
-- Name: adresse adresse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT adresse_pkey PRIMARY KEY (id_adresse);


--
-- TOC entry 4760 (class 2606 OID 24787)
-- Name: civil civil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.civil
    ADD CONSTRAINT civil_pkey PRIMARY KEY (id_civil);


--
-- TOC entry 4776 (class 2606 OID 24857)
-- Name: crise crise_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crise
    ADD CONSTRAINT crise_pkey PRIMARY KEY (id_crise);


--
-- TOC entry 4764 (class 2606 OID 24805)
-- Name: incident incident_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incident
    ADD CONSTRAINT incident_pkey PRIMARY KEY (id_incident);


--
-- TOC entry 4774 (class 2606 OID 24848)
-- Name: litige litige_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.litige
    ADD CONSTRAINT litige_pkey PRIMARY KEY (id_litige);


--
-- TOC entry 4766 (class 2606 OID 24814)
-- Name: mission mission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mission
    ADD CONSTRAINT mission_pkey PRIMARY KEY (id_mission);


--
-- TOC entry 4762 (class 2606 OID 24794)
-- Name: organisation organisation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organisation
    ADD CONSTRAINT organisation_pkey PRIMARY KEY (id_organisation);


--
-- TOC entry 4772 (class 2606 OID 24839)
-- Name: piece piece_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.piece
    ADD CONSTRAINT piece_pkey PRIMARY KEY (id_piece);


--
-- TOC entry 4768 (class 2606 OID 24823)
-- Name: rapport rapport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rapport
    ADD CONSTRAINT rapport_pkey PRIMARY KEY (id_rapport);


--
-- TOC entry 4770 (class 2606 OID 24830)
-- Name: satisfaction satisfaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.satisfaction
    ADD CONSTRAINT satisfaction_pkey PRIMARY KEY (id_satisfation);


--
-- TOC entry 4756 (class 2606 OID 24767)
-- Name: super_hero super_hero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.super_hero
    ADD CONSTRAINT super_hero_pkey PRIMARY KEY (id_hero);


--
-- TOC entry 4758 (class 2606 OID 24776)
-- Name: super_vilain super_vilain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.super_vilain
    ADD CONSTRAINT super_vilain_pkey PRIMARY KEY (id_vilain);


--
-- TOC entry 4782 (class 2606 OID 25018)
-- Name: incident fk_adresse_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incident
    ADD CONSTRAINT fk_adresse_id FOREIGN KEY (id_adresse) REFERENCES public.adresse(id_adresse);


--
-- TOC entry 4780 (class 2606 OID 24873)
-- Name: civil fk_civil_adresse_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.civil
    ADD CONSTRAINT fk_civil_adresse_id FOREIGN KEY (id_adresse) REFERENCES public.adresse(id_adresse);


--
-- TOC entry 4783 (class 2606 OID 25023)
-- Name: incident fk_civil_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incident
    ADD CONSTRAINT fk_civil_id FOREIGN KEY (id_civil) REFERENCES public.civil(id_civil);


--
-- TOC entry 4789 (class 2606 OID 25053)
-- Name: rapport fk_civil_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rapport
    ADD CONSTRAINT fk_civil_id FOREIGN KEY (id_civil) REFERENCES public.civil(id_civil);


--
-- TOC entry 4790 (class 2606 OID 25048)
-- Name: rapport fk_crise_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rapport
    ADD CONSTRAINT fk_crise_id FOREIGN KEY (id_crise) REFERENCES public.crise(id_crise);


--
-- TOC entry 4784 (class 2606 OID 25028)
-- Name: incident fk_hero_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incident
    ADD CONSTRAINT fk_hero_id FOREIGN KEY (id_hero) REFERENCES public.super_hero(id_hero);


--
-- TOC entry 4791 (class 2606 OID 25058)
-- Name: rapport fk_hero_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rapport
    ADD CONSTRAINT fk_hero_id FOREIGN KEY (id_hero) REFERENCES public.super_hero(id_hero);


--
-- TOC entry 4794 (class 2606 OID 25008)
-- Name: litige fk_litige_piece_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.litige
    ADD CONSTRAINT fk_litige_piece_id FOREIGN KEY (id_piece) REFERENCES public.piece(id_piece);


--
-- TOC entry 4788 (class 2606 OID 25013)
-- Name: mission fk_mission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mission
    ADD CONSTRAINT fk_mission_id FOREIGN KEY (id_litige) REFERENCES public.litige(id_litige);


--
-- TOC entry 4785 (class 2606 OID 25043)
-- Name: incident fk_mission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incident
    ADD CONSTRAINT fk_mission_id FOREIGN KEY (id_mission) REFERENCES public.mission(id_mission);


--
-- TOC entry 4792 (class 2606 OID 25063)
-- Name: rapport fk_mission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rapport
    ADD CONSTRAINT fk_mission_id FOREIGN KEY (id_mission) REFERENCES public.mission(id_mission);


--
-- TOC entry 4781 (class 2606 OID 24878)
-- Name: organisation fk_organisation_adresse_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organisation
    ADD CONSTRAINT fk_organisation_adresse_id FOREIGN KEY (id_adresse) REFERENCES public.adresse(id_adresse);


--
-- TOC entry 4786 (class 2606 OID 25038)
-- Name: incident fk_organisation_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incident
    ADD CONSTRAINT fk_organisation_id FOREIGN KEY (id_organisation) REFERENCES public.organisation(id_organisation);


--
-- TOC entry 4793 (class 2606 OID 25068)
-- Name: satisfaction fk_piece_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.satisfaction
    ADD CONSTRAINT fk_piece_id FOREIGN KEY (id_piece) REFERENCES public.piece(id_piece);


--
-- TOC entry 4779 (class 2606 OID 24868)
-- Name: super_hero fk_super_hero_adresse; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.super_hero
    ADD CONSTRAINT fk_super_hero_adresse FOREIGN KEY (id_adresse) REFERENCES public.adresse(id_adresse);


--
-- TOC entry 4787 (class 2606 OID 25033)
-- Name: incident fk_vilain_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incident
    ADD CONSTRAINT fk_vilain_id FOREIGN KEY (id_vilain) REFERENCES public.super_vilain(id_vilain);


-- Completed on 2024-02-14 10:23:56

--
-- PostgreSQL database dump complete
--

