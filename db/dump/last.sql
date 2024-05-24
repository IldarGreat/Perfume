--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)

-- Started on 2024-05-24 14:54:02 +04

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
-- TOC entry 3011 (class 1262 OID 16384)
-- Name: perfume; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE perfume WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE perfume OWNER TO postgres;

\connect perfume

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
-- TOC entry 6 (class 2615 OID 16385)
-- Name: snap_v1; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA snap_v1;


ALTER SCHEMA snap_v1 OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 205 (class 1259 OID 16398)
-- Name: notes; Type: TABLE; Schema: snap_v1; Owner: postgres
--

CREATE TABLE snap_v1.notes (
    id bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE snap_v1.notes OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16396)
-- Name: notes_id_seq; Type: SEQUENCE; Schema: snap_v1; Owner: postgres
--

ALTER TABLE snap_v1.notes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME snap_v1.notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 206 (class 1259 OID 16406)
-- Name: notes_to_perfume; Type: TABLE; Schema: snap_v1; Owner: postgres
--

CREATE TABLE snap_v1.notes_to_perfume (
    perfume_id bigint NOT NULL,
    note_id bigint NOT NULL
);


ALTER TABLE snap_v1.notes_to_perfume OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16388)
-- Name: perfume; Type: TABLE; Schema: snap_v1; Owner: postgres
--

CREATE TABLE snap_v1.perfume (
    id bigint NOT NULL,
    sex character varying,
    price double precision,
    volume double precision,
    comment character varying,
    name character varying,
    season character varying,
    image_link character varying
);


ALTER TABLE snap_v1.perfume OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16386)
-- Name: perfume_id_seq; Type: SEQUENCE; Schema: snap_v1; Owner: postgres
--

ALTER TABLE snap_v1.perfume ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME snap_v1.perfume_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 16437)
-- Name: price_range; Type: TABLE; Schema: snap_v1; Owner: postgres
--

CREATE TABLE snap_v1.price_range (
    id bigint NOT NULL,
    price_low double precision,
    price_high double precision,
    category character varying
);


ALTER TABLE snap_v1.price_range OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16435)
-- Name: price_range_id_seq; Type: SEQUENCE; Schema: snap_v1; Owner: postgres
--

ALTER TABLE snap_v1.price_range ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME snap_v1.price_range_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 208 (class 1259 OID 16424)
-- Name: type; Type: TABLE; Schema: snap_v1; Owner: postgres
--

CREATE TABLE snap_v1.type (
    id bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE snap_v1.type OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16422)
-- Name: type_id_seq; Type: SEQUENCE; Schema: snap_v1; Owner: postgres
--

ALTER TABLE snap_v1.type ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME snap_v1.type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 209 (class 1259 OID 16432)
-- Name: type_to_perfume; Type: TABLE; Schema: snap_v1; Owner: postgres
--

CREATE TABLE snap_v1.type_to_perfume (
    perfume_id bigint NOT NULL,
    type_id bigint NOT NULL
);


ALTER TABLE snap_v1.type_to_perfume OWNER TO postgres;

--
-- TOC entry 2999 (class 0 OID 16398)
-- Dependencies: 205
-- Data for Name: notes; Type: TABLE DATA; Schema: snap_v1; Owner: postgres
--

INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (1, 'Восточные');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (2, 'Пряные');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (3, 'Цветочные');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (4, 'Гурманские');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (5, 'Пудровые');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (6, 'Древесные');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (7, 'Фруктовые');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (8, 'Амбровые');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (9, 'Цитрусовые');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (10, 'Фужерные');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (11, 'Кожаные');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (13, 'Мускусные');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (15, 'Шипровые');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (16, 'Травяные');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (18, 'Табачные');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (19, 'Акватические');
INSERT INTO snap_v1.notes OVERRIDING SYSTEM VALUE VALUES (20, 'Смолистые');


--
-- TOC entry 3000 (class 0 OID 16406)
-- Dependencies: 206
-- Data for Name: notes_to_perfume; Type: TABLE DATA; Schema: snap_v1; Owner: postgres
--

INSERT INTO snap_v1.notes_to_perfume VALUES (1, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (1, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (2, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (2, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (3, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (3, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (7, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (6, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (6, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (5, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (42, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (41, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (40, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (39, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (38, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (37, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (37, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (36, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (35, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (34, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (33, 10);
INSERT INTO snap_v1.notes_to_perfume VALUES (32, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (31, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (30, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (29, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (28, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (27, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (26, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (25, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (25, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (24, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (23, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (22, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (22, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (21, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (20, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (19, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (18, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (17, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (17, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (16, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (15, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (15, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (14, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (14, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (13, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (13, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (12, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (11, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (10, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (10, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (9, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (8, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (43, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (44, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (45, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (46, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (47, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (48, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (49, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (50, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (51, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (52, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (53, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (54, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (55, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (56, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (57, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (58, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (59, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (60, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (59, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (60, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (61, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (62, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (63, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (64, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (65, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (66, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (67, 10);
INSERT INTO snap_v1.notes_to_perfume VALUES (68, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (68, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (70, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (70, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (70, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (71, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (71, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (71, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (72, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (72, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (73, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (74, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (75, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (75, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (76, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (76, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (77, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (78, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (79, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (80, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (81, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (84, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (84, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (85, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (85, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (86, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (86, 15);
INSERT INTO snap_v1.notes_to_perfume VALUES (87, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (87, 15);
INSERT INTO snap_v1.notes_to_perfume VALUES (88, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (88, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (89, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (90, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (91, 10);
INSERT INTO snap_v1.notes_to_perfume VALUES (92, 10);
INSERT INTO snap_v1.notes_to_perfume VALUES (93, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (93, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (94, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (94, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (95, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (96, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (97, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (97, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (98, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (98, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (99, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (100, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (101, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (102, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (103, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (103, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (104, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (104, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (105, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (105, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (105, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (106, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (106, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (106, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (4802, 15);
INSERT INTO snap_v1.notes_to_perfume VALUES (4803, 15);
INSERT INTO snap_v1.notes_to_perfume VALUES (4804, 15);
INSERT INTO snap_v1.notes_to_perfume VALUES (64, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (69, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (99, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (100, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4655, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4656, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4657, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4658, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (4659, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (4660, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4661, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4662, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4663, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4664, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4665, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4666, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4667, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4668, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4669, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4670, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4671, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4672, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4673, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4674, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4675, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4676, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4677, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4677, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4677, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4678, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4678, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4678, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4679, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4679, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4679, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4680, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4681, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4682, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4683, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4684, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4684, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4685, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4685, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4686, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4686, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4687, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4687, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4688, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4688, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4689, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4690, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4691, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4691, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4691, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4692, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4692, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4692, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4693, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4693, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4693, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4694, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4695, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4696, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4697, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (4698, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (4699, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4700, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4701, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4702, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4702, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4703, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (4704, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (4705, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4706, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4707, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4708, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4709, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4710, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4711, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (4712, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (4713, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4714, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4715, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4716, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4717, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4718, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4719, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (4720, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (4721, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4722, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4723, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4724, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4725, 18);
INSERT INTO snap_v1.notes_to_perfume VALUES (4726, 18);
INSERT INTO snap_v1.notes_to_perfume VALUES (4727, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4728, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4729, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4730, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4731, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4732, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4733, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4734, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4735, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (4736, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (4737, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (4738, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (4739, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4740, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4741, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4742, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4743, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4744, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4745, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (4746, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (4747, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4748, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4749, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (4750, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (4751, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (4752, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (4753, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4754, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4755, 19);
INSERT INTO snap_v1.notes_to_perfume VALUES (4756, 19);
INSERT INTO snap_v1.notes_to_perfume VALUES (4757, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4758, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4759, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4760, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4761, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4762, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4763, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4764, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4765, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4766, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4767, 19);
INSERT INTO snap_v1.notes_to_perfume VALUES (4767, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4768, 19);
INSERT INTO snap_v1.notes_to_perfume VALUES (4768, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4769, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4770, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4771, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4771, 20);
INSERT INTO snap_v1.notes_to_perfume VALUES (4772, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4772, 20);
INSERT INTO snap_v1.notes_to_perfume VALUES (4773, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4773, 20);
INSERT INTO snap_v1.notes_to_perfume VALUES (4774, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4774, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4775, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4775, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4776, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4776, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4777, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4777, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4778, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4778, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4779, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4779, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4780, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4781, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4782, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4783, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (4784, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (4785, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (4786, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4786, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4787, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4787, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4788, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4788, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4789, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4790, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4791, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4791, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4792, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4792, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4793, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4793, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4794, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4794, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4795, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4795, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4796, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4796, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4797, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (4798, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (4799, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4800, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4801, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4805, 10);
INSERT INTO snap_v1.notes_to_perfume VALUES (4805, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4806, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4807, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4808, 19);
INSERT INTO snap_v1.notes_to_perfume VALUES (4808, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4809, 19);
INSERT INTO snap_v1.notes_to_perfume VALUES (4809, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4810, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4810, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4811, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4811, 16);
INSERT INTO snap_v1.notes_to_perfume VALUES (4812, 10);
INSERT INTO snap_v1.notes_to_perfume VALUES (4813, 10);
INSERT INTO snap_v1.notes_to_perfume VALUES (4814, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4815, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4816, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4817, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4818, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4819, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4820, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4821, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4822, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4823, 8);
INSERT INTO snap_v1.notes_to_perfume VALUES (4824, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4825, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4826, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4827, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (4828, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4829, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4830, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4831, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4832, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4832, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4833, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4833, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4834, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4834, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4835, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4836, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4837, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4838, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4839, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4840, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4841, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4842, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4843, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4843, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4844, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4844, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4845, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4846, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4847, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4848, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4849, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (4850, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (4851, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4852, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4853, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4853, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4853, 11);
INSERT INTO snap_v1.notes_to_perfume VALUES (4854, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4855, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4856, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4856, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4857, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4857, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4858, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (4859, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (4860, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (4861, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (4861, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4862, 9);
INSERT INTO snap_v1.notes_to_perfume VALUES (4862, 2);
INSERT INTO snap_v1.notes_to_perfume VALUES (4863, 19);
INSERT INTO snap_v1.notes_to_perfume VALUES (4864, 19);
INSERT INTO snap_v1.notes_to_perfume VALUES (4865, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4866, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4867, 5);
INSERT INTO snap_v1.notes_to_perfume VALUES (4867, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4868, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4869, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4870, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (4870, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4871, 13);
INSERT INTO snap_v1.notes_to_perfume VALUES (4871, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4872, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4872, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4873, 1);
INSERT INTO snap_v1.notes_to_perfume VALUES (4873, 6);
INSERT INTO snap_v1.notes_to_perfume VALUES (4874, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4875, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4876, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4877, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4878, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4879, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4880, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4881, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4882, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4883, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4884, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4884, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4885, 4);
INSERT INTO snap_v1.notes_to_perfume VALUES (4885, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4886, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4887, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4887, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4888, 7);
INSERT INTO snap_v1.notes_to_perfume VALUES (4888, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4889, 3);
INSERT INTO snap_v1.notes_to_perfume VALUES (4890, 9);


--
-- TOC entry 2997 (class 0 OID 16388)
-- Dependencies: 203
-- Data for Name: perfume; Type: TABLE DATA; Schema: snap_v1; Owner: postgres
--

INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (26, 'f', 600, 50, 'верхние ноты
апельсин, мандарин, яблоко, ананас
средние ноты ............ жасмин, ландыш, карамель базовые ноты
ваниль, кедр, сандаловое дерево, мускус', 'ALAN BRAY
mademoiselle
bonbon', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/82e34c16-d36f-43a1-bca9-5d3c15975c12');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4659, 'm', 7100, 90, 'верхние ноты лаванда, лимон средние ноты флердоранж базовые ноты кедр', 'GUCCI guilty love edition', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-34.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (16, 'f', 1100, 75, 'Верхние ноты:
жасмин, шафран
Средние ноты:
пихтовый бальзам, кедр
Базовые ноты:
кашемировое дерево, амбра, мох, коричневый сахар', 'ALAN BRAY
signorina
allettante', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/90f8e517-b21f-4c6f-86db-29bc3dc9228a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (15, 'f', 3600, 100, 'Верхние ноты:
розовый перец
Средние ноты:
роза, кедр
Базовые ноты:
ваниль, бензоин', 'ALAN BRAY
maison vanille
de madagascar', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/7f4cbe69-ffc0-4210-88b2-20b9bdd89dc6');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (8, 'f', 800, 50, 'Верхние ноты:
цитрусовые аккорды, апельсин, пряные ноты
Средние ноты:
цветочные аккорды, роза, нероли
Базовые ноты:
ваниль, древесные аккорды, мускус', 'ALAN BRAY
vanille', 'вечерние', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/f4dbe291-a529-4185-b93c-6645e0456fdb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (25, 'u', 3600, 100, 'верхние ноты
яблоко granny smith, персик, маракуйя
средние ноты
базовые ноты
кедр, кориандр
мускус, амбра, пачули', 'ALAN BRAY
maison ambre
oriental', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/e37c612f-a15e-4141-8e86-1f4a972fb308');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (21, 'f', 700, 50, 'верхние ноты мякоть персика, белые цветы, чёрная
смородина
средние ноты акватический аккорд, роза, белый сандал
базовые ноты мускус, гелиотроп, ваниль', 'ALAN BRAY
mademoiselle
désir', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/364575a2-79c7-4b25-8b09-a47bcefd98ac');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (38, 'm', 900, 100, 'верхние ноты ..... лайм, яблоко, аккорд мартини
средние ноты ... лайм, яблоко, аккорд мартини
базовые ноты
чёрный перец, корица', 'ALAN BRAY
highland', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/8706da35-67c5-4db1-ac7c-f9ff48d85c22');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (37, 'f', 600, 50, 'верхние ноты
средние ноты базовые ноты
• апельсин, мандарин, яблоко, ананас
жасмин, ландыш, карамель
ваниль, кедр, сандаловое дерево, мускус', 'ALAN BRAY
mademoiselle
bal de nice', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/569908c7-21e0-4e1b-aca7-6b00f1d29430');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (35, 'm', 800, 100, 'верхние ноты
средние ноты
базовые ноты
сандал, оливковое дерево
розмарин, лаванда
. яблоко, мандарин, корица', 'ALAN BRAY
excellent', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b8d9a77d-efc2-4733-ad22-81fcd2f0778d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (34, 'm', 1050, 100, 'верхние ноты
средние ноты
базовые ноты
ALAN BRAY woodland
企
....... лимон, яблоко
морской бриз, лаванда, герань ветивер, кедр, амбра, бобы тонка', 'ALAN BRAY
woodland', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/e796c6b8-ae0c-4cc1-891f-63791949a86a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (33, 'm', 900, 100, 'верхние ноты
.............
бергамот, розовые ягоды, грейпфрут
средние ноты
водный аккорд, кардамон, лаванда
базовые ноты
мускус, мох сандал', 'ALAN BRAY
l''homme legend', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c762c85e-5b8d-433d-a10d-25ba4a575e2d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (32, 'm', 900, 100, 'верхние ноты ....... бергамот, черная смородина
средние ноты
кардамон, жасмин
базовые ноты
дубовый мох, кедр, мускус', 'ALAN BRAY
l''homme
seduction', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/999a33ba-110b-4548-8dc7-70c153865950');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (31, 'm', 900, 100, 'верхние ноты
......... яблоко, бергамот, лимон
средние ноты
・・・・・・・・・・
гвоздика, ландыш, роза
базовые ноты
................. янтарь, мускус, ваниль', 'ALAN BRAY
l''homme
adventure', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/1d98e628-1184-432d-ad17-c145ced633c4');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (30, 'f', 3600, 100, 'верхние ноты
средние ноты базовые ноты
роза, засахаренные фрукты клевер, жасмин, гелиотроп
мускус, серая амбра', 'ALAN BRAY
maison la fête de
la rose', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/624e7165-a828-409a-95f0-c71ae53a8026');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (29, 'f', 3600, 100, 'верхние ноты
............. ревень, перец, кориандр
средние ноты
гардения, тубероза, жасмин, ландыш, гвоздика
базовые ноты
амбра, ладан, ветивер, кожа', 'ALAN BRAY
maison fleurs
blanches&epices', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/6de2b415-2f19-4bee-ae14-cb7fd7a47bbc');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (28, 'f', 1000, 100, 'верхние ноты
розовый перец
средние ноты
роза, кедр
базовые ноты
ваниль, бензоин', 'ALAN BRAY
arabian vanilla', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c071a066-e89e-4eed-a69b-3e674dc98b3e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (27, 'f', 600, 50, 'верхние ноты
жасмин, шафран
средние ноты
пихтовый бальзам, кедр
базовые ноты
кашемировое дерево, амбра, мох, коричневый сахар', 'ALAN BRAY
mademoiselle
rouge', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/806d6c0c-f65d-45fa-9e62-ac20eb04c6bb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (49, 'u', 2100, 10, 'верхние ноты ..... имбирь и французская лаванда
средние ноты ................. пчелиный воск и мускус
базовые ноты
..・・・・・・
сандал', 'ESSENTIAL
PARFUMS PARIS
the musc', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c35402a1-4a8b-4d68-ba0e-f8e723b8a939');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4663, 'u', 17000, 100, 'верхние ноты................................... франжипани средние ноты .................. тиаре базовые ноты иланг-иланг', 'GUCCI the alchemist''s garden a chant for the nymph eau de parfum', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-45.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (17, 'f', 1000, 100, 'Верхние ноты:
цитрусовый лимонад, черная
смородина, засахаренные
Средние ноты:
роза, фрезия, сладости, жасмин
Базовые ноты:
мускус, кедр, сухая амбра', 'ALAN BRAY
privé amalthea', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/78d53949-e742-4f34-8918-298e71ab0ffd');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (14, 'f', 1000, 100, 'Верхние ноты:
персик, черная смородина, груша
Средние ноты:
ландыш, жасмин
Базовые ноты: 
сухая древесина, мускус, ваниль', 'ALAN BRAY
privé stella
solaris', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/194403af-07bf-4e75-b3c1-00c65b94fe18');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (9, 'f', 1000, 100, 'Верхние ноты:
малина, ананас
Средние ноты:
взбитые сливки, мед, слива, черная смородина
Базовые ноты:
пломбир, ваниль, белый мускус', 'ALAN BRAY
arabian alhayati', 'вечерние', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/e0bcbd7f-9cbd-42e6-9e22-14fb5ccac9a1');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (48, 'u', 7400, 100, 'верхние ноты ..... имбирь и французская лаванда
средние ноты ................. пчелиный воск и мускус
базовые ноты
..・・・・・・
сандал', 'ESSENTIAL
PARFUMS PARIS
the musc', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/e77bc6e8-09f8-4f7c-8aa1-b6d63590a1da');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (47, 'u', 2100, 10, 'верхние ноты
горький апельсина и
сандаловое дерево
средние ноты
..... цитрус и базилик
базовые ноты
мох, кипарис и сандал', 'ESSENTIAL
PARFUMS PARIS
orange x santal', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/f82edfff-909d-4633-a18c-fc3a0e4b95d4');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (46, 'u', 7400, 100, 'верхние ноты
горький апельсина и
сандаловое дерево
средние ноты
..... цитрус и базилик
базовые ноты
мох, кипарис и сандал', 'ESSENTIAL
PARFUMS PARIS
orange x santal', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/6eeaf284-c3a6-4e16-a24c-34c689c08def');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (45, 'u', 2100, 10, 'верхние ноты
джин и лайм
средние ноты
можжевельник, лаванда и горечавка
базовые ноты ......................... кашмеран и пачули', 'ESSENTIAL
PARFUMS PARIS
mon vetiver', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c03694c5-1895-4122-9214-97e8690d6d4e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (44, 'u', 7400, 100, 'верхние ноты
джин и лайм
средние ноты
можжевельник, лаванда и горечавка
базовые ноты ......................... кашмеран и пачули', 'ESSENTIAL
PARFUMS PARIS
mon vetiver', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/52b7bcf6-5318-4204-9946-ccfb1d05aebe');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (43, 'u', 7800, 100, 'верхние ноты
базилик, перец
средние ноты
акигалвуд, ветивер
базовые ноты
пачули и ambrofix', 'ESSENTIAL
PARFUMS PARIS bois
imperial refillable
limited edition', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/4b08a285-a2ee-4feb-9285-02df913c1911');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (42, 'm', 1200, 100, 'верхние ноты
средние ноты
базовые ноты
бергамот, лимон, лаванда
шалфей, герань, яблоко
кедр, ветивер, сандал', 'ALAN BRAY
l''homme strong', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/24dbac2d-68b1-4926-af1e-a21e2e423fa3');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (41, 'f', 800, 50, 'верхние ноты
средние ноты
базовые ноты
манго, кокос
белые цветы, роза
ваниль, мускус', 'ALAN BRAY
mademoiselle
inspiré', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/868e880f-404a-47d0-8390-b31c31bf755d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (40, 'm', 500, 100, 'верхние ноты лимон, акватические аккорды, лаванда
средние ноты
базовые ноты
роза, кожа, жасмин
мускус, амбра, сандаловое дерево', 'ALAN BRAY u
different genesis', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/41bdba09-9c65-4d4d-ae14-6c3a93846f83');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (39, 'm', 1600, 100, 'верхние ноты ...... лайм, яблоко, аккорд мартини
средние ноты
чёрный перец, корица, мускатный орех, аккорд
базовые ноты ..... ваниль, амбра, фундук, табак, гваяковое
дерево', 'ALAN BRAY on
my way', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/9e9e5f18-464a-48ff-b4d4-fc56a8c7a907');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (56, 'u', 7400, 100, 'верхние ноты
инжир, черный чай
средние ноты
мандарин, апельсиновый цвет
базовые ноты
сандал, бензоин', 'ESSENTIAL
PARFUMS PARIS
fig infusion by
nathalie lorson', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/1e9f7065-5b24-461e-ab2a-0e87d85a7ceb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (55, 'u', 2100, 10, 'верхние ноты
инжир, черный чай
средние ноты
мандарин, апельсиновый цвет
базовые ноты
сандал, бензоин', 'ESSENTIAL
PARFUMS PARIS
fig infusion by
nathalie lorson', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/349ccb7b-7bdc-4a8e-a67e-3fc1f2e1d7ca');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (54, 'u', 7400, 100, 'верхние ноты лесной орех, давана, кориандр
средние ноты
какао, чай, clearwood
базовые ноты
пачули, ветивер, cetalox', 'ESSENTIAL
PARFUMS PARIS
patchouli mania', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/443ea536-ae9c-46a2-b6a8-f8336bebbb51');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (53, 'u', 2100, 10, 'верхние ноты лесной орех, давана, кориандр
средние ноты
какао, чай, clearwood
базовые ноты
пачули, ветивер, cetalox', 'ESSENTIAL
PARFUMS PARIS
patchouli mania', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2f5b5dc4-ddc2-46d7-9d2a-d2d0c3a02c26');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (52, 'u', 14000, 100, 'верхние ноты
апельсин и нероли
средние ноты . амбра, нагармота, эвкалипт и шалфей
базовые ноты ... древесный аккорд, кашмеран и ваниль', 'JARDIN DE
PARFUMS white
essentials voyage', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/514c6fae-ee64-4a07-9f63-c57088417c9e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (51, 'u', 2100, 10, 'верхние ноты
турецкая роза и роза
средние ноты
грейпфрут и свежая мята
базовые ноты
личи, кедр, мускус и ваниль', 'ESSENTIAL
PARFUMS PARIS
rose magnetic', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b5299eed-eb8d-4c67-b9a2-dee7633a8cd8');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (50, 'u', 7400, 100, 'верхние ноты
турецкая роза и роза
средние ноты
грейпфрут и свежая мята
базовые ноты
личи, кедр, мускус и ваниль', 'ESSENTIAL
PARFUMS PARIS
rose magnetic', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c673387a-3c45-49db-805a-1383ed45939f');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (68, 'm', 37350, 50, 'верхние ноты
...... ром, ваниль, сухофрукты
средние ноты
пачули, кедр
базовые ноты
мускус, амбра', 'KILIAN PARIS
straight to
heaven', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/720c1fd4-caee-4f84-8a82-7ea32c01930f');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (67, 'u', 26000, 50, 'верхние ноты.......................
сандал, мускус, джин
средние ноты .............................. столистная роза
базовые ноты
огурец, можжевеловые ягоды', 'KILIAN PARIS
roses on ice', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/db270b8f-b1d5-4b78-9f7c-5c8fb3585c32');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (66, 'u', 26000, 50, 'верхние ноты.........................
лимонная эссенция
средние ноты
аккорд водки, имбирь
базовые ноты
белый мускус, амброксан', 'KILIAN PARIS
blue moon
ginger dash', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/532c8fe3-fb01-428f-999d-e73307e75941');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (64, 'u', 11350, 50, 'верхние ноты
имбирь
средние ноты
зеленый чай
базовые ноты
зефир', 'KILIAN PARIS
princess', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/bfbf69c9-9dc1-45d2-94b7-abc64573fd8d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (63, 'u', 28500, 50, 'верхние ноты
миндальное молоко
средние ноты
рис
базовые ноты
мускус', 'KILIAN PARIS
rolling in love', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/a51d8180-5fce-482f-9a4c-91c8831a1e17');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (62, 'u', 2500, 10, 'верхние ноты
базилик, перец
средние ноты
акигалвуд, ветивер
базовые ноты
пачули и ambrofix', 'ESSENTIAL
PARFUMS PARIS
bois imperial by
quentin bisch', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2a31df97-6efa-4745-8108-efc902217285');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (61, 'u', 8850, 100, 'верхние ноты
базилик, перец
средние ноты
акигалвуд, ветивер
базовые ноты
пачули и ambrofix', 'ESSENTIAL
PARFUMS PARIS
bois imperial by
quentin bisch', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/1e2a482f-2995-4384-bc28-8d623f0d4926');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (60, 'u', 2100, 10, 'верхние ноты
бергамот и жасмин
средние ноты
белый кедр и иланг-иланг
базовые ноты
бобы тонка', 'ESSENTIAL
PARFUMS PARIS
nice bergamote
refillable', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/f1d1bc28-36ca-4669-a0db-ea9aa17b4ad8');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (59, 'u', 7400, 100, 'верхние ноты
бергамот и жасмин
средние ноты
белый кедр и иланг-иланг
базовые ноты
бобы тонка', 'ESSENTIAL
PARFUMS PARIS
nice bergamote
refillable', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/5b22da9a-0a04-47e2-b2a0-50c4c4e09387');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (58, 'u', 2100, 10, 'верхние ноты
ваниль, бобы тонка и бензоин
средние ноты
корица и османтус
базовые ноты
пачули, кедр и мускус', 'ESSENTIAL
PARFUMS PARIS
divine vanille', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/9992d6fb-4eb4-4125-9ea1-19083660f5fe');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (57, 'u', 7400, 100, 'верхние ноты
ваниль, бобы тонка и бензоин
средние ноты
корица и османтус
базовые ноты
пачули, кедр и мускус', 'ESSENTIAL
PARFUMS PARIS
divine vanille', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/58887be3-6c1f-42b3-965e-7ca03dc46ef8');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (84, 'f', 10000, 50, 'верхние ноты .......
роза из непала
средние ноты .........
жасмин
базовые ноты .........
амбра, мускус', 'MONTALE roses
musk', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/bce55d3e-de23-4108-9dd7-0e14988eae88');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (83, 'm', 13900, 100, 'Верхние ноты: бергамот, красный
апельсин, красный имбирь
Средние ноты: шалфей, египетская
герань, кардамон
Базовые ноты: пачули, ветивер,
амбра', 'Dolce & Gabanna The one for men gold intense', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ffa1cfbb-b915-4ce7-9192-512a9ebf8d1d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (82, 'm', 10300, 50, 'Верхние ноты: бергамот, красный
апельсин, красный имбирь
Средние ноты: шалфей, египетская
герань, кардамон
Базовые ноты: пачули, ветивер,
амбра', 'Dolce & Gabanna The one for men gold intense', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ffa1cfbb-b915-4ce7-9192-512a9ebf8d1d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (81, 'f', 16700, 75, 'Верхние ноты: персик, личи,
мандарин, бергамот
 Средние ноты: Лилия, слива,
жасмин, ландыш
 Базовые ноты: ваниль, амбра,
мускус, ветивер', 'Dolce & Gabanna The one', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/6437f3e6-25fb-423e-b91c-d7bc1027031c');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (80, 'f', 17550, 75, 'Верхние ноты: мандарин, слива,
розовый перец
 Средние ноты: Роза, жасмин,
ландыш
 Базовые ноты: пачули, белый
мускус, ваниль', 'Dolce & Gabanna The one gold intense', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/405503ea-54c4-4af8-9f27-b74b8cb37fa9');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (79, 'm', 9800, 50, 'Верхние ноты: грейпфрут,
кориандр, базилик
Средние ноты: имбирь,
кардамон, цветок апельсина
Базовые ноты: амбра, табак,
кедр', 'Dolce & Gabanna The one for men', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/7602735d-a45c-421f-b816-3cc4432fc214');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (78, 'm', 8500, 50, 'Верхние ноты: грейпфрут,
мандарин
Средние ноты: морская вода,
можжевельник
Базовые ноты: мускус, янтарное
дерево', 'Dolce & Gabanna Light blue intense pour homme', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/877bb352-a29b-4343-b01d-b17f8e1e0fa7');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (77, 'f', 11100, 50, 'Верхние ноты: лимон, зелёное
яблоко
Средние ноты: белые цветы, цветок
апельсина
Базовые ноты: эссенция кедра,
мускус', 'Dolce & Gabanna Light blue forever', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/693fa7b7-81cb-4c91-9784-9b4ec8a22cea');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (76, 'f', 8300, 25, 'Верхние ноты: лимон, зелёное
яблоко
Средние ноты: белые цветы, цветок
апельсина
Базовые ноты: эссенция кедра,
мускус', 'Dolce & Gabanna Light blue forever', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/693fa7b7-81cb-4c91-9784-9b4ec8a22cea');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (75, 'm', 16350, 150, 'Верхние ноты: лимон, апельсин,
кардамон, ягоды можжевельника,
красные ягоды
Средние ноты: герань, мускатный
шалфей, лаванда, фиговый нектар
Базовые ноты: пачули, ветивер,
нагармота', 'Dolce & Gabanna K', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/19d039a6-2b30-45b0-b8cf-1e99c9f01a2f');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (74, 'm', 9800, 50, 'Верхние ноты: лимон, апельсин,
кардамон, ягоды можжевельника,
красные ягоды
Средние ноты: герань, мускатный
шалфей, лаванда, фиговый нектар
Базовые ноты: пачули, ветивер,
нагармота', 'Dolce & Gabanna K', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/19d039a6-2b30-45b0-b8cf-1e99c9f01a2f');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (73, 'f', 12400, 50, 'Верхние ноты: фиалка, бергамот
 Средние ноты: кофе, ирис
 Базовые ноты: ваниль, пачули', 'Dolce & Gabanna The only one', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/750c63b3-30ae-43a8-8ae3-90ff6ae4f1eb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (72, 'f', 8700, 30, 'Верхние ноты: фиалка, бергамот
 Средние ноты: кофе, ирис
 Базовые ноты: ваниль, пачули', 'Dolce & Gabanna The only one', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/750c63b3-30ae-43a8-8ae3-90ff6ae4f1eb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (71, 'u', 28500, 50, 'верхние ноты
гардения, сандал
средние ноты
болгарская роза , тубероза , иланг-иланг
базовые ноты
. ваниль, кедр, сандал', 'KILIAN PARIS
voulez-vous
coucher avec moi', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/6aa2092e-4810-4e67-a64b-5d0c2bddd0a5');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (70, 'u', 28500, 50, 'верхние ноты
кардамон, мускатный орех
средние ноты
кофе с корицей
базовые ноты
ваниль', 'KILIAN PARIS
intoxicated', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/d60ef5bc-5868-4a21-a1b4-78bd1f4ec631');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (69, 'u', 26000, 50, 'верхние ноты ............... сандал, пралине, ваниль
средние ноты
. дубовый абсолют, эссенция корицы, абсолют бобов тонка
базовые ноты
коньячная эссенция', 'KILIAN PARIS
angel''s share', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/466001b1-7ec8-4b5d-acca-b17e90cf7978');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (104, 'u', 14800, 100, 'верхние ноты
ваниль, мускус и миндаль
средние ноты
клубника
базовые ноты
перуанский бальзам', 'MONTALE
mukhallat', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ad170de9-4ec4-42c8-b2e9-464cf00973b1');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (103, 'u', 10000, 50, 'верхние ноты
ваниль, мускус и миндаль
средние ноты
клубника
базовые ноты
перуанский бальзам', 'MONTALE
mukhallat', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ad170de9-4ec4-42c8-b2e9-464cf00973b1');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (102, 'u', 15900, 100, 'верхние ноты .... голубая матча, цитрусы, черная
смородина
средние ноты ......... листья пачули, кедр, темная кожа,
табак
базовые ноты ........... абсолю матча, серая амбра, мускус', 'MONTALE blue
matcha', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/a697b289-869b-486c-be56-883df35c4bbb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (100, 'u', 15900, 100, 'верхние ноты ..... калабрийский бергамот, мята, травы и
шалфей
средние ноты ....... лотос, папирус, зеленый чай,
морские ноты и карамель
базовые ноты ............. австралийский сандал,
ванильный сахар и амбра', 'MONTALE
herbal aquatica', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c9d1b64f-d90e-4fd1-84e1-17cfd42a1f84');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (99, 'u', 10000, 50, 'верхние ноты ..... калабрийский бергамот, мята, травы и
шалфей
средние ноты ....... лотос, папирус, зеленый чай,
морские ноты и карамель
базовые ноты ............. австралийский сандал,
ванильный сахар и амбра', 'MONTALE
herbal aquatica', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c9d1b64f-d90e-4fd1-84e1-17cfd42a1f84');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (97, 'u', 10000, 50, 'верхние ноты ... сицилийский бергамот и лимон,
черный перец, розовый перец,
средние ноты.... непальский уд, кожа, морской
аккорд, имбирь, янтарь, пачули
базовые ноты ...... бразильский мате, фруктовый
мускус, дубовый мох, серая', 'MONTALE
oudyssee', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/73f18a58-6260-47e8-9333-c3dea4206bc3');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (96, 'u', 14800, 100, 'верхние ноты ........... черный, розовый перец,
индийский ладан, бергамот
средние ноты.....
листья пачули, темная кожа, камбоджийский уд, болгарская
базовые ноты ...... лабданум, сандал из мисора,
стручки ванили, белый мускус', 'MONTALE oud
edition', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/8b1dd89c-4570-441a-9daf-1d6d3d7b3ced');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (94, 'f', 14500, 100, 'верхние ноты
роза и жасмин
средние ноты .........................
амбра
базовые ноты
мускус', 'MONTALE roses
musk intense', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/61bbf0d7-1327-41be-9b2d-0e0a57e12595');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (93, 'f', 10600, 50, 'верхние ноты
роза и жасмин
средние ноты .........................
амбра
базовые ноты
мускус', 'MONTALE roses
musk intense', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/61bbf0d7-1327-41be-9b2d-0e0a57e12595');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (92, 'u', 14800, 100, 'верхние ноты
лаванда и пачули
средние ноты ........ дубовый мох и морская вода базовые
ноты
мускус и герань', 'MONTALE
fougeres
marines', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/04b34903-2509-4d25-9faa-0dc0840649c9');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (91, 'u', 10000, 50, 'верхние ноты
лаванда и пачули
средние ноты ........ дубовый мох и морская вода базовые
ноты
мускус и герань', 'MONTALE
fougeres
marines', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/04b34903-2509-4d25-9faa-0dc0840649c9');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (90, 'u', 14800, 100, 'верхние ноты ............................... бергамот, груша
средние ноты
ландыш, гвоздика
базовые ноты .................
мускус, ваниль, дерево сандалово', 'MONTALE wild
pears', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ff069790-707f-4176-bea0-75a1bc58cb72');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (89, 'u', 10000, 50, 'верхние ноты ............................... бергамот, груша
средние ноты
ландыш, гвоздика
базовые ноты .................
мускус, ваниль, дерево сандалово', 'MONTALE wild
pears', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ff069790-707f-4176-bea0-75a1bc58cb72');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (88, 'u', 14800, 100, 'верхние ноты
...............
агар дерево, лимон и грейпфрут
средние ноты
.....
роза, розмарин и вода
базовые ноты ................. амбра, мускус и имбир', 'MONTALE aoud
forest', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/f00a9ee5-2a7c-4628-8f19-807876628430');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (87, 'u', 15700, 100, 'верхние ноты ......... бергамот, роза и жасмин средние
ноты ....... дубовый мох и тропические фрукты
базовые ноты ..............................
мускус и пачули', 'MONTALE
chypre fruite', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/58a1f1c1-2570-43c2-af43-509bce572f3b');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (86, 'u', 10600, 50, 'верхние ноты ......... бергамот, роза и жасмин средние
ноты ....... дубовый мох и тропические фрукты
базовые ноты ..............................
мускус и пачули', 'MONTALE
chypre fruite', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/58a1f1c1-2570-43c2-af43-509bce572f3b');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (85, 'f', 14800, 100, 'верхние ноты .......
роза из непала
средние ноты .........
жасмин
базовые ноты .........
амбра, мускус', 'MONTALE roses
musk', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/bce55d3e-de23-4108-9dd7-0e14988eae88');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (13, 'f', 5400, 100, 'Верхние ноты:
цитрусовый лимонад, черная смородина, засахаренные
Средние ноты:
роза, фрезия, сладости, жасмин
Базовые ноты:
мускус, кедр, сухая амбра', 'ALAN BRAY
maison molécule
amoureuse', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ce521cb7-a477-4abe-9ba5-3bee3daaafa5');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (10, 'f', 3600, 100, 'Верхние ноты:
личи, ревень, бергамот,мускатный орех
Средние ноты:
турецкая роза, пион, ваниль
Базовые ноты:
мускус, кашмеран, ладан', 'ALAN BRAY
maison jardins
d’andalousie', 'вечерний', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2566b729-b240-43f0-8643-237e3ebf712d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (3, 'f', 3600, 100, 'Верхние ноты:
горький миндаль, ликер, черная вишня
Средние ноты:
вишня, слива, турецкая роза,
жасмин
Базовые ноты:
бобы тонка, ваниль, корица, перуанский бальзам', 'ALAN BRAY
maison cherry
absolute', 'весенне-летний, дневной', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/3a98eef6-27a8-4240-bb1f-2c06c9a8c274');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (2, 'm', 2100, 100, 'Верхние ноты;
вишня, розовые ягоды, давана, мускатный орех
Средние ноты:
жасмин, сандал, пачули, кедр, шафран
Базовые ноты:
кожа, ваниль, ладанник', 'ALAN BRAY
tobacco&cherry', 'вечерний', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/fa13e998-46c7-480d-90f2-2ed822a18c4d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (1, 'm', 2100, 100, 'Верхние ноты;
вишня, розовые ягоды, давана, мускатный орех
Средние ноты:
жасмин, сандал, пачули, кедр, шафран
Базовые ноты:
кожа, ваниль, ладанник', 'ALAN BRAY
tobacco&vanille', 'ежедневный', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/5a367608-a2ce-4bd7-9524-fa28a27b109a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (107, 'u', 14800, 100, 'верхние ноты
цитрусы
средние ноты ........ смородина чёрная, маракуйя
базовые ноты
мускус', 'MONTALE
pretty fruity', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/1d87b3aa-0d8e-46cc-be94-ea8ada5dbb6a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (106, 'u', 10000, 50, 'верхние ноты
цитрусы
средние ноты ........ смородина чёрная, маракуйя
базовые ноты
мускус', 'MONTALE
pretty fruity', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/1d87b3aa-0d8e-46cc-be94-ea8ada5dbb6a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (22, 'u', 3600, 100, 'верхние ноты.... шафран, ладан, слива
средние ноты............. роза, герань, кожа
базовые ноты ….кедр, уд', 'ALAN BRAY
maison terre du
oud', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ce182e7a-6b73-45ea-bb04-886bfcee7377');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (6, 'f', 5400, 100, 'Верхние ноты:
клубника, земляника, малина, яблоко
Средние ноты:
карамель
Базовые ноты:
ванил', 'ALAN BRAY
maison
strawberry
champagne', 'весенне-летние , дневной', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/15988438-d67e-4f24-8526-96f7693cde36');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4, 'f', 2100, 100, 'Верхние ноты:
ром, корица, яблоко, пралине
Cредние ноты:
ирис, сандал, ладанник
Базовые ноты:
древесный мох, бобы тонка,
амбра, ваниль, мирра, мускус', 'ALAN BRAY
gourmet canelé
flambé', 'вечерний', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/f31fcac9-d864-4a5d-ac57-29ad55fb6c7e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (24, 'f', 800, 50, 'верхние ноты
... яблоко, дыня, грейпфрут
средние ноты
аккорд зелени, цветочный букет, акватический аккорд
базовые ноты
ноты «шлейфа» кедр, амбра, мускус', 'ALAN BRAY
côte d''azur', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/3a75e3f6-e405-41b3-998a-73b988cf1d00');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (23, 'f', 600, 50, 'верхние ноты ...............
черная смородина, личи, маракуя
средние ноты
・・・・・・・・
... мандарин, лайм,зеленый цветочный и пряный аккорды
базовые ноты .
..・・・・・・・・
. мускус, жасмин,древесный
аккорд', 'ALAN BRAY
mademoiselle
jolie', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/0b121115-4b17-4b24-b8f6-3e8676061740');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (20, 'f', 1100, 75, 'верхние ноты персик
средние ноты яблоко, ананас, фиалка
базовые ноты ваниль, бобы тонка, мускус', 'ALAN BRAY
signorina candy', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/60bd5aed-f9b0-4bd9-85b2-496346c6ecd6');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (19, 'f', 600, 50, 'верхние ноты персик
средние ноты яблоко, ананас, фиалка
базовые ноты ваниль, бобы тонка, мускус', 'ALAN BRAY
mademoiselle
l''ange', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/64c1199e-a8ab-4390-8d5b-6e77b86a357b');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4662, 'u', 17000, 100, 'Верхние ноты: (на стадии обработки)
Средние ноты: (на стадии обработки) 
Базовые ноты: (на стадии обработки)', 'GUCCI the alchemist''s garden a chant for the nymph eau de parfum Парфюмерная вода 1)унисекс 2)цветочные', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-45.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (12, 'm', 2100, 100, 'Верхние ноты:
шалфей, яблоко, белый перец
Средние ноты:
кедр, корень ириса
Базовые ноты:
амбра, пачули', 'ALAN BRAY
amber&wood', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2e6b9297-d6fe-448f-87cc-de5e66fdb472');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (11, 'f', 2100, 100, 'Верхние ноты:
апельсин, корица
Средние ноты;
жасмин, ваниль
Базовые ноты;
карамель, сандал, мускус', 'ALAN BRAY
meringue', '', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/871d0b16-1683-427a-92db-923d1f7712e0');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4665, 'f', 7200, 50, 'верхние ноты груша средние ноты гардения, жасмин базовые ноты коричневый сахар, пачули', 'GUCCI flora gorgeous gardenia ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-49.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4666, 'f', 9300, 100, 'верхние ноты груша средние ноты гардения, жасмин базовые ноты коричневый сахар, пачули', 'GUCCI flora gorgeous gardenia ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-49.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4664, 'f', 5000, 30, 'верхние ноты груша средние ноты гардения, жасмин базовые ноты коричневый сахар, пачули', 'GUCCI flora gorgeous gardenia ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-49.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (7, 'f', 2100, 100, 'Верхние ноты:
бергамот, мандарин, корица, кориандр
Cредние ноты:
жасмин, флердоранж, роза
Базовые ноты:
ваниль, мускус, амбра', 'ALAN BRAY
délice floral', 'дневной', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/d12cf09a-cd40-419b-bdb2-fca23769daf3');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4667, 'u', 17000, 100, 'верхние ноты корица средние ноты ветивер базовые ноты пачули', 'GUCCI alchemist''s garden a gloaming night ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-55.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4671, 'u', 18000, 100, 'верхние ноты черный перец средние ноты ладан базовые ноты кедр', 'GUCCI alchemist''s garden love at your darkest ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-10.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4672, 'u', 18000, 100, 'верхние ноты белый пион средние ноты мадагаскарский жасмин базовые ноты ландыш', 'GUCCI alchemist''s garden tears from the moon', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-10.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4673, 'm', 6500, 50, 'верхние ноты французский лавандин средние ноты цистус базовые ноты пачули', 'GUCCI guilty', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-19.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4677, 'f', 4300, 30, 'верхние ноты персиковый цвет средние ноты жасмин, кориандр базовые ноты ветивер, пачули', 'GUCCI rush', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-28.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4679, 'f', 7800, 75, 'верхние ноты персиковый цвет средние ноты жасмин, кориандр базовые ноты ветивер, пачули', 'GUCCI rush', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-28.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4678, 'f', 5800, 50, 'верхние ноты персиковый цвет средние ноты жасмин, кориандр базовые ноты ветивер, пачули', 'GUCCI rush', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-28.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4669, 'f', 7200, 50, 'верхние ноты гальбанум, бутоны черной смородины средние ноты закрытые бутоны жасмина, рангунская лиана, тубероза базовые ноты мускус, сандаловое дерево', 'GUCCI bloom ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-05.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4680, 'f', 1900, 7.4, 'верхние ноты гальбанум, бутоны черной смородины средние ноты закрытые бутоны жасмина, рангунская лиана, тубероза базовые ноты мускус, сандаловое дерево', 'GUCCI bloom ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-34.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4670, 'f', 9400, 100, 'верхние ноты гальбанум, бутоны черной смородины средние ноты закрытые бутоны жасмина, рангунская лиана, тубероза базовые ноты мускус, сандаловое дерево', 'GUCCI bloom ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-05.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4668, 'f', 5000, 30, 'верхние ноты гальбанум, бутоны черной смородины средние ноты закрытые бутоны жасмина, рангунская лиана, тубероза базовые ноты мускус, сандаловое дерево', 'GUCCI bloom ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-05.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4681, 'f', 5000, 30, 'верхние ноты ........... жасмин самбак и побег в рангуне средние ноты ... тубероза, жасмин и иланг-иланг базовые ноты ......... сандал, ирис, бензоин, солнечные ноты, древесные', 'GUCCI bloom profumo di fiori ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-39.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4686, 'f', 8350, 90, 'верхние ноты ........ мандарин, розовый перец средние ноты персик, сирень, герань базовые ноты ... пачули, амбра, ваниль, белый мускус', 'GUCCI guilty pour femme Парфюмерная вода 1)женский 2)восточные, цветочные 3)~4300 р/6150 р/8350 р 4)30 мл/50 мл/90 мл 5)верхние ноты ........ мандарин, розовый перец средние ноты персик, сирень, герань базовые ноты ... пачули, амбра, ваниль, белый мускус', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-43.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4685, 'f', 6150, 50, 'верхние ноты ........ мандарин, розовый перец средние ноты персик, сирень, герань базовые ноты ... пачули, амбра, ваниль, белый мускус', 'GUCCI guilty pour femme Парфюмерная вода 1)женский 2)восточные, цветочные 3)~4300 р/6150 р/8350 р 4)30 мл/50 мл/90 мл 5)верхние ноты ........ мандарин, розовый перец средние ноты персик, сирень, герань базовые ноты ... пачули, амбра, ваниль, белый мускус', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-43.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4684, 'f', 4300, 30, 'верхние ноты ........ мандарин, розовый перец средние ноты персик, сирень, герань базовые ноты ... пачули, амбра, ваниль, белый мускус', 'GUCCI guilty pour femme Парфюмерная вода 1)женский 2)восточные, цветочные 3)~4300 р/6150 р/8350 р 4)30 мл/50 мл/90 мл 5)верхние ноты ........ мандарин, розовый перец средние ноты персик, сирень, герань базовые ноты ... пачули, амбра, ваниль, белый мускус', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-43.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4688, 'm', 7100, 90, 'верхние ноты ......... зеленый кориандр и лаванда средние ноты апельсиновый цвет, нероли и зеленые ноты базовые ноты ........ пачули и белый кедр', 'GUCCI guilty pour homme black ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-58.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4687, 'm', 5050, 50, 'верхние ноты ......... зеленый кориандр и лаванда средние ноты апельсиновый цвет, нероли и зеленые ноты базовые ноты ........ пачули и белый кедр', 'GUCCI guilty pour homme black ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-58.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4689, 'f', 5800, 50, 'верхние ноты лимон, груша и арбуз средние ноты .... гардения, лотос и франжипани базовые ноты ........ сандал, белый кедр и мускус', 'GUCCI flora emerald gardenia ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-04.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4690, 'f', 8600, 100, 'верхние ноты лимон, груша и арбуз средние ноты .... гардения, лотос и франжипани базовые ноты ........ сандал, белый кедр и мускус', 'GUCCI flora emerald gardenia ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-04.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4693, 'm', 8600, 150, 'верхние ноты ............. калабрийский бергамот, розмарин и ягоды средние ноты....... базовые ноты ....... фиалка, гелиотроп и кипарис лист пачули, белый мускус и белый кедр', 'GUCCI guilty cologne ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-09.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4692, 'm', 7100, 90, 'верхние ноты ............. калабрийский бергамот, розмарин и ягоды средние ноты....... базовые ноты ....... фиалка, гелиотроп и кипарис лист пачули, белый мускус и белый кедр', 'GUCCI guilty cologne ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-09.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4691, 'm', 5000, 50, 'верхние ноты ............. калабрийский бергамот, розмарин и ягоды средние ноты....... базовые ноты ....... фиалка, гелиотроп и кипарис лист пачули, белый мускус и белый кедр', 'GUCCI guilty cologne ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-09.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4695, 'f', 7800, 50, 'верхние ноты ирис и тубероза средние ноты жасмин базовые ноты дамасская роза', 'GUCCI bloom ambrosia di fiori ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-15.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4694, 'f', 5400, 30, 'верхние ноты ирис и тубероза средние ноты жасмин базовые ноты дамасская роза', 'GUCCI bloom ambrosia di fiori ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-15.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4697, 'f', 5460, 30, 'верхние ноты бергамот средние ноты .... иланг-иланг, лилия касабланка и апельсиновый цвет базовые ноты ........ амбра, сандал и таитянская ваниль', 'GUCCI bamboo ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-23.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4701, 'm', 7400, 90, 'верхние ноты лимон, лаванда средние ноты цветы апельсина базовые ноты ................... пачули, кедр, ваниль', 'GUCCI guilty pour homme ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-28.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4699, 'm', 3200, 30, 'верхние ноты лимон, лаванда средние ноты цветы апельсина базовые ноты ................... пачули, кедр, ваниль', 'GUCCI guilty pour homme ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-28.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4704, 'u', 6360, 50, 'Верхние ноты: ваниль Средние ноты: ваниль Базовые ноты: ваниль', 'Zielinski & Rosen Black vanilla ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-01-59.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4703, 'u', 2200, 10, 'Верхние ноты: ваниль Средние ноты: ваниль Базовые ноты: ваниль', 'Zielinski & Rosen Black vanilla ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-01-59.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4705, 'u', 2200, 10, 'Верхние ноты: чёрные перец  Средние ноты: амбра  Базовые ноты: нероли', 'Zielinski & Rosen Black pepper, vetiver, neroli, amber ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-04.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4716, 'u', 6360, 50, 'Верхние ноты: дубовый мох Средние ноты: амбра Базовые ноты: -', 'Zielinski & Rosen Oakmoss & amber', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-28.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4717, 'u', 2200, 10, 'Верхние ноты: ветивер Средние ноты: лимон Базовые ноты: бергамот ', 'Zielinski & Rosen Vetiver, lemon, bergamot ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-34.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4720, 'u', 6360, 50, 'Верхние ноты: бергамот  Средние ноты: зелёный чай Базовые ноты: сандал', 'Zielinski & Rosen Bergamot, green tea, sandalwood, musk ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-39.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4719, 'u', 2200, 10, 'Верхние ноты: бергамот  Средние ноты: зелёный чай Базовые ноты: сандал', 'Zielinski & Rosen Bergamot, green tea, sandalwood, musk ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-39.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4722, 'u', 6360, 50, 'Верхние ноты: розмарин Средние ноты: лимон Базовые ноты: нероли', 'Zielinski & Rosen Rosemary & lemon, neroli ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-44.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4724, 'u', 6360, 50, 'Верхние ноты: амбра Средние ноты: пачули Базовые ноты: -', 'Zielinski & Rosen Moss ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-48.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4726, 'u', 6360, 50, 'Верхние ноты: табак Средние ноты: ветивер Базовые ноты: амбра', 'Zielinski & Rosen Tobacco, vetiver & amber ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-53.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4725, 'u', 2200, 10, 'Верхние ноты: табак Средние ноты: ветивер Базовые ноты: амбра', 'Zielinski & Rosen Tobacco, vetiver & amber ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-53.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4728, 'u', 6360, 50, 'Верхние ноты: кедр и сандал Средние ноты: амбра Базовые ноты: пачули', 'Zielinski & Rosen Cedarwood & sandalwood & amber, patchouli ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-58.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4730, 'u', 6360, 50, 'Верхние ноты: чёрный ветивер Средние ноты: амбра Базовые ноты: -', 'Zielinski & Rosen Black vetiver & amber ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-04.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4729, 'u', 2200, 10, 'Верхние ноты: чёрный ветивер Средние ноты: амбра Базовые ноты: -', 'Zielinski & Rosen Black vetiver & amber ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-04.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4731, 'u', 2200, 10, 'Верхние ноты: Роза Средние ноты: жасмин Базовые ноты: нарцисс', 'Zielinski & Rosen Rose, jasmine, narcissus ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-08.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4732, 'u', 6360, 50, 'Верхние ноты: Роза Средние ноты: жасмин Базовые ноты: нарцисс', 'Zielinski & Rosen Rose, jasmine, narcissus ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-08.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4734, 'u', 6360, 50, 'Верхние ноты: орхидея Средние ноты: ваниль Базовые ноты: амбра', 'Zielinski & Rosen Orchid, vanilla, amber', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-13.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4736, 'u', 6360, 50, 'Верхние ноты: кожа Средние ноты: сандал Базовые ноты: амбра', 'Zielinski & Rosen Leather, sandalwood, amber ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-18.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4735, 'u', 2200, 10, 'Верхние ноты: кожа Средние ноты: сандал Базовые ноты: амбра', 'Zielinski & Rosen Leather, sandalwood, amber ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-18.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4738, 'u', 6360, 50, 'Верхние ноты: пудровые ноты Средние ноты: кедр Базовые ноты: палисандр', 'Zielinski & Rosen 717 (powdery notes, cedar, rosewood) ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-23.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4737, 'u', 2200, 10, 'Верхние ноты: пудровые ноты Средние ноты: кедр Базовые ноты: палисандр', 'Zielinski & Rosen 717 (powdery notes, cedar, rosewood) ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-23.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4740, 'u', 6360, 50, 'Верхние ноты: имбирь, пачули Средние ноты, чёрный перец Базовые ноты: алозия', 'Zielinski & Rosen Ginger, patchouli, black pepper, aloysia ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-27.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4739, 'u', 2200, 10, 'Верхние ноты: имбирь, пачули Средние ноты, чёрный перец Базовые ноты: алозия', 'Zielinski & Rosen Ginger, patchouli, black pepper, aloysia ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-27.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4742, 'u', 6360, 50, 'Верхние ноты: лемонграсс Средние ноты: ветивер Базовые ноты: амбра', 'Zielinski & Rosen Lemongrass & vetiver, amber ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-32.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4741, 'u', 2200, 10, 'Верхние ноты: лемонграсс Средние ноты: ветивер Базовые ноты: амбра', 'Zielinski & Rosen Lemongrass & vetiver, amber ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-32.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4661, 'f', 7400, 50, 'верхние ноты ...... ежевика, бергамот и розовый перец средние ноты болгарская роза, кипарис, древесные ноты и ветивер', 'GUCCI guilty absolute pour femme', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-40.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4660, 'f', 5200, 30, 'верхние ноты ...... ежевика, бергамот и розовый перец средние ноты болгарская роза, кипарис, древесные ноты и ветивер', 'GUCCI guilty absolute pour femme', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-40.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4707, 'u', 2200, 10, 'Верхние ноты: персик Средние ноты: маракуйя  Базовые ноты: мускус', 'Zielinski & Rosen Peach, passion fruit, musk ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-10.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4710, 'u', 6360, 50, 'Верхние ноты: апельсин Средние ноты: жасмин Базовые ноты: ванил', 'Zielinski & Rosen Orange & jasmine ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-14.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4709, 'u', 2200, 10, 'Верхние ноты: апельсин Средние ноты: жасмин Базовые ноты: ванил', 'Zielinski & Rosen Orange & jasmine ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-14.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4743, 'u', 2200, 10, 'Верхние ноты: Иланг-иланг Средние ноты: жасмин Базовые ноты: нероли', 'Zielinski & Rosen Ylang-ylang, jasmine, neroli ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-37.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4744, 'u', 6360, 50, 'Верхние ноты: Иланг-иланг Средние ноты: жасмин Базовые ноты: нероли', 'Zielinski & Rosen Ylang-ylang, jasmine, neroli ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-37.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4745, 'u', 2200, 10, 'Верхние ноты: мускус Средние ноты: кедр Базовые ноты: амбра', 'Zielinski & Rosen 22 ( musk, cedar, amber) ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-42.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4747, 'u', 2200, 10, 'Верхние ноты: палисандр Средние ноты: сандал Базовые ноты: кедр', 'Zielinski & Rosen Rosewood & candalwood, cedarwood ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-47.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4733, 'u', 2200, 10, 'Верхние ноты: орхидея Средние ноты: ваниль Базовые ноты: амбра', 'Zielinski & Rosen Orchid, vanilla, amber', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-13.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4750, 'u', 6360, 50, 'Верхние ноты: мускус Средние ноты: -  Базовые ноты: -', 'Zielinski & Rosen Musk ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-53.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4749, 'u', 2200, 10, 'Верхние ноты: мускус Средние ноты: -  Базовые ноты: -', 'Zielinski & Rosen Musk ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-53.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4752, 'u', 9400, 100, 'Верхние ноты: бергамот, фундук, юзу Средние ноты: ирис, пралине, лакрица Базовые ноты: кашмеран, амбра, мускус, пачули', 'Bon parfumeur paris! 501', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c60db64f-30e3-4627-bd44-1a4153ca094a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4751, 'u', 4800, 30, 'Верхние ноты: бергамот, фундук, юзу Средние ноты: ирис, пралине, лакрица Базовые ноты: кашмеран, амбра, мускус, пачули', 'Bon parfumeur paris! 501', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c60db64f-30e3-4627-bd44-1a4153ca094a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4754, 'u', 9400, 100, 'Верхние ноты: лимон, грейпфрут, арбуз Средние ноты: цикламен, ландыш, манго, красная смородина, жасмин Базовые ноты: сандал, карамель, персик', 'Bon parfumeur paris! 202', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/12a8f092-88a5-4361-8c39-d58544ce6767');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4753, 'u', 4800, 30, 'Верхние ноты: лимон, грейпфрут, арбуз Средние ноты: цикламен, ландыш, манго, красная смородина, жасмин Базовые ноты: сандал, карамель, персик', 'Bon parfumeur paris! 202', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/12a8f092-88a5-4361-8c39-d58544ce6767');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4756, 'u', 9400, 100, 'Верхние ноты: бергамот, юзу, листья фиалки Средние ноты: жасмин, нероли, элеми Базовые ноты: ветивер, мускус', 'Bon parfumeur paris! 003', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/e4262cb4-a346-4fc4-bccc-4f7b454b5c79');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4755, 'u', 4800, 30, 'Верхние ноты: бергамот, юзу, листья фиалки Средние ноты: жасмин, нероли, элеми Базовые ноты: ветивер, мускус', 'Bon parfumeur paris! 003', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/e4262cb4-a346-4fc4-bccc-4f7b454b5c79');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4758, 'u', 9400, 100, 'Верхние ноты: яблоко, цветок миндаля Средние ноты: ваниль, гелиотроп Базовые ноты: сахарная пудра, мускус, бензоин, сантал, карамель', 'Bon parfumeur paris! 402', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/fe2755eb-d0ac-44be-acfc-17eebb0eb428');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4757, 'u', 4800, 30, 'Верхние ноты: яблоко, цветок миндаля Средние ноты: ваниль, гелиотроп Базовые ноты: сахарная пудра, мускус, бензоин, сантал, карамель', 'Bon parfumeur paris! 402', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/fe2755eb-d0ac-44be-acfc-17eebb0eb428');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4760, 'u', 9400, 100, 'Верхние ноты: апельсин, базилик, имбирь, коньяк Средние ноты: корица, гвоздика, герань, зелень Базовые ноты: пачули, лабданум, ваниль, табак', 'Bon parfumeur paris! 902', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2ea8440f-38eb-4907-8c4b-32e542f7e4f8');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4759, 'u', 4800, 30, 'Верхние ноты: апельсин, базилик, имбирь, коньяк Средние ноты: корица, гвоздика, герань, зелень Базовые ноты: пачули, лабданум, ваниль, табак', 'Bon parfumeur paris! 902', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2ea8440f-38eb-4907-8c4b-32e542f7e4f8');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4761, 'u', 4800, 30, 'Верхние ноты: лимон, мандарин, плющ, грейпфрут Средние ноты: розмарин, розовый перец, мускатный орех, морские ноты Базовые ноты: кедр, кипарис, мускус', 'Bon parfumeur paris! 801', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/d429db41-8aa3-471a-9493-edb3d405809b');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4762, 'u', 9400, 100, 'Верхние ноты: лимон, мандарин, плющ, грейпфрут Средние ноты: розмарин, розовый перец, мускатный орех, морские ноты Базовые ноты: кедр, кипарис, мускус', 'Bon parfumeur paris! 801', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/d429db41-8aa3-471a-9493-edb3d405809b');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4764, 'u', 9400, 100, 'Верхние ноты: ладан, розовый перец, лимон Средние ноты: лаванда, кашмеран, кедр Базовые ноты: перуанский бальзам, ваниль, белый мускус', 'Bon parfumeur paris! 702', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/83322847-742d-44f5-aa57-b25a231fd9de');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4763, 'u', 4800, 30, 'Верхние ноты: ладан, розовый перец, лимон Средние ноты: лаванда, кашмеран, кедр Базовые ноты: перуанский бальзам, ваниль, белый мускус', 'Bon parfumeur paris! 702', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/83322847-742d-44f5-aa57-b25a231fd9de');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4765, 'u', 6500, 30, 'Верхние ноты: лимон, мускатный орех, лист фиалки, ладан Средние ноты: кипарис, шалфей Базовые ноты: ладанник, стиракс, бобы тонка, кожа, кашмеран', 'Bon parfumeur paris! 603', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/35f91d32-c564-4ea3-a908-faba3e4c1e09');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4766, 'u', 4800, 30, 'Верхние ноты: дамасская Роза, розовый перец, амбретта Средние ноты: давана, Роза, папирус Базовые ноты: ваниль, перуанский бальзам, сандал', 'Bon parfumeur paris! 106', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/67577b5b-a15c-40fb-a16b-f3fbd2227fc3');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4768, 'u', 7600, 100, 'Верхние ноты: озовый перец, ягоды можжевельника, имбирь Средние ноты: анис, иланг_x0002_иланг, морские брызги Базовые ноты: пачули, морские водоросли, серая амбра', 'Bon parfumeur paris! 803', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c76750ef-bd9f-40d6-92b0-732f171a9e6f');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4767, 'u', 3800, 30, 'Верхние ноты: озовый перец, ягоды можжевельника, имбирь Средние ноты: анис, иланг_x0002_иланг, морские брызги Базовые ноты: пачули, морские водоросли, серая амбра', 'Bon parfumeur paris! 803', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c76750ef-bd9f-40d6-92b0-732f171a9e6f');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4769, 'u', 4800, 30, 'Верхние ноты: груша, ягоды, нероли Средние ноты: жасмин, Роза, солнечный аккорд Базовые ноты: ваниль, древесные ноты, мускус, амбра', 'Bon parfumeur paris! 203', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/5ed02408-e838-4b10-851f-0f538751608e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4770, 'u', 9400, 100, 'Верхние ноты: груша, ягоды, нероли Средние ноты: жасмин, Роза, солнечный аккорд Базовые ноты: ваниль, древесные ноты, мускус, амбра', 'Bon parfumeur paris! 203', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/5ed02408-e838-4b10-851f-0f538751608e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4773, 'f', 51850, 100, 'Верхние ноты: черешня, масло горького миндаля Средние ноты: сироп из вишни гриот, турецкая Роза Базовые ноты: перуанский бальзам, обжаренные бобы тонка, сандаловое дерево, ветивер', 'Tom Ford Lost cherry ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/56881ff0-fd22-4c1c-acad-98326c2cffde');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4776, 'u', 37250, 100, 'Верхние ноты: табачный лист, специи Средние ноты: бобы тонка, цветок табака, ваниль, какао Базовые ноты: сухофрукты, древесные ноты', 'Tom Ford Tobacco vanille ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2187421a-341d-494f-9144-476aafaa673a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4775, 'u', 27550, 50, 'Верхние ноты: табачный лист, специи Средние ноты: бобы тонка, цветок табака, ваниль, какао Базовые ноты: сухофрукты, древесные ноты', 'Tom Ford Tobacco vanille ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2187421a-341d-494f-9144-476aafaa673a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4774, 'u', 17900, 30, 'Верхние ноты: табачный лист, специи Средние ноты: бобы тонка, цветок табака, ваниль, какао Базовые ноты: сухофрукты, древесные ноты', 'Tom Ford Tobacco vanille ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2187421a-341d-494f-9144-476aafaa673a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4779, 'f', 37250, 100, 'Верхние ноты: шафран, тимьян Средние ноты: мате, олибанум Базовые ноты: замша, мускус', 'Tom Ford White suede', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/7c7e3333-f8cf-4117-bdef-1d96d8c3decd');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4778, 'f', 27550, 50, 'Верхние ноты: шафран, тимьян Средние ноты: мате, олибанум Базовые ноты: замша, мускус', 'Tom Ford White suede', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/7c7e3333-f8cf-4117-bdef-1d96d8c3decd');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4777, 'f', 17900, 30, 'Верхние ноты: шафран, тимьян Средние ноты: мате, олибанум Базовые ноты: замша, мускус', 'Tom Ford White suede', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/7c7e3333-f8cf-4117-bdef-1d96d8c3decd');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4781, 'f', 27550, 50, 'Верхние ноты: бергамот, кардамон, розовый перец, фисташки Средние ноты: жасмин, тубероза, иланг-иланг Базовые ноты: амбра, боба тонка, бензоин, кокос', 'Tom Ford Soleil blanc ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/59af2900-302d-45ce-9392-2084455b52a0');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4780, 'f', 17900, 30, 'Верхние ноты: бергамот, кардамон, розовый перец, фисташки Средние ноты: жасмин, тубероза, иланг-иланг Базовые ноты: амбра, боба тонка, бензоин, кокос', 'Tom Ford Soleil blanc ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/59af2900-302d-45ce-9392-2084455b52a0');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4782, 'f', 37250, 100, 'Верхние ноты: бергамот, кардамон, розовый перец, фисташки Средние ноты: жасмин, тубероза, иланг-иланг Базовые ноты: амбра, боба тонка, бензоин, кокос', 'Tom Ford Soleil blanc ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/59af2900-302d-45ce-9392-2084455b52a0');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4785, 'u', 29100, 150, 'Верхние ноты: кардамон Средние ноты: жасмин самбак, кожа Базовые ноты: пачули, амбра, мох', 'Tom Ford Ombré leather', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/adec153f-73e7-4f4c-9b4c-15827c824c34');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4784, 'u', 23750, 100, 'Верхние ноты: кардамон Средние ноты: жасмин самбак, кожа Базовые ноты: пачули, амбра, мох', 'Tom Ford Ombré leather', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/adec153f-73e7-4f4c-9b4c-15827c824c34');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4783, 'u', 16950, 50, 'Верхние ноты: кардамон Средние ноты: жасмин самбак, кожа Базовые ноты: пачули, амбра, мох', 'Tom Ford Ombré leather', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/adec153f-73e7-4f4c-9b4c-15827c824c34');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4788, 'u', 51850, 100, 'Верхние ноты: мускатный шалфей, лаванда Средние ноты: горький миндаль, ваниль, кожа, ирис Базовые ноты: бобы тонка, кожа, кашмеран, амбра, светлая древесина', 'Tom Ford F*cking fabulous ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b03792dd-4a7b-44b4-b99d-c18993f526ac');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4786, 'u', 24300, 30, 'Верхние ноты: мускатный шалфей, лаванда Средние ноты: горький миндаль, ваниль, кожа, ирис Базовые ноты: бобы тонка, кожа, кашмеран, амбра, светлая древесина', 'Tom Ford F*cking fabulous ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b03792dd-4a7b-44b4-b99d-c18993f526ac');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4787, 'u', 38350, 50, 'Верхние ноты: мускатный шалфей, лаванда Средние ноты: горький миндаль, ваниль, кожа, ирис Базовые ноты: бобы тонка, кожа, кашмеран, амбра, светлая древесина', 'Tom Ford F*cking fabulous ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b03792dd-4a7b-44b4-b99d-c18993f526ac');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4789, 'u', 27550, 50, 'Верхние ноты: бергамот, семена моркови Средние ноты: Роза, жасмин, апельсиновый цвет, белые цветы, турецкая роза Базовые ноты: лабданум, бензоин, ваниль', 'Tom Ford Soleil neige ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/8a797e16-27bc-444a-93ee-6f868d274768');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4790, 'u', 37250, 100, 'Верхние ноты: бергамот, семена моркови Средние ноты: Роза, жасмин, апельсиновый цвет, белые цветы, турецкая роза Базовые ноты: лабданум, бензоин, ваниль', 'Tom Ford Soleil neige ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/8a797e16-27bc-444a-93ee-6f868d274768');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4793, 'u', 37250, 100, 'Верхние ноты: розовое дерево Средние ноты: кардамон, бобы тонка Базовые ноты: амбра', 'Tom Ford Oud wood ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/4b78c0eb-9f5b-4d0c-a804-d6daf95e0e28');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4792, 'u', 27550, 50, 'Верхние ноты: розовое дерево Средние ноты: кардамон, бобы тонка Базовые ноты: амбра', 'Tom Ford Oud wood ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/4b78c0eb-9f5b-4d0c-a804-d6daf95e0e28');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4791, 'u', 17900, 30, 'Верхние ноты: розовое дерево Средние ноты: кардамон, бобы тонка Базовые ноты: амбра', 'Tom Ford Oud wood ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/4b78c0eb-9f5b-4d0c-a804-d6daf95e0e28');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4796, 'f', 23700, 100, 'Верхние ноты: чёрный трюфель, чёрная смородина, гардения, жасмин, иланг-иланг, лимон Средние ноты: цветок лотоса, чёрная орхидея Базовые ноты: темный шоколад, ваниль, ладан, амбра, пачули, сандал', 'Tom Ford Black orchid', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/08df372b-6f7c-4364-8e5b-264034a2e28d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4798, 'u', 26980, 100, 'Верхние ноты: лист фиалки, кедр Средние ноты: жасмин самбак, корень ириса Базовые ноты: кожа, древесные ноты, табак', 'Tom Ford Ombré leather ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/a0b7e47e-6403-4cc9-a44d-186d4863c38e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4801, 'f', 23700, 100, 'Верхние ноты: турецкая роза, болгарская роза Средние ноты: иланг-иланг, экстракция кофе со2 Базовые ноты: кориандр, пачули', 'Tom Ford Cafe rose ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b16f76b8-bbaf-49dc-b6ca-bdee24c183b3');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4799, 'f', 11850, 30, 'Верхние ноты: турецкая роза, болгарская роза Средние ноты: иланг-иланг, экстракция кофе со2 Базовые ноты: кориандр, пачули', 'Tom Ford Cafe rose ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b16f76b8-bbaf-49dc-b6ca-bdee24c183b3');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4800, 'f', 16950, 50, 'Верхние ноты: турецкая роза, болгарская роза Средние ноты: иланг-иланг, экстракция кофе со2 Базовые ноты: кориандр, пачули', 'Tom Ford Cafe rose ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b16f76b8-bbaf-49dc-b6ca-bdee24c183b3');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4804, 'u', 51850, 100, 'Верхние ноты: майская роза, турецкая роза, болгарская роза Средние ноты: масло пачули, Сычуаньский перец Базовые ноты: обжаренные бобы тонка, толуагскмй бальзам', 'Tom Ford Rose prick ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/3fa29aca-2e67-4901-a314-f69b5e324437');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4803, 'u', 38350, 50, 'Верхние ноты: майская роза, турецкая роза, болгарская роза Средние ноты: масло пачули, Сычуаньский перец Базовые ноты: обжаренные бобы тонка, толуагскмй бальзам', 'Tom Ford Rose prick ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/3fa29aca-2e67-4901-a314-f69b5e324437');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4802, 'u', 24300, 30, 'Верхние ноты: майская роза, турецкая роза, болгарская роза Средние ноты: масло пачули, Сычуаньский перец Базовые ноты: обжаренные бобы тонка, толуагскмй бальзам', 'Tom Ford Rose prick ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/3fa29aca-2e67-4901-a314-f69b5e324437');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4805, 'u', 37250, 100, 'Верхние ноты: бергамот, мандарин, лимон, горький апельсин, лаванда, розмарин, мирт Средние ноты: африканский апельсиновый цвет, нероли, жасмин, питоспорум Базовые ноты: амбра, ангелика, амбретта', 'Tom Ford Neroli portofino ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/0ca693de-0c76-4745-9efa-89b5f2582494');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4706, 'u', 6360, 50, 'Верхние ноты: чёрные перец  Средние ноты: амбра  Базовые ноты: нероли', 'Zielinski & Rosen Black pepper, vetiver, neroli, amber ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-04.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4708, 'u', 6360, 50, 'Верхние ноты: персик Средние ноты: маракуйя  Базовые ноты: мускус', 'Zielinski & Rosen Peach, passion fruit, musk ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-10.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4711, 'u', 2200, 10, 'Верхние ноты: лаванда  Средние ноты: ванил  Базовые ноты: амбра', 'Zielinski & Rosen Lavender, vanilla, amber, musk ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-19.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4807, 'm', 23700, 100, 'Верхние ноты: кардамон, мускатный орех, шафран, мандарин, нероли Средние ноты: кульфи, роза, мастиковое дерево, жасмин, цветок апельсина Базовые ноты: ваниль, амбра, древесные ноты, сандал', 'Tom Ford Noir extreme ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/cd42a32a-e5e8-42ac-af32-6816c9550fdd');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4806, 'm', 16950, 50, 'Верхние ноты: кардамон, мускатный орех, шафран, мандарин, нероли Средние ноты: кульфи, роза, мастиковое дерево, жасмин, цветок апельсина Базовые ноты: ваниль, амбра, древесные ноты, сандал', 'Tom Ford Noir extreme ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/cd42a32a-e5e8-42ac-af32-6816c9550fdd');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4809, 'u', 23700, 100, 'Верхние ноты: морские водоросли Средние ноты: удовая древесина Базовые ноты: аккорд амбра', 'Tom Ford Oud minerale', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/aed7e749-e4a3-421d-824e-33ed1fd65e77');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4808, 'u', 16950, 50, 'Верхние ноты: морские водоросли Средние ноты: удовая древесина Базовые ноты: аккорд амбра', 'Tom Ford Oud minerale', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/aed7e749-e4a3-421d-824e-33ed1fd65e77');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4811, 'm', 23700, 100, 'Верхние ноты: грейпфрут, цветок апельсина, шалфей Средние ноты: мускатный орех, корень ириса, красный перец Базовые ноты: ветивер, древесные ноты, дубовый мох, амбра', 'Tom Ford Grey vetiver ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/9421eb56-805b-4647-a1b1-1edf2faa4f92');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4810, 'm', 16950, 50, 'Верхние ноты: грейпфрут, цветок апельсина, шалфей Средние ноты: мускатный орех, корень ириса, красный перец Базовые ноты: ветивер, древесные ноты, дубовый мох, амбра', 'Tom Ford Grey vetiver ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/9421eb56-805b-4647-a1b1-1edf2faa4f92');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4812, 'm', 16950, 50, 'Верхние ноты: высушенная древесина, плавник, морские водоросли, уд, кардамон Средние ноты: лимон, кипарис, желтый мандарин, лаванда, мирт, артемизия Базовые ноты: ветивер, ладан, дуб, олибанум, мастиковое дерево, ваниль', 'Tom Ford Costa azzura ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/8d0d6a4f-3be9-4332-912b-7cd925f267ec');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4813, 'm', 23700, 100, 'Верхние ноты: высушенная древесина, плавник, морские водоросли, уд, кардамон Средние ноты: лимон, кипарис, желтый мандарин, лаванда, мирт, артемизия Базовые ноты: ветивер, ладан, дуб, олибанум, мастиковое дерево, ваниль', 'Tom Ford Costa azzura ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/8d0d6a4f-3be9-4332-912b-7cd925f267ec');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4815, 'm', 10500, 60, 'Верхние ноты: лаванда, бергамот Средние ноты: ваниль Базовые ноты: перец', 'Dior Sauvage ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/54415caf-40e5-4ff0-b9a3-aa483ca91ad1');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4814, 'm', 8900, 30, 'Верхние ноты: лаванда, бергамот Средние ноты: ваниль Базовые ноты: перец', 'Dior Sauvage ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/54415caf-40e5-4ff0-b9a3-aa483ca91ad1');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4818, 'f', 16900, 100, 'Верхние ноты: Иланг-иланг Средние ноты: дамасская роза Базовые ноты: жасмин', 'Dior J’adore', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/135fcce1-59d5-4cdc-a002-952afa56b43d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4816, 'f', 8800, 30, 'Верхние ноты: Иланг-иланг Средние ноты: дамасская роза Базовые ноты: жасмин', 'Dior J’adore', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/135fcce1-59d5-4cdc-a002-952afa56b43d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4817, 'f', 12300, 50, 'Верхние ноты: Иланг-иланг Средние ноты: дамасская роза Базовые ноты: жасмин', 'Dior J’adore', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/135fcce1-59d5-4cdc-a002-952afa56b43d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4819, 'f', 8800, 30, 'Верхние ноты: цветочный букет Средние ноты: Роза сентифолия Базовые ноты: деликатная древесная база', 'Miss Dior eau de parfum ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/243db01d-231f-4e68-ad5a-a94719867299');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4821, 'f', 16900, 100, 'Верхние ноты: цветочный букет Средние ноты: Роза сентифолия Базовые ноты: деликатная древесная база', 'Miss Dior eau de parfum ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/243db01d-231f-4e68-ad5a-a94719867299');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4823, 'm', 13700, 100, 'Верхние ноты: ирис Средние ноты: ветивер Базовые ноты: кедр', 'Dior homme intense ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/837c378d-97b7-4eed-bdcc-a942db174474');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4826, 'f', 16900, 100, 'Верхние ноты: флёрдоранж Средние ноты: жасмин Базовые ноты: ваниль', 'Dior addict ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/858b48b0-1781-4618-84e5-c1808e411798');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4825, 'f', 12300, 50, 'Верхние ноты: флёрдоранж Средние ноты: жасмин Базовые ноты: ваниль', 'Dior addict ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/858b48b0-1781-4618-84e5-c1808e411798');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4824, 'f', 8800, 30, 'Верхние ноты: флёрдоранж Средние ноты: жасмин Базовые ноты: ваниль', 'Dior addict ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/858b48b0-1781-4618-84e5-c1808e411798');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4827, 'm', 13750, 75, 'Верхние ноты: мандарин Средние ноты: фиалка Базовые ноты: ваниль', 'Dior Fahrenheit ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2b8e8961-bfa9-4083-aaf7-e6e8eba99515');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4828, 'f', 8800, 30, 'Верхние ноты: бергамот Средние ноты: цветок апельсина Базовые ноты: белый мускус ', 'Dior Pure poison ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/d04b4703-1f11-4838-b33c-98c948d83705');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4829, 'f', 12300, 50, 'Верхние ноты: бергамот Средние ноты: цветок апельсина Базовые ноты: белый мускус ', 'Dior Pure poison ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/d04b4703-1f11-4838-b33c-98c948d83705');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4831, 'f', 16900, 100, 'Верхние ноты: жасмин Средние ноты: бобы тонка Базовые ноты: ванил', 'Dior Hypnotic poison', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/55d4ce5c-8cb2-4a86-8762-125f469cacdd');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4830, 'f', 12300, 50, 'Верхние ноты: жасмин Средние ноты: бобы тонка Базовые ноты: ванил', 'Dior Hypnotic poison', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/55d4ce5c-8cb2-4a86-8762-125f469cacdd');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4834, 'f', 43000, 100, 'Верхние ноты: бергамот, личи, персик Средние ноты: жасмин, пион,
апельсиновый цвет Базовые ноты: древесные ноты, мох,
мускус', 'Ex Nihilo Fleur narcotique', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b8e36a0a-a939-400d-9bd3-abba3ff308cf');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4832, 'f', 26610, 30, 'Верхние ноты: бергамот, личи, персик Средние ноты: жасмин, пион,
апельсиновый цвет Базовые ноты: древесные ноты, мох,
мускус', 'Ex Nihilo Fleur narcotique', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b8e36a0a-a939-400d-9bd3-abba3ff308cf');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4833, 'f', 34000, 50, 'Верхние ноты: бергамот, личи, персик Средние ноты: жасмин, пион,
апельсиновый цвет Базовые ноты: древесные ноты, мох,
мускус', 'Ex Nihilo Fleur narcotique', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b8e36a0a-a939-400d-9bd3-abba3ff308cf');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4837, 'f', 43000, 100, 'Верхние ноты: розовый перец Средние ноты: пион, личи Базовые ноты: белый кедр,
мускус, амбра', 'Ex Nihil Lust in paradis', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/07d50c8e-9103-493a-add8-492ef58304f2');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4835, 'f', 26610, 30, 'Верхние ноты: розовый перец Средние ноты: пион, личи Базовые ноты: белый кедр,
мускус, амбра', 'Ex Nihil Lust in paradis', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/07d50c8e-9103-493a-add8-492ef58304f2');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4836, 'f', 34000, 50, 'Верхние ноты: розовый перец Средние ноты: пион, личи Базовые ноты: белый кедр,
мускус, амбра', 'Ex Nihil Lust in paradis', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/07d50c8e-9103-493a-add8-492ef58304f2');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4840, 'u', 43000, 100, 'Верхние ноты: бергамот Средние ноты: кедр, акигалавуд Базовые ноты: ветивер, мускус,бобы тонка', 'Ex Nihil The hedonist', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/31230a0c-2d58-4ef8-844a-ea983ab886c7');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4839, 'u', 34000, 50, 'Верхние ноты: бергамот Средние ноты: кедр, акигалавуд Базовые ноты: ветивер, мускус,бобы тонка', 'Ex Nihil The hedonist', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/31230a0c-2d58-4ef8-844a-ea983ab886c7');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4838, 'u', 26610, 30, 'Верхние ноты: бергамот Средние ноты: кедр, акигалавуд Базовые ноты: ветивер, мускус,бобы тонка', 'Ex Nihil The hedonist', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/31230a0c-2d58-4ef8-844a-ea983ab886c7');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4842, 'u', 43000, 100, 'Верхние ноты: молочный аккорд Средние ноты: ирис, Роза,кашмеран Базовые ноты: сандал, ваниль,мускус', 'Ex Nihil Santal calling', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/9dcd6914-183f-4bcf-87a4-ac0c0501e572');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4841, 'u', 34000, 50, 'Верхние ноты: молочный аккорд Средние ноты: ирис, Роза,кашмеран Базовые ноты: сандал, ваниль,мускус', 'Ex Nihil Santal calling', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/9dcd6914-183f-4bcf-87a4-ac0c0501e572');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4844, 'f', 43000, 100, 'Верхние ноты: грейпфрут, розовый
перец, персик, бергамот Средние ноты: розовая вода,болгарская Роза, розовые лепестки, чай Базовые ноты: замша, белый кедр,сандал, гелиотроп, ваниль', 'Ex Nihil Devil tender', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/66054f3e-3ff6-4bcb-9cd1-faaaad61be75');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4843, 'f', 34000, 50, 'Верхние ноты: грейпфрут, розовый
перец, персик, бергамот Средние ноты: розовая вода,болгарская Роза, розовые лепестки, чай Базовые ноты: замша, белый кедр,сандал, гелиотроп, ваниль', 'Ex Nihil Devil tender', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/66054f3e-3ff6-4bcb-9cd1-faaaad61be75');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4846, 'u', 43000, 100, 'Верхние ноты: мускатный орех,розовый перец Средние ноты: пион, ландыш,пралине Базовые ноты: ваниль, сандал,амбра', 'Ex Nihil Explicite', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ce4e4f40-65af-408e-80ae-220320b9d631');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4845, 'u', 34000, 50, 'Верхние ноты: мускатный орех,розовый перец Средние ноты: пион, ландыш,пралине Базовые ноты: ваниль, сандал,амбра', 'Ex Nihil Explicite', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ce4e4f40-65af-408e-80ae-220320b9d631');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4848, 'u', 43000, 100, 'Верхние ноты: бергамот, болгарская Роза Средние ноты: кипарис, молоко Базовые ноты: ветивер, амирис,
мадагаскарская ваниль', 'Ex Nihil Vetiver moloko', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/9f001601-0e77-4735-8ed3-aa19ac43b949');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4847, 'u', 34000, 50, 'Верхние ноты: бергамот, болгарская Роза Средние ноты: кипарис, молоко Базовые ноты: ветивер, амирис,
мадагаскарская ваниль', 'Ex Nihil Vetiver moloko', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/9f001601-0e77-4735-8ed3-aa19ac43b949');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4850, 'f', 43000, 100, 'Верхние ноты: бергамот, нероли
Средние ноты: цветы апельсина,
ирис, амбретта Базовые ноты: сандал, кедр,мускус', 'Ex Nihil Honore delights', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/f1112dbd-2684-45c8-b9db-be5fc80801d6');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4849, 'f', 34000, 50, 'Верхние ноты: бергамот, нероли
Средние ноты: цветы апельсина,
ирис, амбретта Базовые ноты: сандал, кедр,мускус', 'Ex Nihil Honore delights', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/f1112dbd-2684-45c8-b9db-be5fc80801d6');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4851, 'u', 57000, 100, 'Верхние ноты: розовые ягоды,
ладан Средние ноты: кедр, сандаловое
дерево, бобы тонка, ваниль Базовые ноты: дубовая древесина, гваяковая древесина', 'Ex Nihil Atlas fever', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2ca71113-82bd-4451-bff8-c41994d683d8');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4853, 'u', 57000, 100, 'Верхние ноты: мандарин, кардамон, бергамот
Средние ноты: жасмин, махониаль,
давана, пихтовый бальзам, кожаный
аккорд Базовые ноты: пачули, ветивер, бобы
тонка, бензоин', 'Ex Nihil Chandigarh express', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/5a79612f-5523-4174-b75e-37400d3d03cb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4855, 'u', 43000, 100, 'Верхние ноты: бергамот, груша Средние ноты: молекула лизиланг
Базовые ноты: бобы тонка,ускус, амбра', 'Ex Nihil Gold immortals', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/9bc81acc-68e9-4466-bd43-2d1abe8ce5b8');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4854, 'u', 34000, 50, 'Верхние ноты: бергамот, груша Средние ноты: молекула лизиланг
Базовые ноты: бобы тонка,ускус, амбра', 'Ex Nihil Gold immortals', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/9bc81acc-68e9-4466-bd43-2d1abe8ce5b8');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4856, 'u', 34000, 50, 'Верхние ноты: чёрный перец, лист фиалки, гальбанум, шалфей Средние ноты: амбретта, османтус, жасмин, чай Базовые ноты: пачули, нагармота, акигалавуд, амбретта, кожа, белый мускус', 'Ex Nihil Cuir Celeste', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/0023953b-a756-47e3-8cf1-7ad62f891ddb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4857, 'u', 43000, 100, 'Верхние ноты: чёрный перец, лист фиалки, гальбанум, шалфей Средние ноты: амбретта, османтус, жасмин, чай Базовые ноты: пачули, нагармота, акигалавуд, амбретта, кожа, белый мускус', 'Ex Nihil Cuir Celeste', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/0023953b-a756-47e3-8cf1-7ad62f891ddb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4858, 'f', 16830, 100, 'Верхние ноты: аккорд зелёной груши Средние ноты: амбросса Базовые ноты: мускус', 'Juliette has a gun Pear inc', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c546f3b7-604d-4cb0-a364-fde1ce03b1f9');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4860, 'f', 16830, 100, 'Верхние ноты: амброксан Средние ноты: амброксан Базовые ноты: амброксан', 'Juliette has a gun Not a perfume', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/d0e8bcdf-c7bc-498c-bffc-a1dcb9a4de63');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4859, 'f', 13090, 50, 'Верхние ноты: амброксан Средние ноты: амброксан Базовые ноты: амброксан', 'Juliette has a gun Not a perfume', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/d0e8bcdf-c7bc-498c-bffc-a1dcb9a4de63');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4862, 'u', 16830, 100, 'Верхние ноты: бергамот, лимон, лайм Средние ноты: имбирь, яблоко, гедион Базовые ноты: древесные ноты, янтарь, амбретта, белый мускус', 'Juliette has a gun Moscow mule', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/3a77817d-ac1a-4641-aa71-77e772a6e692');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4861, 'u', 13090, 50, 'Верхние ноты: бергамот, лимон, лайм Средние ноты: имбирь, яблоко, гедион Базовые ноты: древесные ноты, янтарь, амбретта, белый мускус', 'Juliette has a gun Moscow mule', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/3a77817d-ac1a-4641-aa71-77e772a6e692');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4864, 'u', 16830, 100, 'Верхние ноты: бергамот, мандарин,лимон
Средние ноты: нероли, калон,черника
Базовые ноты: кедр, амброксан,мускус', 'Juliette has a gun Ego stratis', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/695218e1-f031-4f91-be83-53791b6f85a8');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4863, 'u', 13090, 50, 'Верхние ноты: бергамот, мандарин,лимон
Средние ноты: нероли, калон,черника
Базовые ноты: кедр, амброксан,мускус', 'Juliette has a gun Ego stratis', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/695218e1-f031-4f91-be83-53791b6f85a8');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4866, 'f', 16830, 100, 'Верхние ноты: соль Средние ноты: ваниль, орхидея Сандал, бобы тонка, мускус, бензоин', 'Juliette has a gun Vanilla vibes', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/a5b5e90a-bd15-4dda-b6c3-545f2c3e6389');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4865, 'f', 13090, 50, 'Верхние ноты: соль Средние ноты: ваниль, орхидея Сандал, бобы тонка, мускус, бензоин', 'Juliette has a gun Vanilla vibes', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/a5b5e90a-bd15-4dda-b6c3-545f2c3e6389');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4867, 'f', 13090, 50, 'Верхние ноты: нероли, герань,малина
Средние ноты: апельсиновый цвет, тубероза, жасмин, самбук, ирис
Базовые ноты, карамель, гелиотроп,
пачули, сандал, ваниль, белый мускус', 'Juliette has a gun Mmmm...', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/42a2a28d-f09a-42a0-8995-5e4345c1835e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4869, 'f', 16830, 100, 'Верхние ноты: жасмин Средние ноты: цветок хлопка Базовые ноты: белый мускус', 'Juliette has a gun Musk invisible', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/a1ccee0d-fc75-4710-a627-67b1a9dc6a5c');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4868, 'f', 13090, 50, 'Верхние ноты: жасмин Средние ноты: цветок хлопка Базовые ноты: белый мускус', 'Juliette has a gun Musk invisible', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/a1ccee0d-fc75-4710-a627-67b1a9dc6a5c');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4871, 'f', 16830, 100, 'Верхние ноты: бадьян Средние ноты: кашмеран Базовые ноты: мускус', 'Juliette has a gun Ode to dullness', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ce7a8fd2-0f32-425e-8f38-a7d0c82d11f4');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4870, 'f', 13090, 50, 'Верхние ноты: бадьян Средние ноты: кашмеран Базовые ноты: мускус', 'Juliette has a gun Ode to dullness', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ce7a8fd2-0f32-425e-8f38-a7d0c82d11f4');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4873, 'f', 16830, 100, 'Верхние ноты: амирис, жасмин,ваниль
Средние ноты: сандал, корень ириса, жасмин, кокосовое молоко Базовые ноты: амбретта', 'Juliette has a gun Sunny side up', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/dc77c4c2-b723-4414-b15d-5c44bbc85e07');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4872, 'f', 13090, 50, 'Верхние ноты: амирис, жасмин,ваниль
Средние ноты: сандал, корень ириса, жасмин, кокосовое молоко Базовые ноты: амбретта', 'Juliette has a gun Sunny side up', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/dc77c4c2-b723-4414-b15d-5c44bbc85e07');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4875, 'f', 16830, 100, 'Верхние ноты: кокос, Иланг-иланг Средние ноты: масло моной, ваниль
Базовые ноты: амброксан', 'Juliette has a gun Lust for sun', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/a15583a8-d4fb-4196-83a2-e90fcbc4d03e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4874, 'f', 13090, 50, 'Верхние ноты: кокос, Иланг-иланг Средние ноты: масло моной, ваниль
Базовые ноты: амброксан', 'Juliette has a gun Lust for sun', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/a15583a8-d4fb-4196-83a2-e90fcbc4d03e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4876, 'u', 13090, 50, 'Верхние ноты: бергамот Средние ноты: магнолия, слива мирабель Базовые ноты: амброксан, мускус', 'Juliette has a gun Magnolia bliss', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/cd36d882-2a1d-4fce-a50a-3dbfe1451e34');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4877, 'u', 16830, 100, 'Верхние ноты: бергамот Средние ноты: магнолия, слива мирабель Базовые ноты: амброксан, мускус', 'Juliette has a gun Magnolia bliss', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/cd36d882-2a1d-4fce-a50a-3dbfe1451e34');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4878, 'f', 13090, 50, 'Верхние ноты: аккорд бабл гам Средние ноты: белые цветы Базовые ноты: аккорд амбры,амброксан', 'Juliette has a gun Lili fantasy', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/4539c872-2bf8-44d7-a595-4b9448a8f73b');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4880, 'f', 13090, 50, 'Верхние ноты: ирис, фиалка Средние ноты: ваниль Базовые ноты: малина', 'Juliette has a gun Lipstick fever', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/7a2e2bdf-374c-4ba9-9876-f361c156462d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4882, 'f', 13090, 50, 'Верхние ноты: личи Средние ноты: клубника,марокканская Роза Базовые ноты: мускус, лесные ягоды', 'Juliette has a gun Miss charming', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/f2197937-58bf-463f-b493-ae06358185a6');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4890, 'f', 27500, 75, 'Верхние ноты: бергамот Средние ноты: малина, папирус, уд, шафран Базовые ноты: бобы тонка, ваниль', 'Juliette has a gun In the mood for oud', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b0a273d0-eb5c-4b79-bc09-d77c44757211');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (18, 'm', 1350, 100, 'Верхние ноты: 
бергамот, ананас, кардамон
Средние ноты:
яблоко, пачули, шалфей, лаванда
Базовые ноты:
ваниль, сандаловое дерево, кедр, бобы тонка', 'ALAN BRAY
l''homme
absolute', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/68fef487-8657-4405-9d24-5e25e59d5828');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (36, 'm', 1080, 100, 'верхние ноты ...... лайм, яблоко, аккорд мартини
средние ноты
чёрный перец, корица, мускатный орех, аккорд
базовые ноты ..... ваниль, амбра, фундук, табак, гваяковое
дерево', 'ALAN BRAY on
my way prêt à
tout', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/17592dc1-5fb0-46da-8caa-9fc7ed5d63ea');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (105, 'u', 16500, 100, 'верхние ноты ....................... спелая груша, ревень
средние ноты
.... лепестки роз, белый цветы, пачули, имбирь
базовые ноты
.... пудровый мускус, ванильный сахар, серая амбра', 'MONTALE
rendez-vous à
paris', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/dcbc6f97-b0be-44ea-ba37-68ce71de4f71');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (101, 'u', 10000, 50, 'верхние ноты .... голубая матча, цитрусы, черная
смородина
средние ноты ......... листья пачули, кедр, темная кожа,
табак
базовые ноты ........... абсолю матча, серая амбра, мускус', 'MONTALE blue
matcha', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/a697b289-869b-486c-be56-883df35c4bbb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (98, 'u', 14800, 100, 'верхние ноты ... сицилийский бергамот и лимон,
черный перец, розовый перец,
средние ноты.... непальский уд, кожа, морской
аккорд, имбирь, янтарь, пачули
базовые ноты ...... бразильский мате, фруктовый
мускус, дубовый мох, серая', 'MONTALE
oudyssee', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/73f18a58-6260-47e8-9333-c3dea4206bc3');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (95, 'u', 10000, 50, 'верхние ноты ........... черный, розовый перец,
индийский ладан, бергамот
средние ноты.....
листья пачули, темная кожа, камбоджийский уд, болгарская
базовые ноты ...... лабданум, сандал из мисора,
стручки ванили, белый мускус', 'MONTALE oud
edition', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/8b1dd89c-4570-441a-9daf-1d6d3d7b3ced');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (65, 'u', 28500, 50, 'верхние ноты
красный апельсин, черная смородина
средние ноты .................................... роза, перец
базовые ноты
сандал, лабданум, бензоин', 'KILIAN PARIS
playing with the
devil', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/87139011-a3e6-4606-b813-b3f9c4eda9dd');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4675, 'm', 10530, 150, 'верхние ноты французский лавандин средние ноты цистус базовые ноты пачули', 'GUCCI guilty', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-19.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4674, 'm', 9150, 90, 'верхние ноты французский лавандин средние ноты цистус базовые ноты пачули', 'GUCCI guilty', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-19.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4676, 'f', 1900, 7.4, 'верхние ноты бергамот средние ноты .... иланг-иланг, лилия касабланка и апельсиновый цвет базовые ноты ........ амбра, сандал и таитянская ваниль', 'GUCCI bamboo ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-24.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4657, 'u', 9200, 100, 'верхние ноты .......... ромашка и горький миндаль средние ноты .. мускус, индийский жасмин и жасмин базовые ноты сандал, белый кедр и ваниль', 'GUCCI mémoire d''une odeur', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-29.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4656, 'u', 7050, 60, 'верхние ноты .......... ромашка и горький миндаль средние ноты .. мускус, индийский жасмин и жасмин базовые ноты сандал, белый кедр и ваниль', 'GUCCI mémoire d''une odeur', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-29.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4655, 'u', 5500, 40, 'верхние ноты .......... ромашка и горький миндаль средние ноты .. мускус, индийский жасмин и жасмин базовые ноты сандал, белый кедр и ваниль', 'GUCCI mémoire d''une odeur', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-29.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4658, 'm', 5050, 50, 'верхние ноты лаванда, лимон средние ноты флердоранж базовые ноты кедр', 'GUCCI guilty love edition', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-23-34.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4683, 'f', 9350, 100, 'верхние ноты ........... жасмин самбак и побег в рангуне средние ноты ... тубероза, жасмин и иланг-иланг базовые ноты ......... сандал, ирис, бензоин, солнечные ноты, древесные', 'GUCCI bloom profumo di fiori ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-39.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4682, 'f', 7150, 50, 'верхние ноты ........... жасмин самбак и побег в рангуне средние ноты ... тубероза, жасмин и иланг-иланг базовые ноты ......... сандал, ирис, бензоин, солнечные ноты, древесные', 'GUCCI bloom profumo di fiori ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-24-39.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4696, 'f', 10200, 100, 'верхние ноты ирис и тубероза средние ноты жасмин базовые ноты дамасская роза', 'GUCCI bloom ambrosia di fiori ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-15.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4698, 'f', 7600, 50, 'верхние ноты бергамот средние ноты .... иланг-иланг, лилия касабланка и апельсиновый цвет базовые ноты ........ амбра, сандал и таитянская ваниль', 'GUCCI bamboo ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-23.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4700, 'm', 5300, 50, 'верхние ноты лимон, лаванда средние ноты цветы апельсина базовые ноты ................... пачули, кедр, ваниль', 'GUCCI guilty pour homme ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-28.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4702, 'f', 6100, 50, 'NaN', 'GUCCI guilty black pour femme ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/icons/Screenshot%20from%202024-05-21%2023-25-35.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4712, 'u', 6360, 50, 'Верхние ноты: лаванда  Средние ноты: ванил  Базовые ноты: амбра', 'Zielinski & Rosen Lavender, vanilla, amber, musk ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-19.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4746, 'u', 6360, 50, 'Верхние ноты: мускус Средние ноты: кедр Базовые ноты: амбра', 'Zielinski & Rosen 22 ( musk, cedar, amber) ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-42.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4748, 'u', 6360, 50, 'Верхние ноты: палисандр Средние ноты: сандал Базовые ноты: кедр', 'Zielinski & Rosen Rosewood & candalwood, cedarwood ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-03-47.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4772, 'f', 38350, 50, 'Верхние ноты: черешня, масло горького миндаля Средние ноты: сироп из вишни гриот, турецкая Роза Базовые ноты: перуанский бальзам, обжаренные бобы тонка, сандаловое дерево, ветивер', 'Tom Ford Lost cherry ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/56881ff0-fd22-4c1c-acad-98326c2cffde');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4771, 'f', 24300, 50, 'Верхние ноты: черешня, масло горького миндаля Средние ноты: сироп из вишни гриот, турецкая Роза Базовые ноты: перуанский бальзам, обжаренные бобы тонка, сандаловое дерево, ветивер', 'Tom Ford Lost cherry ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/56881ff0-fd22-4c1c-acad-98326c2cffde');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4795, 'f', 16950, 50, 'Верхние ноты: чёрный трюфель, чёрная смородина, гардения, жасмин, иланг-иланг, лимон Средние ноты: цветок лотоса, чёрная орхидея Базовые ноты: темный шоколад, ваниль, ладан, амбра, пачули, сандал', 'Tom Ford Black orchid', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/08df372b-6f7c-4364-8e5b-264034a2e28d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4794, 'f', 11900, 30, 'Верхние ноты: чёрный трюфель, чёрная смородина, гардения, жасмин, иланг-иланг, лимон Средние ноты: цветок лотоса, чёрная орхидея Базовые ноты: темный шоколад, ваниль, ладан, амбра, пачули, сандал', 'Tom Ford Black orchid', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/08df372b-6f7c-4364-8e5b-264034a2e28d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4797, 'u', 19500, 50, 'Верхние ноты: лист фиалки, кедр Средние ноты: жасмин самбак, корень ириса Базовые ноты: кожа, древесные ноты, табак', 'Tom Ford Ombré leather ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/a0b7e47e-6403-4cc9-a44d-186d4863c38e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4820, 'f', 12300, 50, 'Верхние ноты: цветочный букет Средние ноты: Роза сентифолия Базовые ноты: деликатная древесная база', 'Miss Dior eau de parfum ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/243db01d-231f-4e68-ad5a-a94719867299');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4822, 'm', 10050, 50, 'Верхние ноты: ирис Средние ноты: ветивер Базовые ноты: кедр', 'Dior homme intense ', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/837c378d-97b7-4eed-bdcc-a942db174474');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4852, 'u', 52500, 100, 'Верхние ноты: шафран, чёрный
перец Средние ноты: ландыш
Базовые ноты: агаровое дерево,
ветивер, сандаловое дерево, табак,дубовый мох', 'Ex Nihil Outcast blue', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b8c82e15-3b2b-473d-88cf-a7aced5b07c6');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4879, 'f', 16830, 100, 'Верхние ноты: аккорд бабл гам Средние ноты: белые цветы Базовые ноты: аккорд амбры,амброксан', 'Juliette has a gun Lili fantasy', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/4539c872-2bf8-44d7-a595-4b9448a8f73b');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4881, 'f', 16830, 100, 'Верхние ноты: ирис, фиалка Средние ноты: ваниль Базовые ноты: малина', 'Juliette has a gun Lipstick fever', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/7a2e2bdf-374c-4ba9-9876-f361c156462d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4883, 'f', 16830, 100, 'Верхние ноты: личи Средние ноты: клубника,марокканская Роза Базовые ноты: мускус, лесные ягоды', 'Juliette has a gun Miss charming', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/f2197937-58bf-463f-b493-ae06358185a6');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4885, 'f', 16830, 100, 'Верхние ноты: бергамот, лаванда Средние ноты: болгарская Роза, марокканская Роза, пачули, герань Амброксан, ваниль, белый мускус', 'Juliette has a gun Lady vengeance', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/cce1f53c-780f-46cd-89d3-e1c98c278728');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4884, 'f', 13090, 50, 'Верхние ноты: бергамот, лаванда Средние ноты: болгарская Роза, марокканская Роза, пачули, герань Амброксан, ваниль, белый мускус', 'Juliette has a gun Lady vengeance', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/cce1f53c-780f-46cd-89d3-e1c98c278728');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4886, 'f', 27500, 75, 'Верхние ноты: жасмин, самбак, тубероза Средние ноты: амброксан, тубероза Базовые ноты: амбра, белый кедр,мускус, сандал', 'Juliette has a gun White spirit', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/3216d500-6c92-4c5f-86ff-c0880d0c5b6e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4888, 'f', 16830, 100, 'Верхние ноты: темная вишня, розовый перец Средние ноты: жасмин, кашмеран Базовые ноты: бобы тонка, амброксан', 'Juliette has a gun Juliette', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/20b20c44-5ee3-43ba-be74-6902339a1666');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4887, 'f', 13090, 50, 'Верхние ноты: темная вишня, розовый перец Средние ноты: жасмин, кашмеран Базовые ноты: бобы тонка, амброксан', 'Juliette has a gun Juliette', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/20b20c44-5ee3-43ba-be74-6902339a1666');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4889, 'f', 27500, 75, 'Верхние ноты: Тубероза, ирис Средние ноты: тубероза, ирис Базовые ноты: бобы тонка, сиамский бензоин, амбра, мускус', 'Juliette has a gun Liquid illusion', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/6ca88f12-e5c0-4168-857a-168190d31c84');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4714, 'u', 6360, 50, 'Верхние ноты: кедр  Средние ноты: чёрный перец  Базовые ноты: табак', 'Zielinski & Rosen Fiction (Cedar, black pepper, tobacco)', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-24.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4713, 'u', 2200, 10, 'Верхние ноты: кедр  Средние ноты: чёрный перец  Базовые ноты: табак', 'Zielinski & Rosen Fiction (Cedar, black pepper, tobacco)', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-24.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4715, 'u', 2200, 10, 'Верхние ноты: дубовый мох Средние ноты: амбра Базовые ноты: -', 'Zielinski & Rosen Oakmoss & amber', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-28.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4718, 'u', 6360, 50, 'Верхние ноты: ветивер Средние ноты: лимон Базовые ноты: бергамот ', 'Zielinski & Rosen Vetiver, lemon, bergamot ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-34.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4721, 'u', 2200, 10, 'Верхние ноты: розмарин Средние ноты: лимон Базовые ноты: нероли', 'Zielinski & Rosen Rosemary & lemon, neroli ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-44.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4723, 'u', 2200, 10, 'Верхние ноты: амбра Средние ноты: пачули Базовые ноты: -', 'Zielinski & Rosen Moss ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-48.png?raw=true');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4727, 'u', 2200, 10, 'Верхние ноты: кедр и сандал Средние ноты: амбра Базовые ноты: пачули', 'Zielinski & Rosen Cedarwood & sandalwood & amber, patchouli ', NULL, 'https://github.com/IldarGreat/voluunterFront/blob/main/web/Screenshot%20from%202024-05-21%2023-02-58.png?raw=true');


--
-- TOC entry 3005 (class 0 OID 16437)
-- Dependencies: 211
-- Data for Name: price_range; Type: TABLE DATA; Schema: snap_v1; Owner: postgres
--

INSERT INTO snap_v1.price_range OVERRIDING SYSTEM VALUE VALUES (1, NULL, 5000, NULL);
INSERT INTO snap_v1.price_range OVERRIDING SYSTEM VALUE VALUES (2, 5000, 10000, NULL);
INSERT INTO snap_v1.price_range OVERRIDING SYSTEM VALUE VALUES (3, 10000, 20000, NULL);
INSERT INTO snap_v1.price_range OVERRIDING SYSTEM VALUE VALUES (4, 20000, NULL, NULL);


--
-- TOC entry 3002 (class 0 OID 16424)
-- Dependencies: 208
-- Data for Name: type; Type: TABLE DATA; Schema: snap_v1; Owner: postgres
--

INSERT INTO snap_v1.type OVERRIDING SYSTEM VALUE VALUES (1, 'Экстракт духов');
INSERT INTO snap_v1.type OVERRIDING SYSTEM VALUE VALUES (2, 'Концентрированные духи');
INSERT INTO snap_v1.type OVERRIDING SYSTEM VALUE VALUES (3, 'Духи');
INSERT INTO snap_v1.type OVERRIDING SYSTEM VALUE VALUES (4, 'Парфюмерная вода');
INSERT INTO snap_v1.type OVERRIDING SYSTEM VALUE VALUES (5, 'Туалетная вода');


--
-- TOC entry 3003 (class 0 OID 16432)
-- Dependencies: 209
-- Data for Name: type_to_perfume; Type: TABLE DATA; Schema: snap_v1; Owner: postgres
--

INSERT INTO snap_v1.type_to_perfume VALUES (1, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (1, 2);
INSERT INTO snap_v1.type_to_perfume VALUES (2, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (2, 2);
INSERT INTO snap_v1.type_to_perfume VALUES (3, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4, 2);
INSERT INTO snap_v1.type_to_perfume VALUES (5, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (6, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (6, 2);
INSERT INTO snap_v1.type_to_perfume VALUES (7, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (42, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (41, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (40, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (39, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (38, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (37, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (36, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (35, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (34, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (33, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (32, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (31, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (30, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (29, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (28, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (27, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (26, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (25, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (24, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (23, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (22, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (21, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (20, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (19, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (17, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (14, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (18, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (16, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (15, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (13, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (12, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (12, 2);
INSERT INTO snap_v1.type_to_perfume VALUES (11, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (11, 2);
INSERT INTO snap_v1.type_to_perfume VALUES (10, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (9, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (8, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (7, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (7, 2);
INSERT INTO snap_v1.type_to_perfume VALUES (6, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (5, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (5, 2);
INSERT INTO snap_v1.type_to_perfume VALUES (4, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (43, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (44, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (45, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (46, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (47, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (48, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (49, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (50, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (51, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (52, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (53, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (54, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (55, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (56, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (57, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (58, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (59, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (60, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (61, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (62, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (63, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (64, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (65, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (66, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (67, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (68, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (69, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (70, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (72, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (72, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (73, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (73, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (74, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (74, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (75, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (75, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (76, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (76, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (77, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (77, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (78, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (78, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (79, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (79, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (80, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (80, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (81, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (81, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (82, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (82, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (83, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (83, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (84, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (85, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (86, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (87, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (88, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (89, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (90, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (91, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (92, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (93, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (94, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (95, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (96, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (97, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (98, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (99, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (100, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (101, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (102, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (103, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (104, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (105, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (106, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (107, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4655, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4656, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4657, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4658, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4659, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4660, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4661, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4662, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4663, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4664, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4665, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4666, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4667, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4668, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4669, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4670, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4671, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4672, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4673, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4674, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4675, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4676, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4677, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4678, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4679, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4680, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4681, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4682, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4683, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4684, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4685, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4686, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4687, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4688, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4689, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4690, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4691, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4692, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4693, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4694, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4695, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4696, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4697, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4698, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4699, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4700, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4701, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4702, 5);
INSERT INTO snap_v1.type_to_perfume VALUES (4703, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4704, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4705, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4706, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4707, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4708, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4709, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4710, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4711, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4712, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4713, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4714, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4715, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4716, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4717, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4718, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4719, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4720, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4721, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4722, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4723, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4724, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4725, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4726, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4727, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4728, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4729, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4730, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4731, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4732, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4733, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4734, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4735, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4736, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4737, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4738, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4739, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4740, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4741, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4742, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4743, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4744, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4745, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4746, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4747, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4748, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4749, 1);
INSERT INTO snap_v1.type_to_perfume VALUES (4750, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4751, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4752, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4753, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4754, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4755, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4756, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4757, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4758, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4759, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4760, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4761, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4762, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4763, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4764, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4765, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4766, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4767, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4768, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4769, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4770, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4771, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4772, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4773, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4774, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4775, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4776, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4777, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4778, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4779, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4780, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4781, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4782, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4783, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4784, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4785, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4786, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4787, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4788, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4789, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4790, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4791, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4792, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4793, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4794, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4795, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4796, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4797, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4798, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4799, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4800, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4801, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4802, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4803, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4804, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4805, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4806, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4807, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4808, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4809, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4810, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4811, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4812, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4813, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4814, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4815, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4816, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4817, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4818, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4819, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4820, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4821, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4822, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4823, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4824, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4825, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4826, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4827, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4828, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4829, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4830, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4831, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4832, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4833, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4834, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4835, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4836, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4837, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4838, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4839, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4840, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4841, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4842, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4843, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4844, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4845, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4846, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4847, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4848, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4849, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4850, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4851, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4852, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4853, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4854, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4855, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4856, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4857, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4858, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4858, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4859, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4859, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4860, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4860, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4861, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4861, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4862, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4862, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4863, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4863, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4864, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4864, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4865, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4865, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4866, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4866, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4867, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4867, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4868, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4868, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4869, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4869, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4870, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4870, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4871, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4871, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4872, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4872, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4873, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4873, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4874, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4874, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4875, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4875, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4876, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4876, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4877, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4877, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4878, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4878, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4879, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4879, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4880, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4880, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4881, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4881, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4882, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4882, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4883, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4883, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4884, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4884, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4885, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4885, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4886, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4886, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4887, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4887, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4888, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4888, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4889, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4889, 3);
INSERT INTO snap_v1.type_to_perfume VALUES (4890, 4);
INSERT INTO snap_v1.type_to_perfume VALUES (4890, 3);


--
-- TOC entry 3012 (class 0 OID 0)
-- Dependencies: 204
-- Name: notes_id_seq; Type: SEQUENCE SET; Schema: snap_v1; Owner: postgres
--

SELECT pg_catalog.setval('snap_v1.notes_id_seq', 21, true);


--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 202
-- Name: perfume_id_seq; Type: SEQUENCE SET; Schema: snap_v1; Owner: postgres
--

SELECT pg_catalog.setval('snap_v1.perfume_id_seq', 4890, true);


--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 210
-- Name: price_range_id_seq; Type: SEQUENCE SET; Schema: snap_v1; Owner: postgres
--

SELECT pg_catalog.setval('snap_v1.price_range_id_seq', 4, true);


--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 207
-- Name: type_id_seq; Type: SEQUENCE SET; Schema: snap_v1; Owner: postgres
--

SELECT pg_catalog.setval('snap_v1.type_id_seq', 6, true);


--
-- TOC entry 2865 (class 2606 OID 16405)
-- Name: notes notes_pk; Type: CONSTRAINT; Schema: snap_v1; Owner: postgres
--

ALTER TABLE ONLY snap_v1.notes
    ADD CONSTRAINT notes_pk PRIMARY KEY (id);


--
-- TOC entry 2863 (class 2606 OID 16395)
-- Name: perfume perfume_pk; Type: CONSTRAINT; Schema: snap_v1; Owner: postgres
--

ALTER TABLE ONLY snap_v1.perfume
    ADD CONSTRAINT perfume_pk PRIMARY KEY (id);


--
-- TOC entry 2869 (class 2606 OID 16444)
-- Name: price_range price_range_pk; Type: CONSTRAINT; Schema: snap_v1; Owner: postgres
--

ALTER TABLE ONLY snap_v1.price_range
    ADD CONSTRAINT price_range_pk PRIMARY KEY (id);


--
-- TOC entry 2867 (class 2606 OID 16431)
-- Name: type type_pk; Type: CONSTRAINT; Schema: snap_v1; Owner: postgres
--

ALTER TABLE ONLY snap_v1.type
    ADD CONSTRAINT type_pk PRIMARY KEY (id);


-- Completed on 2024-05-24 14:54:02 +04

--
-- PostgreSQL database dump complete
--

