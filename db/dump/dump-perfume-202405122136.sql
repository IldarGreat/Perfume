--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)

-- Started on 2024-05-12 22:36:37 +04

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
    sex character varying NOT NULL,
    price double precision NOT NULL,
    volume double precision NOT NULL,
    comment character varying NOT NULL,
    name character varying NOT NULL,
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


--
-- TOC entry 2997 (class 0 OID 16388)
-- Dependencies: 203
-- Data for Name: perfume; Type: TABLE DATA; Schema: snap_v1; Owner: postgres
--

INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (8, 'f', 800, 50, 'Верхние ноты:
цитрусовые аккорды, апельсин, пряные ноты
Средние ноты:
цветочные аккорды, роза, нероли
Базовые ноты:
ваниль, древесные аккорды, мускус', 'ALAN BRAY
vanille', 'вечерние', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/f4dbe291-a529-4185-b93c-6645e0456fdb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (9, 'f', 1000, 100, 'Верхние ноты:
малина, ананас
Средние ноты:
взбитые сливки, мед, слива, черная смородина
Базовые ноты:
пломбир, ваниль, белый мускус', 'ALAN BRAY
arabian alhayati', 'вечерние', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/e0bcbd7f-9cbd-42e6-9e22-14fb5ccac9a1');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (10, 'f', 3600, 100, 'Верхние ноты:
личи, ревень, бергамот,мускатный орех
Средние ноты:
турецкая роза, пион, ваниль
Базовые ноты:
мускус, кашмеран, ладан', 'ALAN BRAY
maison jardins
d’andalousie', 'вечерний', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2566b729-b240-43f0-8643-237e3ebf712d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (13, 'f', 5400, 100, 'Верхние ноты:
цитрусовый лимонад, черная смородина, засахаренные
Средние ноты:
роза, фрезия, сладости, жасмин
Базовые ноты:
мускус, кедр, сухая амбра', 'ALAN BRAY
maison molécule
amoureuse', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ce521cb7-a477-4abe-9ba5-3bee3daaafa5');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (1, 'm', 2100, 100, 'Верхние ноты:
ваниль, какао
Средние ноты:
ирис, корица, мускус
базовые ноты:
гелиотроп, амбра, бобы тонка, кедр', 'ALAN BRAY
tobacco&vanille', 'ежедневный', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/5a367608-a2ce-4bd7-9524-fa28a27b109a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (2, 'm', 2100, 100, 'Верхние ноты;
вишня, розовые ягоды, давана, мускатный орех
Средние ноты:
жасмин, сандал, пачули, кедр, шафран
Базовые ноты:
кожа, ваниль, ладанник', 'ALAN BRAY
tobacco&cherry', 'вечерний', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/fa13e998-46c7-480d-90f2-2ed822a18c4d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (3, 'f', 3600, 100, 'Верхние ноты:
горький миндаль, ликер, черная вишня
Средние ноты:
вишня, слива, турецкая роза,
жасмин
Базовые ноты:
бобы тонка, ваниль, корица, перуанский бальзам', 'ALAN BRAY
maison cherry
absolute', 'весенне-летний, дневной', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/3a98eef6-27a8-4240-bb1f-2c06c9a8c274');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (4, 'f', 2100, 100, 'Верхние ноты:
ром, корица, яблоко, пралине
Cредние ноты:
ирис, сандал, ладанник
Базовые ноты:
древесный мох, бобы тонка,
амбра, ваниль, мирра, мускус', 'ALAN BRAY
gourmet canelé
flambé', 'вечерний', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/f31fcac9-d864-4a5d-ac57-29ad55fb6c7e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (6, 'f', 5400, 100, 'Верхние ноты:
клубника, земляника, малина, яблоко
Средние ноты:
карамель
Базовые ноты:
ванил', 'ALAN BRAY
maison
strawberry
champagne', 'весенне-летние , дневной', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/15988438-d67e-4f24-8526-96f7693cde36');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (7, 'f', 2100, 100, 'Верхние ноты:
бергамот, мандарин, корица, кориандр
Cредние ноты:
жасмин, флердоранж, роза
Базовые ноты:
ваниль, мускус, амбра', 'ALAN BRAY
délice floral', 'дневной', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/d12cf09a-cd40-419b-bdb2-fca23769daf3');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (11, 'f', 2100, 100, 'Верхние ноты:
апельсин, корица
Средние ноты;
жасмин, ваниль
Базовые ноты;
карамель, сандал, мускус', 'ALAN BRAY
meringue', '', 'https://github.com/IldarGreat/voluunterFront/assets/90307025/871d0b16-1683-427a-92db-923d1f7712e0');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (12, 'm', 2100, 100, 'Верхние ноты:
шалфей, яблоко, белый перец
Средние ноты:
кедр, корень ириса
Базовые ноты:
амбра, пачули', 'ALAN BRAY
amber&wood', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/2e6b9297-d6fe-448f-87cc-de5e66fdb472');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (16, 'f', 1100, 75, 'Верхние ноты:
жасмин, шафран
Средние ноты:
пихтовый бальзам, кедр
Базовые ноты:
кашемировое дерево, амбра, мох, коричневый сахар', 'ALAN BRAY
signorina
allettante', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/90f8e517-b21f-4c6f-86db-29bc3dc9228a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (18, 'm', 1350, 100, 'Верхние ноты: 
бергамот, ананас, кардамон
Средние ноты:
яблоко, пачули, шалфей, лаванда
Базовые ноты:
ваниль, сандаловое дерево, кедр, бобы тонка', 'ALAN BRAY
l''homme
absolute', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/68fef487-8657-4405-9d24-5e25e59d5828');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (19, 'f', 600, 50, 'верхние ноты…….цитрусы, груша
средние ноты .............. арбуз, акватические ноты
базовые ноты .. амбра, пралине', 'ALAN BRAY
mademoiselle
l''ange', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/64c1199e-a8ab-4390-8d5b-6e77b86a357b');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (20, 'f', 1100, 75, 'верхние ноты персик
средние ноты яблоко, ананас, фиалка
базовые ноты ваниль, бобы тонка, мускус', 'ALAN BRAY
signorina candy', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/60bd5aed-f9b0-4bd9-85b2-496346c6ecd6');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (22, 'u', 3600, 100, 'верхние ноты.... шафран, ладан, слива
средние ноты............. роза, герань, кожа
базовые ноты ….кедр, уд', 'ALAN BRAY
maison terre du
oud', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/ce182e7a-6b73-45ea-bb04-886bfcee7377');
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
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (24, 'f', 800, 50, 'верхние ноты
... яблоко, дыня, грейпфрут
средние ноты
аккорд зелени, цветочный букет, акватический аккорд
базовые ноты
ноты «шлейфа» кедр, амбра, мускус', 'ALAN BRAY
côte d''azur', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/3a75e3f6-e405-41b3-998a-73b988cf1d00');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (25, 'u', 3600, 100, 'верхние ноты
яблоко granny smith, персик, маракуйя
средние ноты
базовые ноты
кедр, кориандр
мускус, амбра, пачули', 'ALAN BRAY
maison ambre
oriental', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/e37c612f-a15e-4141-8e86-1f4a972fb308');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (27, 'f', 600, 50, 'верхние ноты
жасмин, шафран
средние ноты
пихтовый бальзам, кедр
базовые ноты
кашемировое дерево, амбра, мох, коричневый сахар', 'ALAN BRAY
mademoiselle
rouge', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/806d6c0c-f65d-45fa-9e62-ac20eb04c6bb');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (28, 'f', 1000, 100, 'верхние ноты
розовый перец
средние ноты
роза, кедр
базовые ноты
ваниль, бензоин', 'ALAN BRAY
arabian vanilla', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c071a066-e89e-4eed-a69b-3e674dc98b3e');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (29, 'f', 3600, 100, 'верхние ноты
............. ревень, перец, кориандр
средние ноты
гардения, тубероза, жасмин, ландыш, гвоздика
базовые ноты
амбра, ладан, ветивер, кожа', 'ALAN BRAY
maison fleurs
blanches&epices', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/6de2b415-2f19-4bee-ae14-cb7fd7a47bbc');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (30, 'f', 3600, 100, 'верхние ноты
средние ноты базовые ноты
роза, засахаренные фрукты клевер, жасмин, гелиотроп
мускус, серая амбра', 'ALAN BRAY
maison la fête de
la rose', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/624e7165-a828-409a-95f0-c71ae53a8026');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (32, 'm', 900, 100, 'верхние ноты ....... бергамот, черная смородина
средние ноты
кардамон, жасмин
базовые ноты
дубовый мох, кедр, мускус', 'ALAN BRAY
l''homme
seduction', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/999a33ba-110b-4548-8dc7-70c153865950');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (33, 'm', 900, 100, 'верхние ноты
.............
бергамот, розовые ягоды, грейпфрут
средние ноты
водный аккорд, кардамон, лаванда
базовые ноты
мускус, мох сандал', 'ALAN BRAY
l''homme legend', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/c762c85e-5b8d-433d-a10d-25ba4a575e2d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (34, 'm', 1050, 100, 'верхние ноты
средние ноты
базовые ноты
ALAN BRAY woodland
企
....... лимон, яблоко
морской бриз, лаванда, герань ветивер, кедр, амбра, бобы тонка', 'ALAN BRAY
woodland', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/e796c6b8-ae0c-4cc1-891f-63791949a86a');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (35, 'm', 800, 100, 'верхние ноты
средние ноты
базовые ноты
сандал, оливковое дерево
розмарин, лаванда
. яблоко, мандарин, корица', 'ALAN BRAY
excellent', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/b8d9a77d-efc2-4733-ad22-81fcd2f0778d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (37, 'f', 600, 50, 'верхние ноты
средние ноты базовые ноты
• апельсин, мандарин, яблоко, ананас
жасмин, ландыш, карамель
ваниль, кедр, сандаловое дерево, мускус', 'ALAN BRAY
mademoiselle
bal de nice', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/569908c7-21e0-4e1b-aca7-6b00f1d29430');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (15, 'f', 3600, 100, 'Верхние ноты:
розовый перец
Средние ноты:
роза, кедр
Базовые ноты:
ваниль, бензоин', 'ALAN BRAY
maison vanille
de madagascar', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/7f4cbe69-ffc0-4210-88b2-20b9bdd89dc6');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (21, 'f', 700, 50, 'верхние ноты мякоть персика, белые цветы, чёрная
смородина
средние ноты акватический аккорд, роза, белый сандал
базовые ноты мускус, гелиотроп, ваниль', 'ALAN BRAY
mademoiselle
désir', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/364575a2-79c7-4b25-8b09-a47bcefd98ac');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (26, 'f', 600, 50, 'верхние ноты
апельсин, мандарин, яблоко, ананас
средние ноты ............ жасмин, ландыш, карамель базовые ноты
ваниль, кедр, сандаловое дерево, мускус', 'ALAN BRAY
mademoiselle
bonbon', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/82e34c16-d36f-43a1-bca9-5d3c15975c12');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (31, 'm', 900, 100, 'верхние ноты
......... яблоко, бергамот, лимон
средние ноты
・・・・・・・・・・
гвоздика, ландыш, роза
базовые ноты
................. янтарь, мускус, ваниль', 'ALAN BRAY
l''homme
adventure', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/1d98e628-1184-432d-ad17-c145ced633c4');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (36, 'm', 1080, 100, 'верхние ноты ...... лайм, яблоко, аккорд мартини
средние ноты
чёрный перец, корица, мускатный орех, аккорд
базовые ноты ..... ваниль, амбра, фундук, табак, гваяковое
дерево', 'ALAN BRAY on
my way prêt à
tout', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/17592dc1-5fb0-46da-8caa-9fc7ed5d63ea');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (38, 'm', 900, 100, 'верхние ноты ..... лайм, яблоко, аккорд мартини
средние ноты ... лайм, яблоко, аккорд мартини
базовые ноты
чёрный перец, корица', 'ALAN BRAY
highland', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/8706da35-67c5-4db1-ac7c-f9ff48d85c22');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (39, 'm', 1600, 100, 'верхние ноты
конопля, кардамон, груша, имбирь
средние ноты ..... шалфей, герань, ветивер, кожа базовые
ноты .. янтарь, пачули, белый мускус', 'ALAN BRAY on
my way', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/9e9e5f18-464a-48ff-b4d4-fc56a8c7a907');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (40, 'm', 500, 100, 'верхние ноты лимон, акватические аккорды, лаванда
средние ноты
базовые ноты
роза, кожа, жасмин
мускус, амбра, сандаловое дерево', 'ALAN BRAY u
different genesis', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/41bdba09-9c65-4d4d-ae14-6c3a93846f83');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (41, 'f', 800, 50, 'верхние ноты
средние ноты
базовые ноты
манго, кокос
белые цветы, роза
ваниль, мускус', 'ALAN BRAY
mademoiselle
inspiré', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/868e880f-404a-47d0-8390-b31c31bf755d');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (42, 'm', 1200, 100, 'верхние ноты
средние ноты
базовые ноты
бергамот, лимон, лаванда
шалфей, герань, яблоко
кедр, ветивер, сандал', 'ALAN BRAY
l''homme strong', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/24dbac2d-68b1-4926-af1e-a21e2e423fa3');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (14, 'f', 1000, 100, 'Верхние ноты:
персик, черная смородина, груша
Средние ноты:
ландыш, жасмин
Базовые ноты: 
сухая древесина, мускус, ваниль', 'ALAN BRAY
privé stella
solaris', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/194403af-07bf-4e75-b3c1-00c65b94fe18');
INSERT INTO snap_v1.perfume OVERRIDING SYSTEM VALUE VALUES (17, 'f', 1000, 100, 'Верхние ноты:
цитрусовый лимонад, черная
смородина, засахаренные
Средние ноты:
роза, фрезия, сладости, жасмин
Базовые ноты:
мускус, кедр, сухая амбра', 'ALAN BRAY
privé amalthea', NULL, 'https://github.com/IldarGreat/voluunterFront/assets/90307025/78d53949-e742-4f34-8918-298e71ab0ffd');


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


--
-- TOC entry 3012 (class 0 OID 0)
-- Dependencies: 204
-- Name: notes_id_seq; Type: SEQUENCE SET; Schema: snap_v1; Owner: postgres
--

SELECT pg_catalog.setval('snap_v1.notes_id_seq', 12, true);


--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 202
-- Name: perfume_id_seq; Type: SEQUENCE SET; Schema: snap_v1; Owner: postgres
--

SELECT pg_catalog.setval('snap_v1.perfume_id_seq', 42, true);


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


-- Completed on 2024-05-12 22:36:37 +04

--
-- PostgreSQL database dump complete
--

