--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE itticket;




--
-- Drop roles
--

DROP ROLE itticket;
DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE itticket;
ALTER ROLE itticket WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:oV3zmSqmVrUKXS2OBLnwfw==$sn2Yz/9Pl4KLaINmRcj06XOzs6fyw4eQRFMzCq6jldg=:NDTMROanYZQ82gfvK85jV4IXeEklP7e1s9YHytuO2rE=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:OXXZn7wmF0jPlThzXLMoCw==$n/ps+m9h33wl263CgpObIVbrsZ2sO/++Str6hhupioo=:ncBMi+ct+T3Yg8xiEVP30+r5d0AQg8gtmf0J4iQHAdg=';

--
-- User Configurations
--

--
-- User Config "itticket"
--

ALTER ROLE itticket SET client_encoding TO 'utf8';
ALTER ROLE itticket SET default_transaction_isolation TO 'read committed';
ALTER ROLE itticket SET "TimeZone" TO 'UTC';








--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "itticket" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

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
-- Name: itticket; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE itticket WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE itticket OWNER TO postgres;

\connect itticket

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
-- Name: DICTIONARY_ticketspriority; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public."DICTIONARY_ticketspriority" (
    id bigint NOT NULL,
    priority_name character varying(20)
);


ALTER TABLE public."DICTIONARY_ticketspriority" OWNER TO itticket;

--
-- Name: DICTIONARY_ticketspriority_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public."DICTIONARY_ticketspriority" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."DICTIONARY_ticketspriority_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: DICTIONARY_ticketsstatus; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public."DICTIONARY_ticketsstatus" (
    id bigint NOT NULL,
    status_name character varying(40)
);


ALTER TABLE public."DICTIONARY_ticketsstatus" OWNER TO itticket;

--
-- Name: DICTIONARY_ticketsstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public."DICTIONARY_ticketsstatus" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."DICTIONARY_ticketsstatus_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: DICTIONARY_tickettypes; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public."DICTIONARY_tickettypes" (
    id bigint NOT NULL,
    type_name character varying(20)
);


ALTER TABLE public."DICTIONARY_tickettypes" OWNER TO itticket;

--
-- Name: DICTIONARY_tickettypes_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public."DICTIONARY_tickettypes" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."DICTIONARY_tickettypes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: SERVICEDESK_tickets; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public."SERVICEDESK_tickets" (
    id bigint NOT NULL,
    short_description character varying(255),
    description text,
    create_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone,
    assigned_user_id integer,
    created_user_id integer,
    priority_id bigint,
    status_id bigint,
    ticket_type_id bigint
);


ALTER TABLE public."SERVICEDESK_tickets" OWNER TO itticket;

--
-- Name: SERVICEDESK_tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public."SERVICEDESK_tickets" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."SERVICEDESK_tickets_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: SERVICEDESK_ticketshistory; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public."SERVICEDESK_ticketshistory" (
    id bigint NOT NULL,
    comment text,
    create_date timestamp with time zone NOT NULL,
    created_user_id integer,
    ticket_id bigint
);


ALTER TABLE public."SERVICEDESK_ticketshistory" OWNER TO itticket;

--
-- Name: SERVICEDESK_ticketshistory_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public."SERVICEDESK_ticketshistory" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."SERVICEDESK_ticketshistory_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO itticket;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO itticket;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO itticket;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO itticket;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO itticket;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO itticket;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO itticket;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO itticket;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO itticket;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO itticket;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: itticket
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: itticket
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO itticket;

--
-- Data for Name: DICTIONARY_ticketspriority; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public."DICTIONARY_ticketspriority" (id, priority_name) FROM stdin;
1	Niski
2	??redni
3	Wysoki
\.


--
-- Data for Name: DICTIONARY_ticketsstatus; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public."DICTIONARY_ticketsstatus" (id, status_name) FROM stdin;
1	Nowy
2	W trakcie
3	Oczekiwanie na odpowied??
4	Zamkni??ty
\.


--
-- Data for Name: DICTIONARY_tickettypes; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public."DICTIONARY_tickettypes" (id, type_name) FROM stdin;
1	Incydent
2	Zmiana
\.


--
-- Data for Name: SERVICEDESK_tickets; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public."SERVICEDESK_tickets" (id, short_description, description, create_date, end_date, assigned_user_id, created_user_id, priority_id, status_id, ticket_type_id) FROM stdin;
1	Uszkodzony monitor	rozbity ekran	2022-11-26 17:26:51.714+00	2022-11-26 17:28:20.085+00	4	2	1	4	1
2	zalana klawiatura	zalana klawiatura	2022-11-26 17:27:12.81+00	\N	4	3	2	2	1
3	uszkodzony port usb	uszkodzony port usb	2022-11-26 17:27:32.241+00	\N	4	2	3	2	1
\.


--
-- Data for Name: SERVICEDESK_ticketshistory; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public."SERVICEDESK_ticketshistory" (id, comment, create_date, created_user_id, ticket_id) FROM stdin;
1	test	2022-11-26 17:27:45.982+00	1	3
2	test	2022-11-26 17:27:48.574+00	1	3
3	test	2022-11-26 17:27:50.287+00	1	3
4	test	2022-11-26 17:28:03.597+00	1	2
5	test	2022-11-26 17:28:05.188+00	1	2
6	test	2022-11-26 17:28:13.419+00	1	1
7	test	2022-11-26 17:28:15.089+00	1	1
8	test	2022-11-26 17:28:16.534+00	1	1
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public.auth_group (id, name) FROM stdin;
1	IT
2	USERS
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Token	7	add_token
26	Can change Token	7	change_token
27	Can delete Token	7	delete_token
28	Can view Token	7	view_token
29	Can add token	8	add_tokenproxy
30	Can change token	8	change_tokenproxy
31	Can delete token	8	delete_tokenproxy
32	Can view token	8	view_tokenproxy
33	Can add Typ Ticketu	9	add_tickettypes
34	Can change Typ Ticketu	9	change_tickettypes
35	Can delete Typ Ticketu	9	delete_tickettypes
36	Can view Typ Ticketu	9	view_tickettypes
37	Can add Priorytet Ticketu	10	add_ticketspriority
38	Can change Priorytet Ticketu	10	change_ticketspriority
39	Can delete Priorytet Ticketu	10	delete_ticketspriority
40	Can view Priorytet Ticketu	10	view_ticketspriority
41	Can add Status Ticketu	11	add_ticketsstatus
42	Can change Status Ticketu	11	change_ticketsstatus
43	Can delete Status Ticketu	11	delete_ticketsstatus
44	Can view Status Ticketu	11	view_ticketsstatus
45	Can add Ticket	12	add_tickets
46	Can change Ticket	12	change_tickets
47	Can delete Ticket	12	delete_tickets
48	Can view Ticket	12	view_tickets
49	Can add Historia Ticketu	13	add_ticketshistory
50	Can change Historia Ticketu	13	change_ticketshistory
51	Can delete Historia Ticketu	13	delete_ticketshistory
52	Can view Historia Ticketu	13	view_ticketshistory
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$390000$zAdWsgyvZvRNvihuYeF7TW$YT26HmKs8shenWZY0h0UL73ksYcllfgoEx1+2WVXnd4=	2022-12-29 15:10:00.438299+00	t	admin	Admin	Admin		t	t	2022-11-26 17:05:28+00
2	pbkdf2_sha256$390000$tgihpti7TCzC0OGO3euaUg$vdFctbsqh3ZNrzQOnHkwRGwDzWufDBEr3uTXg8j9CDM=	\N	f	jan	Jan	Nowak		f	t	2022-11-26 17:10:16+00
4	pbkdf2_sha256$390000$pmXo1lrzm5unZCHXEoCTqM$hshFmNhoh04YWqI637dvdg4rerFdRjl2EGLRp+gesm8=	\N	f	pawel	Pawe??	Ma??ecki		f	t	2022-11-26 17:26:11+00
3	pbkdf2_sha256$390000$pH9Zuw4At5pM61snmOZUuH$tmmy5t50+kHenTfOyde6kSRgJWJmoJBSjNSiBa5xvZE=	\N	f	tadeusz	Tadeusz	Nowak		f	t	2022-11-26 17:25:52+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	1	1
2	2	2
3	3	2
4	4	1
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-11-26 17:05:52.279+00	1	Incydent	1	[{"added": {}}]	9	1
2	2022-11-26 17:05:56.887+00	2	Zmiana	1	[{"added": {}}]	9	1
3	2022-11-26 17:07:40.687+00	1	Nowy	1	[{"added": {}}]	11	1
4	2022-11-26 17:07:51.462+00	2	W trakcie	1	[{"added": {}}]	11	1
5	2022-11-26 17:07:59.686+00	3	Oczekiwanie na odpowied??	1	[{"added": {}}]	11	1
6	2022-11-26 17:08:06.066+00	4	Zamkni??ty	1	[{"added": {}}]	11	1
7	2022-11-26 17:08:31.587+00	1	Niski	1	[{"added": {}}]	10	1
8	2022-11-26 17:08:36.443+00	1	Niski	2	[]	10	1
9	2022-11-26 17:08:49.455+00	2	??redni	1	[{"added": {}}]	10	1
10	2022-11-26 17:08:58.198+00	3	Wysoki	1	[{"added": {}}]	10	1
11	2022-11-26 17:09:32.016+00	1	IT	1	[{"added": {}}]	3	1
12	2022-11-26 17:09:36.027+00	2	USERS	1	[{"added": {}}]	3	1
13	2022-11-26 17:09:48.163+00	1	 	2	[{"changed": {"fields": ["Groups"]}}]	4	1
14	2022-11-26 17:10:16.23+00	2	 	1	[{"added": {}}]	4	1
15	2022-11-26 17:10:26.434+00	2	Jan Nowak	2	[{"changed": {"fields": ["First name", "Last name", "Groups"]}}]	4	1
16	2022-11-26 17:13:28.669+00	1	test	3		12	1
17	2022-11-26 17:25:32.655+00	1	Admin Admin	2	[{"changed": {"fields": ["First name", "Last name"]}}]	4	1
18	2022-11-26 17:25:52.179+00	3	 	1	[{"added": {}}]	4	1
19	2022-11-26 17:26:02.369+00	3	Tadeusz Nowak	2	[{"changed": {"fields": ["First name", "Last name", "Groups"]}}]	4	1
20	2022-11-26 17:26:11.765+00	4	 	1	[{"added": {}}]	4	1
21	2022-11-26 17:26:22.877+00	4	Pawe?? Ma??ecki	2	[{"changed": {"fields": ["First name", "Last name", "Groups"]}}]	4	1
22	2022-12-29 15:11:04.45414+00	2	Jan Nowak	2	[{"changed": {"fields": ["password"]}}]	4	1
23	2022-12-29 15:11:25.37812+00	2	Jan Nowak	2	[{"changed": {"fields": ["password"]}}]	4	1
24	2022-12-29 15:11:34.011648+00	4	Pawe?? Ma??ecki	2	[{"changed": {"fields": ["password"]}}]	4	1
25	2022-12-29 15:11:42.101139+00	3	Tadeusz Nowak	2	[{"changed": {"fields": ["password"]}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	authtoken	token
8	authtoken	tokenproxy
9	DICTIONARY	tickettypes
10	DICTIONARY	ticketspriority
11	DICTIONARY	ticketsstatus
12	SERVICEDESK	tickets
13	SERVICEDESK	ticketshistory
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-11-26 20:15:11.657813+00
2	auth	0001_initial	2022-11-26 20:15:11.767403+00
3	DICTIONARY	0001_initial	2022-11-26 20:15:11.779118+00
4	DICTIONARY	0002_ticketspriority_tickets	2022-11-26 20:15:11.803543+00
5	DICTIONARY	0003_tickets_create_user	2022-11-26 20:15:11.811238+00
6	DICTIONARY	0004_tickets_assign_user_alter_tickets_create_user	2022-11-26 20:15:11.821565+00
7	DICTIONARY	0005_rename_type_tickettypes_type_name	2022-11-26 20:15:11.823199+00
8	DICTIONARY	0006_rename_name_ticketspriority_priority_name	2022-11-26 20:15:11.825294+00
9	DICTIONARY	0007_remove_tickets_assign_user_and_more	2022-11-26 20:15:11.858746+00
10	DICTIONARY	0008_alter_tickets_options_ticketshistory	2022-11-26 20:15:11.883647+00
11	DICTIONARY	0009_ticketsstatus_tickets_status	2022-11-26 20:15:11.9164+00
12	DICTIONARY	0010_alter_ticketsstatus_status_name	2022-11-26 20:15:11.918567+00
13	DICTIONARY	0011_ticketshistory_created_user	2022-11-26 20:15:11.93026+00
14	DICTIONARY	0012_remove_ticketshistory_created_user_and_more	2022-11-26 20:15:11.94194+00
15	SERVICEDESK	0001_initial	2022-11-26 20:15:12.025367+00
16	SERVICEDESK	0002_tickets_ticket_type	2022-11-26 20:15:12.032849+00
17	SERVICEDESK	0003_alter_tickets_create_date	2022-11-26 20:15:12.036327+00
18	SERVICEDESK	0004_alter_ticketshistory_create_date	2022-11-26 20:15:12.039752+00
19	admin	0001_initial	2022-11-26 20:15:12.065842+00
20	admin	0002_logentry_remove_auto_add	2022-11-26 20:15:12.070495+00
21	admin	0003_logentry_add_action_flag_choices	2022-11-26 20:15:12.074037+00
22	contenttypes	0002_remove_content_type_name	2022-11-26 20:15:12.080523+00
23	auth	0002_alter_permission_name_max_length	2022-11-26 20:15:12.084741+00
24	auth	0003_alter_user_email_max_length	2022-11-26 20:15:12.089087+00
25	auth	0004_alter_user_username_opts	2022-11-26 20:15:12.092702+00
26	auth	0005_alter_user_last_login_null	2022-11-26 20:15:12.097493+00
27	auth	0006_require_contenttypes_0002	2022-11-26 20:15:12.098658+00
28	auth	0007_alter_validators_add_error_messages	2022-11-26 20:15:12.101974+00
29	auth	0008_alter_user_username_max_length	2022-11-26 20:15:12.112891+00
30	auth	0009_alter_user_last_name_max_length	2022-11-26 20:15:12.116861+00
31	auth	0010_alter_group_name_max_length	2022-11-26 20:15:12.1227+00
32	auth	0011_update_proxy_permissions	2022-11-26 20:15:12.126995+00
33	auth	0012_alter_user_first_name_max_length	2022-11-26 20:15:12.131673+00
34	authtoken	0001_initial	2022-11-26 20:15:12.150804+00
35	authtoken	0002_auto_20160226_1747	2022-11-26 20:15:12.16371+00
36	authtoken	0003_tokenproxy	2022-11-26 20:15:12.165177+00
37	sessions	0001_initial	2022-11-26 20:15:12.182663+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: itticket
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
70dz9y5kcj8oqlwzxqsqqp900scaebrm	.eJxVjDsOwjAQBe_iGln-xJ9Q0ucM1np3wQFkS3FSIe4OkVJA-2bmvUSCbS1p67ykmcRZaHH63TLgg-sO6A711iS2ui5zlrsiD9rl1Iifl8P9OyjQy7e2Jmo2w8jZqMBZ2VEF7RG1scjgPJGKbBC8jgTAbnBXUD4E5z0hsRXvD9PeN_I:1oyycR:UGD0ypbd2dOdMrs_odL9wMbT3ZH9a1l3SWbro0JysJI	2022-12-10 17:05:35.043+00
5e02s6abtgl3k2x3m6jbihq1mswnjjpd	.eJxVjDsOwjAQBe_iGln-xJ9Q0ucM1np3wQFkS3FSIe4OkVJA-2bmvUSCbS1p67ykmcRZaHH63TLgg-sO6A711iS2ui5zlrsiD9rl1Iifl8P9OyjQy7e2Jmo2w8jZqMBZ2VEF7RG1scjgPJGKbBC8jgTAbnBXUD4E5z0hsRXvD9PeN_I:1pAuZK:5KjOqVm3owzMv2ErXGul6xp4ytD14XfMJ3mPkqZURkA	2023-01-12 15:11:42.10786+00
\.


--
-- Name: DICTIONARY_ticketspriority_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public."DICTIONARY_ticketspriority_id_seq"', 3, true);


--
-- Name: DICTIONARY_ticketsstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public."DICTIONARY_ticketsstatus_id_seq"', 4, true);


--
-- Name: DICTIONARY_tickettypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public."DICTIONARY_tickettypes_id_seq"', 2, true);


--
-- Name: SERVICEDESK_tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public."SERVICEDESK_tickets_id_seq"', 3, true);


--
-- Name: SERVICEDESK_ticketshistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public."SERVICEDESK_ticketshistory_id_seq"', 8, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 4, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 25, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: itticket
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 37, true);


--
-- Name: DICTIONARY_ticketspriority DICTIONARY_ticketspriority_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."DICTIONARY_ticketspriority"
    ADD CONSTRAINT "DICTIONARY_ticketspriority_pkey" PRIMARY KEY (id);


--
-- Name: DICTIONARY_ticketsstatus DICTIONARY_ticketsstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."DICTIONARY_ticketsstatus"
    ADD CONSTRAINT "DICTIONARY_ticketsstatus_pkey" PRIMARY KEY (id);


--
-- Name: DICTIONARY_tickettypes DICTIONARY_tickettypes_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."DICTIONARY_tickettypes"
    ADD CONSTRAINT "DICTIONARY_tickettypes_pkey" PRIMARY KEY (id);


--
-- Name: SERVICEDESK_tickets SERVICEDESK_tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."SERVICEDESK_tickets"
    ADD CONSTRAINT "SERVICEDESK_tickets_pkey" PRIMARY KEY (id);


--
-- Name: SERVICEDESK_ticketshistory SERVICEDESK_ticketshistory_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."SERVICEDESK_ticketshistory"
    ADD CONSTRAINT "SERVICEDESK_ticketshistory_pkey" PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: SERVICEDESK_tickets_assigned_user_id_fde765ee; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX "SERVICEDESK_tickets_assigned_user_id_fde765ee" ON public."SERVICEDESK_tickets" USING btree (assigned_user_id);


--
-- Name: SERVICEDESK_tickets_created_user_id_67cae6f3; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX "SERVICEDESK_tickets_created_user_id_67cae6f3" ON public."SERVICEDESK_tickets" USING btree (created_user_id);


--
-- Name: SERVICEDESK_tickets_priority_id_111a98b9; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX "SERVICEDESK_tickets_priority_id_111a98b9" ON public."SERVICEDESK_tickets" USING btree (priority_id);


--
-- Name: SERVICEDESK_tickets_status_id_8ea4d5e5; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX "SERVICEDESK_tickets_status_id_8ea4d5e5" ON public."SERVICEDESK_tickets" USING btree (status_id);


--
-- Name: SERVICEDESK_tickets_ticket_type_id_f0494148; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX "SERVICEDESK_tickets_ticket_type_id_f0494148" ON public."SERVICEDESK_tickets" USING btree (ticket_type_id);


--
-- Name: SERVICEDESK_ticketshistory_created_user_id_0d90e6ed; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX "SERVICEDESK_ticketshistory_created_user_id_0d90e6ed" ON public."SERVICEDESK_ticketshistory" USING btree (created_user_id);


--
-- Name: SERVICEDESK_ticketshistory_ticket_id_e7423562; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX "SERVICEDESK_ticketshistory_ticket_id_e7423562" ON public."SERVICEDESK_ticketshistory" USING btree (ticket_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: itticket
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: SERVICEDESK_tickets SERVICEDESK_tickets_assigned_user_id_fde765ee_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."SERVICEDESK_tickets"
    ADD CONSTRAINT "SERVICEDESK_tickets_assigned_user_id_fde765ee_fk_auth_user_id" FOREIGN KEY (assigned_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SERVICEDESK_tickets SERVICEDESK_tickets_created_user_id_67cae6f3_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."SERVICEDESK_tickets"
    ADD CONSTRAINT "SERVICEDESK_tickets_created_user_id_67cae6f3_fk_auth_user_id" FOREIGN KEY (created_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SERVICEDESK_tickets SERVICEDESK_tickets_priority_id_111a98b9_fk_DICTIONAR; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."SERVICEDESK_tickets"
    ADD CONSTRAINT "SERVICEDESK_tickets_priority_id_111a98b9_fk_DICTIONAR" FOREIGN KEY (priority_id) REFERENCES public."DICTIONARY_ticketspriority"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SERVICEDESK_tickets SERVICEDESK_tickets_status_id_8ea4d5e5_fk_DICTIONAR; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."SERVICEDESK_tickets"
    ADD CONSTRAINT "SERVICEDESK_tickets_status_id_8ea4d5e5_fk_DICTIONAR" FOREIGN KEY (status_id) REFERENCES public."DICTIONARY_ticketsstatus"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SERVICEDESK_tickets SERVICEDESK_tickets_ticket_type_id_f0494148_fk_DICTIONAR; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."SERVICEDESK_tickets"
    ADD CONSTRAINT "SERVICEDESK_tickets_ticket_type_id_f0494148_fk_DICTIONAR" FOREIGN KEY (ticket_type_id) REFERENCES public."DICTIONARY_tickettypes"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SERVICEDESK_ticketshistory SERVICEDESK_ticketsh_created_user_id_0d90e6ed_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."SERVICEDESK_ticketshistory"
    ADD CONSTRAINT "SERVICEDESK_ticketsh_created_user_id_0d90e6ed_fk_auth_user" FOREIGN KEY (created_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SERVICEDESK_ticketshistory SERVICEDESK_ticketsh_ticket_id_e7423562_fk_SERVICEDE; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public."SERVICEDESK_ticketshistory"
    ADD CONSTRAINT "SERVICEDESK_ticketsh_ticket_id_e7423562_fk_SERVICEDE" FOREIGN KEY (ticket_id) REFERENCES public."SERVICEDESK_tickets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: itticket
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DATABASE itticket; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON DATABASE itticket TO itticket;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO itticket;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

