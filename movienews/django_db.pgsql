--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4 (Ubuntu 10.4-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.4 (Ubuntu 10.4-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO admin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO admin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
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


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- Name: movienews_app_actormodel; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.movienews_app_actormodel (
    id integer NOT NULL,
    image character varying(256) NOT NULL,
    bio text NOT NULL,
    name character varying(64) NOT NULL,
    birthday character varying(32) NOT NULL,
    deathday character varying(32) NOT NULL,
    gender integer NOT NULL
);


ALTER TABLE public.movienews_app_actormodel OWNER TO admin;

--
-- Name: movienews_app_actormodel_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.movienews_app_actormodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movienews_app_actormodel_id_seq OWNER TO admin;

--
-- Name: movienews_app_actormodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.movienews_app_actormodel_id_seq OWNED BY public.movienews_app_actormodel.id;


--
-- Name: movienews_app_directormodel; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.movienews_app_directormodel (
    id integer NOT NULL,
    image character varying(256) NOT NULL,
    bio text NOT NULL,
    name character varying(64) NOT NULL,
    birthday character varying(32) NOT NULL,
    deathday character varying(32) NOT NULL,
    gender integer NOT NULL
);


ALTER TABLE public.movienews_app_directormodel OWNER TO admin;

--
-- Name: movienews_app_directormodel_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.movienews_app_directormodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movienews_app_directormodel_id_seq OWNER TO admin;

--
-- Name: movienews_app_directormodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.movienews_app_directormodel_id_seq OWNED BY public.movienews_app_directormodel.id;


--
-- Name: movienews_app_genremodel; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.movienews_app_genremodel (
    id integer NOT NULL,
    title character varying(64) NOT NULL
);


ALTER TABLE public.movienews_app_genremodel OWNER TO admin;

--
-- Name: movienews_app_genremodel_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.movienews_app_genremodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movienews_app_genremodel_id_seq OWNER TO admin;

--
-- Name: movienews_app_genremodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.movienews_app_genremodel_id_seq OWNED BY public.movienews_app_genremodel.id;


--
-- Name: movienews_app_moviemodel; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.movienews_app_moviemodel (
    id integer NOT NULL,
    title character varying(64),
    image character varying(100),
    date date,
    country character varying(32),
    rating double precision NOT NULL,
    summary text,
    duration integer
);


ALTER TABLE public.movienews_app_moviemodel OWNER TO admin;

--
-- Name: movienews_app_moviemodel_actors; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.movienews_app_moviemodel_actors (
    id integer NOT NULL,
    moviemodel_id integer NOT NULL,
    actormodel_id integer NOT NULL
);


ALTER TABLE public.movienews_app_moviemodel_actors OWNER TO admin;

--
-- Name: movienews_app_moviemodel_actors_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.movienews_app_moviemodel_actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movienews_app_moviemodel_actors_id_seq OWNER TO admin;

--
-- Name: movienews_app_moviemodel_actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.movienews_app_moviemodel_actors_id_seq OWNED BY public.movienews_app_moviemodel_actors.id;


--
-- Name: movienews_app_moviemodel_directors; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.movienews_app_moviemodel_directors (
    id integer NOT NULL,
    moviemodel_id integer NOT NULL,
    directormodel_id integer NOT NULL
);


ALTER TABLE public.movienews_app_moviemodel_directors OWNER TO admin;

--
-- Name: movienews_app_moviemodel_directors_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.movienews_app_moviemodel_directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movienews_app_moviemodel_directors_id_seq OWNER TO admin;

--
-- Name: movienews_app_moviemodel_directors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.movienews_app_moviemodel_directors_id_seq OWNED BY public.movienews_app_moviemodel_directors.id;


--
-- Name: movienews_app_moviemodel_genres; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.movienews_app_moviemodel_genres (
    id integer NOT NULL,
    moviemodel_id integer NOT NULL,
    genremodel_id integer NOT NULL
);


ALTER TABLE public.movienews_app_moviemodel_genres OWNER TO admin;

--
-- Name: movienews_app_moviemodel_genres_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.movienews_app_moviemodel_genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movienews_app_moviemodel_genres_id_seq OWNER TO admin;

--
-- Name: movienews_app_moviemodel_genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.movienews_app_moviemodel_genres_id_seq OWNED BY public.movienews_app_moviemodel_genres.id;


--
-- Name: movienews_app_moviemodel_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.movienews_app_moviemodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movienews_app_moviemodel_id_seq OWNER TO admin;

--
-- Name: movienews_app_moviemodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.movienews_app_moviemodel_id_seq OWNED BY public.movienews_app_moviemodel.id;


--
-- Name: movienews_app_usermodel; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.movienews_app_usermodel (
    id integer NOT NULL,
    login character varying(32) NOT NULL,
    password character varying(32) NOT NULL,
    bio character varying(128) NOT NULL
);


ALTER TABLE public.movienews_app_usermodel OWNER TO admin;

--
-- Name: movienews_app_usermodel_genres; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.movienews_app_usermodel_genres (
    id integer NOT NULL,
    usermodel_id integer NOT NULL,
    genremodel_id integer NOT NULL
);


ALTER TABLE public.movienews_app_usermodel_genres OWNER TO admin;

--
-- Name: movienews_app_usermodel_genres_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.movienews_app_usermodel_genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movienews_app_usermodel_genres_id_seq OWNER TO admin;

--
-- Name: movienews_app_usermodel_genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.movienews_app_usermodel_genres_id_seq OWNED BY public.movienews_app_usermodel_genres.id;


--
-- Name: movienews_app_usermodel_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.movienews_app_usermodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movienews_app_usermodel_id_seq OWNER TO admin;

--
-- Name: movienews_app_usermodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.movienews_app_usermodel_id_seq OWNED BY public.movienews_app_usermodel.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: movienews_app_actormodel id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_actormodel ALTER COLUMN id SET DEFAULT nextval('public.movienews_app_actormodel_id_seq'::regclass);


--
-- Name: movienews_app_directormodel id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_directormodel ALTER COLUMN id SET DEFAULT nextval('public.movienews_app_directormodel_id_seq'::regclass);


--
-- Name: movienews_app_genremodel id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_genremodel ALTER COLUMN id SET DEFAULT nextval('public.movienews_app_genremodel_id_seq'::regclass);


--
-- Name: movienews_app_moviemodel id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel ALTER COLUMN id SET DEFAULT nextval('public.movienews_app_moviemodel_id_seq'::regclass);


--
-- Name: movienews_app_moviemodel_actors id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_actors ALTER COLUMN id SET DEFAULT nextval('public.movienews_app_moviemodel_actors_id_seq'::regclass);


--
-- Name: movienews_app_moviemodel_directors id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_directors ALTER COLUMN id SET DEFAULT nextval('public.movienews_app_moviemodel_directors_id_seq'::regclass);


--
-- Name: movienews_app_moviemodel_genres id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_genres ALTER COLUMN id SET DEFAULT nextval('public.movienews_app_moviemodel_genres_id_seq'::regclass);


--
-- Name: movienews_app_usermodel id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_usermodel ALTER COLUMN id SET DEFAULT nextval('public.movienews_app_usermodel_id_seq'::regclass);


--
-- Name: movienews_app_usermodel_genres id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_usermodel_genres ALTER COLUMN id SET DEFAULT nextval('public.movienews_app_usermodel_genres_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add review model	7	add_reviewmodel
20	Can change review model	7	change_reviewmodel
21	Can delete review model	7	delete_reviewmodel
22	Can add actor model	8	add_actormodel
23	Can change actor model	8	change_actormodel
24	Can delete actor model	8	delete_actormodel
25	Can add movie model	9	add_moviemodel
26	Can change movie model	9	change_moviemodel
27	Can delete movie model	9	delete_moviemodel
28	Can add genre model	10	add_genremodel
29	Can change genre model	10	change_genremodel
30	Can delete genre model	10	delete_genremodel
31	Can add user model	11	add_usermodel
32	Can change user model	11	change_usermodel
33	Can delete user model	11	delete_usermodel
34	Can add director model	12	add_directormodel
35	Can change director model	12	change_directormodel
36	Can delete director model	12	delete_directormodel
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	movienews_app	reviewmodel
8	movienews_app	actormodel
9	movienews_app	moviemodel
10	movienews_app	genremodel
11	movienews_app	usermodel
12	movienews_app	directormodel
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-06-26 13:32:45.012289+03
2	auth	0001_initial	2018-06-26 13:32:45.80003+03
3	admin	0001_initial	2018-06-26 13:32:45.97742+03
4	admin	0002_logentry_remove_auto_add	2018-06-26 13:32:45.99995+03
5	contenttypes	0002_remove_content_type_name	2018-06-26 13:32:46.05469+03
6	auth	0002_alter_permission_name_max_length	2018-06-26 13:32:46.076883+03
7	auth	0003_alter_user_email_max_length	2018-06-26 13:32:46.110124+03
8	auth	0004_alter_user_username_opts	2018-06-26 13:32:46.136437+03
9	auth	0005_alter_user_last_login_null	2018-06-26 13:32:46.1662+03
10	auth	0006_require_contenttypes_0002	2018-06-26 13:32:46.176673+03
11	auth	0007_alter_validators_add_error_messages	2018-06-26 13:32:46.202892+03
12	auth	0008_alter_user_username_max_length	2018-06-26 13:32:46.265149+03
13	auth	0009_alter_user_last_name_max_length	2018-06-26 13:32:46.298861+03
14	sessions	0001_initial	2018-06-26 13:32:46.442365+03
15	movienews_app	0001_initial	2018-06-26 15:38:43.454911+03
16	movienews_app	0002_auto_20180626_1255	2018-06-26 15:55:41.704612+03
17	movienews_app	0003_remove_moviemodel_duration	2018-06-26 17:27:03.209463+03
18	movienews_app	0004_moviemodel_duration	2018-06-26 17:27:19.537137+03
19	movienews_app	0005_auto_20180626_1543	2018-06-26 18:43:33.491957+03
20	movienews_app	0006_auto_20180626_1712	2018-06-26 20:12:11.192094+03
21	movienews_app	0007_auto_20180626_1729	2018-06-26 20:29:40.574373+03
22	movienews_app	0008_auto_20180626_1755	2018-06-26 20:55:30.391901+03
23	movienews_app	0009_auto_20180626_1803	2018-06-26 21:03:40.042731+03
24	movienews_app	0010_auto_20180626_2204	2018-06-27 01:04:48.725114+03
25	movienews_app	0011_auto_20180626_2206	2018-06-27 01:06:14.328354+03
26	movienews_app	0012_auto_20180626_2209	2018-06-27 01:09:08.459234+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: movienews_app_actormodel; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.movienews_app_actormodel (id, image, bio, name, birthday, deathday, gender) FROM stdin;
653	http://image.tmdb.org/t/p/w185/nQTtqJP7Go9cnvq9252IXqY9dMM.jpg	Ronald Lacey (28 September 1935 – 15 May 1991) was an English actor. He made numerous television and film appearances over a 30 year period and is perhaps best remembered for his villainous roles in Hollywood films, most famously Major Arnold Toht in Raiders of the Lost Ark.\n\nDescription above from the Wikipedia article Ronald Lacey, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Ronald Lacey	1935-09-28	1991-05-15	2
1442955	http://image.tmdb.org/t/p/w185/weKSlGfDRU3RR883Tv6L22Gg4SE.jpg		Keith Powers	No data.	No data.	2
1155085	http://image.tmdb.org/t/p/w185/1ZAAo9kmCqMu813Xw4QBYBZA7qc.jpg		Alicia Sanz	No data.	No data.	0
1450286	http://image.tmdb.org/t/p/w185/nhO7XB3xdBa6cGAe6yXomI4TfPG.jpg		Jake Borelli	No data.	No data.	0
1080862	http://image.tmdb.org/t/p/w185/krp63KgCnYTLxxa3gn4OrgsH2Jy.jpg		Anne Winters	1994-06-03	No data.	1
82093	http://image.tmdb.org/t/p/w185/wwLWCVSP9la3dG6xQBqUd1YzwMh.jpg	Daniel Henney was born in Carson City, Michigan, to a Korean adoptee mother and Philip Henney, his American father of Irish descent. Daniel Henney started modeling in the U.S. in 2001 and worked in France, Italy, Hong Kong and Taiwan while attending college. After his debut in South Korea with an advertisement for the Amore Pacific's cosmetic "Odyssey Sunrise", he became a spokesperson for commercials with Jun Ji-hyun for Olympus cameras and Kim Tae-hee for Daewoo Electronics's Klasse air conditioners. Despite speaking no Korean, Henney became a household name through the South Korean hit TV drama, My Lovely Sam Soon, aka My Name is Kim Sam Soon. He played the role of Dr. Henry Kim, a surgeon who is devotedly in love with Hee-jin (played by Jung Ryeo-won). Sam Soon was the most popular Korean drama in 2005; although Henney was starring as the supporting actor, his performance and look was widely noticed. Henney then starred in another drama “Spring Waltz” in 2006. He later learned the language and appeared on a few variety shows, such as Family Outing. Henney was a part of an academic scandal in which many sources stated that he had an Economics degree from the University of Illinois at Chicago, while in actuality he had no college degree. Henney starred in his first feature film in Korea, "Seducing Mr. Perfect." His second film, "My Father," won multiple awards in South Korea and was actually the first time in that country's history that a foreigner swept all the major cinema awards in the Best New Actor category. In 2009, he portrayed Agent Zero in the film X-Men Origins: Wolverine. In the fall season of 2009, he played "Dr. David Lee" in the CBS television drama Three Rivers. In 2010, Henney returned to South Korea television for KBS2's The Fugitive: Plan B, alongside Rain and actress Lee Na-young. Henney is signed with DNA Models in New York under the celebrity-division.	Daniel Henney	1979-11-28	No data.	2
1408809	http://image.tmdb.org/t/p/w185/8wLxRXEl0xZl9JaQkqsT1gtmEZb.jpg	Hannah John-Kamen is a British actress, best known for her roles as Dutch in Killjoys and as Viva in the West End musical Viva Forever. She is also known for her role as a Dothraki widow in the sixth season of the HBO series Game of Thrones and for voicing Sweet Shalquoir in the video game Dark Souls II.	Hannah John-Kamen	1989-09-06	No data.	1
19587	http://image.tmdb.org/t/p/w185/gAjyBxRsQKYeZMkYQ6cmEj5DmHD.jpg	From Wikipedia, the free encyclopedia  \n\n  Rumi Hiiragi (born August 1, 1987 in Tokyo) is a Japanese actress.  \n\n  Description above from the Wikipedia article Rumi Hiiragi, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rumi Hiiragi	1987-08-01	No data.	0
19588	http://image.tmdb.org/t/p/w185/dcZ4IJX8CBcJzxy8hhKFXv59LDE.jpg		Miyu Irino	1988-02-19	No data.	2
19589	http://image.tmdb.org/t/p/w185/oPCV2XYAJ4D1tK0OdJ2PPQbug5I.jpg	Junko Nakajima (中島 淳子 Nakajima Junko, born 2 May 1952), more commonly known by her stage name Mari Natsuki (夏木 マリ Natsuki Mari), is a Japanese singer, dancer and actress. Born in Tokyo, she started work as a singer from a young age. In 2007 she announced her engagement to percussionist Nobu Saitō, with their marriage taking place in Spring 2008.	Mari Natsuki	1952-05-02	No data.	1
119243	http://image.tmdb.org/t/p/w185/w3J8EkYDHi0UQ3JPradqKBfa22V.jpg		Bunta Sugawara	1933-08-16	2014-11-28	2
19594	No data.		Yumi Tamai	No data.	No data.	0
1105079	http://image.tmdb.org/t/p/w185/hl5hqBETPFAj8xUu3r7kweh2pu.jpg	Lucas Hedges (born December 12, 1996) is an American actor. He is best known for his roles in Wes Anderson’s Moonrise Kingdom (2012), the crime biopic Kill the Messenger (2014), the coming-of-age film Lady Bird (2017), and the drama Manchester by the Sea (2016), which earned him an Academy Award nomination.	Lucas Hedges	1996-12-12	No data.	2
7401	http://image.tmdb.org/t/p/w185/erD3UM1YDkRS46D3XkhTSNXtRyg.jpg	Linda "Lin" Shaye  (born 1944) is an American film, theatre and television actress.\n\nDescription above from the Wikipedia article Lin Shaye, licensed under CC-BY-SA, full list of contributors on Wikipedia	Lin Shaye	1943-10-12	No data.	1
2128	http://image.tmdb.org/t/p/w185/cEy5gYVsjC7YL5Q53lkwjqYWP22.jpg	Leigh Whannell (born 17 January 1977) is an Australian screenwriter, producer, and actor, best known for his work on the Saw franchise.\n\nDescription above from the Wikipedia article Leigh Whannell, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Leigh Whannell	1977-01-17	No data.	2
1069630	http://image.tmdb.org/t/p/w185/lJqVpEdZffZ6TmcsOYj9oKZBt9c.jpg		Caitlin Gerard	1988-07-26	No data.	1
75330	http://image.tmdb.org/t/p/w185/boFipGlGLBVQ9xTW69wXzWW6OAD.jpg	From Wikipedia, the free encyclopedia\n\nChilders was born in Cottonwood, Arizona and raised in Murrieta, California. Childers attended Vista Murrieta High School. After appearing in the 2003 film Dickie Roberts: Former Child Star, Childers became established for her role on the daytime soap opera All My Children as Colby Chandler, whom she portrayed from 2006 to 2008. She also played Elizabeth "E" Dodd in The Master. Childers is married to movie producer Randall Emmett and their daughter, London, was born on February 2, 2010.	Ambyr Childers	1988-07-18	No data.	1
51670	http://image.tmdb.org/t/p/w185/kHB3nmTs5e4QK6f2QoIMxlGPeJ0.jpg	​From Wikipedia, the free encyclopedia.  \n\nJohnathon Schaech (pronounced Shek, born September 10, 1969) is an American actor, writer, and director.\n\nDescription above from the Wikipedia article Johnathon Schaech, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Johnathon Schaech	1969-09-10	No data.	2
72638	http://image.tmdb.org/t/p/w185/lW2NSl9E2cCmqEm1RaG8h4o1Qsg.jpg	Tracy Letts (born July 4, 1965) is an American playwright, screenwriter, and actor. He received the 2008 Pulitzer Prize for Drama for his play August: Osage County and a Tony Award for his portrayal of George in the revival of Who's Afraid of Virginia Woolf? He is also known for his portrayal of Andrew Lockhart in seasons 3 and 4 of Showtime's Homeland, for which he has been nominated for two Screen Actors Guild Awards as a member of the ensemble. He currently portrays Nick on the HBO comedy Divorce.\n\nLetts wrote the screenplays of three films adapted from his own plays: Bug and Killer Joe, both directed by William Friedkin, and August: Osage County, directed by John Wells. His 2009 play Superior Donuts was adapted into a television series of the same name which is currently in its second season on CBS.	Tracy Letts	1965-07-04	No data.	2
19034	http://image.tmdb.org/t/p/w185/h8Lerr3D362n1jZvywtbvUzgBIN.jpg	Nicole Evangeline Lilly (born August 3, 1979) is a Canadian actress, best known for her role as Kate Austen in the ABC drama, Lost.\n\nDescription above from the Wikipedia article Evangeline Lilly, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Evangeline Lilly	1979-08-03	No data.	1
10912	http://image.tmdb.org/t/p/w185/wqK0BhMuNBvDqIg1bwT9RhYMy6L.jpg	Eva Gaëlle Green, born July 6th 1980, is a French actress and model. She started her career in theatre before making her film debut in 2003 in Bernardo Bertolucci's controversial The Dreamers. She achieved international recognition when she appeared in Ridley Scott's Kingdom of Heaven, and portrayed Vesper Lynd in the James Bond film Casino Royale. In 2006, Green was awarded the BAFTA Rising Star Award.	Eva Green	1980-07-06	No data.	1
114	http://image.tmdb.org/t/p/w185/kKWJlX2tcjqceSfUxnV7Jle5Kt.jpg	Orlando Jonathan Blanchard Bloom is an English actor. He had his break-through roles in 2001 as the elf-prince Legolas in The Lord of the Rings and starting in 2003 as blacksmith Will Turner in the Pirates of the Caribbean trilogy of films, and subsequently established himself as a lead in Hollywood films, including Elizabethtown and Kingdom of Heaven. He appeared in the ensemble film New York, I Love You, and will have roles in Sympathy for Delicious and Main Street. Bloom made his professional stage debut in West End's In Celebration at the Duke of York's Theatre, St. Martin's Lane, which ended its run on 15 September 2007.\n\nOrlando Bloom was born in Canterbury, Kent, England. His mother, Sonia Constance Josephine (née Copeland), was born in the British section of Kolkata, India, the daughter of Betty Constance Josephine Walker and Francis John Copeland, who was a physician and surgeon. During his childhood, Bloom was told that his father was his mother's husband, South African-born Jewish anti-Apartheid novelist Harry Saul Bloom; but when he was thirteen (nine years after Harry's death), Bloom's mother revealed to him that his biological father was actually Colin Stone, his mother's partner and family friend. Stone, the principal of the Concorde International language school, was made Orlando Bloom's legal guardian after Harry Bloom's death. Bloom, who is named after the 16th century composer Orlando Gibbons, has one sister, Samantha Bloom, who was born in 1975.\n\nBloom's first appearance on the screen was as a rent boy in the 1997 film Wilde - he had a small part. Two days after graduating from Guildhall in 1999, he was cast in his first major role, playing Legolas in The Lord of the Rings (2001–2003). He had originally auditioned for the part of Faramir, who doesn't appear until the second movie but the director, Peter Jackson, cast him as Legolas instead.\n\nBloom met American actress Kate Bosworth outside a coffee shop in 2002, where he was introduced to her by a mutual friend. He met her again at the premiere of The Lord of the Rings: The Two Towers later that year. The two had an "on-and-off relationship" from 2002 until splitting up in September 2006. In late 2007, Bloom began dating Australian model Miranda Kerr. The couple's engagement was announced on June 21, 2010.\n\nBloom has said that he tries "not to exclude [himself] from real life as much as possible". He is a Manchester United fan and lives in London. During filming in Morocco for Kingdom of Heaven, Bloom rescued and adopted a dog, Sidi (a black Saluki mix with a white mark on his chest). Bloom is a practising Buddhist. In 2004, he became a full member of Soka Gakkai International, a lay Buddhist association affiliated with the teachings of Nichiren. Bloom has also been a part of Global Green, an environmental company, since the early 2000s. As part of his environmental involvement, he has renovated his London home to use solar panels, incorporate recycled materials, and utilize energy efficient lightbulbs. Bloom has been approached by UNICEF to act as an international ambassador.	Orlando Bloom	1977-01-13	No data.	2
8169	http://image.tmdb.org/t/p/w185/a3tyF7QXgeEH0QuEuIzNZZ8oLNS.jpg	Tyrese Darnell Gibson (born December 30, 1978), also known mononymously as Tyrese, is an American Grammy-nominated R&B singer, songwriter, actor, author, television producer, former fashion model and MTV VJ. He is best known for his role as Roman Pearce in the The Fast and the Furious series.	Tyrese Gibson	1978-12-30	No data.	2
192	http://image.tmdb.org/t/p/w185/oGJQhOpT8S1M56tvSsbEBePV5O1.jpg	Morgan Porterfield Freeman, Jr. is an American actor, film director, and narrator. He is noted for his reserved demeanor and authoritative speaking voice. Freeman has received Academy Award nominations for his performances in Street Smart, Driving Miss Daisy, The Shawshank Redemption and Invictus and won in 2005 for Million Dollar Baby. He has also won a Golden Globe Award and a Screen Actors Guild Award.\n\nMorgan Freeman was born in Memphis, Tennessee, the son of Mayme Edna (née Revere) and Morgan Porterfield Freeman, Sr., a barber who died in 1961 from liver cirrhosis. Freeman was sent as an infant to his paternal grandmother in Charleston, Mississippi. He has three older siblings. Freeman's family moved frequently during his childhood, living in Greenwood, Mississippi; Gary, Indiana; and finally Chicago, Illinois.\n\nFreeman made his acting debut at age 9, playing the lead role in a school play. He then attended Broad Street High School, currently Threadgill Elementary School, in Mississippi. At age 12, he won a statewide drama competition, and while still at Broad Street High School, he performed in a radio show based in Nashville, Tennessee. In 1955, he graduated from Broad Street High School, but turned down a partial drama scholarship from Jackson State University, opting instead to work as a mechanic in the United States Air Force.\n\nFreeman moved to Los Angeles in the early 1960s and worked as a transcript clerk at Los Angeles Community College. During this period, he also lived in New York City, working as a dancer at the 1964 World's Fair, and in San Francisco, where he was a member of the Opera Ring music group. Freeman acted in a touring company version of The Royal Hunt of the Sun, and also appeared as an extra in the 1965 film The Pawnbroker. He made his off-Broadway debut in 1967, opposite Viveca Lindfors in The Nigger Lovers (about the civil rights era "Freedom Riders"), before debuting on Broadway in 1968's all-black version of Hello, Dolly!, which also starred Pearl Bailey and Cab Calloway.\n\nFreeman was married to Jeanette Adair Bradshaw from October 22, 1967, until 1979. He married Myrna Colley-Lee on June 16, 1984. The couple separated in December 2007. Freeman's attorney and business partner, Bill Luckett, announced in August 2008 that Freeman and his wife are in the process of divorce. He has two sons from previous relationships. He adopted his first wife's daughter and the couple also had a fourth child. Freeman lives in Charleston, Mississippi, and New York City. He has a private pilot's license, which he earned at age 65, and co-owns and operates Madidi, a fine dining restaurant, and Ground Zero, a blues club, both located in Clarksdale, Mississippi. He officially opened his second Ground Zero in Memphis, Tennessee on April 24, 2008.\n\nFreeman has publicly criticized the celebration of Black History Month and does not participate in any related events, saying, "I don't want a black history month. Black history is American history." He says the only way to end racism is to stop talking about it, and he notes that there is no "white history month". Freeman once said on an interview with 60 Minutes' Mike Wallace: "I am going to stop calling you a white man and I'm going to ask you to stop calling me a black man.	Morgan Freeman	1937-06-01	No data.	2
7031	http://image.tmdb.org/t/p/w185/pceSvV5ms0cCozVymblUUmIxb2S.jpg	Julian Alistair Rhind-Tutt (born 20 July 1968) is an English actor. He is best known for his starring role as Dr "Mac" Macartney in the comedy television series Green Wing, the second series of which finished onChannel 4 in May 2006. He has also appeared in various other television shows and films.	Julian Rhind-Tutt	1968-07-20	No data.	2
1809025	http://image.tmdb.org/t/p/w185/zqCvFCY9kWd3AkVv5Brwi7pZJ9W.jpg		Alejandro Edda	No data.	No data.	0
1255927	http://image.tmdb.org/t/p/w185/seFIPzyagmugtmkojHVKwGOmmnQ.jpg	Mauricio Mejia is a Colombian actor.	Mauricio Mejía	1974-09-13	No data.	2
563838	No data.		Stian Smestad	No data.	No data.	0
137748	http://image.tmdb.org/t/p/w185/dyB9fdYCZLqPhB6PYUosIJBbrBE.jpg		Louisa Milwood-Haigh	No data.	No data.	0
71186	http://image.tmdb.org/t/p/w185/4e4fDL75LqtIQXLtbkvc2oCx209.jpg		Bjørn Sundquist	1948-06-16	No data.	2
135121	http://image.tmdb.org/t/p/w185/s5S2A0ZeDhwlSMAsdZK0izrUNES.jpg		Joachim Rafaelsen	No data.	No data.	2
41292	http://image.tmdb.org/t/p/w185/6fZ5ceRvZtRkRm06HgaV4qCpJNY.jpg	From Wikipedia, the free encyclopedia.\n\nKeri Lynn Russell (born March 23, 1976) is an American actress and dancer. After appearing in a number of made-for-television films and series during the mid-1990s, she came to fame for portraying the title role of Felicity Porter on the series Felicity, which ran from 1998 to 2002, and for which she won a Golden Globe Award. Russell has since appeared in several films, including We Were Soldiers, The Upside of Anger, Mad About Mambo, Wonder Woman, Mission: Impossible III, Waitress, August Rush, Bedtime Stories, and Extraordinary Measures.	Keri Russell	1976-03-23	No data.	1
1625737	http://image.tmdb.org/t/p/w185/BhEGXkFYnzAShgq9YrXWMOlI1n.jpg	Pristine Edge is a Porn Actress from United States. She was born in St. Louis, Missouri on October 13, 1987. Pristine has blue eyes and blonde hair. She is 160 cm tall, weighs 47 kg and her measurements are 32B-24-32. She has enhanced tits.\n\nPristine Edge is also known as Jane Douxxx.	Pristine Edge	1987-10-13	No data.	1
1820009	No data.		Angelo Bertoli	No data.	No data.	0
1820010	No data.		Abraham Martinez	No data.	No data.	0
41087	http://image.tmdb.org/t/p/w185/epM29FmcrLX5HaFIKYChr7wL4gM.jpg	Leslie Mann (born March 26, 1972), is an American actress best known for her roles in comedic films, many of which are collaborations with her husband, Judd Apatow.\n\nDescription above from the Wikipedia article Leslie Mann, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Leslie Mann	1972-03-26	No data.	1
56446	http://image.tmdb.org/t/p/w185/WbnZd6SK3DRlQBBW1yP1xHwlbs.jpg	John Felix Anthony Cena (born April 23, 1977) is an American professional wrestler, philanthropist and actor. He is currently signed to WWE, where he is a free agent who appears for both the Raw and SmackDown brands.\n\nCena started his professional wrestling career in 1999 with Ultimate Pro Wrestling (UPW) and won the UPW Heavyweight Championship the following year. He signed a developmental contract with the World Wrestling Federation (WWF, later renamed to World Wrestling Entertainment, or simply WWE) in 2001, debuting on the WWE main roster in 2002. From a generic character in 2002, he morphed into a rapper for the time period of 2002–2004, which earned him fame within the audience on SmackDown! He later transitioned to his current character, which he describes as a "goody-two shoes Superman". However, Cena was labeled "the most polarizing professional wrestler ever" by industry commentator Jim Ross, as his character has many supporters and detractors. Cena was WWE's franchise player and its public face for much of the 2000s and 2010s. Industry veterans John Layfield, Paul Heyman, and Kurt Angle have called Cena the greatest WWE star of all time.\n\nThroughout his WWE career, Cena has won 25 championships, with 16 reigns as a world champion (13 times as WWE Champion and three times as WWE's World Heavyweight Champion). His 16 world title wins is tied with WWE Hall of Famer Ric Flair for the most recognized world championship reigns by WWE in history. He is also a five-time United States Champion and a four-time world tag team champion (two World Tag Team and two WWE Tag Team). Furthermore, he is a Money in the Bank ladder match winner (2012), a two-time Royal Rumble winner (2008, 2013) and a three-time Superstar of the Year Slammy Award winner (2009, 2010, 2012). Cena has the fourth-highest number of combined days as WWE Champion, behind Bruno Sammartino, Bob Backlund, and Hulk Hogan. He has also headlined WWE's flagship event WrestleMania on five different occasions (WrestleManias 22, 23, XXVII, XXVIII, and 29) over the course of his career, as well as many other pay-per-view events.\n\nOutside of wrestling, Cena released the 2005 rap album You Can't See Me, which debuted at No. 15 on the U.S. Billboard 200 chart. In 2006, Cena began an acting career in feature films with his first role being in The Marine. He went on star and appear in other films such as 12 Rounds (2009), Legendary (2010), The Reunion (2011), Trainwreck (2015), Sisters (2015), Daddy's Home (2015), The Wall (2017), Daddy's Home 2 (2017), Ferdinand (2017) and the upcoming Transformers prequel Bumblebee: The Movie (2018). He has also made appearances on television shows including Manhunt, Deal or No Deal, MADtv, Saturday Night Live, Punk'd, Psych and Parks and Recreation. Cena was a contestant on Fast Cars and Superstars: The Gillette Young Guns Celebrity Race, where he made it to the final round before being eliminated, placing third in the overall competition. Cena is the host of American Grit on Fox and is involved in numerous philanthropic causes, most notably with the Make-A-Wish Foundation—he has granted the most wishes in Make-A-Wish history.\n\nDescription above from the Wikipedia article John Cena, licensed under CC-BY-SA, full list of contributors on Wikipedia.	John Cena	1977-04-23	No data.	2
1803287	http://image.tmdb.org/t/p/w185/rLrsPhlILtiP89hCBLgc0eGC96f.jpg	Geraldine Viswanathan is an actress, known for Blockers (2018), EMO the Musical (2016) and Janet King (2014).	Geraldine Viswanathan	1996-06-20	No data.	1
1692795	http://image.tmdb.org/t/p/w185/fHVGIFuHO5lQhHMWR4QuX0tmzlO.jpg		Meg Donnelly	2000-07-25	No data.	1
1728254	http://image.tmdb.org/t/p/w185/rjsohEMxpoGN7e6z7qazNoTX4O6.jpg		Kingston Foster	2010-07-26	No data.	1
210688	http://image.tmdb.org/t/p/w185/chqOifLbjR5KaY7Uu8GEH1GbXUH.jpg		Kylee Russell	1996-10-08	No data.	1
180486	http://image.tmdb.org/t/p/w185/s1m3BmHGRaWQN5QJyZHHgdjqCQP.jpg	Gina Rodriguez is an American film and television actress, best known for her leading role as Majo Tonorio in the feature film "Filly Brown", and as the titular character Jane Gloriana Villanueva on the comedy-drama series "Jane the Virgin", for which she has been nominated for three Golden Globe Awards in the category "Best Actress – Television Series Musical or Comedy", winning in 2015.	Gina Rodriguez	1984-07-30	No data.	1
67737	http://image.tmdb.org/t/p/w185/sDXOMbeMHBLr4npL9wb4lB0evfT.jpg	An actress and director born in Stockholm, Sweden.	Tuva Novotny	1979-12-21	No data.	1
81083	http://image.tmdb.org/t/p/w185/8tM61XfapNvBnXum2WcBKlmDDeE.jpg		Max Burkholder	1997-11-01	No data.	2
131781	http://image.tmdb.org/t/p/w185/CaqLu6hnKehDSQhwLoUbA21g5D.jpg	Adelaide Kane is an Australian actress known for her roles in the tv series Neighbours, Reign and Teen Wolf.	Adelaide Kane	1990-08-09	No data.	1
14343	http://image.tmdb.org/t/p/w185/aaPzuXRHdyxamPMXqu70okPaqvB.jpg	From Wikipedia, the free encyclopedia.\n\nRene Marie Russo (born February 17, 1954) is an American film actress and former model.\n\nDescription above from the Wikipedia article Rene Russo, licensed under CC-BY-SA, full list of contributors on Wikipedia	Rene Russo	1954-02-17	No data.	1
2053	http://image.tmdb.org/t/p/w185/53Ln1wTC0OCLzBF4HNlwhMXYgOU.jpg	Bill Paxton (May 17, 1955 - February 25, 2017) was an American actor. He appeared in films including Aliens and Titanic and starred as practising polygamist Bill Henrickson in the HBO series Big Love. On February 25, 2017 he died from complications following heart surgery.	Bill Paxton	1955-05-17	2017-02-25	2
1815539	http://image.tmdb.org/t/p/w185/pFfp32SDwEu9JFjgcAp3qYW0pnI.jpg		Millicent Simmonds	No data.	No data.	1
1590759	http://image.tmdb.org/t/p/w185/nlYNme15ON67ofOuHMDnW3Zl42K.jpg		Noah Jupe	No data.	No data.	2
1924769	http://image.tmdb.org/t/p/w185/6tXfrNe9ilHeAby6Eg5tNvq5MGY.jpg		Cade Woodward	No data.	No data.	2
1270551	No data.		Dada Kondke	No data.	No data.	0
5081	http://image.tmdb.org/t/p/w185/w5bjRgGy3vNkJqY97kbvTp7ldxb.jpg	Emily Olivia Leah Blunt (born 23 February 1983) is a British-American film and stage actress. Her first major film role was in the British production My Summer of Love (2004). After which she appeared in numerous American and British movies.	Emily Blunt	1983-02-23	No data.	1
62561	http://image.tmdb.org/t/p/w185/fycqdiiM6dsNSbnONBVVQ57ILV1.jpg	Tessa Lynne Thompson is an American actress. She is perhaps best-known for her roles as Valkyrie in Thor: Ragnarok (2017) and Jackie Cook on the TV series Veronica Mars.	Tessa Thompson	1983-10-03	No data.	1
37158	http://image.tmdb.org/t/p/w185/yAiQAfxCAFw2SNIVpAePKXBvT58.jpg	​From Wikipedia, the free encyclopedia.  \n\nCarmen Elizabeth Ejogo (born 1 January 1974) is an British actress, currently based in the United States.\n\nDescription above from the Wikipedia article Carmen Ejogo, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Carmen Ejogo	1974-01-01	No data.	1
1911829	http://image.tmdb.org/t/p/w185/Anb4WgpXbEaGZZod0kXnF35Junx.jpg	Maja Milkovich is known for her work on What Happened (2013), Proposition (2008) and Shakey's Coffee (2012).	Maja Milkovich	No data.	No data.	1
287	http://image.tmdb.org/t/p/w185/kU3B75TyRiCgE270EyZnHjfivoq.jpg	William Bradley "Brad" Pitt (born December 18, 1963) is an American actor and film producer. Pitt has received two Academy Award nominations and four Golden Globe Award nominations, winning one. He has been described as one of the world's most attractive men, a label for which he has received substantial media attention. Pitt began his acting career with television guest appearances, including a role on the CBS prime-time soap opera Dallas in 1987. He later gained recognition as the cowboy hitchhiker who seduces Geena Davis's character in the 1991 road movie Thelma & Louise. Pitt's first leading roles in big-budget productions came with A River Runs Through It (1992) and Interview with the Vampire (1994). He was cast opposite Anthony Hopkins in the 1994 drama Legends of the Fall, which earned him his first Golden Globe nomination. In 1995 he gave critically acclaimed performances in the crime thriller Seven and the science fiction film 12 Monkeys, the latter securing him a Golden Globe Award for Best Supporting Actor and an Academy Award nomination.\n\nFour years later, in 1999, Pitt starred in the cult hit Fight Club. He then starred in the major international hit as Rusty Ryan in Ocean's Eleven (2001) and its sequels, Ocean's Twelve (2004) and Ocean's Thirteen (2007). His greatest commercial successes have been Troy (2004) and Mr. & Mrs. Smith (2005).\n\nPitt received his second Academy Award nomination for his title role performance in the 2008 film The Curious Case of Benjamin Button. Following a high-profile relationship with actress Gwyneth Paltrow, Pitt was married to actress Jennifer Aniston for five years. Pitt lives with actress Angelina Jolie in a relationship that has generated wide publicity. He and Jolie have six children—Maddox, Pax, Zahara, Shiloh, Knox, and Vivienne.\n\nSince beginning his relationship with Jolie, he has become increasingly involved in social issues both in the United States and internationally. Pitt owns a production company named Plan B Entertainment, whose productions include the 2007 Academy Award winning Best Picture, The Departed.	Brad Pitt	1963-12-18	No data.	2
1464650	http://image.tmdb.org/t/p/w185/vohccdHmJHNZX9UIcRlmZ4Qwkj.jpg	Dafne Keen (born Daphne Keen Fernández; 2005) is a Spanish-British child actress, known for playing the role of Ana "Ani" Cruz Oliver in the television series The Refugees, and mutant Laura (X-23) in the 2017 film Logan.	Dafne Keen	No data.	No data.	1
12835	http://image.tmdb.org/t/p/w185/mjRdM6w6Uz1UnrKQ5Kw02qGln2K.jpg	Vin Diesel is an American actor, producer, director, and screenwriter. He came to prominence in the late 1990s, and first became known for appearing in Steven Spielberg's Saving Private Ryan in 1998. He is most known for his portrayals of Riddick in The Chronicles of Riddick trilogy (2001–2013), and of Dominic Toretto in The Fast and the Furious film series (2001–present), two franchises in which he also acted as producer. He also starred in xXx (2002) and Sidney Lumet's Find Me Guilty (2006). His voice acting work includes Brad Bird's The Iron Giant (1999), the video games of The Chronicles of Riddick franchise, and the upcoming Guardians of the Galaxy adaptation of the Marvel comics of the same name. As a filmmaker, Diesel directed, wrote, produced and starred in the drama film Strays, as well as in two short films. He is also the founder of the production companies One Race Films, Racetrack Records, and Tigon Studios.\n\nFrom Wikipedia	Vin Diesel	1967-07-18	No data.	2
86017	http://image.tmdb.org/t/p/w185/67XySQHizTIxmG8LhNZtLEuIUqM.jpg		Shakti Kapoor	1958-09-03	No data.	2
35759	http://image.tmdb.org/t/p/w185/rJpld5ViYmACQUGvYAYEggnHi2O.jpg		Satish Shah	1951-06-25	No data.	2
1332813	No data.		Swapna	No data.	No data.	0
565160	http://image.tmdb.org/t/p/w185/801Jj8tojATXM9Yhp6yOiqUqHPV.jpg	Raza Murad (born 23 November 1950)[2] is a popular Indian actor working primarily in Hindi films.[3][4][5] He has acted in over 200 Bollywood films, he also worked in some Bhojpuri and other regional language films. He has portrayed a wide variety of roles from sympathetic brothers and brotherly figures in the 1970s to villainous roles in the 1980s and later. He is the son of renowned Bollywood character actor Murad.	Raza Murad	1950-11-23	No data.	2
55466	http://image.tmdb.org/t/p/w185/xGB0gfZ48M27gQjjL7inJIh1Pqj.jpg	James Kimberley Corden (born 17 June 1978) is an English actor, television writer, producer and presenter. He is co-creator and star of BBC comedy shows Gavin & Stacey and Horne & Corden, and acted in the 2009 film Lesbian Vampire Killers.\n\nDescription above from the Wikipedia article James Corden, licensed under CC-BY-SA, full list of contributors on Wikipedia.	James Corden	1978-06-17	No data.	2
53280	http://image.tmdb.org/t/p/w185/4yQTHc4pofc1j3doHRDBwuSpJ2w.jpg	Tyler Garcia Posey (born October 18, 1991) is an American actor, musician, and producer. He is best known for his role as Scott McCall in Teen Wolf.	Tyler Posey	1991-10-18	No data.	2
1515230	http://image.tmdb.org/t/p/w185/5NLMFf5a479V6mksvmSPEFhRNNj.jpg		Violett Beane	1996-05-18	No data.	1
1163789	http://image.tmdb.org/t/p/w185/n8QHjHahisB3qrpKLpIG6pTrxzQ.jpg		Sophia Taylor Ali	1994-01-01	No data.	1
82819	http://image.tmdb.org/t/p/w185/ngXbdQRDXQRWpHgWrrjyunWMKai.jpg		Nolan Gerard Funk	1986-01-01	No data.	2
1945702	http://image.tmdb.org/t/p/w185/cGGEVk51V3neKfqBfB0H4djfsWz.jpg		Milly Shapiro	No data.	No data.	0
71051	http://image.tmdb.org/t/p/w185/stiSbR39ALCYM7hSR5hhRqhChtm.jpg	From Wikipedia, the free encyclopedia.\n\nWang Baoqiang (simplified Chinese: 王宝强; traditional Chinese: 王寶強; pinyin: Wáng Bǎoqiáng; born May 29, 1984) is a Chinese actor. His debut role was that of Yuan Fengming in the movie Blind Shaft, for which he shared the Best New Performer prize at the 2003 Golden Horse Awards with Megan Zheng.The same role also won him the Best Actor prize at the 2003 Deauville Asian Film Festival and 2004 Golden Kinnaree Award (Bangkok International Film Festival).	Baoqiang Wang	1984-04-29	No data.	0
83635	http://image.tmdb.org/t/p/w185/mYicBPXX3hlmi2j5seXq2599KpM.jpg	​From Wikipedia, the free encyclopedia.  \n\nHuang Sheng-yi (born February 11, 1983), also known as Eva Huang, is a Chinese actress and singer.\n\nDescription above from the Wikipedia article Huang Shengyi, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Huang Sheng-Yi	1983-02-11	No data.	1
121529	http://image.tmdb.org/t/p/w185/xptyFXfBENBMQkgPEYCxlMkSLSs.jpg	Léa Seydoux (born 1 July 1985) is a French actress and model. Along with award-winning performances in French cinema and television, she has appeared in major films including Inglorious Basterds, Robin Hood, Midnight in Paris, and Mission: Impossible – Ghost Protocol. In 2013 she shared the Palme d'Or prize at the Cannes Film Festival for the film Blue is the Warmest Color. It was announced early 2014 that Lea will be nominated for the Rising Star Award of the BAFTAs.\n\nEarly life\n\nLéa Seydoux is the daughter of businessman Henri Seydoux and Valérie Schlumberger. She has five younger siblings and an older sister, Camille. Seydoux was born in the Parisian district of Passy, but grew up in Saint-Germain-des-Prés. Her parents divorced when she was a small child. Through her family involvement in media and entertainment, Seydoux grew up acquainted with prominent artists such as photographer Nan Goldin, Lou Reed, and Mick Jagger.\n\nThe Seydoux family is widely known in France. Her grandfather, Jérôme Seydoux, is the chairman of Pathé; her granduncle, Nicolas Seydoux, is the chairman of Gaumont Film Company;her other granduncle, Michel Seydoux, also a cinema producer, is currently the chairman of the Lille football club, LOSC; and her father is CEO of the French wireless company Parrot.\n\nHer mother Valérie Schlumberger is a former actress and the founder of the boutique CSAO (Compagnie d'Afrique du Sénégal et de l'Afrique de l'ouest), which promotes the work of African artists, and Seydoux once worked as a model for their jewelry line Jokko. Schlumberger, who lived in Senegal as a teenager, is also the founder of the charitable organization ASAO (Association pour le Sénégal et l'Afrique de l'Ouest).\n\nSeydoux describes her youthful self as short-haired, slightly disheveled, and widely viewed as a bit strange: "People liked me, but I always felt like a misfit." Still concerned for her shyness in adulthood, Seydoux has admitted to having had an anxiety crisis during the 2009 Cannes Film Festival.	Léa Seydoux	1985-07-01	No data.	1
3063	http://image.tmdb.org/t/p/w185/eGNo9qwlunvAi4kCVUEFtQFM5X.jpg	Katherine Mathilda "Tilda" Swinton (born 5 November 1960) is a British actress known for both arthouse and mainstream films. She won the Academy Award for Best Supporting Actress for her performance in Michael Clayton.	Tilda Swinton	1960-11-05	No data.	1
17637	http://image.tmdb.org/t/p/w185/1g1demRAGhwdUpwi8PA0wgFe2IX.jpg	From Wikipedia, the free encyclopedia  \n\n  Scott Leo "Taye" Diggs (born January 2, 1971) is an American theatre, film and television actor. He is perhaps best known for his roles in the Broadway musical Rent, the motion picture How Stella Got Her Groove Back, and the television series Private Practice. His nickname, Taye, comes from the playful pronunciation of Scotty as "Scottay".  Description above from the Wikipedia article Taye Diggs, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Taye Diggs	1971-01-02	No data.	2
129104	http://image.tmdb.org/t/p/w185/fj3Va0w2OyKaQALGomMgpq2B2Fu.jpg	Melissa Benoist is an American actress and singer, known for her portrayal of "Marley Rose" on Glee and the title role in Supergirl. Furthermore, she has appeared in a number of television series, including Homeland, The Good Wife and Law & Order.\n\nMelissa's first film was in singer Mariah Carey's Tennessee (2008). She also appeared in Whiplash (2014), which won top prizes (Grand Jury and Audience awards) at the Sundance Film Festival in Park City, Utah, in January 2014	Melissa Benoist	1988-10-04	No data.	1
223012	http://image.tmdb.org/t/p/w185/lqWVUUOBrv4ANxyvsv5aagc6CBq.jpg		Jayson Blair	No data.	No data.	2
87722	http://image.tmdb.org/t/p/w185/xllWXMaKlPSQ9LUkG9niugX8vOx.jpg	Noomi Rapace, born Noomi Norén; 28 December 1979 in Hudiksvall, is a Swedish actress. She is best known for her portrayal of Lisbeth Salander in the Swedish/Danish film adaptions of the "Millennium Trilogy": The Girl with the Dragon Tattoo, The Girl Who Played with Fire and The Girl Who Kicked the Hornets' Nest.	Noomi Rapace	1979-12-28	No data.	1
935235	http://image.tmdb.org/t/p/w185/k0qx65csI86rAFBR4Sal7phY3Vl.jpg	Marwan Kenzari was born on January 16, 1983 in The Hague, Zuid-Holland, Netherlands. He is an actor and costume designer.	Marwan Kenzari	1983-01-16	No data.	0
47647	http://image.tmdb.org/t/p/w185/6KHeIoaS3eIn2TVBEyatMdFwEWv.jpg	Christian Rubeck (born in Moss, 1980) is a Norwegian actor.	Christian Rubeck	1980-01-01	No data.	0
1428070	http://image.tmdb.org/t/p/w185/mT6CGpG1FRhzAGkR2mBEudMIUg8.jpg	Isabela Moner (born Isabela Yolanda Moner on July 10, 2001) is an American actress, voice actress, singer, songwriter, dancer and ukulele player. Moner was born in Cleveland, Ohio. She was born to Katherine Moner, of Peruvian descent, who was born in Lima, Peru and to Patrick Moner, of American descent, who was born in Louisiana. She is the middle child of her family and has two other brothers, Gyovanni, which is her younger brother and Jared, which is her older brother. She had her Broadway debut at the age of 10 in a production of Evita.j	Isabela Moner	2001-07-10	No data.	1
1366865	http://image.tmdb.org/t/p/w185/lCCmCzMY23sp4KTxN5yJ1jhTwHF.jpg		Nicole Anthony	No data.	No data.	1
27319	http://image.tmdb.org/t/p/w185/2Hhztd4mUEV9Y25rfkXDwzL9QI9.jpg	Christoph Waltz (born 4 October 1956) is an Austrian actor who also holds German citizenship. He received international acclaim for his portrayal of SS Colonel Hans Landa in the 2009 film Inglourious Basterds, for which he won the Best Actor Award at the Cannes Film Festival and the BAFTA, Golden Globe and Screen Actors Guild Award for Best Supporting Actor in 2009 and the Academy Award for Best Supporting Actor in 2010.	Christoph Waltz	1956-10-04	No data.	2
3223	http://image.tmdb.org/t/p/w185/1YjdSym1jTG7xjHSI0yGGWEsw5i.jpg	Robert John Downey, Jr. (born April 4, 1965) is an American actor. Downey made his screen debut in 1970, at the age of five, when he appeared in his father's film Pound, and has worked consistently in film and television ever since. During the 1980s he had roles in a series of coming of age films associated with the Brat Pack. Less Than Zero (1987) is particularly notable, not only because it was the first time Downey's acting would be acknowledged by critics, but also because the role pushed Downey's already existing drug habit one step further. After Zero, Downey started landing roles in bigger films such as Air America (1990), Soapdish (1991) and Natural Born Killers (1994). He played Charlie Chaplin in the 1992 film Chaplin, for which he received an Academy Award nomination for Best Actor.	Robert Downey Jr.	1965-04-04	No data.	2
1704256	http://image.tmdb.org/t/p/w185/1B2X6gGhU9fyX99Og7muvXT8M1Q.jpg		Deric McCabe	2008-08-28	No data.	2
1313583	http://image.tmdb.org/t/p/w185/n7yuMduWZpBuKHjW25X9G2miTKl.jpg	Levi Miller is a child actor. His major film debut will be in the 2015 film, Pan as Peter Pan. He previously has appeared only in the musical "A Heartbeat Away" from 2011 with Sebastian Gregory, Isabel Lucas andWilliam Zappa, and in short films such as Akiva (2010) and Great Adventures (2012). He played General Philbrick as a Child, in one episode of Terra Nova TV series.	Levi Miller	2002-09-30	No data.	2
10297	http://image.tmdb.org/t/p/w185/jdRmHrG0TWXGhs4tO6TJNSoL25T.jpg	Matthew David McConaughey (born November 4, 1969) is an American actor. After a series of minor roles in the early 1990s, McConaughey gained notice for his breakout role in Dazed and Confused (1993). It was in this role that he first conceived the idea of his catch-phrase "Well alright, alright." He then appeared in films such as A Time to Kill, Contact, U-571, Tiptoes, Sahara, and We Are Marshall. McConaughey is best known more recently for his performances as a leading man in the romantic comedies The Wedding Planner, How to Lose a Guy in 10 Days, Failure to Launch, Ghosts of Girlfriends Past and Fool's Gold.\n\nDescription above from the Wikipedia article Matthew McConaughey, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Matthew McConaughey	1969-11-04	No data.	2
530	http://image.tmdb.org/t/p/w185/6gk8GmlfjW8ONS19KMeISp8Cqxf.jpg	Carrie-Anne Moss is a Canadian film and television actress, best known for playing character Trinity in the feature film trilogy "The Matrix". She's a graduate of the American Academy of Dramatic Arts, Los Angeles, California, USA.	Carrie-Anne Moss	1967-08-21	No data.	1
53807	http://image.tmdb.org/t/p/w185/2zq984Jrw53AxDshTQPKpTPGLe8.jpg	Armand Douglas "Armie" Hammer (born August 28, 1986) is an American actor. After appearing on television and playing the title role in 2008's Billy: The Early Years, he became known for his portrayal of the Winklevoss twins in the 2010 film The Social Network. His notorious film roles include Clyde Tolson in J. Edgar, Prince Albert Alcott in Tarsem Singh's Snow White, and The Lone Ranger.	Armie Hammer	1986-08-28	No data.	2
72873	http://image.tmdb.org/t/p/w185/seBk12MUK51aUoYX4OW1itfOpJ6.jpg	Michael S. Stuhlbarg (born July 5, 1968) is an American theatre, film and television actor.	Michael Stuhlbarg	1968-07-05	No data.	2
935096	http://image.tmdb.org/t/p/w185/km79Neoe5tLwgbiBzq72pR7pdxY.jpg		Esther Garrel	1991-02-18	No data.	1
58635	http://image.tmdb.org/t/p/w185/zQJDrk8GTVZFYMFlwQuE9Dmnvb8.jpg	From Wikipedia, the free encyclopedia\n\nDominik Garcia-Lorido (born 16 August 1983, United States) is an American actress known for playing roles in The Lost City as Mercedes Fellove and City Island as Vivian Rizzo who is the daughter of the character played by actor Andy García, also her real life father.\n\nDescription above from the Wikipedia article Dominik Garcia-Lorido,licensed under CC-BY-SA, full list of contributors on Wikipedia.	Dominik García-Lorido	1983-08-16	No data.	1
1852182	http://image.tmdb.org/t/p/w185/aUAx2GS4Qy5qZwegQMsv3dkeUAs.jpg		Huck Milner	No data.	No data.	0
221581	http://image.tmdb.org/t/p/w185/hwgTgqFLFwTBesbCAKtWa1ARrp7.jpg	Rebel Wilson is an Australian actress, writer, and stand-up comedienne, known for her roles in the television series Pizza and Bogan Pride and the film Bridesmaids. \n\nDescription above from the Wikipedia article Rebel Wilson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rebel Wilson	1980-03-02	No data.	1
132157	http://image.tmdb.org/t/p/w185/1tgihUq8F6zPHU9IYyRZ7vI6nme.jpg	Ezra Matthew Miller was born in Wyckoff, New Jersey, to Marta (Koch), a modern dancer, and Robert S. Miller, who has worked at Workman Publishing and as former senior VP for Hyperion Books. He has two older sisters. Ezra is of Ashkenazi Jewish (father) and German-Dutch (mother) ancestry; he has described himself as Jewish and "spiritual".	Ezra Miller	1992-09-30	No data.	2
78062	http://image.tmdb.org/t/p/w185/9RVP50tleHVlqBH8jIjbluFzblw.jpg	Aml Eysan Ameen (born 30 July 1985 in London, England) is an English actor best known for his roles as Trife in Kidulthood and Lewis Hardy in The Bill.\n\nDescription above from the Wikipedia article Aml Ameen, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Aml Ameen	1985-07-30	No data.	2
19536	http://image.tmdb.org/t/p/w185/hi5OzlZAwf22xRRPLFbKnXNoZ9L.jpg	Joshua David "Josh" Duhamel (November 14, 1972) was born in Minot, North Dakota. Duhamel is an American actor and former fashion model. He first achieved acting success in 1999 as Leo du Pres on ABC's All My Children and later as the chief of security, Danny McCoy, on NBC's Las Vegas. He is also well known for his role as one of the protagonists, Captain/Major William Lennox, in the box office hit Transformers as well as its sequels, Transformers: Revenge of the Fallen and Transformers: Dark of the Moon.  He is the son of Bonnie L. Kemper, a physical education teacher, and Larry David Duhamel, an advertising salesman. His parents divorced during his youth, and although he remains close to both, he grew up with his mother and his three younger sisters, Ashlee, Mckenzee and Kassidy. Duhamel attended Minot State University and played as the back-up quarterback for the university's football team. He planned to attend dental school but dropped out one-and-a-half credits shy of his undergraduate degree.  Duhamel has stated, "After college, I followed an ex-girlfriend to northern California, did a bunch of odd jobs." Duhamel had won the title of Male Model of the Year in an International Modeling and Talent Association (IMTA) competition in 1997. Duhamel began his acting career as an extra in the music videos for Donna Summer's song, "I Will Go With You (Con te partirò)" in 1998 and Christina Aguilera's song, "What a Girl Wants" in 1999. Later that year, he won the role of Leo du Pres on the ABC soap opera All My Children. His work on the show, especially his character's pairing with Greenlee Smythe (portrayed by actor Rebecca Budig), garnered critical acclaim. In 2000, he posed fully nude for Greg Gorman's "As I See It" photography book. In 2003, he earned a Daytime Emmy Award nomination for the Special Fan Award for America's Favorite Couple in 2002, shared with Budig, and a Daytime Emmy Award for Outstanding Supporting Actor for his portrayal of Leo du Pres. Duhamel opted to leave All My Children in 2002 to pursue other acting opportunities. In 2003, Duhamel landed a prime time role on the NBC show Las Vegas, playing the head of security as Danny McCoy for the Montecito Casino. He succeeded James Caan as president of the Montecito after Caan departed at the end of the fourth season. The series was cancelled in 2008. Duhamel made his big-screen acting debut in 2004's Win a Date with Tad Hamilton! and continued on to star in the thriller Turistas (2006). After watching an episode of Las Vegas in which Duhamel's character had just returned from the war in Iraq, Steven Spielberg handpicked him for the role of Captain William Lennox in 2007's summer blockbuster film Transformers (a film for which Spielberg was the executive producer). Duhamel reprised the role for the sequel, Transformers: Revenge of the Fallen, released in June 2009, and again in Transformers: Dark of the Moon, due for release in July 2011. Duhamel was the official pace car driver for the 2009 Indianapolis 500 driving the 2010 Chevrolet Camaro Pace Car. Duhamel will star alongside Samuel L. Jackson in the Boaz Yakin thriller film Sympathy for the Devil. He also appeared in The Romantics in 2010, alongside Katie Holmes, Adam Brody, and Australian actress Annabel-Jane Brooks.	Josh Duhamel	1972-12-14	No data.	2
8654	http://image.tmdb.org/t/p/w185/tEQG1Us5IuoKYtufZe6waWtxfeg.jpg	Matthew Avery Modine (born March 22, 1959) is an award-winning American actor. His film roles include Private Joker in Stanley Kubrick's Full Metal Jacket, the title character in Alan Parker's Birdy, high school wrestler Louden Swain in Vision Quest, and the oversexed Sullivan Groff in Weeds.	Matthew Modine	1959-03-22	No data.	2
527393	http://image.tmdb.org/t/p/w185/gmU3f4aR6Bd8zkk6AiLm0dvWPaE.jpg	Dylan O'Brien is an American actor and musician. He co-stars as Stiles in the MTV series Teen Wolf. He also co-starred in the film High Road, and starred in the film The First Time, with Britt Robertson.	Dylan O'Brien	1991-08-26	No data.	2
8977	http://image.tmdb.org/t/p/w185/mhKSd2uLhNX7TahlNhwJgDYMRwN.jpg	Craig Theodore Nelson (born April 4, 1944) is an American actor. He is probably best known for his Emmy-winning role as Hayden Fox on the TV series Coach. He also starred in The Incredibles in 2004 as Mr. Incredible.\n\nDescription above from the Wikipedia article Craig T. Nelson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Craig T. Nelson	1944-04-04	No data.	2
1334638	http://image.tmdb.org/t/p/w185/fKfaubGWh4QnupDAQ0K2lWBjJYX.jpg	Jack Lowden, born in England, raised in Scotland, is a rising stage, television, and film actor.	Jack Lowden	1990-06-02	No data.	2
115150	http://image.tmdb.org/t/p/w185/iTrPnn7oS96k0iWPzNxaKCNutB6.jpg	Kaya Rose Scodelario-Davis (née Humphrey; born 13 March 1992) is an English actress. She is best known for her roles as Effy Stonem on the E4 teen drama Skins (2007-2010; 2012), Catherine Earnshaw in Andrea Arnold's Wuthering Heights (2011), Teresa Agnes in The Maze Runner film series and Carina Smyth in Pirates of the Caribbean: Dead Men Tell No Tales (2017).	Kaya Scodelario	1992-02-13	No data.	1
7060	http://image.tmdb.org/t/p/w185/ashlWz2KDQTbo8NPUbVOwcB3zXJ.jpg	Martin Freeman is a British film and television actor, best known for playing the role of Tim Canterbury in the British television show "The Office", and as lead character Bilbo Baggins in the feature film universe of "The Hobbit".	Martin Freeman	1971-09-08	No data.	2
1310760	http://image.tmdb.org/t/p/w185/8QodPxf0yrBUzG0ZIVIPXJ4MgdA.jpg	Ki Hong Lee is an actor and writer.	Ki Hong Lee	1986-09-30	No data.	2
1344344	http://image.tmdb.org/t/p/w185/FNxGQJzMfPdV8NvEyuysbYT57Q.jpg		Storm Reid	2003-07-01	No data.	1
18997	http://image.tmdb.org/t/p/w185/taWmUeEJvR4j14nydUnVYmhDadT.jpg	Actress and daughter of Ron Howard who landed her first major film role in the 2004 M. Night Shyamalan feature The Village. She received a Golden Globe Award nomination for her performance in the TV movie As You Like It. She also stars as Claire Dearing in the 2015 blockbuster Jurassic World.	Bryce Dallas Howard	1981-03-02	No data.	1
91606	http://image.tmdb.org/t/p/w185/qB1lHPFBPIzw6I7EvsciZ5wyUNS.jpg	Thomas William "Tom" Hiddleston (born 9 February 1981) is an English actor. He is perhaps best known for playing Loki in the 2011 action movie Thor.	Tom Hiddleston	1981-02-09	No data.	2
18686	http://image.tmdb.org/t/p/w185/t9cg5iWaRb68Ydldi6z3NIUSzz3.jpg	Holly Hunter is an American stage, film and televison actress, best known for her Academy Award winning performance as mute lead character Ada McGrath in the feature film "The Piano", as well as three other nominations for her roles in "Broadcast News", "The Firm", and "Thirteen", and for playing the leading role in the television series "Saving Grace". She holds a BA in Drama from Carnegie Mellon University, Pittsburgh, Pennsylvania, USA.	Holly Hunter	1958-03-20	No data.	1
59361	http://image.tmdb.org/t/p/w185/k9zkjShni0FFCPGxWzV959bFUVq.jpg		Sarah Vowell	1969-12-27	No data.	1
1709	http://image.tmdb.org/t/p/w185/4asp2xBJS98Tx8yKTLyWn7fjLKj.jpg	Jack Davenport is a British film and television actor, best known for his roles in television series' such as "This Life" and "Coupling", as well as the "Pirates of the Caribbean" franchise of feature films.	Jack Davenport	1973-03-01	No data.	2
68763	http://image.tmdb.org/t/p/w185/1BUNhhGs5drp5plGstAE8WKmfyq.jpg	From Wikipedia, the free encyclopedia.\n\nDean Winters (born July 20, 1964) is an American actor, who has portrayed Ryan O'Reily on HBO's Oz, Johnny Gavin on FX Network's Rescue Me, and Dennis Duffy on NBC's 30 Rock. He also currently portrays "Mayhem" in Allstate commercials.\n\nDescription above from the Wikipedia article Dean Winters, licensed under CC-BY-SA, full list of contributors on Wikipedia.​	Dean Winters	1964-07-20	No data.	2
141873	http://image.tmdb.org/t/p/w185/4DlzCkM8cP3rq2JuznQqOe2xswY.jpg		Seo Won	1979-11-26	No data.	1
1910027	No data.		Hanna	No data.	No data.	0
1907998	No data.		Kang Min-woo	No data.	No data.	2
1910028	No data.		Min Tae-hyeon	No data.	No data.	2
38941	http://image.tmdb.org/t/p/w185/kLfKa75auTp7B5l4e2jWtyg1f77.jpg	James Anthony "Jim" Sturgess (born 16 May 1981) is a British actor and musician. His breakout role was playing Jude in 2007's Across the Universe.	Jim Sturgess	1978-05-16	No data.	2
109434	http://image.tmdb.org/t/p/w185/96RwznSl1shVLwLD2fT2E0XHOqi.jpg		Huang Xiaoming	1977-11-13	No data.	2
4789	http://image.tmdb.org/t/p/w185/fuuD2J4JIVkpi0aEurKX6jfYyoK.jpg		Bob Peck	1945-08-23	1999-04-04	2
2	http://image.tmdb.org/t/p/w185/fk8OfdReNltKZqOk2TZgkofCUFq.jpg	Mark Richard Hamill (born September 25, 1951) is an American actor, voice artist, producer, director, and writer. Hamill is best known for his role as Luke Skywalker in the original Star Wars trilogy and also well known for voice-acting characters such as the Joker in various animated series, animated films and video games, beginning with Batman: The Animated Series, the Skeleton king in Super Robot Monkey Team Hyperforce Go!, Fire Lord Ozai in Avatar: The Last Airbender, Master Eraqus in Kingdom Hearts: Birth by Sleep, Skips in Regular Show, and Senator Stampington on Metalocalypse.	Mark Hamill	1951-09-25	No data.	2
6	http://image.tmdb.org/t/p/w185/cljvryjb3VwTsNR7fjQKjNPMaBB.jpg	From Wikipedia, the free encyclopedia.\n\nAnthony Daniels (born 21 February 1946) is an English actor. He is best known for his role as the droid C-3PO in the Star Wars series of films made between 1977 and 2005.\n\nDescription above from the Wikipedia article Anthony Daniels, licensed under CC-BY-SA, full list of contributors on Wikipedia.​	Anthony Daniels	1946-02-21	No data.	2
1193391	http://image.tmdb.org/t/p/w185/3SfBmj35OfL8eVIQt9nTixWqVJH.jpg		Anthony Gonzalez	2005-03-15	No data.	2
154004	http://image.tmdb.org/t/p/w185/wAVDqwFhQsRQgO6VIYq6T9Wbbx8.jpg		Renée Victor	1953-06-15	No data.	1
245	http://image.tmdb.org/t/p/w185/vRkyWW3p2Xd1FfMBKZWV2LQZlkR.jpg	Keir Dullea (born May 30, 1936) is an American actor best known for the character of astronaut David Bowman, whom he portrayed in the 1968 film 2001: A Space Odyssey and in 1984's 2010: The Year We Make Contact, as well as his roles in the films Bunny Lake is Missing (1965) and Black Christmas (1974).	Keir Dullea	1936-05-30	No data.	2
3141	http://image.tmdb.org/t/p/w185/l87UKhZ1ethWmn8lksmLZ2LcQJ1.jpg	Marisa Tomei was born on December 4, 1964, in Brooklyn, New York, to mother Patricia "Addie" Tomei, an English teacher and father Gary Tomei, a lawyer. Marisa also has a brother, actor Adam Tomei. As a child, Marisa's mother frequently corrected her speech as to eliminate her heavy Brooklyn accent. As a teen, Marisa attended Edward R. Murrow High School and graduated in the class of 1982. She was one year into her college education at Boston University when she dropped out for a co-starring role on the CBS daytime drama As the World Turns (1956). Her role on that show paved the way for her entrance into film: in 1984, she debuted with a bit part in The Flamingo Kid (1984). Three years later, Marisa became known for her role as Maggie Lawton, Lisa Bonet's college roommate, on the sitcom A Different World (1987).\n\nHer real breakthrough came in 1992, when she co-starred as Joe Pesci's hilariously foul-mouthed, scene-stealing girlfriend in My Cousin Vinny (1992), a performance that won her a Best Supporting Actress Oscar. Later that year, she turned up briefly as a snippy Mabel Normand in director Richard Attenborough's biopic Chaplin (1992), and was soon given her first starring role in Untamed Heart (1993). A subsequent starring role -- and attempted makeover into Audrey Hepburn -- in the romantic comedy Only You (1994) proved only moderately successful.\n\nMarisa's other 1994 role as Michael Keaton's hugely pregnant wife in The Paper (1994) was well-received, although the film as a whole was not. Fortunately for Tomei, she was able to rebound the following year with a solid performance as a troubled single mother in Nick Cassavetes' Unhook the Stars (1996) which earned her a Screen Actors Guild nomination for Best Supporting Actress. She turned in a similarly strong work in Welcome to Sarajevo (1997), and in 1998 did some of her best work in years as the sexually liberated, unhinged cousin of Natasha Lyonne's Vivian Abramowitz in Tamara Jenkins' Slums of Beverly Hills (1998). Marisa co-starred with Mel Gibson in the hugely successful romantic comedy What Women Want (2000) and during the 2002 movie award season, she proved her first Best Supporting Actress Oscar win was no fluke when she received her second nomination in the same category for the critically acclaimed dark drama, In the Bedroom (2001). She also made a guest appearance on the animated TV phenomenon The Simpsons (1989) as Sara Sloane, a movie star who falls in love with Ned Flanders. In 2006, she went on to do 4 episodes for Rescue Me (2004). She played Angie, the ex-wife of Tommy Calvin (Denis Leary)'s brother Johnny (Dean Winters). At age 42, Marisa took a provocative role in legendary filmmaker Sidney Lumet's melodramatic picture Before the Devil Knows You're Dead (2007), in which she appeared nude in love scenes with co-stars Ethan Hawke and Philip Seymour Hoffman. Marisa then took on another provocative role as a stripper in the highly acclaimed film The Wrestler (2008), opposite Mickey Rourke. Her great performance earned her many awards from numerous film societies for Best Supporting Actress, a third Academy Award nomination, as well as nominations for a Golden Globe and a BAFTA. Many critics heralded this performance as a standout in her career.	Marisa Tomei	1964-12-04	No data.	1
21127	http://image.tmdb.org/t/p/w185/o3xnmePoOUCw7sjoZ4xM4W5DL26.jpg	From Wikipedia, the free encyclopedia.\n\nRobert M. "Bobby" Cannavale (born May 3, 1970) is an American actor noted for his leading role as Bobby Caffey in the first two seasons of the critically acclaimed television series Third Watch. He also had a popular recurring role as Officer Vince D'Angelo on the comedy series Will &amp; Grace.	Bobby Cannavale	1970-05-03	No data.	2
4785	http://image.tmdb.org/t/p/w185/ceSmXnD0FUSTaq2WIrnZu9caL0t.jpg	Jeffrey Lynn "Jeff" Goldblum (born October 22, 1952) is an American actor. His career began in the mid-1970s and he has appeared in major box-office successes including The Fly, Jurassic Park and its sequel Jurassic Park: The Lost World, and Independence Day. He starred as Detective Zach Nichols for the eighth and ninth seasons of the USA Network's crime drama series Law & Order: Criminal Intent.	Jeff Goldblum	1952-10-22	No data.	2
6413	http://image.tmdb.org/t/p/w185/jc1eGtCShQ2ZkzqWApiWbA1lbTF.jpg	Daniel "Danny" Huston (born May 14, 1962) is an American actor and director.\n\nDescription above from the Wikipedia article Danny Huston, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Danny Huston	1962-05-14	No data.	2
1932304	http://image.tmdb.org/t/p/w185/fbSZLpq9M1p4onpoW7mpq0K6aMu.jpg		Camila Morrone	1997-06-16	No data.	1
104632	http://image.tmdb.org/t/p/w185/huzjezIwcBePLkKvd1mOKghhF94.jpg	Sylvia Hoeks was born in Maarheeze, a southern town of the Netherlands. At age 14 she was scouted by Elite Models and traveled to many European countries to model. \n\nAfter graduation, she made her national breakthrough with the Jos Stelling film Duska (2007), for which she won a Golden Calf (the Dutch equivalent of the Oscars) at the annual Dutch Film Festival. Hoeks is more know for her roles on The Best Offer (2013), Renegades (2017), and Blade Runner 2049 (2017).	Sylvia Hoeks	1983-06-01	No data.	1
103	http://image.tmdb.org/t/p/w185/isQ747u0MU8U9gdsNlPngjABclH.jpg	Mark Alan Ruffalo (born November 22, 1967) is an American actor, director, producer and screenwriter. He has worked in films including Eternal Sunshine of the Spotless Mind, Zodiac, Shutter Island, Just Like Heaven, You Can Count on Me and The Kids Are All Right for which he received an Academy Award nomination for Best Supporting Actor.\n\nDescription above from the Wikipedia article Mark Ruffalo, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Mark Ruffalo	1967-11-22	No data.	2
16828	http://image.tmdb.org/t/p/w185/kRlx7PxXkom7Daj8Z2HmcbPQB1o.jpg	Christopher Robert "Chris" Evans (born June 13, 1981) is an American actor and filmmaker. Evans is best known for his superhero roles, as Captain America in the Marvel Cinematic Universe, and as Human Torch in Fantastic Four. In 2015, he made his directorial debut with the romantic drama Before We Go.	Chris Evans	1981-06-13	No data.	2
1328	http://image.tmdb.org/t/p/w185/m40tSOPKJScFY7acY0hEWtE1ncR.jpg	Sean Astin (born February 25, 1971) is an American film actor, director, and producer better known for his film roles as Mikey Walsh in The Goonies, the title character of Rudy, and Samwise Gamgee in the Lord of the Rings trilogy. In television, he appeared as Lynn McGill in the fifth season of 24. Most recently, he provided the voice for the title character in Disney's Special Agent Oso.	Sean Astin	1971-02-25	No data.	2
2232	http://image.tmdb.org/t/p/w185/myVdrYNGTgqunLfUSaM8DuVD7DL.jpg	Michael John Douglas (born September 5, 1951), better known as Michael Keaton, is an American actor, well known for his early comedic roles in films such as Night Shift, Mr. Mom, Johnny Dangerously, Beetlejuice, and for his dramatic portrayal of Batman in Tim Burton's Batman and Batman Returns, as well as lead roles in other films including The Paper, Jackie Brown, Jack Frost, White Noise, Cars, The Other Guys and Toy Story 3.	Michael Keaton	1951-09-05	No data.	2
32	http://image.tmdb.org/t/p/w185/tXfQTgcIEPP7gtVdJ44ZxZPhacn.jpg	Robin Gayle Wright (born April 8, 1966) is an American actress. She is best known for her roles as Jenny Curran in Forrest Gump, as Buttercup in The Princess Bride, and as Mary Surratt in The Conspirator. She has also been credited as Robin Wright Penn.	Robin Wright	1966-04-08	No data.	1
76792	http://image.tmdb.org/t/p/w185/hz12Lob7MclGLzMIX5rTUFhmDCW.jpg	Freida Pinto is an Indian actress and model best known for her portrayal of Latika in the 2008 Academy Award winning film Slumdog Millionaire, for which she won a Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture. In 2010, she starred in the films You Will Meet a Tall Dark Stranger and as the title character in Miral.	Freida Pinto	1984-10-18	No data.	1
1708576	http://image.tmdb.org/t/p/w185/5T20rY7cg37bnSVDRJEfiSuRIQ1.jpg		Ahn So-hee-I	No data.	No data.	1
1647345	http://image.tmdb.org/t/p/w185/5FrID8aTuax3TcHptau6f1XBC6W.jpg		Lee Eun-mi-I	No data.	No data.	1
1254391	http://image.tmdb.org/t/p/w185/eLq6vVNAeQKlMb7U1UwViSSGikW.jpg	Lee Sang-woo (이상우) is a South Korean actor.	Lee Sang-woo	1980-02-13	No data.	2
496470	http://image.tmdb.org/t/p/w185/qU6n9EaesBGqhNLlj5BecUrb5LW.jpg		Jake Lacy	1985-02-14	No data.	2
172069	http://image.tmdb.org/t/p/w185/if0BTPOSkbnvIjry5OcfV7GfRrO.jpg	Chadwick Boseman is an American actor, playwright, and screenwriter hailing from Anderson, South Carolina. He graduated from Howard University and went on to study at the British American Dramatic Academy in Oxford.  Boseman's play "Deep Azure" was nominated for a 2006 Joseph Jefferson Award for New Work.  His breakout role was playing the lead Jackie Robinson in 2013's 42.	Chadwick Boseman	1976-11-29	No data.	2
27740	http://image.tmdb.org/t/p/w185/gA5nf2alzIPPjs1MSjS1PmrCedJ.jpg	Walton Sanders Goggins, Jr. (born November 10, 1971) is an American actor best known for his roles on the FX Networks series The Shield and Justified, portraying Detective Shane Vendrell and Boyd Crowder, respectively. He is also known for his character roles in the films Miracle at St. Anna and Predators. Goggins co-produced and starred in the 2001 short film The Accountant, which won an Academy Award for Best Live Action Short Film. Goggins accepted the award alongside Ray McKinnon and Lisa Blount.	Walton Goggins	1971-11-10	No data.	2
17287	http://image.tmdb.org/t/p/w185/56zmVMiuUhqas13xn700hvXUA32.jpg	Dominic Gerard Fe West (born 15 October 1969) is an English actor best known in the United States for his role as Detective Jimmy McNulty in the HBO drama series The Wire.	Dominic West	1969-10-15	No data.	2
1683343	http://image.tmdb.org/t/p/w185/yl3YeRSHlDVArfgMdHh2v7Ui9zO.jpg	Cailee Spaeny is an American actress and singer. Spaeny was born on July 24, 1997 in Springfield, Missouri. In 2016, she released her debut single "Fallin" to iTunes under Future Town Music. Her debut film role was as Erica in the 2016 short film Counting to 1000. Her first major role was in Steven S. DeKnight's 2018 science fiction monster film Pacific Rim: Uprising alongside John Boyega and Scott Eastwood.	Cailee Spaeny	1997-07-24	No data.	1
70303	http://image.tmdb.org/t/p/w185/xrdDXGib6lSTUGYsZkKOLJey50T.jpg	​From Wikipedia, the free encyclopedia.  \n\nZach Gilford (born January 14, 1982) is an American actor best known for his role as Matt Saracen on the NBC television drama series Friday Night Lights. Gilford starred alongside Terrell Owens in the 2008 NBA Celebrity All-Star game. Gilford graduated from Northwestern University and Evanston Township High School. He serves as a Trip Leader for Adventures Cross-Country. He has led wilderness and adventure trips for teenagers to California, Hawaii, Alaska, the South Pacific, and British Columbia. Gilford worked as a staff member for YMCA Camp Echo in Fremont, Michigan\n\nDescription above from the Wikipedia article Zach Gilford, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Zach Gilford	1982-01-14	No data.	2
92614	http://image.tmdb.org/t/p/w185/ezcRQlpLaIE3jklAc7P3xdr3qjt.jpg		Dawn Olivieri	1981-02-08	No data.	1
20373	http://image.tmdb.org/t/p/w185/g8tijCydDd4TGdcxVJLi1UqlXm2.jpg	Arielle Caroline Kebbel (born February 19, 1985) is an American model and actress. Arielle is perhaps best known for her roles in The Uninvited, American Pie Presents: Band Camp, John Tucker Must Die, Vampires Suck, The Vampire Diaries, Aquamarine and The Grudge 2. She is often considered as a Scream Queen. She currently plays Paige Thomas on Life Unexpected.	Arielle Kebbel	1985-02-19	No data.	1
1211093	http://image.tmdb.org/t/p/w185/xNGRWJUGFsAUu8hs60jVXnBmwTG.jpg		Brant Daugherty	1985-08-20	No data.	2
18277	http://image.tmdb.org/t/p/w185/5UbkpXA8JWBCjqS4eqwOcQdNg2D.jpg	Sandra Annette Bullock (born July 26, 1964) is an American actress and producer. She rose to fame in the 1990s with roles in films such as Demolition Man (1993), Speed (1994), The Net (1995), While You Were Sleeping (1995), A Time to Kill (1996), and Hope Floats (1998). In the new millennium, Bullock starred in Miss Congeniality (2000), Two Weeks Notice (2002), The Lake House (2006), and the critically acclaimed Crash (2004). In 2007, she was ranked as the 14th richest woman in the entertainment industry with an estimated fortune of $85 million. In 2009, Bullock starred in two of the more financially successful films of her career, The Proposal and The Blind Side. Bullock was awarded the Broadcast Film Critics Association Award for Best Actress, Screen Actors Guild Award for Outstanding Performance by a Female Actor in a Leading Role, Golden Globe Award for Best Actress – Motion Picture Drama, and the Academy Award for Best Actress for her role as Leigh Anne Tuohy in The Blind Side.\n\nBullock was born in Arlington, Virginia, a suburb of Washington, D.C. Her father, John W. Bullock (born 1925), was a United States Army employee and part-time voice coach; her mother, Helga Mathilde Meyer (1942–2000), was an opera singer and voice teacher.Bullock's father was from Birmingham, Alabama, and had English, Irish, German, and French ancestry, while Bullock's mother was German. Bullock's maternal grandfather was a rocket scientist from Nuremberg, Germany. Bullock's father, then in charge of the Army's Military Postal Service in Europe, was stationed in Nuremberg when he met his wife. They married in Germany and moved to Arlington, where John worked with the Army Materiel Command, before becoming a contractor for The Pentagon.She has a younger sister, Gesine Bullock-Prado, who was formerly the vice-president of Bullock's production company Fortis Films.\n\nBullock was raised in Nuremberg, Germany for twelve years and grew up speaking German.She attended the humanistic Waldorf School. As a child, Bullock frequently accompanied her mother on European opera tours. Bullock studied ballet and vocal arts as a child, taking small parts in her mother's opera productions. She sang in the operas children's choir at the Staatstheater Nürnberg. The scar above her left eye was caused when she fell into a creek as a child. Bullock attended Washington-Lee High School, where she was a cheerleader and performed in high school theater productions. After graduating in 1982, she attended East Carolina University in Greenville, North Carolina, where she received a degree in drama in 1986.She then moved to Manhattan and supported herself as a bartender, cocktail waitress, and coat checker while auditioning for roles. Until the age of eighteen, Bullock held German and American dual citizenship. In 2009 Bullock reapplied for German citizenship.	Sandra Bullock	1964-07-26	No data.	1
467645	http://image.tmdb.org/t/p/w185/531YOKa2usleWCA55t6Db4MZhT3.jpg	Robert Boyd Holbrook (born September 1, 1981) is an American fashion model, actor, and artist. He has appeared in films such as Milk, Out of the Furnace, Run All Night, A Walk Among the Tombstones, and Gone Girl, and stars as DEA Agent Steve Murphy in the Netflix series Narcos. In 2017, he portrayed villain Donald Pierce in Logan.	Boyd Holbrook	1981-09-01	No data.	2
37822	http://image.tmdb.org/t/p/w185/3laM5gryWnG2tfjE2jt0UuPTFlp.jpg		Peter Dobson	1964-07-16	No data.	2
112532	http://image.tmdb.org/t/p/w185/cavKdabmGfvRVMXP85gC8WL6IHe.jpg		Kevin Interdonato	1979-04-05	No data.	2
2045259	No data.		Claudia Christian	No data.	No data.	0
1184094	No data.		Chris Caldovino	No data.	No data.	0
1159982	http://image.tmdb.org/t/p/w185/88qIOwM4Ztjvr1zaEB81Ee8h6Y0.jpg	Ansel Elgort (born March 14, 1994) is an American actor, singer and a DJ (under the name Ansølo). As a film actor, he is known for playing Tommy Ross in Carrie (2013), Caleb Prior in The Divergent Series (2014), Augustus Waters in The Fault in Our Stars (2014), and Baby in Baby Driver (2017).	Ansel Elgort	1994-03-14	No data.	2
935	http://image.tmdb.org/t/p/w185/lvQypTfeH2Gn2PTbzq6XkT2PLmn.jpg	Connie Inge-Lise Nielsen (born 3 July 1965) is a Danish actress. She is known for her roles in the English language films Gladiator, The Devil's Advocate, Basic, and The Ice Harvest.\n\nDescription above from the Wikipedia article Connie Nielsen, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Connie Nielsen	1965-07-03	No data.	1
33337	http://image.tmdb.org/t/p/w185/t5K2SD1JINnq8eg5XuMVGq0w3Ta.jpg	Eric Johnson is a Canadian film and television actor and director, best known for playing Whitney Fordman on science-fiction television series "Smallville", Detective Luke Callaghan on the police drama "Rookie Blue", and Dr. Everett Gallinger on the series "The Knick".	Eric Johnson	1979-08-07	No data.	2
34490	http://image.tmdb.org/t/p/w185/v8NuPMfw0QSSpgeMuJp12Ijd52M.jpg	Sarah Catharine Paulson (born December 17, 1975) is an American actress.\n\nDescription above from the Wikipedia article Sarah Paulson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Sarah Paulson	1974-12-17	No data.	1
1016168	http://image.tmdb.org/t/p/w185/rvem6ocvKJimjzXH2RVYk0yYtMR.jpg	Lily Chloe Ninette Thomson (born 27 December 1989), known as Lily James, is an English actress. She played Lady Rose Aldridge in the ITV period drama Downton Abbey and the title role in the 2015 Disney film Cinderella.\n\nIn 2011, James played Taylor in Vernon God Little at the Young Vic Theatre in Tanya Ronder's stage adaptation of the novel Vernon God Little directed by Rufus Norris, Nina in a modern adaptation of The Seagull at Southwark Playhouse, and Desdemona in Daniel Evans production of Othello at the Crucible Theatre, Sheffield, alongside Dominic West and Clarke Peters. Quentin Letts wrote in The Daily Mail: "We may have a new star actress on our hands.... She left drama school only last year, yet she practically sweeps all before her as Desdemona in this Othello. Poise, diction, allure – she has them all. ... Her character’s love affair with a much older husband is completely believable".\n\nIn 2012, James played the role of Katrina in Play House and Marijka in Definitely the Bahamas in a double bill written and directed by Martin Crimp at the Orange Tree Theatre in Richmond, London as part of the theatre's fortieth anniversary. Charles Spencer of The Telegraph wrote that "it is performed with a persuasive mixture of mischief and deeper feeling by Obi Abili and Lily James, the latter combining a mixture of neuroticism and glowing sexual allure that proves extraordinarily potent."\n\nAlso in 2012, James played the role of Korrina in Warner Brothers' Wrath of the Titans and starred in Fast Girls, written by Noel Clarke, centered around a group of young female athletes competing in the World Championships. Her television credits include Ethel Brown in the 2010 BBC production of Richmal Crompton's Just William, Poppy in the fourth season of ITV's Secret Diary of a Call Girl (2011), and the rebellious Lady Rose in the last episode of series three, later becoming a main character in the fourth and fifth seasons of the popular British series Downton Abbey. James played the title character in the 2015 live-action Disney film version of Cinderella.\n\nThe film was released on 13 March 2015. James, as Cinderella, was photographed by Annie Leibovitz, in the blue gown that she wears to the ball, for the December 2014 issue of Vogue.	Lily James	1989-04-05	No data.	1
18918	http://image.tmdb.org/t/p/w185/akweMz59qsSoPUJYe7QpjAc2rQp.jpg	Dwayne Douglas Johnson (born May 2, 1972), also known by his ring name The Rock, is an American and Canadian actor, producer and semi-retired professional wrestler, signed with WWE. 	Dwayne Johnson	1972-05-02	No data.	2
62064	http://image.tmdb.org/t/p/w185/vSe6sIsdtcoqBhuWRXynahFg8Vf.jpg	Christopher Whitelaw "Chris" Pine (born August 26, 1980) is an American actor. He has appeared in the romantic comedies The Princess Diaries 2: Royal Engagement (2004) and Just My Luck (2006), as well as the action films Smokin' Aces (2007) and Unstoppable (2010). In 2009, he portrayed James T. Kirk in the film Star Trek.	Chris Pine	1980-08-26	No data.	2
78452	http://image.tmdb.org/t/p/w185/jAYNPdJYu35eoRdI25fYa5jtsbR.jpg	Gina Joy Carano (born April 16, 1982) is an American actress, television personality, fitness model and a former mixed martial artist. Carano appeared as Crush, a Gladiator on American Gladiators. She has been referred to as the "Face of Women's MMA." Carano was formerly the third best 145 lb (66 kg) female fighter in the world, according to the Unified Women's MMA Rankings. Carano starred in the 2012 action film, Haywire, and will appear in the 2013 film Fast &amp; Furious 6.	Gina Carano	1982-04-16	No data.	1
4885	http://image.tmdb.org/t/p/w185/dICNGDe2Sgz73Febl0TJZpEKO9f.jpg	​From Wikipedia, the free encyclopedia\n\nEmmanuelle Béart (born 14 August 1963) is a French film actress, who has appeared in over 50 film and television productions since 1972. Béart won a César Award for Best Supporting Actress in the film Manon des Sources (1986). She has been nominated a further seven times for Most Promising Actress and Best Actress.	Emmanuelle Béart	1963-08-14	No data.	0
52851	http://image.tmdb.org/t/p/w185/8PKEoH5PvQsBHsDtikc4qi7c077.jpg	Paula Maxine Patton (born December 5, 1975) is an American actress. She is mostly known for her appearances in the films Idlewild (2006), Déjà Vu (2006), Mirrors (2008), Precious (2009), Just Wright (2010), and Jumping the Broom (2011).\n\nDescription above from the Wikipedia article Paula Patton, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Paula Patton	1975-12-05	No data.	1
32747	http://image.tmdb.org/t/p/w185/tqF6ibURpLvRPlgvLRvjCQqWaa2.jpg	​From Wikipedia, the free encyclopedia\n\nStephen Lang (born July 11, 1952) is an American actor and playwright. He started in theatre on Broadway but is well known for his film portrayals of Stonewall Jackson in Gods and Generals (2003), George Pickett in Gettysburg (1993), and his 2009 roles as Colonel Miles Quaritch in Avatar and as Texan lawman Charles Winstead in Public Enemies. Lang was the co-artistic director (along with Carlin Glynn and Lee Grant) of the famed Actor's Studio at its headquarters in New York City from 2004 to 2006.\n\nDescription above from the Wikipedia article Stephen Lang (actor), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Stephen Lang	1952-07-11	No data.	2
2449	http://image.tmdb.org/t/p/w185/fIJF3TZn8ckHkcl44oX77GvPv9e.jpg	Kevin McNally was born on April 27, 1956, in Bristol, England. He grew up in Birmingham where he attended Redhill and Mapledene Junior schools and Central Grammar School for Boys. At the age of 16, he got his first job at Birmingham Repertory Theatre. A year later he received a scholarship to the Royal Academy of Dramatic Art. In 1975 he won the Best Actor Bancroft Gold Medal for his stage performance. McNally's most notable stage performances in London's West End include his appearance as Alan Bennett opposite Maggie Smith in 'The Lady in the Van' and opposite Juliette Binoche in 'Naked'. He also starred as Richard in Terry Johnson's 'Dead Funny' at the Savoy Theatre.\n\nSince 1976 McNally has been involved in numerous TV productions beginning with his portrayal of the Roman ruler Castor, son of Tiberius, in the acclaimed BBC history series I, Claudius (1976) and his portrayal of Drake Carne in the popular series Poldark (1975). His career on television ascended after his work in Masada (1981) and in the cult TV series Doctor Who: The Twin Dilemma (1984). During the 1980s and 1990s McNally established himself as a reputable and versatile actor on both the British and American TV. He played a broad variety of leading and supporting characters ranging from the Soviet politician Kirov in Stalin (1992) to homicide detective Jack Taylor in Chiller (1995), and from an insecure son, Alan Hook, in TV series Dad (1997) to a convicted murderer James Hopkin in Bloodlines (2005). His portrayal of Frank Worsley in Shackleton (2002) as well as the role of Harry Woolf in Life on Mars (2006)  are among his best known works for television.  Between 2011 - 2012 he appeared in three episodes of Downton Abbey as Horrace Bryant.\n\nIn 1977 McNally made his big screen debut as HMS Ranger Crewman in the James Bond adventure The Spy Who Loved Me (1977). After having played bit parts in more than twenty feature films, McNally shot to international fame as pirate Joshamee Gibbs, his best known film role, in Pirates of the Caribbean: The Curse of the Black Pearl (2003) and the sequel Pirates of the Caribbean: Dead Man's Chest (2006). He returned in the role Joshamee Gibbs in the third installment of the 'Pirates' franchise Pirates of the Caribbean: At World's End (2007).\n\nKevin McNally has been enjoying a happy family life with Scottish actress Phyllis Logan and his two children. He resides with his family in Chiswick, London, England.	Kevin McNally	1956-04-27	No data.	2
18288	http://image.tmdb.org/t/p/w185/MZeLxOH0PgL7xcvt865WVBvQDw.jpg	Terrence Dashon Howard (born March 11, 1969) is an Academy Award-nominated American actor. Having his first major role in the 1995 film Mr. Holland's Opus, which subsequently led to a number of roles in films and high visibility among African American audiences. Howard broke into the mainstream with a succession of well-reviewed television and film roles between 2004 and 2006. Among his roles in movies includes Ray, Lackawanna Blues, Crash, Four Brothers, Hustle &amp; Flow, Get Rich or Die Tryin', Idlewild, The Brave One. Howard co-starred in Iron Man and reprised the role in the video game adaption. He was replaced in this role in the sequel Iron Man 2, by Academy Award nominee Don Cheadle (his Crash co-star). Howard was born in Chicago, Illinois and raised in Cleveland, Ohio. At 18, he moved to New York City to pursue an acting career. He had auditioned for The Cosby Show and was cast in the role and later, Howard had a principal role in a short-lived CBS sitcom, Tall Hopes. He went on to portray Jackie Jackson in The Jacksons: An American Dream, an ABC miniseries. Three years later, he made his big film break in 1995's Mr. Holland's Opus. He continued with television and movie roles and co-starred as Greg Sparks in the late-1990s television series Sparks. Howard also appeared in The Best Man in 1999, in Ashanti's music video for her 2002 single "Foolish", and in Mary J. Blige's video for "Be Without You". Howard also made an appearance on the TV series Family Matters. Howard has also worked as a film producer for the movie Pride. In 2008, Howard hosted the PBS' series Independent Lens. Also in 2008, he made his Broadway debut, playing Brick in an all-African-American production of Tennessee Williams' Cat on a Hot Tin Roof, directed by Debbie Allen. Later that year, Howard made a guest appearance in the short film For All Mankind directed by Daniel L. Clifton and in 2009, he starred in the movie Fighting. In 2010, Howard joined the cast of the new Law &amp; Order: Los Angeles installment of the Law &amp; Order franchise, wherein he will play Deputy District Attorney Joe Dekker. Terrence ventured into the music industry with his debut pop album, Shine through It, heavily inspired by popular soul singers such as Marvin Gaye and Curtis Mayfield, was released in September 2008. Howard, who lives outside Philadelphia in Lafayette Hill, He has three children from a previous marriage: two daughters (Aubrey and Heaven) and a son (Hunter).	Terrence Howard	1969-03-11	No data.	2
8536	http://image.tmdb.org/t/p/w185/xFgPEfVEqz7Li2xoyjRPEKCjCrH.jpg	Victor Joseph Garber (born March 16, 1949) is a Canadian film, stage and television actor and singer. Garber is perhaps best known for playing Jesus in Godspell, Jack Bristow in the television series Alias and Thomas Andrews in James Cameron's Titanic.\n\nDescription above from the Wikipedia article Victor Garber, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Victor Garber	1949-03-16	No data.	2
1056053	http://image.tmdb.org/t/p/w185/rmj2HHc1uNESTlHk50qnCHK11jD.jpg		Josh Helman	1986-02-22	No data.	2
221018	http://image.tmdb.org/t/p/w185/jNiY649MK85UFMosJIDxJ9HgIsC.jpg	Daniel Jonathan "Dan" Stevens (born 10 October 1982) is an English actor. He is best known for his roles as Matthew Crawley in the ITV period drama series Downton Abbey, as "David" in the thriller film The Guest, Sir Lancelot in Night at the Museum: Secret of the Tomb, and as The Beast/Prince in Walt Disney's live-action adaptation of Beauty and the Beast. He currently stars as David Haller in FX series Legion.	Dan Stevens	1982-10-10	No data.	2
3292	http://image.tmdb.org/t/p/w185/27NbnWKzco1CCDHtR2AVVab8Dli.jpg	Nicholas Caradoc Hoult (born 7 December 1989) is an English actor, best known for the role as Marcus Brewer in the 2002 film About a Boy and as Tony Stonem in the E4 BAFTA winning television series, Skins.\n\nDescription above from the Wikipedia article Nicholas Hoult, licensed under CC-BY-SA,full list of contributors on Wikipedia.	Nicholas Hoult	1989-12-07	No data.	2
9273	http://image.tmdb.org/t/p/w185/yf3ReBCtCHo062JIqizXtzPd9GA.jpg	Amy Lou Adams was born in Vicenza, Veneto, Italy, to American parents Kathryn (Hicken) and Richard Kent Adams, while her father was a U.S. serviceman. She was raised in a Mormon family of seven children in Castle Rock, Colorado, and has English, as well as smaller amounts of Danish, Swiss-German, and Norwegian, ancestry.\n\nAdams sang in the school choir at Douglas County High School and was an apprentice dancer at a local dance company, with the ambition of becoming a ballerina. However, she worked as a greeter at The Gap and as a Hooters hostess to support herself before finding work as a dancer at Boulder's Dinner Theatre and Country Dinner Playhouse in such productions as "Brigadoon" and "A Chorus Line". It was there that she was spotted by a Minneapolis dinner-theater director who asked her to move to Chanhassen, Minnesota for more regional dinner theater work.\n\nNursing a pulled muscle that kept her from dancing, she was free to audition for a part in Drop Dead Gorgeous (1999), which was filming nearby in Minnesota. During the filming, Kirstie Alley encouraged her to move to Los Angeles, where she soon won a part in the Fox television version of the film, Cruel Intentions (1999), in the part played in the film by Sarah Michelle Gellar, "Kathryn Merteuil". Although three episodes were filmed, the troubled series never aired. Instead, parts of the episodes were cobbled together and released as the direct-to-video Cruel Intentions 2 (2000). After more failed television spots, she landed a major role in Catch Me If You Can (2002), playing opposite Leonardo DiCaprio. But this did not provide the break-through she might have hoped for, with no work being offered for about a year. She eventually returned to television, and joined the short-lived series, Dr. Vegas (2004).\n\nHer role in the low-budget independent film Junebug (2005) (which was shot in 21 days) got her real attention, including an Academy Award nomination for Best Supporting Actress as well as other awards. The following year, her ability to look like a wide-eyed Disney animated heroine helped her to be chosen from about 300 actresses auditioning for the role of "Giselle" in the animated/live-action feature film, Enchanted (2007), which would prove to be her major break-through role. Her vivacious yet innocent portrayal allowed her to use her singing and dancing talents. Her performance garnered a Golden Globe Award nomination for Best Actress in a Motion Picture Musical or Comedy.\n\nAdams next appeared in the major production, Charlie Wilson's War (2007), and went on to act in the independent film, Sunshine Cleaning (2008), which premiered at the 2008 Sundance Film Festival. Her role as "Sister James" in Doubt (2008) brought her a second Academy Award nomination for Best Supporting Actress, as well as nominations for a Golden Globe, a Screen Actors Guild award, and a British Academy Film award. She appeared as Amelia Earhart in Night at the Museum: Battle of the Smithsonian (2009) and as a post-9/11 hot line counselor, aspiring writer, amateur cook and blogger in Julie & Julia (2009). More recently, she starred with Jason Segel in The Muppets (2011) and alongside Clint Eastwood in Trouble with the Curve (2012).	Amy Adams	1974-08-20	No data.	1
2524	http://image.tmdb.org/t/p/w185/4CR1D9VLWZcmGgh4b6kKuY2NOel.jpg	Edward Thomas "Tom" Hardy (born 15 September 1977) is an English actor. He is best known for playing the title character in the 2009 British film Bronson, and for his roles in the films Star Trek Nemesis, RocknRolla, and Inception. He has been cast in the Christopher Nolan film The Dark Knight Rises as Bane.  Description above from the Wikipedia Tom Hardy, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Tom Hardy	1977-09-15	No data.	2
1100	http://image.tmdb.org/t/p/w185/zooXFWF1JtrV7UnZyGRxXDW11qt.jpg	Arnold Alois Schwarzenegger (born July 30, 1947) is an Austrian-American former professional bodybuilder, actor, model, businessman and politician who served as the 38th Governor of California (2003–2011).\n\nSchwarzenegger began weight training at 15. He was awarded the title of Mr. Universe at age 20 and went on to win the Mr. Olympia contest a total of seven times. Schwarzenegger has remained a prominent presence in the sport of bodybuilding and has written several books and numerous articles on the sport.\n\nSchwarzenegger gained worldwide fame as a Hollywood action film icon, noted for his lead roles in such films as Conan the Barbarian, The Terminator, Commando and Predator. He was nicknamed the "Austrian Oak" and the "Styrian Oak" in his bodybuilding days, "Arnie" during his acting career and more recently the "Governator" (a portmanteau of "Governor" and "Terminator").\n\nArnold has starred in many films. Most notably are the following...\n\nHercules in New York as Hercules (1970)  Stay Hungry as Joe Santo (1976)  Pumping Iron as himself (1977)  The Villain as Handsome Stranger (1979)  The Jayne Mansfield Story as Mickey Hargitay (1980)  Conan the Barbarian as Conan (1982)  Conan the Destroyer as Conan (1984)  The Terminator as The Terminator/T-800 Model 101 (1984)  Red Sonja as Kalidor (1985)  Commando as John Matrix (1985)  Raw Deal as Mark Kaminsky, a.k.a. Joseph P. Brenner (1986)  Predator as Major Alan "Dutch" Schaeffer (1987)  The Running Man as Ben Richards (1987)  Red Heat as Captain Ivan Danko (1988)  Twins as Julius Benedict (1988)  Total Recall as Douglas Quaid/Hauser (1990)  Kindergarten Cop as Detective John Kimble (1990)  Terminator 2: Judgment Day as The Terminator/T-800 Model 101 (1991)  Last Action Hero as Jack Slater / Himself (1993)  True Lies as Harry Tasker (1994)  Junior as Dr. Alex Hesse (1994)  Eraser as U.S. Marshal John Kruger (1996)  Jingle All the Way as Howard Langston (1996)  Batman and Robin as Mr. Freeze (1997)  End of Days as Jericho Cane (1999)  The 6th Day as Adam Gibson / Adam Gibson Clone (2000)  Collateral Damage as Gordy Brewer (2002)  Terminator 3: Rise of the Machines as The Terminator/T-850 Model 101 (2003)  Around the World in 80 Days as Prince Hapi (2004)  The Expendables as Trench (2010)  The Expendables 2 as Trench (2012)  The Last Stand as Sheriff Ray Owens (2013)  Escape Plan as Rottmayer (2013)  Sabotage as John 'Breacher' Wharton (2014)  The Expendables 3 as Trench (2014)  Maggie as Wade Vogel (2015)  Terminator Genisys as The Terminator/T-800 Model 101/ The Guardian (2015)  Aftermath as Roman Melnik (2017)  Killing Gunther as Gunther (2017)  Journey to China: The Mystery of Iron Mask (2017)  Triplets as Julius Benedict (2018)  The Expendables 4 as Trench (2018)  Terminator 6 as The Terminator/T-800 Model 101 (2019)	Arnold Schwarzenegger	1947-07-30	No data.	2
1003	http://image.tmdb.org/t/p/w185/cdsN5efCYGQWlPrj7vFlZRBTR16.jpg	Jean Reno ( born July 30, 1948) is a French actor. Working in French, English, and Italian, he has appeared not only in numerous successful Hollywood productions such as The Pink Panther, Godzilla, The Da Vinci Code, Mission: Impossible, Ronin and Couples Retreat, but also in European productions such as the French films Les Visiteurs (1993) and Léon (1994) along with the 2005 Italian film The Tiger and the Snow.\n\nDescription above from the Wikipedia article Jean Reno , licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jean Reno	1948-07-30	No data.	2
19278	http://image.tmdb.org/t/p/w185/3Z5JsyLw7YTLZgpA3FAlLmFSN9F.jpg	William "Bill" Hader (born June 7, 1978 height 6' 1" (1,85 m)) is an American actor, comedian, producer and writer. He is best known as a cast member on Saturday Night Live and for his supporting roles in comedy films such as Superbad, Hot Rod, Tropic Thunder and Adventureland.\n\nDescription above from the Wikipedia article Bill Hader, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Bill Hader	1978-06-07	No data.	2
207150	http://image.tmdb.org/t/p/w185/d39NWIkuXr7uHP3UNGBBoGAonXw.jpg		Jessica Barth	1978-07-13	No data.	1
1771	http://image.tmdb.org/t/p/w185/jvq2pimmpNdQj8o75Au9RKC7E1z.jpg	Giovanni Ribisi (born December 17, 1974) is an American actor. His film credits include Gone in 60 Seconds, Boiler Room, Saving Private Ryan, The Mod Squad, The Gift, Sky Captain and the World of Tomorrow, Lost in Translation and more recently, Public Enemies and Avatar. He is also known for his role as Phoebe Buffay's brother Frank on the sitcom Friends. He also appeared in music videos for Crystal Ball by Keane and Talk About The Blues by The Jon Spencer Blues Explosion.\n\nDescription above from the Wikipedia article Giovanni Ribisi, licensed under CC-BY-SA, full list of contributors on Wikipedia.​	Giovanni Ribisi	1974-12-17	No data.	2
650	http://image.tmdb.org/t/p/w185/6TzVbX52cAOqe9LH6GZ5xutbW5G.jpg	From Wikipedia, the free encyclopedia.\n\nKaren Jane Allen (born October 5, 1951) is an American actress best known for her role as Marion Ravenwood in Raiders of the Lost Ark (1981) and Indiana Jones and the Kingdom of the Crystal Skull (2008).[1] Allen has also had roles in films including National Lampoon's Animal House (1978), The Wanderers (1979), Cruising (1980), Starman (1984), Scrooged (1988), The Sandlot (1993), and Poster Boy (2004).	Karen Allen	1951-10-05	No data.	1
652	http://image.tmdb.org/t/p/w185/gWRX09kyrzTFFehwE53cJtps2fx.jpg	Paul Freeman is a British film and television actor.	Paul Freeman	1943-01-18	No data.	2
96066	http://image.tmdb.org/t/p/w185/eVeBiqx1vTsd1QCHOr24Cf13wb.jpg	Liam Hemsworth (born 13 January 1990)  is an Australian actor. He took the role of Josh Taylor in the soap opera Neighbours and as "Marcus" on the children's television series The Elephant Princess and appeared in the American film The Last Song, released on 31 March 2010. Hemsworth's elder brothers, Luke and Chris, are also actors and provided a path for Hemsworth to emulate.\n\nDescription above from the Wikipedia article Liam Hemsworth, licensed under CC-BY-SA,full list of contributors on Wikipedia.	Liam Hemsworth	1990-01-13	No data.	2
114019	http://image.tmdb.org/t/p/w185/1d31uDYub8TaLOPWfgX78OotduD.jpg	Luke Evans (born April 15th 1979) is a British actor.\n\nHe was born on Pontypool but lived his early years in Crumlin, a small village in Newbridge South Wales. The rest of his childhood and Teenage years were spent in the village of Aberbargoed, South Wales, at the age of 17 when he moved to Cardiff and then in 1997 he won a scholarship to train at The London Studio Centre for 3 years.\n\nSince his graduation in 2000, Evans has starred in many of London's West End productions including La Cava, Taboo, Rent, Miss Saigon and Avenue Q as well as several fringe shows in London and at the Edinburgh Festival.\n\nIn 2008 he landed a role playing Vincent in the play Small Change written and directed by Peter Gill at the Donmar Warehouse, later that same year he did his second show at the Donmar Warehouse, Piaf, in which he played Yve Montand. The following year he landed his first film role as Apollo in the Clash of the Titans (2010) remake, he later went onto play Clive in the film Sex &amp; Drugs &amp; Rock &amp; Roll (2010). He was then seen in Robin Hood (2010) playing the Sheriffs Thug. Evans went on to portray DI Craig Stokes in Blitz (2011), the film adaptation of Ken Bruen's novel of the same name in which he stars with Jason Statham and Paddy Considine. After that, Evans went on to play the role of Andy in acclaimed director Stephen Frears’ newest film Tamara Drewe (2010) based on Posy Simmonds' Tamara Drewe. Gemma Arterton co-stars. In early 2010 he starred in an independent movie called Flutter (2011) directed by Giles Borg. He then went on to shoot Tarsem Singhs Greek epic, Immortals (2011) in which Evans plays Zeus.\n\nEvans will be playing the role of Aramis in Constantin Film's upcoming 3D version of Alexander Dumas' book The Three Musketeers (2011), directed by Paul WS Anderson. Filming took place in Bavaria, Munich and Berlin.\n\nEvans will then star alongside John Cusack in James McTeigue's film The Raven, replacing Jeremy Renner. In the film, Evans will play Detective Fields who investigates a series of murders alongside Cusack's Edgar Allan Poe, set in mid-19th century Baltimore. Shooting is taking place in Budapest and Serbia from November 2010.\n\nDescription above from the Wikipedia article Luke Evans (actor), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Luke Evans	1979-04-15	No data.	2
1702027	No data.		Joo Ye-bin	No data.	No data.	1
1702028	http://image.tmdb.org/t/p/w185/qjMZdc6d6RMKTX18gZCs0ZFuhIs.jpg		Je Dong-hwa	No data.	No data.	2
1979672	http://image.tmdb.org/t/p/w185/Agr1imSWU4lrvwrMDAuGsFKv55L.jpg		Jeong Tae-min	No data.	No data.	2
1979674	No data.		Hee Jeong-I	No data.	No data.	1
1979678	No data.		Lim Song-i	No data.	No data.	1
5563	http://image.tmdb.org/t/p/w185/sEouHlYr1hOzl3u6E4KV6gIJSPd.jpg	​From Wikipedia, the free encyclopedia.  \n\nJames Harrison Coburn III (August 31, 1928 – November 18, 2002) was an American film and television actor. Coburn appeared in nearly 70 films and made over 100 television appearances during his 45-year career, and played a wide range of roles and won an Academy Award for his supporting role as Glen Whitehouse in Affliction.\n\nDescription above from the Wikipedia article James Coburn, licensed under CC-BY-SA, full list of contributors on Wikipedia.	James Coburn	1928-08-31	2002-11-18	2
8891	http://image.tmdb.org/t/p/w185/JSt3skdZpGPJYJixCZqH599WdI.jpg	John Joseph Travolta (born February 18, 1954) is an American actor, film producer, dancer, and singer. He first became known in the 1970s, after appearing on the television series Welcome Back, Kotter and starring in the box office successes Saturday Night Fever and Grease. Travolta's career re-surged in the 1990s, with his role in Pulp Fiction, and he has since continued starring in Hollywood films, including Face/Off, Ladder 49 and Wild Hogs. Travolta has twice been nominated for the Academy Award for Best Actor. The first, for his role in Saturday Night Fever and the second for Pulp Fiction. He won the Golden Globe Award for Best Actor - Motion Picture Musical or Comedy for his performance in Get Shorty.\n\nTravolta, the youngest of six children, was born and raised in Englewood, New Jersey, an inner-ring suburb of New York City. His father, Salvatore Travolta, was a semi-professional football player turned tire salesman and partner in a tire company. His mother, Helen Cecilia, was an actress and singer who had appeared in The Sunshine Sisters, a radio vocal group, and acted and directed before becoming a high school drama and English teacher. His siblings are Joey, Ellen, Ann, Margaret, and Sam Travolta. Travolta's father was a second-generation Italian American and his mother was Irish American; he grew up in an Irish-American neighborhood and has said that his household was predominantly Irish in culture. His family was Roman Catholic.\n\nTravolta married actress Kelly Preston in 1991. The couple had a son, Jett, (April 13, 1992 - January 2, 2009), and have a daughter, Ella Bleu, born in 2000. On May 18, 2010, Travolta and Preston announced that she is pregnant with the couple's third child. The couple has regularly attended marriage counselling, and Travolta admits that therapy has helped the marriage. Travolta was involved with actress Diana Hyland, whom he met while filming The Boy in the Plastic Bubble; the relationship ended when she died of breast cancer in 1977.\n\nTravolta is a certified pilot and owns five aircraft, including an ex-Australian Boeing 707–138 airliner. The plane bears the name Jett Clipper Ella in honor of his children. His $4.9 million estate in the Jumbolair subdivision in Ocala, Florida, is situated on Greystone Airport with its own runway and taxiway right to his front door.\n\nTravolta has been a practitioner of Scientology since 1975 when he was given the book Dianetics while filming the movie The Devil's Rain in Durango, Mexico.	John Travolta	1954-02-18	No data.	2
139	http://image.tmdb.org/t/p/w185/43DjE9bGtR8z7ejCRvf2tPXPpm1.jpg	Uma Karuna Thurman (born April 29, 1970) is an American actress and model. She has performed in leading roles in a variety of films, ranging from romantic comedies and dramas to science fiction and action movies. Following early roles in films such as Dangerous Liaisons (1988), she rose to international prominence in 1994 following her role in Quentin Tarantino's Pulp Fiction for which she was nominated for an Academy Award, a BAFTA Award and a Golden Globe Award. She starred in several more films throughout the 1990s such as The Truth About Cats & Dogs, Batman & Robin, Gattaca and Les Misérables.\n\nShe won a Golden Globe Award for the miniseries Hysterical Blindness (2002). Her career was revitalized when she reunited with director Quentin Tarantino to play the central role in two Kill Bill films (2003/2004), which brought her an additional two Golden Globe Award nominations and a BAFTA Award nomination.\n\nThurman was born in Boston, Massachusetts. Her father, Robert Alexander Farrar Thurman, a New York-born professor, is a Buddhist writer and academic. Her mother, Nena von Schlebrügge, is a model who was born in Mexico City, Mexico, of German, Swedish and Danish descent. Thurman and her siblings spent time in the Himalayan town of Almora, Uttarakhand, India, during childhood, and the Dalai Lama, to whom Robert Thurman has long been close, once visited their home. She grew up mostly in Amherst, Massachusetts, where she went to Amherst Regional Middle School, then moved to Woodstock, New York. While her father gave his children a Buddhist upbringing, she has the same name as one of the Hindu goddess Parvati's alternate names, "Uma", which means "light" in Sanskrit. Regarding religion, she now calls herself agnostic.\n\nShe has three brothers, Ganden (b. 1968), Dechen (b. 1973), and Mipam (b. 1978), and a half-sister named Taya (b. 1960), from her father's previous marriage. She is described as having been an awkward and introverted girl who was teased for her tall frame, angular bone structure, enormous feet and unusual name (sometimes using the name “Uma Karen” instead of her birth name). When Thurman was 10 years old, a friend's mother suggested a nose job. As a child, she suffered bouts of body dysmorphic disorder, which she discussed in an interview with Talk magazine in 2001.\n\nUma attended Amherst Public Schools. In the eighth grade, she discovered her love for acting. Talent scouts noticed her performance as Abigail in a production of The Crucible and offered her the chance to act professionally. Thurman attended Northfield Mount Hermon School, a preparatory school in Massachusetts, before dropping out to pursue a career in acting.	Uma Thurman	1970-04-29	No data.	1
1208406	http://image.tmdb.org/t/p/w185/m40sSN2l2tQtpKbhRbjm7sksNV9.jpg		Zoë Borde	No data.	No data.	1
82400	http://image.tmdb.org/t/p/w185/mHDq7KDiNKP71hHmaQY9cfWVyvQ.jpg	Vincent Zhao Wenzhuo (born 10 April 1972 in Ning'an, Heilongjiang, China), sometimes credited as Vincent Chiu or Chiu Man-cheuk, is a Chinese actor and martial artist. Zhao is best known playing the Chinese folk hero Wong Fei-hung in the Once Upon a Time in China film and television series, True Legend (2010), The Blade (1995) and Green Snake (1993).	Vincent Zhao	1972-04-10	No data.	2
63585	http://image.tmdb.org/t/p/w185/sv74TXme3jxPm9a4fXKdj3rAWGE.jpg	From Wikipedia, the free encyclopedia.\n\nAndy On Chi-kit (Cantonese Yale: On Chi Kit) (born 11 May 1977 in Providence, Rhode Island, United States) is a Chinese American actor and martial artist.\n\nDescription above from the Wikipedia article Andy On, licensed under CC-BY-SA,full list of contributors on Wikipedia.	Andy On	1976-05-11	No data.	2
576408	http://image.tmdb.org/t/p/w185/3igH7CvLLYyXWaJ3NmsmFYPMsvK.jpg		Bruce Leung Siu-Lung	No data.	No data.	0
80676	http://image.tmdb.org/t/p/w185/cE0ylwj9U3vii34XQGFE3zk8n80.jpg	From Wikipedia, the free encyclopedia  Jordan Nagai (born February 5, 2000) is an American voice actor\n\nbest known for his role as Russell in the 2009 Pixar movie Up.  Description above from the Wikipedia article Jordan Nagai,\n\nlicensed under CC-BY-SA, full list of contributors on Wikipedia.	Jordan Nagai	2000-02-05	No data.	2
3085	http://image.tmdb.org/t/p/w185/lDUG4hn0H4vzmSbmLHZcVrAgWF1.jpg	James Caan  (born March 26, 1940) is an American actor. He is best-known for his starring roles in The Godfather, Thief, Misery, A Bridge Too Far, Brian's Song, Rollerball, Kiss Me Goodbye, Elf, and El Dorado. He also starred as "Big Ed" Deline in the television series Las Vegas.	James Caan	1940-03-26	No data.	2
3086	http://image.tmdb.org/t/p/w185/uBNqpxmlNSX7FJeubO1g3nlrrkF.jpg	​From Wikipedia, the free encyclopedia.\n\nRichard Salvatore Castellano  (September 4, 1933 – December 10, 1988) was an American actor who is best remembered for his role as Peter Clemenza in The Godfather.\n\nDescription above from the Wikipedia article Richard S. Castellano, licensed under CC-BY-SA, full list of contributors on Wikipedia	Richard S. Castellano	1933-09-04	1988-12-10	0
41088	http://image.tmdb.org/t/p/w185/49zyYG6HSQm76mN1SLmCCzgIN0Y.jpg	​From Wikipedia, the free encyclopedia.\n\nJason Jordan Segel (born January 18, 1980, height 6' 4" (1,93 m)) is an American television and film actor, screenwriter, musician, known for his work with producer Judd Apatow on the short-lived television series Freaks and Geeks and Undeclared, the movies Forgetting Sarah Marshall, Knocked Up, I Love You, Man, Gulliver's Travels, and Despicable Me, and also for his role as Marshall Eriksen in the CBS sitcom How I Met Your Mother.\n\nDescription above from the Wikipedia article Jason Segel, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jason Segel	1980-01-18	No data.	2
1247	http://image.tmdb.org/t/p/w185/bSGvvLVbgpIFGLKj2CGeojsqOaH.jpg	Matthew William Goode (born 3 April 1978) is an English actor. His notable films have included Match Point, Watchmen, Brideshead Revisited and A Single Man.\n\nDescription above from the Wikipedia article Matthew Goode, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Matthew Goode	1978-04-03	No data.	2
1053422	http://image.tmdb.org/t/p/w185/ojlaX7YYOLVQ6PGASa1y9TVjXxl.jpg	From Wikipedia, the free encyclopedia\n\nPatrick Arnold Shriver Schwarzenegger (born September 18, 1993) is an American model and actor. He is the son of Austrian-American bodybuilder, actor, and former Governor of California, Arnold Schwarzenegger, and journalist and author, Maria Shriver.	Patrick Schwarzenegger	1993-09-18	No data.	2
158396	http://image.tmdb.org/t/p/w185/lsfjWG9v9hrfZPot6lTeX9AOpJn.jpg		Ken Tremblett	1965-11-22	No data.	2
1862365	http://image.tmdb.org/t/p/w185/5I94vAtICAYL1yxvOvv0jbH520S.jpg		Yorch Yongsin Wongpanitnont	No data.	No data.	2
1650340	http://image.tmdb.org/t/p/w185/fgtMrG8U9Owb8enJlQpal2DXli3.jpg		Ploy Sornarin	No data.	No data.	1
1913348	No data.		ธนเศรษฐ์ สุริยะพรชัยกุล	No data.	No data.	0
1913350	No data.		ลิตา จันทร์วราภา	No data.	No data.	0
1913352	No data.		จิรกิตติ์ วงศ์ศรีเพ็ง	No data.	No data.	0
3899	http://image.tmdb.org/t/p/w185/lGh8rIi9g5ukXcYIT1BNF11Ix6b.jpg	From Wikipedia, the free encyclopedia.\n\nKen Watanabe (born October 21, 1959) is a Japanese stage, film, and television actor. To English-speaking audiences he is known for playing tragic hero characters, such as General Tadamichi Kuribayashi in Letters from Iwo Jima and Lord Katsumoto Moritsugu in The Last Samurai, for which he was nominated for the Academy Award for Best Supporting Actor. Among other awards, he has won the Japan Academy Prize for Best Actor twice, in 2007 for Memories of Tomorrow and in 2010 for Shizumanu Taiyō. He is also known for his roles in director Christopher Nolan's Hollywood blockbusters Batman Begins and Inception.\n\nDescription above from the Wikipedia article Ken Watanabe, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Ken Watanabe	1959-10-21	No data.	2
25663	http://image.tmdb.org/t/p/w185/cN47YiZhB6yOZwSNShgMPD8VwQ2.jpg	Thomas Brodie-Sangster (born 16 May 1990) is an English film and television actor, best known for his roles in Love Actually, Nanny McPhee, Nowhere Boy, and The Maze Runner. He also provides the voice of Ferb in the animated Disney show Phineas and Ferb.	Thomas Brodie-Sangster	1990-05-16	No data.	2
10182	http://image.tmdb.org/t/p/w185/8nS83GOu0iqxjL2Oj2DgwkAceFQ.jpg	Irving Rameses "Ving" Rhames (born May 12, 1959) is an American actor best known for his work in Bringing Out the Dead, Pulp Fiction, Baby Boy, Don King: Only in America, and the Mission: Impossible film series. Rhames was born in New York City, New York, he entered New York's School of Performing Arts, where he discovered his love of acting. After high school, he studied drama at SUNY Purchase where he met fellow actor Stanley Tucci, who gave him his nickname "Ving". He later transferred to Juilliard, where he began his career in New York theater. Rhames first appeared on Broadway in the play The Winter Boys in 1984. Ving continued his rise to fame through his work in soap operas. He found work as a supporting actor, and came to the attention of the general public by playing the role of Marsellus Wallace in Pulp Fiction (1994). Rhames was also getting public exposure on television as Peter Benton's brother-in-law on the medical drama ER, a recurring role he filled for 3 seasons. Not long after, Rhames was cast with Tom Cruise as the ace computer hacker Luther Stickell in Brian De Palma's Mission: Impossible (1996). With solid performances in two of these highly popular productions, his face was now known to moviegoers; the work offers began rolling in more frequently and he can been seen in several popular films such as Con Air and Dawn of the Dead.  Rhames won a Golden Globe in 1998 for best actor in a TV miniseries for his performance in HBO's Don King: Only in America. At the ceremony Rhames gave his award to fellow nominee Jack Lemmon (who is White), saying "I feel that being an artist is about giving, and I'd like to give this to you." Lemmon was clearly touched by the gesture as was the celebrity audience who gave Lemmon a standing ovation. Lemmon, who tried unsuccessfully to give the award back to Rhames said it was "one of the sweetest moments I've ever known in my life." The Hollywood Foreign Press Association announced later that they would have a duplicate award prepared for Rhames.	Ving Rhames	1959-05-12	No data.	2
783	http://image.tmdb.org/t/p/w185/s6K0lromCtmSTzuX9hig8OPiRsC.jpg	Jonathan Banks (born January 31, 1947) is an American character actor in film and television. He tends to play villains.\n\nBanks dropped out of Indiana University to join a touring company as a stage manager. He went to Australia with the company and stayed on working in theatre there. In 1974, he moved to Los Angeles and performed on stage before picking up bit parts on television. Probably his best-known movie roles are in two films starring Eddie Murphy: 48 Hrs. and Beverly Hills Cop. In 48 Hrs. he plays a character who is a friend of the lead and is killed by the villain, beginning the lead characters' story. In Beverly Hills Cop, he plays a villain who kills the lead characters' friend and begins his story. Other movie roles include appearances in Armed and Dangerous, Freejack, Flipper, Airplane!, Gremlins, Murder Me, Murder You, and Under Siege 2: Dark Territory. His most recent film to date is the 2007 film Reign Over Me.\n\nHis biggest break on television, came with the series Wiseguy, in which he played Frank McPike for four years, a role which led to an Emmy award nomination. Although his character was primarily the hero's mentor, stories occasionally featured McPike as hero. In 1981 he appeared as Dutch Schultz on the NBC series the Gangster Chronicles. He also starred on the short-lived science fiction TV series Otherworld, as Kommander Neveen Kroll and in the sitcom Fired Up.\n\nBanks has also made guest appearances on TV shows including Alias, CSI, Day Break, Highlander: The Series, Matlock, SeaQuest DSV, Star Trek: Deep Space Nine, Women of the House and Walker Texas Ranger. Most recently, Banks appeared in the final Season Two episodes of Dexter, and in episodes of ER, Cold Case, and Shark, Modern Family. In the second season finale of Breaking Bad, Banks appeared as a mysterious character named Mike. Banks was made a series regular for the third season.	Jonathan Banks	1947-01-31	No data.	2
417	http://image.tmdb.org/t/p/w185/vAH6j1A0L88R4UD9QX1nM9OLoYw.jpg	Ginnifer Goodwin (born Jennifer Michelle Goodwin; May 22, 1978, height 5' 6" (1,68 m)) is an American television and film actress, best known for her role as Margene Heffman on the HBO series Big Love and starring in the movies Mona Lisa Smile and He's Just Not That into You. She stars as Mary Margaret Blanchard/Snow White in the ABC series Once Upon a Time.\n\nGoodwin was born in Memphis, Tennessee. Her mother, Linda (née Kantor), is a former educator and "stay-at-home mom", who later worked for FedEx and Apple.Her father, Tim Goodwin, formerly owned and operated a recording studio. Goodwin changed her name from "Jennifer" to "Ginnifer" to distinguish her name, and to assist in pronunciation of her name in her regional dialect. Her younger sister, Melissa Goodwin, is a stop motion animator on shows such as the Emmy Award-winning Robot Chicken, on which Ginnifer has also appeared as voice talent.\n\nHer mother is Jewish and her father is of Welsh descent; Goodwin was raised in her mother's faith.] In her youth, Goodwin was affiliated with the North American Federation of Temple Youth, and was active in BBYO at the Jewish Community Center in Memphis; she had a bat mitzvah. She went to school at St. Mary's Episcopal School in Memphis, Tennessee. She then graduated from Lausanne Collegiate School in 1996, then attended Hanover College (majoring in Theatre) for one year before moving on to earn her Bachelor of Fine Arts from Boston University. While a student at BU, she performed in numerous student short films, as well as several college and local stage productions. Goodwin was given the "Excellence in Acting: Professional Promise Award" by the Bette Davis Foundation, and graduated with honors. After her time at Boston University, she studied in England at Stratford Upon-Avon’s Shakespeare Institute, in conjunction with the Royal Shakespeare Company. The following year she earned an "Acting Shakespeare Certificate" at London’s Royal Academy of Dramatic Art.\n\nAfter two years of dating, Goodwin became engaged to actor Joey Kern in December 2010. They ended the engagement in May 2011.Goodwin subsequently began dating her Once Upon a Time co-star Josh Dallas in fall 2011.[17] The couple became engaged on October 9, 2013, and on November 20, 2013, announced that they are expecting their first child.\n\nGoodwin is a close and longtime friend of her Once Upon a Time co-star Jennifer Morrison. Goodwin was a vegan and was a spokesperson for Farm Sanctuary's Adopt-A-Turkey Project in 2009, having adopted a whole flock herself.She revealed on Jimmy Kimmel that she gave up being a vegan after experiencing undisclosed health issues. She said: "I'm always learning and growing and changing and there were some boring health issues, and so I did actually have to work some animal products back into my diet." Goodwin says although she's never had a "dramatic weight problem", she uses Weight Watchers to keep her indulgences in check. She considers herself an extremely healthy person, and balances her diet with ballet classes and cardio workouts.\n\nIn 2013, Goodwin stated that, after she left Memphis, she "up and left Judaism for a very long time", and that "for 10 years, there was nothing. No ritual. No tradition. No community". She later reconnected with her faith.	Ginnifer Goodwin	1978-05-22	No data.	1
2229	http://image.tmdb.org/t/p/w185/vcFhHN9rnSym73Nr0bnRJOVnc9u.jpg	Catherine Ann Keener (born March 23, 1959) is an American actress. She has been nominated for the Academy Award for Best Supporting Actress twice, for Being John Malkovich (1999) and Capote (2005).\n\nDescription above from the Wikipedia article Catherine Keener, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Catherine Keener	1959-03-23	No data.	1
512316	http://image.tmdb.org/t/p/w185/ncabL8QALGJpMkcmGDFuqBw4jsh.jpg	From Wikipedia, the free encyclopedia.\n\nJacob O'Neal Latimore, Jr. (born August 10, 1996) is an American R&amp;B/Pop recording artist, actor, and dancer.	Jacob Latimore	1996-08-10	No data.	0
559643	http://image.tmdb.org/t/p/w185/nlzqjdZnVqD3CcKnXJmBBoPVZ4E.jpg		Seychelle Gabriel	1991-03-25	No data.	1
1395348	http://image.tmdb.org/t/p/w185/h6WIR70Qp2Ex8hAGWpfYcRXr1mc.jpg		Sasheer Zamata	1986-05-06	No data.	1
1492327	http://image.tmdb.org/t/p/w185/8qKl5CegJ0yGPTLkKYQGok7wX4n.jpg		Cameron Esposito	1981-10-17	No data.	1
1619	http://image.tmdb.org/t/p/w185/6JbF55y5nPn4APoVxRzuDBMiVLh.jpg	Chow Yun-fat is a charismatic, athletically built and energetic Asian-born film star who first came to the attention of western audiences via his roles in the high-octane/blazing guns action films of maverick HK director John Woo.\n\nBorn in 1955 on the quiet island of Lamma, part of the then British colony of Hong Kong near its famous Victoria Harbour, Chow's family moved to urban Hong Kong in 1965 and in early 1973, Chow attended a casting call for TVB, a division of Shaw Bros. productions. With his good looks and easy-going style, Chow was originally a heartthrob actor in non-demanding TV and film roles. However, his popularity increased with his appearance as white-suited crime boss Hui Man-Keung in the highly popular HK film Shang Hai tan xu ji (1983).\n\nIn 1985, Chow started receiving acclaim for his work and scored the Golden Horse (Best Actor) Award in Taiwan and another Best Actor Award from the Asian Pacific Film Festival for his performance in Dang doi lai ming (1984). With these accolades, Chow came to the attention of Woo, who cast Chow in the fast-paced gangster film Ying hung boon sik (1986) (aka "A Better Tomorrow"). The rest, as they say, is history. The film was an enormous commercial success, and Chow's influence on young Asian males was not dissimilar to the adulation given to previous Asian film sensations such as Bruce Lee or Jackie Chan. Nearly every young guy in Hong Kong ran out and bought himself a "Mark Coat," as they became known--a long, heavy woolen coat worn by Chow in the movie (although it is is actually very unsuited to Hong Kong's hot and humid climate).\n\nFurther hard-edged roles in more John Woo crime films escalated Chow's popularity even higher, and fans all over the world flocked to see Ying hung boon sik II (1987) (aka "A Better Tomorrow 2"), Dip huet seung hung (1989) (aka "The Killer"), and Lat sau san taam (1992) (aka "Hard Boiled"). With the phenomenal global interest in the HK action genre, Chow was enticed to the United States and appeared in The Replacement Killers (1998) with Mira Sorvino, The Corruptor (1999) with Mark Wahlberg, and, for a change of pace, in the often-filmed romantic tale of Anna and the King (1999).\n\nChow then returned to the Asian cinema circuit and starred in the critically lauded kung fu epic Wo hu cang long (2000) (aka "Crouching Tiger, Hidden Dragon"). His wide appeal can be seen in his "boy next door" type of personality and his ability to play such a broad spectrum of roles from a comedic buffoon to a lovestruck Romeo to a trigger-happy professional killer. A highly entertaining and gifted actor with dynamic on-screen presence, Chow continues to remain in strong demand in many film markets.	Chow Yun-fat	1955-05-18	No data.	2
1687041	http://image.tmdb.org/t/p/w185/4Mcr9R91aAewAhG03HOfgTrF2WW.jpg	Fionn Whitehead is an English film and television actor.	Fionn Whitehead	1997-01-01	No data.	2
145143	http://image.tmdb.org/t/p/w185/yQcdY4HPMMzzw2S052nTuPHIuZJ.jpg	Aneurin Barnard (born 8 May 1987) is a Welsh television, stage and film actor. He is bilingual and has performed in both Welsh language and English language productions.\n\nHe trained at the Royal Welsh College of Music &amp; Drama in Cardiff.	Aneurin Barnard	1987-05-08	No data.	2
19537	http://image.tmdb.org/t/p/w185/e0ORFw5DcpiGEZ649UdYNwTBntr.jpg	Megan Denise Fox  (born May 16, 1986) is an American actress and model. She began her acting career in 2001, with several minor television and film roles, and played a regular role on the Hope &amp; Faith television show. In 2004, she made her film debut with a role in Confessions of a Teenage Drama Queen. In 2007, she co-starred as Mikaela Banes, the love interest of Shia LaBeouf's character, in the blockbuster film, Transformers, which became her breakout role. Fox reprised her role in the 2009 sequel, Transformers: Revenge of the Fallen. Later in 2009, she starred as the eponymous lead in the film Jennifer's Body. Fox is also considered one of the modern female sex symbols and has appeared in magazines such as Maxim, Rolling Stone and FHM.\n\nFox was born in Oak Ridge, Tennessee, the daughter of Gloria Darlene (née Cisson) and Franklin Thomas Fox. She has English, and smaller amounts of Scottish, German, French, Scots-Irish (Northern Irish), and Powhatan Native American, ancestry.She was raised "very strictly Pentecostal", but later attended Catholic school for twelve years. Fox's parents divorced when she was young. Fox's mother later remarried, and she and her sister were raised by her mother and her stepfather, Tony Tonachio. She said that the two were "very strict" and that she was not allowed to have a boyfriend or invite friends to her house. She lived with her mother until she made enough money to support herself.\n\nFox began her training in drama and dance at age five, in Kingston, Tennessee. She attended a dance class at the community center there and was involved in Kingston Elementary School's chorus and the Kingston Clippers swim team. At 10 years of age, after moving to St. Petersburg, Florida, Fox continued her training. When she was 13 years old, Fox began modeling after winning several awards at the 1999 American Modeling and Talent Convention in Hilton Head, South Carolina. At age 17, she tested out of school via correspondence in order to move to Los Angeles, California.\n\nFox has spoken extensively of her time in education; that in middle school she was bullied and picked on and she ate lunch in the bathroom to avoid being "pelted with ketchup packets". She said that the problem was not her looks, but that she had "always gotten along better with boys" and that "rubbed some people the wrong way". Fox also said of high school that she was never popular and that "everyone hated me, and I was a total outcast, my friends were always guys, I have a very aggressive personality, and girls didn’t like me for that. I’ve had only one great girlfriend my whole life". In the same interview, she mentions that she hated school and has never been "a big believer in formal education" and that "the education I was getting seemed irrelevant. So, I was sort of checked out on that part of it". Source: Wikipedia, the free encyclopedia.	Megan Fox	1986-05-16	No data.	1
1221085	http://image.tmdb.org/t/p/w185/aTPAdd2NCAquGZLpb3CgfhfDcvj.jpg	Jessica Bianca Sula (born May 3, 1994 in Gorseinon, Wales, UK) is a Welsh actress best known for playing the character Grace Blood in the third generation of the British television series Skins.	Jessica Sula	1994-05-03	No data.	1
2047	http://image.tmdb.org/t/p/w185/jSNTEnm0Sxm8FRtoBfJmhmQyozH.jpg	Danny Lebern Glover (born July 22, 1946) is an American actor, film director, and political activist. Glover is perhaps best known for his roles as Detective Roger Murtaugh in the Lethal Weapon film franchise.\n\nDescription above from the Wikipedia article Danny Glover, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Danny Glover	1946-07-22	No data.	2
2140	http://image.tmdb.org/t/p/w185/eHLvw07VvLiqDkacrsMhMj2lNzp.jpg	Monica Potter (born Monica Gregg Brokaw; June 30, 1971) is an American film and television actress.\n\nDescription above from the Wikipedia article Monica Potter, licensed under CC-BY-SA, full list of contributors on Wikipedia	Monica Potter	1971-06-30	No data.	1
2136	http://image.tmdb.org/t/p/w185/ffl164K7YJMMFCCxhWP7kWU7sOn.jpg	Michael Emerson (born September 7, 1954) is an American actor best known for his role as Benjamin Linus on Lost as well as fictional serial killer William Hinks in The Practice.	Michael Emerson	1954-09-07	No data.	2
49971	http://image.tmdb.org/t/p/w185/lZsU6KrXXkIVtcvJmlPKwPRtBkn.jpg	From Wikipedia, the free encyclopedia.\n\nJennifer Ehle ( born December 29, 1969) is a British-American actress of stage and screen. She is known for her BAFTA winning role as Elizabeth Bennet in the 1995 mini-series Pride and Prejudice.	Jennifer Ehle	1969-12-29	No data.	1
1201716	http://image.tmdb.org/t/p/w185/AmrkQaeZoDJ7EB6GIHQZudaOMh7.jpg	Bel Powley was born on March 7, 1992 in London, England. She is an actress, known for The Diary of a Teenage Girl (2015), Equals (2015) and A Royal Night Out (2015).	Bel Powley	1992-03-07	No data.	1
1336393	http://image.tmdb.org/t/p/w185/qOfBLPPlUPCG4Q9l0Zg3s7Dvobf.jpg	Austin Lyon is an actor and producer.	Austin Lyon	No data.	No data.	0
222130	http://image.tmdb.org/t/p/w185/ssWFOwKNTHSnejpFsk5K0ZTlFVV.jpg	Eloise Mumford is an American actress known for her roles on the television series Lone Star, The River and the Fifty Shades of Grey films.	Eloise Mumford	1986-09-24	No data.	1
4808	http://image.tmdb.org/t/p/w185/d39hOi5lTfqekjFK4JKKPeuGNdW.jpg	Born in Denmark, Giancarlo Esposito is an Italian American stage, film and television actor and director, best known for playing many supporting characters in television shows, such as Gustavo "Gus" Fring in "Breaking Bad" and "Better Call Saul".	Giancarlo Esposito	1958-04-26	No data.	2
52462	http://image.tmdb.org/t/p/w185/pP5F1yNuvYfvMuft578k6dwgtAh.jpg	Betty Lynn Buckley (born July 3, 1947) is an American theater, film and television actress and singer.\n\nDescription above from the Wikipedia article Betty Buckley, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Betty Buckley	1947-07-03	No data.	1
1286328	http://image.tmdb.org/t/p/w185/cRjprfkKiP8a0SzO38tIALkEpA7.jpg	Haley Lu Richardson is an American film and television actress, best known for her leading roles as Maggie Townsend in the feature film "The Bronze" and as Casey in the indie film "Columbus".	Haley Lu Richardson	1995-03-07	No data.	1
18	http://image.tmdb.org/t/p/w185/wXihtlnIvqP2oSNj33hiorDd3v9.jpg	Brad Garrett (born Brad H. Gerstenfeld; April 14, 1960) is an American actor, voice actor, and stand-up comedian. He is best known for playing Robert Barone on Everybody Loves Raymond and Eddie Stark on 'Til Death. He is easily recognized by his tall stature (6 feet 8½ inches; 204 cm) and deep voice.\n\nDescription above from the Wikipedia article Brad Garrett, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Brad Garrett	1960-04-14	No data.	2
53185	http://image.tmdb.org/t/p/w185/zPzagAtKxbHKrQLAQ69KSYLZxjA.jpg		Texas Battle	1976-08-09	No data.	2
15757	http://image.tmdb.org/t/p/w185/zWT03QvuVYySlrjmHCojKrNYjoC.jpg	Ray Romano is an American film and television actor, writer, producer, and stand-up comedian, best known for his television leading roles on the sitcom "Everybody Loves Raymond" as the title character and on the series "Men of a Certain Age", as well as for providing his voice to the Mammoth Manny in the "Ice Age" film franchise.	Ray Romano	1957-12-21	No data.	2
556356	http://image.tmdb.org/t/p/w185/9itJW9EjTS4tXHa02LusOgX8vdN.jpg	Vanessa Kirby (born 18 April 1988) is an English stage, TV and film actress. She starred as Estella in the BBC adaptation of Great Expectations in 2011, as Joanna in Richard Curtis' romantic comedy About Time in 2013, and as Princess Margaret in Peter Morgan's Netflix series The Crown. She is known mostly for her stage work, with Variety in 2016 calling her 'the outstanding stage actress of her generation, capable of the most unexpected choices.'	Vanessa Kirby	2018-05-01	No data.	1
77235	http://image.tmdb.org/t/p/w185/k7RPzGM62ZRJ4z3wxBwOhVm5GYY.jpg		Bobby Deol	No data.	No data.	2
131347	http://image.tmdb.org/t/p/w185/p192CpPfZsDNMl48ok49m2SSwGz.jpg	Very few people have the privilege of being\n\n born on the same day as their mom or dad, Tina is one of them. She was \n\nborn on 29 December 1974, and shares her date of birth with her dad, \n\nJatin alias super-star Rajesh Khanna, born in 1942. Tina is the daughter\n\n of well-known Bollywood actress, Dimple Kapadia.	Twinkle Khanna	1974-12-29	No data.	1
71090	http://image.tmdb.org/t/p/w185/xJ2viAvsbQgLmyaF5wJb2A2izfb.jpg		Raj Babbar	1952-06-23	No data.	2
86421	http://image.tmdb.org/t/p/w185/quW4BxEVCUVxSLJwuPD4X0xcl3E.jpg		Mukesh Khanna	No data.	No data.	0
38673	http://image.tmdb.org/t/p/w185/5L7BSYbzM8iizvIrS8EaaZoDrI3.jpg	Channing Matthew Tatum (born April 26, 1980) is an American actor and film producer. He began his career as a fashion model before turning to film roles, having starred in She's the Man (2006), Step Up (2006), Fighting (2009), Public Enemies (2009), G.I. Joe: The Rise of Cobra (2009), and Dear John (2010).\n\nDescription above from the Wikipedia article Channing Tatum, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Channing Tatum	1980-04-26	No data.	2
1951	http://image.tmdb.org/t/p/w185/44AaIXkbZFkdhSW1kRdzCbfYk6c.jpg	Elisabeth Judson Shue (born October 6, 1963) is an American film actress who is most famous for her roles in the films The Karate Kid, Adventures in Babysitting, Back to the Future Parts II and III and Leaving Las Vegas, for which she won five acting awards and was nominated for an Academy Award, a Golden Globe and a BAFTA.\n\nDescription above from the Wikipedia article Elisabeth Shue, licensed under CC-BY-SA, full list of contributors on Wikipedia	Elisabeth Shue	1963-10-06	No data.	1
72466	http://image.tmdb.org/t/p/w185/pgMM9r5ll99RXSmz1J4sj8zaddW.jpg	Colin James Farrell (born 31 May 1976) is an Irish actor, who has appeared in films including Tigerland, Daredevil, Miami Vice, Minority Report, Phone Booth, The Recruit, Alexander, S.W.A.T., and In Bruges.	Colin Farrell	1976-05-31	No data.	2
58873	http://image.tmdb.org/t/p/w185/75hCIe6KHpHUlJDcyoxEp035BWz.jpg	​From Wikipedia, the free encyclopedia.  \n\nDaniel Kevin "Dan" Fogler (born October 20, 1976) is an American actor, playwright, and filmmaker.\n\nDescription above from the Wikipedia article Dan Fogler, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Dan Fogler	1976-10-20	No data.	2
128645	http://image.tmdb.org/t/p/w185/3oUmHnp1GIS9lgB1KQYrsuoAR20.jpg	Archana "Archie" Panjabi is a British film and television actress, best known for her roles in the movies "East Is East", "Bend It Like Beckham", and "A Mighty Heart", as well as for her portrayal of Kalinda Sharma in the CBS television series "The Good Wife". She graduated from Brunel University, England, with a degree in Management Studies (BSc).	Archie Panjabi	1972-05-31	No data.	1
4029	http://image.tmdb.org/t/p/w185/b3NfI0IzPYI40eIEtO9O0XQiR8j.jpg	Robert Patrick "Bob" Gunton, Jr. (born November 15, 1945) is an American actor. He is known for playing strict, authoritarian characters, with his best known roles as Warden Samuel Norton in the 1994 prison film The Shawshank Redemption, Chief George Earle in 1993's Demolition Man, and President Juan Peron in the original Broadway cast of Evita.\n\nDescription above from the Wikipedia article Bob Gunton , licensed under CC-BY-SA, full list of contributors on Wikipedia.	Bob Gunton	1945-11-15	No data.	2
6576	http://image.tmdb.org/t/p/w185/bsh3cqDNwVvux4NdaY1Bj4S7mNS.jpg	From Wikipedia, the free encyclopedia.\n\nMark Rolston (born December 7, 1956) is an American actor.\n\nDescription above from the Wikipedia article Mark Rolston, licensed under CC-BY-SA, full list of contributors on Wikipedia.\n\n​	Mark Rolston	1956-12-07	No data.	2
59270	http://image.tmdb.org/t/p/w185/zWGhuQtWgEL5WPfBCbCxqV2rTCG.jpg	Riccardo Scamarcio is an Italian film actor and film producer.	Riccardo Scamarcio	1979-11-13	No data.	2
17497	http://image.tmdb.org/t/p/w185/2pFMVxyKbVkULNWqXbqFb3TV7zK.jpg	Romain Duris (born 28 May 1974) is a French actor. Romain Duris is most famous for his role as the French exchange student Xavier Rousseau in The Spanish Apartment and The Russian Dolls. He has a reputation for versatility, having played a thug in The Beat That My Heart Skipped.	Romain Duris	1974-05-28	No data.	2
53283	http://image.tmdb.org/t/p/w185/1S8DpfNv6iiQRuKFPtb5u6sCQ5G.jpg	From Wikipedia, the free encyclopedia\n\nJonathan Taylor Thomas (born September 8, 1981) is an American actor, voice actor, former child star, and teen idol. He was well known for his role of middle child Randy Taylor on the sitcom Home Improvement, as Tom Sawyer in the Disney film Tom and Huck, and as the voice of the young Simba in Disney's The Lion King.\n\nDescription above from the Wikipedia article Jonathan Taylor Thomas, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jonathan Taylor Thomas	1981-09-08	No data.	2
15152	http://image.tmdb.org/t/p/w185/2ZuBf3ip2RXhkiQqGUjbUzAf4Nx.jpg	James Earl Jones (born January 17, 1931) is a multi-award-winning American actor of theater and film, well known for his distinctive bass voice and for his portrayal of characters of substance, gravitas and leadership. He is known for providing the voice of Darth Vader in the Star Wars franchise and the tagline for CNN.  James Earl Jones was born in Arkabutla, Mississippi, the son of Ruth (née Connolly) and Robert Earl Jones. At the age of five, he moved to Jackson, Michigan, to be raised by his maternal grandparents, but the adoption was traumatic and he developed a stutter so severe he refused to speak aloud. When he moved to Brethren, Michigan in later years a teacher at the Brethren schools started to help him with his stutter. He remained functionally mute for eight years until he reached high school. He credits his high school teacher, Donald Crouch, who discovered he had a gift for writing poetry, with helping him out of his silence.  Jones attended the University of Michigan where he was a pre-med major. While there, he joined the Reserve Officer Training Corps, and excelled. During the course of his studies, Jones discovered he was not cut out to be a doctor. Instead he focused himself on drama, with the thought of doing something he enjoyed, before, he assumed, he would have to go off to fight in the Korean War. After four years of college, Jones left without his degree. In 1953 he found a part-time stage crew job at the Ramsdell Theatre in Manistee, Michigan, which marked the beginning of his acting career. During the 1955–1957 seasons he was an actor and stage manager. He performed his first portrayal of Shakespeare’s Othello in this theater in 1955. After his discharge from the Military, Jones moved to New York, where he attended the American Theatre Wing to further his training and worked as a janitor to earn a living. His first film role was as a young and trim Lt. Lothar Zogg, the B-52 bombardier in Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb in 1964. His first big role came with his portrayal of boxer Jack Jefferson in the film version of the Broadway play The Great White Hope, which was based on the life of boxer Jack Johnson. For his role, Jones was nominated Best Actor by the Academy of Motion Picture Arts and Sciences, making him the second African-American male performer (following Sidney Poitier) to receive a nomination. In 1969, Jones participated in making test films for a proposed children's television series; these shorts, combined with animated segments were the beginnings of the Sesame Street format. The next year, in the early 1970s, James appeared with Diahann Carroll in the film called Claudine.  While he has appeared in many roles, he is well known as the voice of Darth Vader in the original Star Wars trilogy. Darth Vader was portrayed in costume by David Prowse in the original trilogy, with Jones dubbing Vader's dialogue in postproduction due to Prowse's strong West Country accent being unsuitable for the role. At his own request, he was originally uncredited for the release of the first two films (he would later be credited for the two in the 1997 re-release).  His other voice roles include Mufasa in the 1994 film Disney animated blockbuster The Lion King, and its direct-to-video sequel, The Lion King II: Simba's Pride. He also has done the CNN tagline, "This is CNN", as well as "This is CNN International", and the Bell Atlantic tagline, "Bell Atlantic: The heart of communication". When Bell Atlantic became Verizon, Jones used the tagline greeting of "Welcome to Verizon" or "Verizon 411" right before a phone call would go through. The opening for NBC's coverage of the 2000 and 2004 Summer Olympics; "the Big PI in the Sky" (God) in the computer game Under a Killing Moon; a Claymation film about The Creation; and several guest spots on The Simpsons.  In addition to his film and voice over work, Jones is an accomplished stage actor as well; he has won Tony awards in 1969 for The Great White Hope and in 1987 for Fences. Othello, King Lear, Oberon in A Midsummer Night's Dream, Abhorson in Measure for Measure, and Claudius in Hamlet are Shakespearean roles he has played. He received Kennedy Center Honors in 2002.  Jones has been married to actress Cecilia Hart since 1982. They have one child, Flynn Earl Jones. He was previously married to American actress/singer Julienne Marie (born March 21, 1933, Toledo, Ohio); they had no children. Jones is a registered Republican.	James Earl Jones	1931-01-17	No data.	2
128629	http://image.tmdb.org/t/p/w185/ooqZyVu5xmBUVdeRCGn93ry9dLz.jpg	Crystal Reed is an American actress. She is perhaps best known for her role as Denise in the feature film Skyline and as Allison Argent in the MTV series Teen Wolf.\n\nDescription above from the Wikipedia article Crystal Reed, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Crystal Reed	1985-02-06	No data.	1
145755	http://image.tmdb.org/t/p/w185/sGGOemY3aqMWh7uCTF7LbT1FHjq.jpg	Mylène Gautier, dite Mylène Farmer, est une auteure-compositrice-interprète, productrice et actrice française	Mylène Farmer	1961-09-12	No data.	1
1245422	No data.		Anastasia Phillips	No data.	No data.	0
1493223	http://image.tmdb.org/t/p/w185/yIBMvRolEfK9kH2tS40xEiVMTJN.jpg		Taylor Hickson	1997-12-11	No data.	1
3	http://image.tmdb.org/t/p/w185/7LOTdRfHU1H1qHBxpUv3jT04eWB.jpg	Legendary Hollywood Icon Harrison Ford was born on July 13, 1942 in Chicago, Illinois.  His family history includes a strong lineage of actors, radio personalities, and models.  Harrison attended public high school in Park Ridge, Illinois where he was a member of the school Radio Station WMTH. Harrison worked as the lead voice for sports reporting at WMTH for several years.  Acting wasn’t a major interest to Ford until his junior year at Ripon College when he first took an acting class.  Harrison Ford’s career started in 1964 when he travelled to California in search of a voice-over job. He never received that position, but instead signed a contract with Columbia Pictures where he earned $150 weekly to play small fill in roles in various films.  Through the 60’s Harrison worked on several TV shows including Gunsmoke, Ironside, Kung Fu, and American Style.  It wasn’t until 1967 that Harrison received his first credited role in the Western film, A Time for Killing. Dissatisfied with the meager roles he was being offered, Ford took a hiatus from acting to work as a self-employed carpenter. This seemingly odd diversion turned out to be a blessing in disguise for Harrison’s acting career when he was soon hired by famous film producer George Lucas.  This was a turning point in Harrison’s life that led to him be casted in milestone roles such as Hans Solo and Indiana Jones.  Since his most famous roles in the Star Wars Trilogy and Raiders of the Lost Ark, Harrison Ford has starred in over 40 films.  Many criticize his recent work, saying his performances have been lackluster leading to commercially disappointing films.  Harrison has always worked hard to protect his off-screen private life, keeping details about his children and marriages quite.  He has a total of five children including one recent adoption with third and current wife Calista Flockhart. In addition to acting Harrison Ford is passionate about environmental conservation, aviation, and archeology.	Harrison Ford	1942-07-13	No data.	2
37632	http://image.tmdb.org/t/p/w185/bHipa1GkpedD32w2OIRg5axdkQ6.jpg	Edward John David "Eddie" Redmayne (born 6 January 1982) is an English actor and model. Redmayne won the 2010 Tony Award as best featured actor in a play for his performance in Red.	Eddie Redmayne	1982-01-06	No data.	2
5723	http://image.tmdb.org/t/p/w185/rbq24AzthnwRXUYcVfUnP5bKN50.jpg	John Leguizamo (born July 22, 1964) is a Colombian-American actor, comedian, voice artist, and producer. Leguizamo is of Puerto Rican and Colombian descent.	John Leguizamo	1964-07-22	No data.	2
7167	http://image.tmdb.org/t/p/w185/h5BcaDMPRVLHLDzbQavec4xfSdt.jpg	Don Rickles, nicknamed "Mr. Warmth", was an American stand-up comedian and actor. He acted in comedic and dramatic roles, but is best known as an insult comic. He enjoyed a sustained career as such, thanks to his distinctive humor, wit, and impeccable timing. Rickles frequently appeared as a guest on The Tonight Show Starring Johnny Carson.	Don Rickles	1926-05-08	2017-04-06	2
12899	http://image.tmdb.org/t/p/w185/eIo2jVVXYgjDtaHoF19Ll9vtW7h.jpg	James Albert "Jim" Varney, Jr. (June 15, 1949 – February 10, 2000) was an American actor, voice artist, and comedian, best known for his role as Ernest P. Worrell, who was used in numerous television commercial campaigns and movies in the following years, giving Varney fame nationally in the United States.	Jim Varney	1949-06-15	2000-02-10	2
6807	http://image.tmdb.org/t/p/w185/vYpWxV0bnUgKo7SdasfGP9HttUq.jpg	Sam Rockwell (born November 5, 1968) is an American actor known for his leading roles in Lawn Dogs, Confessions of a Dangerous Mind, Choke and Moon, as well as for his supporting roles in The Green Mile, Iron Man 2, The Hitchhiker's Guide to the Galaxy, Frost/Nixon, Galaxy Quest, Matchstick Men, The Assassination of Jesse James by the Coward Robert Ford and Conviction.  Description above from the Wikipedia article Sam Rockwell, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Sam Rockwell	1968-11-05	No data.	2
82191	http://image.tmdb.org/t/p/w185/3ket3t8OFC3o1EYcpypMgJ41Q27.jpg	Sharlto Copley (born November 27th, 1973) is a South African producer, actor, and director who has produced and co-directed short films which have appeared at the Cannes Film Festival, as well as commercials and music videos. He is perhaps best known for playing the roles of Wikus van der Merwe in the Oscar-nominated science fiction film District 9 and H. M. Murdock in the 2010 adaptation of The A-Team.\n\nDescription above from the Wikipedia article Sharlto Copley, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Sharlto Copley	1973-11-27	No data.	2
985040	http://image.tmdb.org/t/p/w185/swC0Er51OhSRx8GHhIhqjfhXw68.jpg	Yolandi Visser (styled as Yo-Landi Vi$$er, born Anri du Toit) is a South African singer/rapper who co-fronts the rap group Die Antwoord.She was also part of notable music and art groups MaxNormal.TV and The Constructus Corporation.\n\nShe has a child named Sixteen Jones with frequent collaborator and fellow Die Antwoord frontman Watkin Tudor Jones.	Yolandi Visser	1984-01-01	No data.	1
122889	http://image.tmdb.org/t/p/w185/spQ5AlolOGxSZWwnNELrs4ezs9z.jpg	Dane William DeHaan is an American actor. He is known for playing Jesse on the HBO series In Treatment, and for his roles in the films Chronicle (2012), The Place Beyond the Pines (2013), Kill Your Darlings (2013), The Amazing Spider-Man 2 (2014) and Life (2015).	Dane DeHaan	1987-02-06	No data.	2
131519	http://image.tmdb.org/t/p/w185/piXUA7L0gWQNtnDPXtBe24C9FF6.jpg	Robyn Rihanna Fenty, known by her stage name Rihanna, is a Barbadian recording artist, actress, record producer, fashion designer, and entrepreneur. She has appeared in numerous music videos and motion pictures.	Rihanna	1988-02-20	No data.	1
1457238	http://image.tmdb.org/t/p/w185/viBGs19MG44f6rKrCQjIU1cCcnY.jpg	Sonoya Mizuno is a British-Japanese actress, model and ballerina.Wikipedia	Sonoya Mizuno	1988-07-01	No data.	1
17199	http://image.tmdb.org/t/p/w185/8jS7kzs01qMOHIltiDI2TQckmgs.jpg		Corey Johnson	1961-05-17	No data.	2
932425	No data.		Florence Hartigan	No data.	No data.	0
152355	http://image.tmdb.org/t/p/w185/aTPsYoKNIZFZKche4OGOPoyd639.jpg		Jeanine Jackson	No data.	No data.	1
1376581	http://image.tmdb.org/t/p/w185/9msj442m9JyNjCwxKpI9SAi6zjO.jpg	Chelsea Lopez is an actress.	Chelsea Lopez	No data.	No data.	1
1524501	http://image.tmdb.org/t/p/w185/t4llZLWJY9HQbcJA8MksVfM2q7F.jpg		Luke Spencer Roberts	No data.	No data.	0
1367129	http://image.tmdb.org/t/p/w185/2o9gT6QOJ94KFhqWvzQiUkU2H9X.jpg	Cyd Strittmatter is an actress.	Cyd Strittmatter	No data.	No data.	0
585	http://image.tmdb.org/t/p/w185/2x1S2VAUvZXZuDjZ4E9iEKINvNu.jpg	Rutger Oelsen Hauer is a Dutch film actor. He is well known for his roles in Flesh + Blood, Blind Fury, Blade Runner, The Hitcher, Nighthawks, Sin City, Ladyhawke, The Blood of Heroes and Batman Begins.\n\nHauer was born in Breukelen, Netherlands, to drama teachers Arend and Teunke, and grew up in Amsterdam. Since his parents were very occupied with their careers, he and his three sisters (one older, two younger) were raised mostly by nannies. At the age of 15, Hauer ran off to sea and spent a year scrubbing decks aboard a freighter. Returning home, he worked as an electrician and a carpenter for three years while attending acting classes at night school. He went on to join an experimental troupe, with which he remained for five years before he was cast in the lead role in the very successful 1969 television series Floris, a Dutch Ivanhoe-like medieval action drama. The role made him famous in his native country.\n\nHauer's career changed course when director Paul Verhoeven cast him as the lead in Turkish Delight (1973) (based on the Jan Wolkers book of the same name). The movie found box-office favour abroad as well as at home, and within two years, its star was invited to make his English-language debut in the British film The Wilby Conspiracy (1975). Set in South Africa and starring Michael Caine and Sidney Poitier, the film was an action melodrama with a focus on apartheid. Hauer's supporting role, however, was barely noticed in Hollywood, and he returned to Dutch films for several years. Hauer made his American debut in the Sylvester Stallone vehicle Nighthawks (1981), cast as a psychopathic and cold-blooded terrorist named "Wolfgar" (after a character in the Old English poem Beowulf). The following year, he appeared in arguably his most famous and acclaimed role as the eccentric, violent, yet sympathetic replicant Roy Batty in Ridley Scott's 1982 sci-fi thriller, Blade Runner.\n\nHauer is a dedicated environmentalist. He fought for the release of Greenpeace's co-founder, Paul Watson, who was convicted in 1994 for sinking a Norwegian whaling vessel. Hauer has also established an AIDS awareness foundation called the Rutger Hauer Starfish Foundation. He married his second wife, Ineke, in 1985 (they had been together since 1968); and he has one child, actress Aysha Hauer, who was born in 1966 and who made him a grandfather in 1988. In April 2007, he published his autobiography All Those Moments: Stories of Heroes, Villains, Replicants, and Blade Runners (co-written with Patrick Quinlan) where he discusses many of his movie roles. Proceeds of the book go to Hauer's Starfish Foundation.	Rutger Hauer	1944-01-23	No data.	2
588	http://image.tmdb.org/t/p/w185/dLf79xlsmE40rog0gryjxsZJzml.jpg	Michael Emmet Walsh (born March 22, 1935) is an American actor who has appeared in over 100 film and television productions. Description above from the Wikipedia article M. Emmet Walsh , licensed under CC-BY-SA, full list of contributors on Wikipedia	M. Emmet Walsh	1935-03-22	No data.	2
56365	http://image.tmdb.org/t/p/w185/nmHtkCyaiVCzwFQe4nPucsVRcBX.jpg	Charles Matthew "Charlie" Hunnam (born 10 April 1980) is an English actor. He is perhaps best known to UK audiences as Pete Dunham in Green Street Hooligans and as Nathan Maloney in the Channel 4 hit drama Queer as Folk and to US audiences as Jackson "Jax" Teller in the FX network series, Sons of Anarchy.	Charlie Hunnam	1980-04-10	No data.	2
1181313	http://image.tmdb.org/t/p/w185/7jk9Arih0ruvjdlfluAoEvkeVbM.jpg	Margaret Constance "Maisie" Williams is an English actress. She made her professional acting debut as Arya Stark in the HBO fantasy television series Game of Thrones, for which she won the EWwy Award for Best Supporting Actress in a Drama, the Portal Award for Best Supporting Actress – Television and Best Young Actor, and the Saturn Award for Best Performance by a Younger Actor.	Maisie Williams	1997-04-15	No data.	1
2954	http://image.tmdb.org/t/p/w185/wBh9rwK3aRr1hCrSRLxxPHKzGeU.jpg	Jeffrey Wright was born on December 7, 1965 in Washington, D.C. Jeff's father died when he was a year old, and he was raised by his mother, a lawyer, now retired from the U.S. Customs Department, and his aunt, a former nurse. Jeffrey is happily married to Carmen Ejogo, his co-star in Boycott, and they have a son.	Jeffrey Wright	1965-12-07	No data.	2
1782117	http://image.tmdb.org/t/p/w185/9mmeQlkL4QB37RsqqBqC3tBpwOM.jpg		Molly Gordon	1995-12-06	No data.	1
52792	http://image.tmdb.org/t/p/w185/qLDuXku39c4uwVf3h2GjFqwZqik.jpg	From Wikipedia, the free encyclopedia.\n\nMaya Khabira Rudolph (born July 27, 1972, height 5' 7" (1,70 m)) is an American actress and comedienne known for her comedic roles as a cast member on Saturday Night Live from 2000–2007 and for appearing in films such as Away We Go, Bridesmaids, Grown Ups and MacGruber. She is the daughter of the late R&B and soul singer Minnie Riperton.	Maya Rudolph	1972-07-27	No data.	1
61186	http://image.tmdb.org/t/p/w185/3NLYsEVZON71ceR01bb6gf13iRJ.jpg	Nicola Peltz is an American film and television actress, best known for playing Katara in M. Night Shyamalan's feature film "The Last Airbender", as well as Bradley Martin in the television series "Bates Motel".	Nicola Peltz	1995-01-09	No data.	1
62862	http://image.tmdb.org/t/p/w185/44DW4hNukuxNhGwyMScNNKhwflN.jpg	Daniel Richard "Danny" McBride (born December 29, 1976) is an American actor, comedian, screenwriter, and producer.\n\nDescription above from the Wikipedia article Danny McBride, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Danny McBride	1976-12-29	No data.	2
40462	http://image.tmdb.org/t/p/w185/9DoDVUkoXhT3O2R1RymPlOfUryl.jpg	Kristen Bell (born July 18, 1980) is an American actress and voice actress.\n\nIn 2001, she made her Broadway debut. After moving to Los Angeles, she landed various television guest appearances and small film parts, but she gained fame as the title character on Veronica Mars.\n\nBesides her tv and movie roles, she provided the voice and face of Lucy Stillman in the Assassin's Creed video game series.	Kristen Bell	1980-07-18	No data.	1
1188241	http://image.tmdb.org/t/p/w185/unQZPxiKxJt5TkOBRO6Retppc4i.jpg		Santino Fontana	No data.	No data.	2
18182	http://image.tmdb.org/t/p/w185/v9HmONHtTZM4Sl9QSNpxDYvuMCk.jpg	Olga Kurylenko, a Ukrainian-born actress and model who grew up in poverty sharing a Soviet flat with her aunt, uncle, grandparents and cousin, is now starring as Bond girl opposite Daniel Craig.  She was born Olga Konstantinovna Kurylenko on November 14, 1979, in Berdyansk, Ukraine, Soviet Union. Her mother, Marina Alyabysheva, divorced her father, Konstantin Kurylenko, soon after her birth. After the divorce, her mother struggled to survive as an art teacher. Young Olga Kurylenko was brought up by her mother and her grandmother, Raisa. During her youth, Olga had a humbling experience of living in poverty; she had no choice but to wear rags and had to darn the holes on her sweater. During the years in Ukraine she studied art, languages, did 7 years of musical school studying piano and went to a ballet studio until 13.\n\nAt age 13, Olga and her mother made a trip to Moscow. There she was scouted by an agent who approached her at a subway station and offered a job as a model. Initially, Olga's mother was suspicious, but eventually Olga made a good career choice and took training as a model in Moscow. By age 16, she was ready for the next step. She moved to Paris, learned French in six months, and was signed by the Madison agency. At age 18, Olga appeared on the cover of Glamour, then she graced magazine covers of Elle, Madame Figaro, Marie Claire, and Vogue, and also became the face of Lejaby lingerie, Bebe clothing, Clarins and Helena Rubinstein cosmetic companies.\n\nIn 1999, Olga married her friend, French photographer Cedric Van Mol and divorced him three and a half years later. One day Olga presented herself to an acting agency. Eventually, she swapped the catwalk for celluloid, and her acting career took off. In 2005 she made her film debut as Iris, a sensual beauty in L'annulaire (2005) by director Diane Bertrand.\n\nOlga's cinematic roles have been notably steamy, and her natural beauty and explicit nudity attracted the attention of the male audiences. She appeared opposite Elijah Wood in Paris, je t'aime (2006) and as Sofia in Le serpent (2006), then co-starred as Russian beauty Nika Boronina opposite Timothy Olyphant in Hitman (2007/I). She also appears as Mina Harud in the indy surveillance-thriller "Tyranny" (2008) and is billed as Camille, the Bond girl in Quantum of Solace (2008), a sequel to Casino Royale (2006).	Olga Kurylenko	1979-11-14	No data.	1
19153	http://image.tmdb.org/t/p/w185/q8DvYrkVZ6GajgU2V771Y0dOGWy.jpg	From Wikipedia, the free encyclopedia  Clifford Parker "Cliff" Robertson, III (born September 9, 1923) is an American actor with a film and television career that spans half of a century. Robertson won the 1968 Academy Award for Best Actor for his role in the movie Charly. His most recent film roles were as "Uncle Ben Parker" in the Spider-Man film series.  Description above from the Wikipedia article Cliff Robertson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Cliff Robertson	1923-09-09	2011-09-10	0
8767	http://image.tmdb.org/t/p/w185/koyFOeFdQyyFs26DNyDHWluBibB.jpg	From Wikipedia, the free encyclopedia.\n\nJames Patrick Caviezel, Jr. (born September 26, 1968) is an American film actor, sometimes credited as Jim Caviezel. He is known for the roles of Jesus Christ in the 2004 film The Passion of the Christ, Bobby Jones in Bobby Jones: A Stroke of Genius, Edmond Dantès in The Count of Monte Cristo, Catch in Angel Eyes and Private Witt in The Thin Red Line.\n\nDescription above from the Wikipedia article James Caviezel, licensed under CC-BY-SA, full list of contributors on Wikipedia​	Jim Caviezel	1968-09-26	No data.	2
21593	http://image.tmdb.org/t/p/w185/7CcISIHMvpzcUVo4NmxgA6f71RQ.jpg	Jason Biggs is an American film and television actor and comedian, best known for his portrayal of Jim Levenstein in the "American Pie" teen sex comedy franchise.	Jason Biggs	1978-05-12	No data.	2
73381	http://image.tmdb.org/t/p/w185/ts1OM0hD0n5E9CellezLQNO5ziq.jpg	Matthias Schoenaerts is a Belgian actor. In 2015, he was named Knight of the Order of Arts and Letters in France.	Matthias Schoenaerts	1977-12-08	No data.	2
87582	http://image.tmdb.org/t/p/w185/r5FFuehy9tnnvWmi0u9alFWP3X0.jpg		Wakana Yamazaki	1965-03-21	No data.	1
237076	http://image.tmdb.org/t/p/w185/8JJtnbgNcfOTTDcWR4w9TadbadQ.jpg		Rikiya Koyama	1963-12-18	No data.	2
21596	http://image.tmdb.org/t/p/w185/c7l0KsU2PAXXseofmSvsmIMQH1N.jpg	Shannon Elizabeth (born Shannon Elizabeth Fadal; September 7, 1973) is an American actress and former fashion model. Elizabeth is well known for her roles in comedy films such as Scary Movie, American Pie, and Jay And Silent Bob Strike Back. She as well is also known for her work in horror films such as Thirteen Ghosts, Cursed, and Night of the Demons. She became widely known as a sex symbol for her role in the 1999 comedy film American Pie.\n\nDescription above from the Wikipedia article  Shannon Elizabeth, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Shannon Elizabeth	1973-09-07	No data.	1
2714	http://image.tmdb.org/t/p/w185/wf4Pr9RxsHGd0O9fLPiB3Al8IVC.jpg	From Wikipedia, the free encyclopedia\n\nLance James Henriksen (born May 5, 1940) is an American actor and artist best known to film and television audiences for his roles in science fiction, action, and horror films such as The Terminator, the Alien film franchise, and on television shows such as Millennium. Henriksen is also a voice actor; he is noted for his deep, commanding voice.	Lance Henriksen	1940-05-05	No data.	2
9030	http://image.tmdb.org/t/p/w185/sW6XsnM2DkX6ujOXZ38aIQAMIWi.jpg	Thandiwe Nashita "Thandie" Newton (born 6 November 1972) is an English actress. She has appeared in a number of British and American films. Newton was born in London, the daughter of Nyasha, a Zimbabwean health-care worker and Nick Newton, a Cornish laboratory technician and artist. The name "Thandiwe" means "beloved". Raised in London and Penzance, Kernow/Cornwall, she went on to study social anthropology at Downing College, Cambridge, from 1992 to 1995.  Newton made her film debut in Flirting (1991). She played the role of Brad Pitt's maid Yvette in Interview With A Vampire (1994). She gained international recognition in the Merchant Ivory production of Jefferson in Paris as Sally Hemings, which led to her being cast in Jonathan Demme's Beloved (1998), in which she played the title character alongside co-stars Oprah Winfrey and Danny Glover. She played the female lead Nyah Hall in the film Mission: Impossible II. Between 2003 and 2005, Newton played Makemba "Kem" Likasu, the love interest, and later wife of Dr. John Carter on the American television series ER. She reprised the role once more for the series finale in 2009. In 2004 also appeared in The Chronicles of Riddick and Crash. Newton was honoured with a BAFTA award for Best Supporting Actress in 2006 for her role in Crash. She also played Chris Gardner's wife, Linda Gardner, in The Pursuit of Happyness. In addition to her film and television credits she played the title role in a 2006 radio pantomime version of Cinderella. In 2007, she starred alongside Eddie Murphy in the comedy Norbit as his love interest, and opposite Simon Pegg as his ex-girlfriend in the comedy Run Fat Boy Run. Newton next portrayed U.S. National Security Advisor-turned Secretary of State Condoleezza Rice, in W., Oliver Stone's 2008 film biography of President George W. Bush. In 2009 Newton next portrayed the United States President's First Daughter Laura Wilson in 2012. She can also be seen in Vanishing on 7th Street and For Colored Girls both released in 2010.  Newton married English writer/director/producer Ol Parker in 1998. The couple have two daughters: Ripley, born in 2000, and Nico, born in 2004. Her daughters were named after the character Ellen Ripley in the Alien films and the singer Nico.	Thandie Newton	1972-11-06	No data.	1
936	http://image.tmdb.org/t/p/w185/we10IusqRV1NHRtA68ftyck2N33.jpg	From Wikipedia, the free encyclopedia\n\nOliver Reed (13 February 1938 – 2 May 1999) was an English actor known for his burly screen presence. Reed exemplified his real-life macho image in "tough guy" roles. His films include The Trap, Oliver!, Women in Love, Hannibal Brooks, The Triple Echo, The Devils, The Three Musketeers, Tommy, Castaway, Lion of the Desert and Gladiator.\n\nDescription above from the Wikipedia article Oliver Reed, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Oliver Reed	1938-02-13	1999-05-02	2
31167	http://image.tmdb.org/t/p/w185/k7Mtxruey23xxZDBWmB7apEHKDy.jpg	Elizabeth Joanna Mitchell (née Robertson; born March 27, 1970), is an American actress who is known for her roles as Dr. Juliet Burke on ABC's TV series Lost  and as FBI agent Erica Evans on V. She has starred such films as The Santa Clause 2, The Santa Clause 3: The Escape Clause and Gia. Mitchell currently co-stars in Eric Kripke's television series Revolution, airing on NBC.\n\nHer stepfather, Joseph Day Mitchell, and mother, Josephine Marian Mitchell (née Jenkins), are lawyers based in Dallas. Mitchell and her mother moved to Dallas, Texas in 1970, where her mother married Joseph Mitchell in 1975. Mitchell graduated from Booker T. Washington High School for the Performing and Visual Arts, a public magnet school. She is the eldest of three sisters, the others being Kristina Helen "Kristie" Mitchell (b. 1977), and Katherine Day "Kate" Mitchell (b. 1981). In 1991, she graduated from Stephens College with a Bachelor of Fine Arts in acting, and also studying at the British American Drama Academy.Mitchell worked for six years in Dallas Theater Center and a year at Encore Theater.\n\nMitchell had a recurring role as psychiatrist Dr. Kim Legaspi, the first lesbian lover of Dr. Kerry Weaver (Laura Innes) during the 2000–01 season of TV series ER. She also played Angelina Jolie's hairdresser/lover in the movie Gia.\n\nIn March 2009, Entertainment Weekly reported that Mitchell had been cast in new ABC pilot for V, its remake of the classic science fiction television miniseries. Although ABC and Warner Bros. officials told the magazine she was only cast as a guest star, the announcement led to speculation and concern that Mitchell's character would be killed off at the end of Lost's fifth season, which ended on a cliffhanger that left the fate of her character unknown. Mitchell was later named the lead actress on V in an ABC press release and various sources reported that she would guest-star in Lost's sixth, final season.Mitchell's character was killed off in the sixth season premiere, but returned for the two-part series finale for which she received a nomination for the Primetime Emmy Award for Outstanding Guest Actress in a Drama Series.\n\nThe show V was picked up for a second season, which premiered on January 4, 2011 but was not picked up for a third season. Mitchell had a guest starring role on Law &amp; Order: Special Victims Unit in 2011 where she played June Frye. Mitchell starred in the film, Answers to Nothing in 2011, where she played Kate. On June 30, 2012, NBC announced that Elizabeth had joined the cast of the upcoming series Revolution as Rachel Matheson, replacing actress Andrea Roth whom Mitchell worked with for one episode on Lost. The series premiered on September 17, 2012.\n\nActress Elizabeth Banks who was born Elizabeth Irene Mitchell, changed her name to avoid confusion with Mitchell.\n\nMitchell married actor Chris Soldevilla in 2004 with whom she has a son named C.J., who was born in 2005.\n\nIn 2013 Mitchell and Soldevilla divorced due to irreconcilable differences.\n\nDescription above from the Wikipedia article Elizabeth Mitchell , licensed under CC-BY-SA,full list of contributors on Wikipedia.	Elizabeth Mitchell	1970-03-27	No data.	1
10361	http://image.tmdb.org/t/p/w185/k4WDNgYHOUgRaPQIsZUPUxl1lO6.jpg	From Wikipedia, the free encyclopedia.\n\nRaymond John Barry (born March 14, 1939) is an American film, television and stage actor.\n\nDescription above from the Wikipedia article Raymond J. Barry, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Raymond J. Barry	1939-03-14	No data.	2
23532	http://image.tmdb.org/t/p/w185/ttzLpjvcLkvXyyTBpjmZw11tjlr.jpg	Jason Kent Bateman (born January 14, 1969) is an American television and film actor. After appearing in several 1980s and 1990s sitcoms including Silver Spoons, It's Your Move, and The Hogan Family, Bateman came to prominence in the early 2000s for playing Michael Bluth on Arrested Development, for which he won a TV Land, a Golden Globe, and two Satellite Awards. He has since established himself in Hollywood by appearing in several films including The Kingdom, Juno, Hancock, Up in the Air, and Paul.\n\nDescription above from the Wikipedia article Jason Bateman, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jason Bateman	1969-01-14	No data.	2
141034	http://image.tmdb.org/t/p/w185/beXgMEBhkWS8BUsc69ojIOGiakV.jpg	Billy Magnussen is an actor.	Billy Magnussen	1985-04-20	No data.	2
1925	http://image.tmdb.org/t/p/w185/yTTyX7xziiMibm0nzcH5z6xxLLv.jpg	Vincent Cassel (born 23 November 1966) is a French actor. Cassel has starred in many films, and is well known for portraying villains or violent characters in many of the roles.	Vincent Cassel	1966-11-23	No data.	2
15048	http://image.tmdb.org/t/p/w185/wUqGufwQwXn3Y6rFdtZ80HqLDPm.jpg	From Wikipedia, the free encyclopedia.\n\nRobby Benson (born January 21, 1956) is an American film and television actor, television director, educator and singer.\n\nDescription above from the Wikipedia article Robby Benson, licensed under CC-BY-SA, full list of contributors on Wikipedia.​	Robby Benson	1956-01-21	No data.	2
70785	http://image.tmdb.org/t/p/w185/kkO89nhLKvvywRAqQmlZSfyaACg.jpg	From Wikipedia, the free encyclopedia\n\nAnita Briem (born 29 May 1982) is an Icelandic actress. She is known for her role as Jane Seymour on The Tudors and her role as Hannah in Journey to the Center of the Earth.\n\nDescription above from the Wikipedia article Anita Briem, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Anita Briem	1982-05-29	No data.	1
62856	http://image.tmdb.org/t/p/w185/pAw8sFWinnfxKe906nSYDw6UsUr.jpg	From Wikipedia, the free encyclopedia\n\nSeth Adam Meyers (born December 28, 1973) is an American actor and comedian. He currently serves as head writer for Saturday Night Live and anchors its news parody segment Weekend Update.\n\nDescription above from the Wikipedia article Seth Meyers, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Seth Meyers	1973-12-28	No data.	2
70786	http://image.tmdb.org/t/p/w185/56CXTwuGTuARjQmxavovjHhoXFx.jpg		Jean Michel Paré	No data.	No data.	0
3490	http://image.tmdb.org/t/p/w185/zvMslH1C8xmEBpGgDsdzL797Rv.jpg	Adrien Nicholas Brody was born in Woodhaven, Queens, New York, the only child of retired history professor Elliot Brody and Hungarian-born photographer Sylvia Plachy. He accompanied his mother on assignments for the Village Voice, and credits her with making him feel comfortable in front of the camera. Adrien attended the American Academy of Dramatic Arts and LaGuardia High School for the Performing Arts in New York.	Adrien Brody	1973-04-14	No data.	2
56857	http://image.tmdb.org/t/p/w185/jVlwcMxC0mtWttvvSbovybpLrBX.jpg	Peter Facinelli (born November 26, 1973) is an Italian-American actor, known as the star of Fastlane. He also stars as Carlisle Cullen in the Twilight movies and as Mike Dexter in the film Can't Hardly Wait.	Peter Facinelli	1973-11-26	No data.	2
1005	http://image.tmdb.org/t/p/w185/f2iffQFEqefoFvg4G3yC9n8WDzt.jpg	Peter Appel was born on October 19, 1959 in New York City, New York, USA. He is an actor, known for Léon: The Professional (1994), Spider-Man (2002) and Sleepers (1996).	Peter Appel	1959-10-19	No data.	2
11288	http://image.tmdb.org/t/p/w185/vk9D76LgHd1c8ZZPBBC4DAi1D6q.jpg	Robert Douglas Thomas Pattinson (born 13 May 1986) is an English actor and grew up in Barnes, southwest London, UK. His mother worked as a booker at a modeling agency and his father was a car dealer importing vintage cars. He has two older sisters, is an musician and singer and started learning the guitar and piano at the age of four. When he started his acting career he used to  perform solo acoustic guitar gigs in pubs around London where he sung his own written songs. He recorded two titles that were being used in Twilight (2008).\n\nHe never thought about the idea of becoming an actor and a teacher in school even told him not to sign up for the drama course because she thought he wasn't cut out to do the creative subjects. But when Robert was 15, he started acting in amateur plays at the local drama club after his father convinced him to attend because he was quite shy. After starring in a view plays, a talent agent was in the audience in an adaption of Tess of the d'Urbervilles, discovered him and he began looking for professional roles.\n\nHis first screen role was opposite Reese Witherspoon in Vanity Fair (2004), but he'd been cut out of the final film and didn't know about it until he attended the premiere. The casting director felt so guilty for not telling him, that she got him the audition for Harry Potter and the Goblet of Fire (2005). He was lucky and succeeded in gaining the role of Cedric Diggory which brought him to wider attention at the age of 18 and he continued to star in mostly smaller british TV productions.\n\nAt the age of 22, the role of vampire Edward Cullen in the film adaptations of the Twilight novels written by Stephenie Meyer brought him to unexpected worldwide stardom and established him among the highest paid and most bankable actors in Hollywood. The five films between 2008 and 2012 grossed over $3.3 billion in worldwide receipts. Between the Twilight Saga films, he also starred in Remember Me (2010), Water for Elephants (2011) and Bel Ami (2012).\n\nHe started to distance himself from vampire Edward Cullen with the role of the detached billionaire Eric Packer in Cosmopolis (2012) from cult auteur director David Cronenberg, which was Pattinsons first film in competition at the Cannes Film Festival with many to follow. With Pattinson being a big cinephile,  he since then starred in mostly independent films from gifted auteur directors, such as The Rover (2014), Maps to the Stars (2014), Life (2015), Queen of the Desert (2015) and The Childhood of a Leader (2015).  His unrecognizable role as an explorer in the amazon jungle in The Lost City of Z (2016) from director James Gray brought him much critical acclaim. And his transformation to a sleazy, manic conman in the gritty crime thriller Good Time (2017) was a major step for his transition into a character actor with incredible range, with critics praising his performance a revelation and comparisations being made to Al Pacino.	Robert Pattinson	1986-05-13	No data.	2
7674	http://image.tmdb.org/t/p/w185/lZyg3u3i2OrJJMKGhHDglln5GUm.jpg	From Wikipedia, the free encyclopedia.\n\nAlexander Borisovich Godunov (November 28, 1949 – May 18, 1995) was a Russian-American ballet dancer and film actor, whose defection caused a diplomatic incident between the USA and the USSR.\n\nDescription above from the Wikipedia article Alexander Godunov, licensed under CC-BY-SA, full list of contributors on Wikipedia	Alexander Godunov	1949-11-28	1995-05-18	2
27105	http://image.tmdb.org/t/p/w185/euQxeETzWnPUqu1vm4hGtFa7zPd.jpg	Edward Paul "Ed" Helms (born January 24, 1974) is an American actor and comedian known for his work as a correspondent on The Daily Show with Jon Stewart, as Andy Bernard on the U.S. version of the sitcom/mockumentary The Office and for his role as Dr. Stu Price in The Hangover films.\n\nDescription above from the Wikipedia article Ed Helms, licensed under CC-BY-SA, full list of contributors on Wikipedia.​	Ed Helms	1974-01-24	No data.	2
500427	http://image.tmdb.org/t/p/w185/diJUQc3FWB0ol1MCBZQJsMZpMoK.jpg	Hannibal Buress was born on February 4, 1983 in Chicago, Illinois, USA. He is an actor and writer, known for The Eric Andre Show (2012), The Secret Life of Pets (2016) and Neighbors (2014).	Hannibal Buress	1983-02-04	No data.	2
79082	http://image.tmdb.org/t/p/w185/xqeb4ha9TRqWVKuAtqQs3wT1tC2.jpg	Randall Park (born March 23, 1974) is an American actor, comedian, writer, and director.  Park was born and raised in Los Angeles, California, to South Korean parents. Park graduated from Hamilton High School's Humanities Magnet Program. Park attended UCLA and finished with an undergraduate degree in English and creative writing and a master’s degree in Asian–American studies.  While attending UCLA, Park co-founded the LCC Asian American Theater Group.	Randall Park	1974-03-23	No data.	2
583051	http://image.tmdb.org/t/p/w185/tW8PfqAooyCS4lshUhNzNz0tfAo.jpg		Diana Bang	No data.	No data.	1
5713	http://image.tmdb.org/t/p/w185/iFT7oH4LdkByqwPgAs2XfNVJCXO.jpg	From Wikipedia, the free encyclopedia.\n\nJohn Christopher "Chris" Wedge (born March 20, 1957) is an American film director, best known for the films Ice Age and Robots.\n\nDescription above from the Wikipedia article Chris Wedge, licensed under CC-BY-SA, full list of contributors on Wikipedia.​	Chris Wedge	1957-03-20	No data.	2
72754	http://image.tmdb.org/t/p/w185/21JKhZc6bTAoHcwSjQhZcdhhx5d.jpg	From Wikipedia, the free encyclopedia.\n\nElissa Knight is an American employee at Pixar Animation Studios and voice actress. As a voice actress, her first major role was in the 2008 film WALL-E as a robot named EVE.\n\nDescription above from the Wikipedia article Elissa Knight, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Elissa Knight	1975-04-15	No data.	0
60074	http://image.tmdb.org/t/p/w185/cBs7u7rBTvDFp5MFCnvrPeF7SI2.jpg	Jeffrey "Jeff" Garlin (born June 5, 1962) is an American stand-up comedian, actor, producer, voice artist, director, writer and author, best known for his role as Jeff Greene on the HBO show Curb Your Enthusiasm.	Jeff Garlin	1962-06-05	No data.	2
5528	http://image.tmdb.org/t/p/w185/wPahfIdOR6ohIgmgVrCb3RPApAU.jpg	William Peter Moseley was born on April 27, 1987, in Gloucester, England, to Peter Moseley and Julie Fleming. He is the eldest of three children with a younger sister named Daisy and and younger brother named Ben. His father's name is also William's middle name.	William Moseley	1987-04-27	No data.	2
21125	http://image.tmdb.org/t/p/w185/xpLufPiiFgoCEdIMqD4RY79PKGb.jpg	From Wikipedia, the free encyclopedia.\n\nRichard John Kind (born November 22, 1956) is an American actor known for his roles in the sitcoms Mad About You (as Dr. Mark Devanow) and Spin City (as Paul Thomas Lassiter).	Richard Kind	1956-11-22	No data.	2
1423519	http://image.tmdb.org/t/p/w185/hU2eFSXZgZk2LoCKbyatixzgxIM.jpg		Oona Laurence	2002-08-01	No data.	1
74242	http://image.tmdb.org/t/p/w185/xlLI0hrutcyKOIHs4b47iSh65NU.jpg	Franklin Shea Whigham, Jr. (born January 5, 1969), best known as Shea Whigham, is an American actor currently starring as Elias Thompson on the HBO dramatic series Boardwalk Empire.\n\nDescription above from the Wikipedia article Shea Whigham, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Shea Whigham	1969-01-05	No data.	2
32895	http://image.tmdb.org/t/p/w185/bve9CJ1xHvyyHSH4LsasG0eEQaW.jpg	From Wikipedia, the free encyclopedia.\n\nKevin James (born April 26, 1965) is an American playwright, actor, writer, and producer. He is widely known for playing Doug Heffernan on the CBS sitcom The King of Queens. He is also known for his lead roles in the comedy films I Now Pronounce You Chuck and Larry, Paul Blart: Mall Cop, Grown Ups, The Dilemma, and Zookeeper. He hosted the Nickelodeon Kids' Choice Awards on March 27, 2010.	Kevin James	1965-04-26	No data.	2
20982	http://image.tmdb.org/t/p/w185/g36Ydyv0YbwXLOQ2KzGjFfkCDo1.jpg	Marton Csokas (born 30 June 1966) is a New Zealand film and television actor.\n\nDescription above from the Wikipedia article Marton Csokas, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Marton Csokas	1966-06-30	No data.	2
35029	http://image.tmdb.org/t/p/w185/chPekukMF5SNnW6b22NbYPqAStr.jpg	David Harbour is an American actor.  Active since 1999, Harbour is perhaps best known for his role as Chief of Police Jim Hopper on the Netflix series Stranger Things (2016-present).	David Harbour	1974-04-10	No data.	2
58754	http://image.tmdb.org/t/p/w185/1N5SHCEwNElIGVEAmEhanDj2Xqf.jpg	Haley Bennett  (born Haley Loraine Keeling; January 7, 1988) is an American singer and actress.  \n\nDescription above from the Wikipedia article Haley Bennett, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Haley Bennett	1988-01-07	No data.	1
7906	http://image.tmdb.org/t/p/w185/bNB0BTnPAdAAHuCQSprMk4smBMD.jpg	​From Wikipedia, the free encyclopedia\n\nJennifer Tilly (born September 16, 1958) is an American actress and poker player. She is an Academy Award nominee, and a World Series of Poker Ladies' Event bracelet winner. She is sister to Academy-Award-nominated actress Meg Tilly.\n\nDescription above from the Wikipedia article Jennifer Tilly, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jennifer Tilly	1958-09-16	No data.	1
85730	http://image.tmdb.org/t/p/w185/so2Xw9lVoyTo9HZr7NNpwyWm0M.jpg	​From Wikipedia, the free encyclopedia.  \n\nSuniel Shetty ( born 11 August 1961) is an Indian film actor, producer, hotelier and liquor and fashion boutique owner. He is mainly active in Bollywood. He was born in Mulki, near Mangalore.\n\nDescription above from the Wikipedia article Suniel Shetty licensed under CC-BY-SA, full list of contributors on Wikipedia.	Sunil Shetty	1961-08-11	No data.	2
35763	http://image.tmdb.org/t/p/w185/yyYWMvzKRFCAdRnZGW3AWie5pQH.jpg		Sanjay Kapoor	1965-10-17	No data.	2
86013	http://image.tmdb.org/t/p/w185/hO00RVx1DQmVk2hlOEYZj6A3Lgf.jpg		Arbaaz Khan	1967-08-04	No data.	2
81983	http://image.tmdb.org/t/p/w185/ekxn8cbdXi6c2URckt0MKHKgk9U.jpg		Chunky Pandey	1962-09-26	No data.	0
1139349	http://image.tmdb.org/t/p/w185/ApBsNEF9JnXDJ27XLaWnRXdVCQz.jpg		Julian Dennison	2002-10-26	No data.	2
1034681	http://image.tmdb.org/t/p/w185/rN0Mpup6nBTW5AIHl2jvLbsGMF9.jpg	Tye Kayle Sheridan (born November 11, 1996) is an American actor. Sheridan made his feature film debut in Terrence Malick's experimental drama film The Tree of Life (2011) and had his first leading role in the coming-of-age film Mud (2012). He co-starred in the drama Joe (2013). In 2015, he starred in the drama The Stanford Prison Experiment. Sheridan will play the role of the young Cyclops in the 2016 film X-Men: Apocalypse.	Tye Sheridan	1996-11-11	No data.	2
1059572	http://image.tmdb.org/t/p/w185/iPimiB0JNvoBIqSSnxOFymOX4RN.jpg	Lena Waithe is an American actress, producer, and screenwriter, best known for her role as Denise on the 2015 Netflix series Master of None and as the creator of the Showtime original series The Chi.	Lena Waithe	1984-05-17	No data.	1
18324	http://image.tmdb.org/t/p/w185/tcRHqtdi4wM8hlZ3MjPDWgePp7L.jpg	Steve Zahn is an American comedian and film and stage actor.	Steve Zahn	1967-11-13	No data.	2
59360	No data.		Spencer Fox	1993-05-10	No data.	0
33192	http://image.tmdb.org/t/p/w185/i8oL6vQCM1zFeVQEa9zsZfa3i2t.jpg	​From Wikipedia, the free encyclopedia.  \n\nJoel Edgerton (born 23 June 1974) is an Australian film and television actor.\n\nDescription above from the Wikipedia article Joel Edgerton, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Joel Edgerton	1974-06-23	No data.	2
56322	http://image.tmdb.org/t/p/w185/uMGW762oDZbR8jhFJRImJ1ls5cd.jpg	Amy Meredith Poehler (born September 16, 1971 height 5' 2" (1,57 m)) is an American comedian, actress and voice actress. She was a cast member on the NBC television entertainment show Saturday Night Live from 2001 to 2008. In 2004, she starred in the film Mean Girls with Tina Fey, with whom she worked again in Baby Mama in 2008. She is currently the lead of NBC's comedy Parks and Recreation.\n\nShe has been nominated twice for the Primetime Emmy Award for Outstanding Supporting Actress in a Comedy Series for her performance on Saturday Night Live, and once for the Outstanding Lead Actress in a Comedy Series for her performance in Parks &amp; Recreation.	Amy Poehler	1971-09-16	No data.	1
1498026	http://image.tmdb.org/t/p/w185/uQLqPFVCMseWw0fQOmpHpzrg5yZ.jpg		Nesta Cooper	1993-12-11	No data.	1
66580	http://image.tmdb.org/t/p/w185/jp9FubdwhkovfMi2xBN1uUUiGGz.jpg	From Wikipedia, the free encyclopedia.\n\nScott Adsit (born November 26, 1965, height 6' 2" (1,88 m)) is an American actor, writer and improvisational comedian. He is currently known for co-starring as Pete Hornberger in the hit NBC comedy 30 Rock and for his work in the Adult Swim stop-motion animation programs Moral Orel and Mary Shelley's Frankenhole.\n\nDescription above from the Wikipedia article Scott Adsit, licensed under CC-BY-SA, full list of contributors on Wikipedia. ​	Scott Adsit	1965-11-26	No data.	2
515510	http://image.tmdb.org/t/p/w185/3Hdip1zNYrea3V7uzJQYxTps5Ne.jpg	​\n\nRyan Potter is a U.S. actor, director, martial artist, photographer and philanthropist. He was born in Portland, Oregon but spent much of his childhood in Tokyo. At the age of seven, he moved back to the United States.  Ryan started acting at the age of fifteen, after seeing a leaflet looking for candidates for a martial arts-themed Nickelodeon series, Supah Ninjas (2011). He was cast as Mike Fukanaga on the show, which ran from 2011 to 2013. He also played Fred's Best Friend on the series Fred: The Show (2012).  In 2013, Ryan appeared in the short film Save the Date (2013). In 2014, he starred in both the independent film Senior Project (2014) and Disney's computer-animated superhero blockbuster Big Hero 6 (2014). In the latter film, he voiced the lead character, Hiro Hamada, a child prodigy who teams with a large robot. Ryan voiced Hiro again the video-game Disney Infinity: Marvel Super Heroes (2014).  Ryan will next play Eric Barret in the film Underdog Kids (2015).  In 2011, Ryan founded Toy Box of Hope, a charity for children living in homeless shelters and transitive living facilities.	Ryan Potter	1995-09-12	No data.	2
78324	http://image.tmdb.org/t/p/w185/99vO72TfiweEMShZUL9lE7oOhYw.jpg	​From Wikipedia, the free encyclopedia\n\nJamie Jilynn Chung (born April 10, 1983) is an American actress known to reality television audiences as a cast member on the MTV reality television series, The Real World: San Diego and its spin-off show, Real World/Road Rules Challenge: The Inferno II, and for her appearances in TV and films, such as I Now Pronounce You Chuck and Larry, Sorority Row, and Sucker Punch.	Jamie Chung	1983-04-10	No data.	1
2440	http://image.tmdb.org/t/p/w185/imAkeJi8C8ZHpPPB8RP92AD3kYW.jpg	William Francis "Bill" Nighy (pronounced /ˈnaɪ/ ny; born 12 December 1949) is a British actor and comedian.\n\nHe worked in theatre and television before his first cinema role in 1981, and made his name in television with The Men's Room in 1991, in which he played the womanizer Prof. Mark Carleton, whose extra-marital affairs kept him "vital". He became known around the world in 2003 as Billy Mack, the aging pop star in Love Actually, and in the same year played James Mortmain, the eccentric husband struggling to keep his family afloat in a decaying English castle, in I Capture the Castle. He is also known for his roles in the films Underworld, Shaun of the Dead, The Hitchhiker's Guide to the Galaxy, Pirates of the Caribbean, Hot Fuzz, Valkyrie, G-Force and provided voice talents in the films The Magic Roundabout, Flushed Away and Rango. He recently played Rufus Scrimgeour in Harry Potter and the Deathly Hallows. Bill Nighy is a Patron and supporter of the artistic collective The Factory Theatre Company alongside other actors such as Mark Rylance, Ewan McGregor and Richard Wilson. Other notable members include founder Alex Hassell, Catherine Bailey and Alan Morrissey.\n\nDescription above from the Wikipedia article Bill Nighy, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Bill Nighy	1949-12-12	No data.	2
21007	http://image.tmdb.org/t/p/w185/cymlWttB83MsAGR2EkTgANtjeRH.jpg	Jonah Hill Feldstein (born December 20, 1983) is an American actor, producer, screenwriter, and comedian. Hill is known for his comedic roles in films such as Accepted (2006), Grandma's Boy (2006), Superbad (2007), Knocked Up (2007), Forgetting Sarah Marshall (2008), Get Him to the Greek (2010), 21 Jump Street (2012), This Is the End (2013), 22 Jump Street (2014), and War Dogs (2016), as well as his performances in Moneyball (2011) and The Wolf of Wall Street (2013), for which he received Academy Award nominations for Best Supporting Actor.\n\nHill ranked 28th on Forbes magazine's ranking of world's highest paid actors from June 2014 to June 2015, bringing in $16 million. As a screenwriter, he contributed to the stories of 21 Jump Street, 22 Jump Street, Sausage Party and Why Him? (2016). Hill will make his directorial debut from a screenplay he wrote, titled Mid '90s.\n\nDescription above from the Wikipedia, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jonah Hill	1983-12-20	No data.	2
3026	http://image.tmdb.org/t/p/w185/2zw9Iq9uo4vZiTQNQWdNFwbA1TA.jpg	Robert Norman "Rob" Reiner (born March 6, 1947) is an American actor, director, producer, writer, and political activist.\n\nAs an actor, Reiner first came to national prominence as Archie and Edith Bunker's (played by Carroll O'Connor and Jean Stapleton, respectively) son-in-law, Michael "Meathead" Stivic, on All in the Family. That role earned him two Emmy Awards during the 1970s. As a director, Reiner was recognized by the Directors Guild of America (DGA) with nominations for Stand by Me, When Harry Met Sally..., and A Few Good Men. He was trained at the UCLA Film School.\n\nDescription above from the Wikipedia article Rob Reiner, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rob Reiner	1947-03-06	No data.	2
36592	http://image.tmdb.org/t/p/w185/zadNX6qwKsEold3bFywvkwlMP0q.jpg	Saoirse Una Ronan (born 12 April 1994) is an Irish and American actress. She is a three-time Academy Award nominee; receiving a Best Supporting Actress nomination for Atonement (2007), and Best Actress nominations for Brooklyn (2015) and Lady Bird (2017). She also received four BAFTA Award nominations, three Golden Globe nominations including one win for Best Performance by an Actress in a Motion Picture – Musical or Comedy for Lady Bird (2017), four Screen Actors Guild nominations and three Satellite Awards.\n\nShe had her feature film debut in the romantic comedy I Could Never Be Your Woman (2007). Other roles include City of Ember (2008), The Lovely Bones (2009), Hanna (2011), The Way Back (2010), Byzantium (2012), The Host (2013), How I Live Now (2013), and The Grand Budapest Hotel (2014).\n\nIn January 2016, Ronan was included in Forbes '30 Under 30' in both the European and USA editions. In March 2016, Ronan made her Broadway debut in a revival of the The Crucible, in the role of Abigail Williams, for which she received much acclaim. She appeared on the cover of Time magazine in June 2016, one of ten young leaders selected as 'Next Generation Leaders'.	Saoirse Ronan	1994-04-12	No data.	1
12133	http://image.tmdb.org/t/p/w185/oHhTbuv9eNJV4YlgizhCkZsPV0N.jpg	Laurie Metcalf is an American stage, film and television actress, best known for playing Jackie Harris, the title character's sister on the television sitcom "Roseanne", as well as for voicing Ms. Davis in the "Toy Story" animation movie franchise. She's a three-time Emmy award winner and was nominated for three Golden Globe awards, a Tony Award, and a Screen Actors Guild Award.	Laurie Metcalf	1955-06-16	No data.	1
77996	http://image.tmdb.org/t/p/w185/oYtmA3RB4wNhpISRDF4UXLnDQMC.jpg	Asa Butterfield (born 1 April 1997) is an English actor. He is best known for his leading roles in the Holocaust film The Boy in the Striped Pyjamas, Martin Scorsese's Hugo, and the film adaptation of Ender's Game.	Asa Butterfield	1997-04-01	No data.	2
22226	http://image.tmdb.org/t/p/w185/8eTtJ7XVXY0BnEeUaSiTAraTIXd.jpg	Paul Stephen Rudd (born April 6, 1969) is an American actor, comedian, writer, and producer. He studied theatre at the University of Kansas and the British American Drama Academy, before making his acting debut in 1992 with NBC's drama series Sisters. He is known for his starring roles in the film The Cider House Rules (1999), Halloween: The Curse of Michael Myers (1995), and the comedy films Clueless (1995), Wet Hot American Summer (2001), Anchorman: The Legend of Ron Burgundy (2004), The 40-Year-Old Virgin (2005), Knocked Up (2007), Role Models (2008), I Love You, Man (2009), Dinner for Schmucks (2010), Our Idiot Brother (2011), Wanderlust (2012), This Is 40 (2012), and Anchorman 2: The Legend Continues (2013), and for playing the superhero Ant-Man in Marvel Studios' Ant-Man (2015) and Captain America: Civil War (2016).\n\nIn addition to his film career, Rudd has appeared in numerous television shows, including the NBC sitcom Friends as Mike Hannigan, along with guest roles on Tim and Eric Awesome Show, Great Job! and Parks and Recreation (as businessman Bobby Newport), and hosting Saturday Night Live. Rudd received a star on the Hollywood Walk of Fame on July 1, 2015.\n\nDescription above from the Wikipedia article Paul Rudd licensed under CC-BY-SA, full list of contributors on Wikipedia.	Paul Rudd	1969-04-06	No data.	2
4757	http://image.tmdb.org/t/p/w185/jGTaV5htTRo2T0aeM2eoHZcpLG4.jpg	Rupert James Hector Everett (born 29 May 1959) is an English actor. He first came to public attention in 1981, when he was cast in Julian Mitchell's play and subsequent film "Another Country" as an openly gay student at an English public school, set in the 1930s. He has since appeared in many other films including "My Best Friend's Wedding", "An Ideal Husband", "The Next Best Thing" and the "Shrek" sequels.\n\nDescription above from the Wikipedia article Rupert Everett, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rupert Everett	1959-05-29	No data.	2
59117	http://image.tmdb.org/t/p/w185/5Wx3B06uTy58kLGdPVuuPUCVKxU.jpg	From Wikipedia, the free encyclopedia.\n\nAngus Murray Lincoln Sampson is an Australian actor, voice-over artist, director and writer based in Los Angeles and Melbourne.\n\nDescription above from the Wikipedia article Angus Sampson, licensed under CC-BY-SA, full list of contributors on Wikipedia. ​	Angus Sampson	No data.	No data.	2
40039	http://image.tmdb.org/t/p/w185/x9ZQibxASPwVWGeQn4Y5dcU2ZJG.jpg	From Wikipedia, the free encyclopedia.\n\nJoshua Regnall Stewart (born February 6, 1977) is an American actor best known for his role as Holt McLaren in the FX TV series Dirt. He was also cast as Brendan Finney in the final season of the NBC TV series Third Watch\n\nDescription above from the Wikipedia article Josh Stewart, licensed under CC-BY-SA, full list of contributors on Wikipedia	Josh Stewart	1977-02-06	No data.	2
516	http://image.tmdb.org/t/p/w185/q8pCSQzGLrhgtVXBKzMnwfoeBlH.jpg	Annette Francine Bening (born May 29, 1958) is an American actress. Bening is a four-time Oscar nominee for her roles in The Grifters, American Beauty, Being Julia and The Kids Are All Right, winning Golden Globe Awards for the latter two films. Bening is married to actor Warren Beatty, with whom she has four children.	Annette Bening	1958-05-29	No data.	1
2155	http://image.tmdb.org/t/p/w185/kp1k5NpbSDDIz2BPpbRXIab91IR.jpg	Thora Birch (born March 11, 1982) is an American actress. She was a child actor in the 1990s, starring in movies such as All I Want for Christmas (1991), Patriot Games (1992), Hocus Pocus (1993), Now and Then (1995), and Alaska (1996). She came to prominence in 1999 after earning worldwide attention and praise for her performance in American Beauty. She then starred in the well received film Ghost World (2001), which earned her a Golden Globe nomination.\n\nDescription above from the Wikipedia article Thora Birch, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Thora Birch	1982-03-11	No data.	1
8210	http://image.tmdb.org/t/p/w185/fbHHalL9CS52zvJp015G31vwX23.jpg	Wesley Cook "Wes" Bentley (born September 4, 1978) is an American film actor known for his roles as Ricky Fitts in American Beauty (1999) and Seneca Crane in The Hunger Games (2012). Bentley was one of four subjects in the documentary My Big Break (2009), which covered his fame after American Beauty and struggles with substance abuse. Rebuilding his career, he starred in the premier of Venus in Fur by David Ives in the off-Broadway production in 2010, whose run was extended.\n\nDescription above from the Wikipedia article Wes Bentley, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Wes Bentley	1978-09-04	No data.	2
8211	http://image.tmdb.org/t/p/w185/x9sNSSb6kzwbjud4YSonRvZhRKk.jpg	Mena Alexandra Suvari (born February 13, 1979) is an American actress, fashion designer, and model. Shortly after beginning her career as a model, she soon transitioned into acting after appearing in guest roles on 1990's television shows such as Boy Meets World and High Incident. She made her film debut in the 1997 drama film Nowhere. She made the transition to major roles with her performances in American Beauty, for which she was nominated for a BAFTA Award, and American Pie, both of which earned her wider attention. Since then, she appeared in Loser (2000), with her American Pie co-star, Jason Biggs, and later played the main character in the comedy film Sugar &amp; Spice (2001). She had appearances in the 2002 independent drama Spun, and the 2004 thriller feature Trauma. She also appeared in the HBO's drama series Six Feet Under in 2004, she received a nomination as a member of the Outstanding Cast at the 2005 Screen Actors Guild Awards. In 2008, she was cast in a string of films, including Day of the Dead, The Mysteries of Pittsburgh, and the film adaptation of The Garden of Eden.\n\nSuvari is a model for Lancôme cosmetics and print ads for Lancôme Paris Adaptîve, and has been featured in several fashion blogs and magazines such as Vogue. She is a long-time supporter and activist for the esteemed African relief organization, the African Medical and Research Foundation. She is also active in female empowerment issues, and is involved with charities whose cause is breast cancer, and "End Violence Against Women" campaign.\n\nDescription above from the Wikipedia article Mena Suvari, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Mena Suvari	1979-02-13	No data.	1
11155	http://image.tmdb.org/t/p/w185/xAES23Ll0JT0lJADA1SIdTAN0bf.jpg	Thomas Jane (born Thomas Elliott III; February 22, 1969) is an American actor, known for his roles in the 1999 film Deep Blue Sea, the 2001 TV movie 61*, the 2004 film The Punisher and the 2007 Stephen King adaptation The Mist. He currently stars in the HBO comedy-drama series Hung.\n\nDescription above from the Wikipedia article Thomas Jane, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Thomas Jane	1969-02-22	No data.	2
23821	http://image.tmdb.org/t/p/w185/aC5PYY3c9iFJxUbhcxv2IRfZUPK.jpg	​From Wikipedia, the free encyclopedia.\n\nBryan E. Greenberg (born May 24, 1978) is an American actor and musician, known for his starring role as Ben Epstein in the HBO original series How to Make It in America as well as a recurring role as Jake Jagielski in the The WB TV show One Tree Hill and as Nick Garrett on the short-lived ABC drama October Road. His film work includes The Good Guy, Bride Wars, Nobel Son and The Perfect Score.\n\nDescription above from the Wikipedia article Bryan Greenberg, licensed under CC-BY-SA, full list of contributors on Wikipedia	Bryan Greenberg	1978-05-24	No data.	2
64880	http://image.tmdb.org/t/p/w185/abLCstRJLpuzG39KAiG7hD72zcn.jpg	Choi Min-Sik was born on January 22, 1962 and first achieved fame on the stage and on television. He started appearing in films in 1992 and soon began making his mark in such notable works as Ji-Wun Kim’s The Quiet Family (1998). Commercial success came his way in 1999, when he played a North Korean spy in Kang Je-Gyu’s blistering action film, Shiri, a huge box office smash. In 2002 he received international acclaim by starring in Chihwaseon, a film by Korea’s most revered director, Kwon-Taek Im. As the nineteenth-century painter Seung-Up Jang, Choi created a vivid portrait of a proudly vulgar artist who both upset aristocratic artistic norms and altered the shape of Korean painting. Choi Min-Sik has said that he created the character, OH Dae-su, in Oldboy in a very different manner than Chihwaseon. Choi said he felt a responsibility to bring back to life the painter JANG Seung-Up in Chihwaseon, while in Oldboy OH Dae-su is the absolute product of his imagination. At various points during 2006 Choi (and several other Korean filmmakers, though separately from Choi) demonstrated in Seoul and at the Cannes Film Festival against the Korean decision to reduce the Film Quota from 146 to 73 days. While not successful (the reduced quota stands), the market share of Korean films remains at the top of the box office, with 7 of the top 10 films this year remaining homegrown (the same rate as in 2005).   - From asianmediawiki.com	Choi Min-sik	1962-04-27	No data.	2
1640	http://image.tmdb.org/t/p/w185/zSCU2agleLtJEvzj98jEesVhBxa.jpg	From Wikipedia, the free encyclopedia\n\nStellan John Skarsgård (born 13 June 1951) is a Swedish actor, known internationally for his film roles in Angels &amp; Demons, Breaking the Waves, The Hunt for Red October, Ronin, Good Will Hunting, Pirates of the Caribbean: Dead Man's Chest, Pirates of the Caribbean: At World's End, Dominion: Prequel to the Exorcist, Mamma Mia! and Thor.\n\nDescription above from the Wikipedia article Stellan Skarsgård, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Stellan Skarsgård	1951-06-13	No data.	2
1190668	http://image.tmdb.org/t/p/w185/gz5kyVsUzOratQmGHdDg3AnxP9h.jpg	Timothée Hal Chalamet (born December 27, 1995) is an American actor. Chalamet began his acting career in short films before appearing in the television drama series Homeland. He made his feature film debut in Jason Reitman's drama Men, Women & Children (2014) and appeared in Christopher Nolan's science fiction film Interstellar (2014).\n\nIn 2017, he gained wider recognition for his supporting roles in Greta Gerwig's directorial debut Lady Bird and Scott Cooper's western Hostiles, and for his lead role in Luca Guadagnino's romance Call Me by Your Name. The latter earned him nominations for the Academy Award, Golden Globe Award, Screen Actors Guild Award, and BAFTA Award for Best Actor. He is the third youngest nominee for the Academy Award for Best Actor and the youngest since 1939.\n\nOn stage, Chalamet has starred in John Patrick Shanley's autobiographical play Prodigal Son, for which he was nominated for the Drama League Award for Distinguished Performance and won the Lucille Lortel Award for Outstanding Lead Actor in a Play.	Timothée Chalamet	1995-12-27	No data.	2
1979	http://image.tmdb.org/t/p/w185/x7wF050iuCASefLLG75s2uDPFUu.jpg	Kevin Spacey Fowler (born July 26, 1959), better known by his stage name Kevin Spacey, is an  American actor of screen and stage, film director, producer, screenwriter and singer who has resided in the United Kingdom since 2003. He began his career as a stage actor during the 1980s before obtaining supporting roles in film and television. He gained critical acclaim in the early 1990s that culminated in his first Academy Award for Best Supporting Actor for the neo-noir crime thriller The Usual Suspects (1995), and an Academy Award for Best Actor for midlife crisis-themed drama American Beauty (1999).\n\nHis other starring roles have included the comedy-drama film Swimming with Sharks (1994), psychological thriller Seven (1995), the neo-noir crime film L.A. Confidential (1997), the drama Pay It Forward (2000), the science fiction-mystery film K-PAX (2001), and the role of Lex Luthor in the superhero film Superman Returns (2006).\n\nDescription above from the Wikipedia article Kevin Spacey, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Kevin Spacey	1959-07-26	No data.	2
116	http://image.tmdb.org/t/p/w185/pxzcVzTyJBKwfuyRLDtax1Jmr7o.jpg	Keira Christina Knightley (born 26 March 1985) is an English actress and model. She began acting as a child and came to international prominence in 2002 after co-starring in the films Bend It Like Beckham and Pirates of the Caribbean: The Curse of the Black Pearl. Knightley has appeared in several Hollywood films and earned nominations for the Academy Award for Best Actress and Golden Globe Award for Best Actress for her role as Elizabeth Bennet in Joe Wright's 2005 adaptation of Jane Austen's novel Pride and Prejudice. Two years later she again was nominated for the Golden Globe Award for Best Actress, as well as the BAFTA Award for Best Actress in a Leading Role for her performance in Atonement. In 2008, Forbes claimed Knightley to be the second highest paid actress in Hollywood, having reportedly earned $32 million in 2007, making her the only non-American on the list of highest paid actresses.	Keira Knightley	1985-03-26	No data.	1
5472	http://image.tmdb.org/t/p/w185/4pj31PUxqpuJZrHChinub4gr2ul.jpg	Colin Andrew Firth (born 10 September 1960) is an English film, television, and stage actor. Firth gained wide public attention in the 1990s for his portrayal of Mr. Darcy in the 1995 television adaptation of Jane Austen's Pride and Prejudice. In 2011, Firth received the Academy Award for Best Actor for his portrayal of King George VI in The King's Speech, a performance that also earned him the Golden Globe, BAFTA, and Screen Actors Guild Award for Best Actor. The previous year he received his first Academy Award nomination for his leading role in A Single Man, a performance that won him a BAFTA Award. Firth's other major film credits include The English Patient, Shakespeare in Love, Bridget Jones's Diary, Mamma Mia! and Love Actually. He received a star on the Hollywood Walk of Fame in 2011.	Colin Firth	1960-09-10	No data.	2
2231	http://image.tmdb.org/t/p/w185/AvCReLikjzYEf9XjTQxbv3JWgKT.jpg	Samuel Leroy Jackson (born December 21, 1948) is an American film and television actor and film producer. After Jackson became involved with the Civil Rights Movement, he moved on to acting in theater at Morehouse College, and then films. He had several small roles such as in the film Goodfellas, Def by Temptation, before meeting his mentor, Morgan Freeman, and the director Spike Lee. After gaining critical acclaim for his role in Jungle Fever in 1991, he appeared in films such as Patriot Games, Amos & Andrew, True Romance and Jurassic Park. In 1994 he was cast as Jules Winnfield in Pulp Fiction, and his performance received several award nominations and critical acclaim.\n\nJackson has since appeared in over 100 films including Die Hard with a Vengeance, The 51st State, Jackie Brown, Unbreakable, The Incredibles, Black Snake Moan, Shaft, Snakes on a Plane, as well as the Star Wars prequel trilogy and small roles in Quentin Tarantino's Kill Bill Vol. 2 and Inglourious Basterds. He played Nick Fury in Iron Man and Iron Man 2, Thor, the first two of a nine-film commitment as the character for the Marvel Cinematic Universe franchise. Jackson's many roles have made him one of the highest grossing actors at the box office. Jackson has won multiple awards throughout his career and has been portrayed in various forms of media including films, television series, and songs. In 1980, Jackson married LaTanya Richardson, with whom he has one daughter, Zoe.\n\nDescription above from the Wikipedia article Samuel L. Jackson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Samuel L. Jackson	1948-12-21	No data.	2
3392	http://image.tmdb.org/t/p/w185/nmlitv4g2jXO3sJrnA9g980j2uc.jpg	Michael Kirk Douglas (born September 25, 1944) is an American actor and producer, primarily in movies and television. He has won three Golden Globes and two Academy Awards; first as producer of 1975's Best Picture, One Flew Over the Cuckoo's Nest, and as Best Actor in 1987 for his role in Wall Street. Douglas received the AFI Life Achievement Award in 2009. He is the eldest of actor Kirk Douglas's four sons. Douglas has been the announcer for NBC Nightly News since 2007.\n\nDescription above from the Wikipedia article Michael Douglas, licensed under CC-BY-SA, full list of contributors on Wikipedia	Michael Douglas	1944-09-25	No data.	2
454	http://image.tmdb.org/t/p/w185/oqlIKSglghuX7kSTalODn71nlOd.jpg	Michael Anthony Peña (born January 13, 1976) is an American film and television actor, probably best known for his prominent roles in Crash, Observe and Report, and Oliver Stone's World Trade Center. He also appeared in the Nickelback music video for their song Savin' Me.\n\nDescription above from the Wikipedia article Michael Peña, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Michael Peña	1976-01-13	No data.	2
1245	http://image.tmdb.org/t/p/w185/oqvusJfmH4zN2LgdCjmB2TxetOd.jpg	Scarlett Johansson, born November 22, 1984, is an American actress, model and singer. She made her film debut in North (1994) and was later nominated for the Independent Spirit Award for Best Female Lead for her performance in Manny & Lo (1996), garnering further acclaim and prominence with roles in The Horse Whisperer (1998) and Ghost World (2001). She shifted to adult roles with her performances in Girl with a Pearl Earring (2003) and Sofia Coppola's Lost in Translation (2003), for which she won a BAFTA award for Best Actress in a Leading Role; both films earned her Golden Globe Award nominations as well.\n\nA role in A Love Song for Bobby Long (2004) earned Johansson her third Golden Globe for Best Actress nomination. Johansson garnered another Golden Globe nomination for Best Supporting Actress with her role in Woody Allen's Match Point (2005). She has played the Marvel comic book character Black Widow/Natasha Romanoff in Iron Man 2 (2010), The Avengers (2012), and Captain America: The Winter Soldier (2014) and is set to reprise the role in Avengers: Age of Ultron (2015). The 2010 Broadway revival of Arthur Miller's A View From the Bridge won Johansson the Tony Award for Best Performance by a Featured Actress in a Play. As a singer, Johansson has released two albums, Anywhere I Lay My Head and Break Up.\n\nJohansson is considered one of Hollywood's modern sex symbols, and has frequently appeared in published lists of the sexiest women in the world, most notably when she was named the "Sexiest Woman Alive" by Esquire magazine in both 2006 and 2013 (the only woman to be chosen for the title twice), and the "Sexiest Celebrity" by Playboy magazine in 2007.\n\nJohansson was born in New York City. Her father, Karsten Johansson, is a Danish-born architect, and her paternal grandfather, Ejner Johansson, was a screenwriter and director. Her mother, Melanie Sloan, a producer, comes from an Ashkenazi Jewish family from the Bronx. Johansson has an older sister, Vanessa, who is an actress; an older brother, Adrian; a twin brother, Hunter (who appeared in the film Manny & Lo with Scarlett); and a half-brother, Christian, from her father's re-marriage.	Scarlett Johansson	1984-11-22	No data.	1
85	http://image.tmdb.org/t/p/w185/ea4fTp9T8Zy2KWxyFsqDIBgHZmb.jpg	John Christopher "Johnny" Depp II (born June 9, 1963) is an American actor and musician. He has won the Golden Globe Award and Screen Actors Guild award for Best Actor.\n\nDepp rose to prominence on the 1980s television series 21 Jump Street, becoming a teen idol. Turning to film, he played the title character of Edward Scissorhands (1990), and later found box office success in films such as Sleepy Hollow (1999), Pirates of the Caribbean: The Curse of the Black Pearl (2003), Charlie and the Chocolate Factory (2005), and Rango (2011). He has collaborated with director and friend Tim Burton in seven films, including Sweeney Todd: The Demon Barber of Fleet Street (2007) and Alice in Wonderland (2010). Depp has gained acclaim for his portrayals of people such as Edward D. Wood, Jr., in Ed Wood, Joseph D. Pistone in Donnie Brasco, Hunter S. Thompson in Fear and Loathing in Las Vegas, George Jung in Blow, and the bank robber John Dillinger in Michael Mann's Public Enemies.\n\nFilms featuring Depp have grossed over $2.6 billion at the United States box office and over $6 billion worldwide. He has been nominated for top awards many times, winning the Best Actor Awards from the Golden Globes for Sweeney Todd: The Demon Barber of Fleet Street and from the Screen Actors Guild for Pirates of the Caribbean: The Curse of the Black Pearl. He also has garnered a sex symbol status in American cinema, being twice named as the Sexiest man alive by People magazine in 2003 and 2009.\n\nDescription above from the Wikipedia article Johnny Depp, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Johnny Depp	1963-06-09	No data.	2
2960	http://image.tmdb.org/t/p/w185/am80pES7tfN6RgWqmuQg6e7pkiD.jpg	Amr Waked was born in Cairo, Egypt in 1972. He studied economics and theatre in the American University in Cairo. In his early experience as an actor Amr joined the Temple Theatre Troop in 1994, and Yaaru Theatre Troop in 1999, where he trained and developed his tools as a stage performer. With his experience onstage, Waked managed to film his first role on the big screen in 1998 when he joined Ossama Fawzy's of "Gannet El Shayateen". Waked's award winning performance paved his way to become a popular actor famous for his gravity and vast range. In 2003, Waked joined Stephen Gegan's cast of Syriana, which was his first appearance in an international film. His performance was acclaimed and presented him with other opportunities in international productions, like House Of Saddam and Salmon Fishing In The Yemen. In 2005, Amr co-established "zad communication &amp; production llc" to begin his experience as a producer. The communication agency and production house was to focus on developmental and social issues in Egypt and the Middle East. In 2012, zad produced its first feature film "Winter Of Discontent", directed by Ibrahim El Batout, which opened in the 69th Venice Film Festival in 2012.	Amr Waked	1973-04-12	No data.	2
5309	http://image.tmdb.org/t/p/w185/2is9RvJ3BQAku2EtCmyk5EZoxzT.jpg	From Wikipedia, the free encyclopedia\n\nDame Judith Olivia "Judi" Dench, CH, DBE, FRSA (born 9 December 1934) is an English film, stage and television actress.\n\nDench made her professional debut in 1957 with the Old Vic Company. Over the following few years she played in several of William Shakespeare's plays in such roles as Ophelia in Hamlet, Juliet in Romeo and Juliet and Lady Macbeth in Macbeth. She branched into film work, and won a BAFTA Award as Most Promising Newcomer; however, most of her work during this period was in theatre. Not generally known as a singer, she drew strong reviews for her leading role in the musical Cabaret in 1968.\n\nDuring the next two decades, she established herself as one of the most significant British theatre performers, working for the National Theatre Company and the Royal Shakespeare Company. In television, she achieved success during this period, in the series A Fine Romance from 1981 until 1984 and in 1992 began a continuing role in the television romantic comedy series As Time Goes By.\n\nHer film appearances were infrequent until she was cast as M in GoldenEye (1995), a role she has played in each James Bond film since. She received several notable film awards for her role as Queen Victoria in Mrs. Brown (1997), and has since been acclaimed for her work in such films as Shakespeare in Love (1998), Chocolat (2000), Iris (2001), Mrs Henderson Presents (2005) and Notes on a Scandal (2006), and the television production The Last of the Blonde Bombshells (2001).\n\nRegarded by critics as one of the greatest actresses of the post-war period, and frequently named as the leading British actress in polls, Dench has received many award nominations for her acting in theatre, film and television; her awards include ten BAFTAs, seven Laurence Olivier Awards, two Screen Actors Guild Awards, two Golden Globes, an Academy Award, and a Tony Award.\n\nShe was married to actor Michael Williams from 1971 until his death in 2001. They are the parents of actress Finty Williams.\n\nDescription above from the Wikipedia article Judi Dench, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Judi Dench	1934-12-09	No data.	1
3895	http://image.tmdb.org/t/p/w185/vvj0JMSFpOajXCE46Hy4dyqSP2U.jpg	Sir Michael Caine is an English film actor. He became known for several notable critically acclaimed performances, particularly in films such as Zulu (1964), The Italian Job (1969), Get Carter (1971), Educating Rita (1983) and more recently Batman Begins and The Dark Knight. Caine was knighted in 2000 by Queen Elizabeth II, in recognition of his contribution to cinema.\n\nCaine was born Maurice Joseph Micklewhite in Rotherhithe, South East London, the son of Ellen Frances Marie, a cook and charlady, and Maurice Joseph Micklewhite, a fish market porter.\n\nHe was married to actress Patricia Haines from 1955 to 1958. They had one daughter named Dominique. He dated Bianca Jagger in 1968. Caine has been married to actress and model Shakira Baksh since 8 January 1973. They met after Caine saw her appearing in a Maxwell House coffee commercial and a friend gave him her telephone number. They have a daughter named Natasha.	Michael Caine	1933-03-14	No data.	2
1303037	http://image.tmdb.org/t/p/w185/uCaPhyKAQIfEzAWWCYIrO2004CB.jpg	Taron Egerton is a Welsh actor best known for his role as "Eggsy" Unwin in Kingman: The Secret Service and its sequel Kingsman: The Golden Circle.	Taron Egerton	1989-11-10	No data.	2
2983	http://image.tmdb.org/t/p/w185/svq7VWJqKN4Fq8ZJK1Yd8W711rn.jpg	British actor Mark Strong, who played Jim Prideaux in the 2011 remake of Tinker Tailor Soldier Spy (2011), is often cast as cold, calculating villains. But before he became a famous actor, he intended to pursue a career in law. Strong was born Marco Giuseppe Salussolia on 30 August, 1963 in London, England, to an Austrian mother and an Italian father. His father left the family not long after he was born, and his mother worked as an au pair to raise the boy on her own. Strong's mother had his name legally changed when he was young in order to help him better assimilate with his peers. Although Americans are most familiar with Strong's roles as Sinestro in Green Lantern (2011), mob boss Frank D'Amico in Kick-Ass (2010), and Lord Blackthorn in Sherlock Holmes (2009), British audiences know him from his long history as a television actor. He also starred in as numerous British stage productions, including plays at the Royal National Theatre and the RSC.  His most prominent television parts include Prime Suspect 3 (1993) (TV) and Prime Suspect 6: The Last Witness (2003) (TV) as Inspector Larry Hall, and starring roles in the BBC Two dramas "Our Friends in the North" (1996) and "The Long Firm" (2004), the latter of which netted Strong a BAFTA nomination. He also played Mr. Knightley in the 1996 adaptation of Jane Austen's classic tale Emma (1996) (TV). Strong resides in London with his wife Liza Marshall, with whom he has two sons, the younger of which is the godson of his longtime friend Daniel Craig.	Mark Strong	1963-08-05	No data.	2
3497	http://image.tmdb.org/t/p/w185/1un1X4SxxcSVUYEgQ0HXPPRhKcv.jpg	Kyle Martin Chandler (born September 17, 1965) is an American film and television actor best known for his roles in the television shows Early Edition as Gary Hobson and as Eric Taylor in Friday Night Lights. Description above from the Wikipedia article Kyle Chandler, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Kyle Chandler	1965-09-17	No data.	2
51990	http://image.tmdb.org/t/p/w185/wkm8YvulYwuB4pxEvOAlwv8AWdr.jpg	Todd Joseph Miller, better known as T. J. Miller, is an American actor and stand-up comedian. He starred as Erlich Bachman in the HBO sitcom Silicon Valley. Miller has also performed in such films as Cloverfield (2008), Yogi Bear (2010), How to Train Your Dragon (2010), How to Train Your Dragon 2 (2014), Transformers: Age of Extinction (2014), Big Hero 6 (2014) and Deadpool (2016).	T.J. Miller	1981-06-04	No data.	2
6193	http://image.tmdb.org/t/p/w185/jqbqNrOIB3alGMX6Gh2MbOKMXZO.jpg	Leonardo Wilhelm DiCaprio (born November 11, 1974) is an American actor, film producer, and environmental activist.\n\nHe began his film career by starring as Josh in Critters 3 before starring in the film adaptation of the memoir This Boy's Life (1993) alongside Robert De Niro. DiCaprio was praised for his supporting role in the drama What's Eating Gilbert Grape (1993), and gained public recognition with leading roles in the drama The Basketball Diaries (1995) and the romantic drama Romeo + Juliet (1996), before achieving international fame with James Cameron's epic romance Titanic (1997) He has been nominated for six Academy Awards—five for acting and one for producing—and in 2016, he won the Academy Award for Best Actor for The Revenant.\n\nDiCaprio is the founder of his own production company, named Appian Way Productions. He is also a committed environmentalist.	Leonardo DiCaprio	1974-11-11	No data.	2
62	http://image.tmdb.org/t/p/w185/kI1OluWhLJk3pnR19VjOfABpnTY.jpg	Walter Bruce Willis, better known as Bruce Willis, is an American actor and producer. His career began in television in the 1980s and has continued both in television and film since, including comedic, dramatic, and action roles. He is well known for the role of John McClane in the Die Hard series.\n\nWillis was born in Idar-Oberstein, West Germany, the son of a Kassel-born German, Marlene, who worked in a bank, and David Willis, an American soldier. Willis is the eldest of four children.\n\nAt the premiere for the film Stakeout, Willis met actress Demi Moore. They married on November 21, 1987 and had three daughters before the couple divorced on October 18, 2000.\n\nSince the divorce he has dated models Maria Bravo Rosado and Emily Sandberg; he was engaged to Brooke Burns until they broke up in 2004 after ten months together. He married Emma Heming on March 21, 2009.	Bruce Willis	1955-03-19	No data.	2
131723	http://image.tmdb.org/t/p/w185/fKsu9PJ4DuBVja60yKnvLgPHvq3.jpg	Sarah was involved with local drama as a child, and became a model at age 14. Her big break came when she was discovered by organizers from the 1999 Mossimo model search contest. She attended LeGrande Elementary and Hart County High School before moving to Louisville to finish her high school career.\n\nSarah played the character of Paige Chase in the sitcom Quintuplets. She co-starred in the sitcom The Loop as Lizzy in Season 1. She also guest-starred in Season 11 of the CW series 7th Heaven as Jane, a best friend of Andrea Morris's character Margaret. She appeared as Sarah Mason, one of the girls with whom Patrick Dempsey's character has a one-night stand in the 2008 film Made of Honor.\n\nIn 2011, Wright began a recurring role in the CBS mid-season replacement comedy series Mad Love, and maintained a small recurring role as Millicent Gergich on the NBC show Parks and Recreation.[1]\n\nIn 2014, she co-starred alongside Casey Wilson and Ken Marino in the short-lived NBC sitcom Marry Me.\n\nShe co-founded a parenting website called Your Zen Mama with fellow actress Teresa Palmer.	Sarah Wright	1983-09-28	No data.	1
20286	http://image.tmdb.org/t/p/w185/wQU3uFk2TWjT2qfs2Z6rkdbWbjx.jpg	Tobias Alistair P. "Toby" Kebbell (born 9 July 1982) is an English actor.\n\nDescription above from the Wikipedia Toby Kebbell, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Toby Kebbell	1982-07-09	No data.	2
1348123	http://image.tmdb.org/t/p/w185/dNq3akr3paX1KWY57tmt0Znlhk6.jpg	Very cute, busty, and shapely 5'4" blonde bombshell Carter Cruise was born on April 24, 1991 in Atlanta, Georgia. Cruise's first job was working at Bruegger's Bagels for three weeks while in high school. Carter first began doing hardcore shoots in 2013. Cruise has not only appeared in X-rated features for such notable companies as Digital Sin and Forbidden Fruits Films, but also has worked for various adult websites that include Mofos, Babes.com, Digital Desire, Team Skeet, Reality Kings, and Naughty America. Carter enjoys skiing, snowboarding, and writing poetry in her spare time.	Carter Cruise	1991-04-24	No data.	1
1343960	http://image.tmdb.org/t/p/w185/t33sTU0YS9dGBUu09CF1sKlKOge.jpg	Luscious, buxom, and shapely 5'6" brunette knockout August Ames was born on august 23, 1994 in Nova Scotia, Canada. August's first job was working as a babysitter. Moreover, Ames not only worked for two summers at a horse ranch in Colorado Springs, but also worked as a bartender and at a tanning salon prior to doing her first hardcore solo/fetish shoot in 2013. Among the notable companies August has appeared in X-rated features for are Evil Angel, Smash Pictures, Lethal Hardcore, Wicked Pictures, and Pure Play Media. In addition, Ames has also worked for such adult websites as Twistys, Digital Desire, and Naughty America.	August Ames	1994-08-23	2017-12-05	1
198150	http://image.tmdb.org/t/p/w185/aMkElR018PyLdgiXbyIjXbFfbSZ.jpg	Isaac "Ike" Barinholtz, born February 18, 1977, is an American actor, comedian, voice actor and writer, known as a cast member on MADtv (1995), from 2002-2007, and for his roles on The Mindy Project (2012) and Eastbound & Down (2009). He spent two years in Amsterdam with the famed comedy troupe, "Boom Chicago", along with Jordan Peele, Josh Meyers and Nicole Parker. Barinholtz hosted the "Worst of Boom Night", during a 10-year anniversary of the improve troupe, "Boom Chicago", where they performed their worst material from previous shows.	Ike Barinholtz	1977-02-18	No data.	2
221192	http://image.tmdb.org/t/p/w185/josGaRCnTXIKQWSU09RxqKE5S8F.jpg	Kathryn Newton is an American film and television actress, best known for playing Louise Brooks in the CBS television series "Gary Unmarried", as well as for her role as Alex Nelson in the 2012 feature film "Paranormal Activity 4", which earned her the 2013 Young Artist Award for Best Leading Young Actress in a Feature Film. She is also known for portraying the older version of Claire Novak in the CW series "Supernatural" and for playing Abigail Mackenzie on HBO's "Little Big Lies".	Kathryn Newton	1997-02-08	No data.	1
1361975	http://image.tmdb.org/t/p/w185/pw7ZcubI65lxt3BxOsotqLIO7WH.jpg	Emilia McCarthy (born August 28, 1997) is a Canadian actress,  dancer and writer. She played the daughter of the sheriff in the  television series on Netflixcalled Hemlock Grove. McCarthy also played Taylor Dean in the movie Zapped on Disney Channel.\n\nIn July 2013 she began working on the film Maps to the Stars  playing Kayla. The film premiered on April 14, 2014 at various  festivals and generated positive reviews. McCarthy plays the role of  Abby Ackerman on Max & Shred, her first lead role in a television series. It is produced by YTVand also will air on Nickelodeon.	Emilia McCarthy	1997-08-28	No data.	1
1397603	http://image.tmdb.org/t/p/w185/5iXSw5K13vU10I0I86kNYG7FkcG.jpg	Trevor Tordjman began studying dance at the age of 4 in his mother's dance studio, Confidance. Although Trevor was exposed to and trained in many forms of dance, he quickly developed a passion for Hip Hop and Breakdancing. Dedicating the majority of his free time to studying dance from a young age, he has been able to hone and develop his own unique style.	Trevor Tordjman	1995-11-22	No data.	2
10431	http://image.tmdb.org/t/p/w185/7DbG2AO3nygHAkNC866HLPKkxv9.jpg	Jennifer Jason Leigh (born Jennifer Leigh Morrow; February 5, 1962) is an American film and stage actress. She began acting on television during the 1970s, guest-starring on several television shows, and her film breakthrough came in 1982 for her performance as Stacy Hamilton in Fast Times at Ridgemont High.\n\nIn 2015, she received widespread critical acclaim for performance as  Daisy Domergue in Quentin Tarantino's The Hateful Eight, for which she was nominated for the Golden Globe, Critics' Choice, BAFTA and the Academy Award for Best Supporting Actress.\n\nLeigh is known for her emotionally raw and often sexually explicit portrayals of vulnerable and damaged women, and for her intensive method inspired research into her roles.\n\nDescription above from the Wikipedia article Jennifer Jason Leigh, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jennifer Jason Leigh	1962-02-05	No data.	1
17286	http://image.tmdb.org/t/p/w185/2Mv9R3ncZNgx9STyfmDJYLM6sPg.jpg	Lena Headey (born 3 October 1973) is a Bermuda-born  English actress best known for portraying Queen Cersei Lannister in HBO's hit fantasy series Game of Thrones since 2011. She is also known for playing Sarah Connor on Fox's Terminator: The Sarah Connor Chronicles, as well as appearing in such films as The Remains of the Day, Possession, Imagine Me and You, The Brothers Grimm, The Broken, 300 and The Red Baron.\n\nDescription above from the Wikipedia article  Lena Headey, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Lena Headey	1973-10-03	No data.	1
55899	http://image.tmdb.org/t/p/w185/f286bjIUI5tObGn7h0EVrNwBSuZ.jpg	From Wikipedia, the free encyclopedia.  \n\nRhys Wakefield (born 20 November 1988) is an Australian actor. He is best known for portraying Lucas Holden[1] in the long-running TV series Home and Away, portraying the main character Thomas in the 2008 film The Black Balloon.[2], and for the 2011 film Sanctum.\n\nDescription above from the Wikipedia article Rhys Wakefield, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rhys Wakefield	1988-11-20	No data.	0
53240	http://image.tmdb.org/t/p/w185/yWjuIP634unLBCB4XjSgmJs5QGC.jpg	Rizwan "Riz" Ahmed (born 1 December 1982), also known as Riz MC, is a British actor and rapper. As an actor, he was initially known for his work in independent films such as The Road to Guantanamo, Shifty, Four Lions, Trishna, and Ill Manors, before his breakout role in Nightcrawler. Since then, he has appeared in the films Una, Jason Bourne, and the first Star Wars Anthology film, Rogue One. He also starred in the HBO miniseries The Night Of as Nasir Khan; the show and his performance were critically lauded, earning him Golden Globe and SAG nominations.	Riz Ahmed	1982-12-01	No data.	2
20582	http://image.tmdb.org/t/p/w185/9nVHCoYxCpGh9pO00xp7SybWd7b.jpg	A native of Birmingham, Alabama, Michael graduated from Vestavia Hills High School in 1983.\n\nThe Texas Rangers drafted him in 1985, but he chose instead to attend Louisiana State University on a baseball scholarship. He was the starting center-fielder on the first LSU team to go to the College World Series in 1986, and again in 1987.\n\nIn 1987, Everybody's All-American (1988) came to shoot in Baton Rouge, and Michael was chosen as Dennis Quaid stunt double for the football scenes. He caught the attention and earned the admiration of Director Taylor Hackford, who encouraged Michael to pursue a career in stunt work.\n\nWhile filming Charlie's Angels (2000), Michael was kicked in the jaw with a stiletto boot. He found himself in an emergency room, insisting that he was not the victim of domestic violence. The spousal abuse representatives had a hard time believing that he had been kicked by Cameron Diaz\n\n.Michael is most widely known as "The Carjacker" in Spider-Man (2002), whose actions ultimately lead Peter Parker to become Spider-Man. Michael first met director Sam Raimi\n\n when he played Kevin Costner's nemesis in For Love of the Game (1999).\n\nAnother notable role was as Guard Papajohn in The Longest Yard (2005) for producerAdam Sandler\n\n. They met when Michael did all of Adam's stunts in The Waterboy (1998), making the hard hits as Bobby Boucher. In The Longest Yard, things came full circle when Michael had his own stuntman.\n\nHe has produced one film, Rustin (2001), that went on to win festival awards.  IMDb Mini Biography By: PRMP	Michael Papajohn	1964-11-07	No data.	2
17697	http://image.tmdb.org/t/p/w185/nOWwdZURikW22qo6OUSGFCTukgc.jpg	John Burke Krasinski (born October 20, 1979) is an American actor, film director and writer. He is widely known for playing Jim Halpert on the NBC sitcom The Office from 2005 to 2013. He has also appeared in several films including License to Wed (2007), Leatherheads (2008), Away We Go (2009), It's Complicated (2009), Something Borrowed (2011), Aloha (2015), 13 Hours: The Secret Soldiers of Benghazi (2016), Detroit (2017), and A Quiet Place (2018), which he also directed and co-wrote.	John Krasinski	1979-10-20	No data.	2
5168	http://image.tmdb.org/t/p/w185/lFIH4De52Eg21m7pScPMXezZDUh.jpg	Gabriel James Byrne (born May 12, 1950) is an Irish actor, film director, film producer, writer, cultural ambassador and audiobook narrator. His acting career began in the Focus Theatre before he joined London’s Royal Court Theatre in 1979. Byrne's screen début came in the Irish soap opera The Riordans and the spin-off show Bracken. The actor has now starred in over 35 feature films, such as The Usual Suspects, Miller's Crossing and Stigmata, in addition to writing two. Byrne's producing credits include the Academy Award-nominated In the Name of the Father. Currently, he is receiving much critical acclaim for his role as Dr. Paul Weston in the HBO drama In Treatment.	Gabriel Byrne	1950-05-12	No data.	2
73457	http://image.tmdb.org/t/p/w185/n4DD1AYU7WEMNPLga1TxqnHivn1.jpg	Christopher Michael "Chris" Pratt (born June 21, 1979) is an American actor, best known for his roles as Harold Brighton "Bright" Abbott in the television series Everwood, the recurring character Winchester "Ché" Cook in season 4 of The OC, and Andy Dwyer in the television series Parks and Recreation.	Chris Pratt	1979-06-21	No data.	2
64	http://image.tmdb.org/t/p/w185/tofLS5A6lBXNjeROGvgpfe2JwaT.jpg	Gary Leonard Oldman (born 21 March 1958) is an English actor, filmmaker and musician, well-known to audiences for his portrayals of dark and morally ambiguous characters. He has starred in films such as Sid and Nancy, Prick Up Your Ears, JFK, Dracula, True Romance, Léon, The Fifth Element, The Contender, the Harry Potter film series and the Batman film series, as well as in television shows such as Friends and Fallen Angels.\n\nOldman came to prominence in the mid-1980s with a string of performances that prompted pre-eminent film critic, Roger Ebert, to describe him as "the best young British actor around". He has been cited as an influence by a number of successful actors. In addition to leading and central supporting roles in big-budget Hollywood films, Oldman has frequently acted in independent films and television shows. Aside from acting, he directed, wrote and co-produced Nil by Mouth, a film partially based on his own childhood, and served as a producer on several films.\n\nAmong other accolades, Oldman has received Emmy-, Screen Actors Guild-, BAFTA- and Independent Spirit Award nominations for his acting work, and has been described as one of the greatest actors never nominated for an Academy Award. His contributions to the science fiction genre have won him a Saturn Award, with a further two nominations. He was also nominated for the 1997 Palme d'Or and won two BAFTA Awards for his filmmaking on Nil By Mouth. In 2011, Empire readers voted Oldman an "Icon of Film", in recognition of his contributions to cinema.\n\nDescription above from the Wikipedia article Gary Oldman, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Gary Oldman	1958-03-21	No data.	2
543530	http://image.tmdb.org/t/p/w185/oZDL1VprkUEFhOtG5WcVjudj5ks.jpg	David Michael "Dave" Bautista Jr. (born January 18, 1969) is an American actor and former professional wrestler, mixed martial artist, and bodybuilder.\n\nFrom 2000–2010 and 2013–2014, he was signed to WWE under the ring name Batista, where he became a six-time world champion, winning WWE's World Heavyweight Championship four times and the WWE Championship twice. He holds the record for the longest reign as World Heavyweight Champion at 282 days, and has also won the World Tag Team Championship three times (twice with Ric Flair and once with John Cena) and the WWE Tag Team Championship once (with Rey Mysterio). He was the winner of the 2005 Royal Rumble match and went on to headline WrestleMania 21, one of the top five highest-grossing pay-per-view events in professional wrestling history. When Bautista returned to WWE in 2014, he won the 2014 Royal Rumble match, after which he headlined WrestleMania XXX.\n\nIn August 2012, Bautista signed a contract with Classic Entertainment & Sports to fight in mixed martial arts. He won his MMA debut on October 6, 2012, defeating Vince Lucero via TKO in the first round. He was representing the Philippines during the fight. Bautista first entered the world of acting in 2006. As an actor, Bautista has starred in The Man with the Iron Fists (2012), Riddick (2013), Guardians of the Galaxy (2014), the 24th James Bond film, Spectre (2015), L.A. Slasher (2015), and in the 2016 Kickboxer reboot, Kickboxer: Vengeance. Bautista is set to reprise his role as Drax in Guardians of the Galaxy Vol. 2 (2017) and Avengers: Infinity War (2018). He has also appeared in several direct-to-video films since 2009.	Dave Bautista	1969-01-18	No data.	2
51329	http://image.tmdb.org/t/p/w185/6vQ9zsljjVGtz7smO9HErzarnCN.jpg	Bradley Charles Cooper (born January 5, 1975) is an American actor, producer and director. He was one of the world's highest-paid actors for three years, and has been nominated for various accolades, including four Academy Awards for his performances in Silver Linings Playbook (2012), American Hustle (2013) and American Sniper (2014), also receiving a Best Picture nomination as a producer for the latter. Cooper is also known for his voice work as Rocket Raccoon in the Marvel Cinematic Universe.	Bradley Cooper	1975-01-05	No data.	2
194	http://image.tmdb.org/t/p/w185/64jkJJtL5sins6nwGKOERduLSEA.jpg	Richard St. John Harris was an Irish actor, singer-songwriter, theatrical producer, film director and writer. He appeared on stage and in many films, and is perhaps best known for his roles as King Arthur in Camelot (1967), as Oliver Cromwell in Cromwell (1970) and as Albus Dumbledore in Harry Potter and the Philosopher's Stone (2001) and Harry Potter and the Chamber of Secrets (2002), his last film. He also played a British aristocrat and prisoner in A Man Called Horse (1970) and a gunfighter in Clint Eastwood's Western film Unforgiven (1992). As a singer, Harris is probably best remembered for his recording of Jimmy Webb's song "MacArthur Park", which reached the top ten in sales on both sides of the Atlantic Ocean in 1968.\n\nHarris, the fifth of nine children, was born in Limerick City, County Limerick, Munster, Ireland, the son of Ivan John Harris and Mildred Josephine Harty Harris.\n\nIn 1957, he married Elizabeth Rees-Williams, the daughter of David Rees-Williams, 1st Baron Ogmore. Their three children are the actor Jared Harris, the actor Jamie Harris, and the director Damian Harris. Harris and Rees-Willams divorced in 1969, and then Elizabeth married another well-known actor, Sir Rex Harrison. Harris' second marriage was to the American actress Ann Turkel, who was 16 years younger than he, and this marriage also ended in a divorce.\n\nDespite his divorces, Harris was a member of the Roman Catholic Knights of Malta, and was also dubbed a knight by the Queen of Denmark in 1985. Harris was a life long friend of actor Peter O'Toole. Harris died of Hodgkin's disease on 25 October 2002, aged 72, two and a half weeks before the American premiere of Harry Potter and the Chamber of Secrets. He was replaced as Dumbledore by the Irish-born actor Sir Michael Gambon. For years, whenever he was in London, Harris resided at the Savoy Hotel. According to the hotel archivist Susan Scott, as Harris was being taken from the hotel on a stretcher, shortly before his death, he warned the diners, "It was the food!" Harris's remains were cremated, and his ashes were scattered in The Bahamas Islands, where he had owned a home.	Richard Harris	1930-10-01	2002-10-25	2
76512	http://image.tmdb.org/t/p/w185/k0wyfdMPh6TSaDKkrreuQIfg1sr.jpg	Jason Clarke (born 17 July 1969) is an Australian film and television actor. Clarke has appeared in many TV series. He is best known as a TV actor for his role as Tommy Caffee on the television series Brotherhood. He has also appeared in many films, often as an antagonist.	Jason Clarke	1969-07-17	No data.	2
4566	http://image.tmdb.org/t/p/w185/zOJgiaztnrnB7TSdGYU3uwpgivl.jpg	Alan Sidney Patrick Rickman (21 February 1946-14 January 2016) was  an English actor and theatre director. He was a renowned stage actor in modern and classical productions and a former member of the Royal Shakespeare Company. Rickman was known for his film performances as Hans Gruber in Die Hard, Severus Snape in the Harry Potter film series, Eamon de Valera in Michael Collins, and Metatron in Dogma. He was also known for his prominent roles as the Sheriff of Nottingham in the 1991 film, Robin Hood: Prince of Thieves, and as Colonel Brandon in Ang Lee's 1995 film Sense and Sensibility. More recently he played Judge Turpin in Tim Burton's Sweeney Todd: The Demon Barber of Fleet Street and voiced the Caterpillar in Tim Burton's Alice in Wonderland.\n\nDescription above from the Wikipedia article Alan Rickman, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Alan Rickman	1946-02-21	2016-01-14	2
10980	http://image.tmdb.org/t/p/w185/kMSMa5tR43TLMR14ahU1neFVytz.jpg	Daniel Jacob Radcliffe (born 23 July 1989) is an English actor who rose to prominence playing the titular character in the Harry Potter film series. His work on the series has earned him several awards and more than £60 million.\n\nRadcliffe made his acting debut at age ten in BBC One's television movie David Copperfield (1999), followed by his film debut in 2001's The Tailor of Panama. Cast as Harry at the age of eleven, Radcliffe has starred in seven Harry Potter films since 2001, with the final installment releasing in July 2011. In 2007 Radcliffe began to branch out from the series, starring in the London and New York productions of the play Equus, and the 2011 Broadway revival of the musical How to Succeed in Business Without Really Trying. The Woman in Black (2012) will be his first film project following the final Harry Potter movie.\n\nRadcliffe has contributed to many charities, including Demelza House Children's Hospice and The Trevor Project. He has also made public service announcements for the latter. In 2011 the actor was awarded the Trevor Project's "Hero Award".\n\nDescription above from the Wikipedia article Daniel Radcliffe, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Daniel Radcliffe	1989-07-23	No data.	2
10990	http://image.tmdb.org/t/p/w185/s77hUycSJ4x8RJWHDC9WPgotgxE.jpg	Emma Watson (born 15 April 1990) is an English actress who rose to prominence playing Hermione Granger, one of three starring roles in the Harry Potter film series. Watson was cast as Hermione at the age of nine, having previously acted only in school plays. From 2001 to 2011, she starred in eight Harry Potter films alongside Daniel Radcliffe and Rupert Grint. Watson's work on the Harry Potter series has earned her several awards and more than £10 million.\n\nShe made her modelling debut for Burberry's Autumn/Winter campaign in 2009. In 2007, Watson announced her involvement in two non-Harry Potter productions: the television adaptation of the novel Ballet Shoes and an animated film, The Tale of Despereaux. Ballet Shoes was broadcast on 26 December 2007 to an audience of 5.2 million, and The Tale of Despereaux, based on the novel by Kate DiCamillo, was released in 2008 and grossed over US $70 million in worldwide sales. In 2012, she starred in Stephen Chbosky's film adaptation of The Perks of Being a Wallflower, and was cast in the role of Ila in Darren Aronofsky's biblical epic Noah.\n\nDescription above from the Wikipedia article Emma Watson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Emma Watson	1990-04-15	No data.	1
8691	http://image.tmdb.org/t/p/w185/ofNrWiA2KDdqiNxFTLp51HcXUlp.jpg	Zoë Yadira Saldana was born June 19, 1978 in Passaic NJ to a Puerto Rican mother and Dominican father. Her family relocated to the Dominican Republic when she was ten years old. There she practiced ballet at one of the most prestigious dance schools in the country. Saldana returned to New York at age 17, where she began involving herself in theatre groups such as Faces and the New York Youth Theatre. Her ballet training helped land her first on-screen part as Eva in the dance film, Center Stage (2000). The actress’ career continued to flourish with roles in Pirates of The Caribbean: The Curse of the Black Pearl (2003) with Johnny Depp, The Terminal (2004) starring Tom Hanks, and Guess Who (2005) opposite Ashton Kutcher. Saldana continues to act and model with editorial features in Elle, Vanity Fair, V, GQ Italia, and Nylon.	Zoe Saldana	1978-06-19	No data.	1
246	http://image.tmdb.org/t/p/w185/93PNFjRuV3u4SRFwmvaAMZ4HNna.jpg	From Wikipedia, the free encyclopedia.\n\nGary Lockwood (born February 21, 1937) is an American actor perhaps best known for his iconic 1968 role as the astronaut Dr. Frank Poole in 2001: A Space Odyssey. He is father of the actress Samantha Lockwood. Both currently live in Los Angeles.\n\nDescription above from the Wikipedia article Gary Lockwood, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Gary Lockwood	1937-02-21	No data.	2
524	http://image.tmdb.org/t/p/w185/jJcRWku3e9OHrmRqytn6WcBjhvh.jpg	Natalie Portman (born Neta-Lee Hershlag, Hebrew: נטע-לי הרשלג‎‎; June 9, 1981) is an actress with dual American and Israeli citizenship. Her first role was in the 1994 action thriller Léon: The Professional, opposite Jean Reno. She was later cast as Padmé Amidala in the Star Wars prequel trilogy (released in 1999, 2002 and 2005).\n\nBorn in Jerusalem to an Israeli father and American mother, Portman grew up in the eastern United States from the age of three. She studied dancing and acting in New York, and starred in Star Wars: Episode I – The Phantom Menace while still at high school on Long Island. In 1999, Portman enrolled at Harvard University to study psychology, alongside her work as an actress; she completed a bachelor's degree in 2003. During her studies she starred in a second Star Wars film and opened in New York City's The Public Theater production of Anton Chekhov's The Seagull in 2001.\n\nPortman won a Golden Globe and was nominated for an Academy Award for starring in the 2004 drama Closer, appeared in Star Wars: Episode III – Revenge of the Sith the following year, and won a Constellation Award for Best Female Performance and the Saturn Award for Best Actress for her starring role in the political thriller V for Vendetta (2006). She played leading roles in the historical dramas Goya's Ghosts (2006) and The Other Boleyn Girl (2008), and also appeared in Thor (2011) and its 2013 sequel. In 2010, Portman starred in the psychological thriller film Black Swan. Her performance received widespread critical acclaim and she earned her first Academy Award for Best Actress, her second Golden Globe Award, the SAG Award, the BAFTA Award and the BFCA Award in 2011. In 2016, she portrayed First Lady Jacqueline Kennedy in the biographical drama Jackie. She was nominated for an Academy Award, a BAFTA Award, a Golden Globe Award, a Screen Actors Guild Award and won the BFCA for Best Actress.\n\nIn May 2008, Portman served as the youngest member of the 61st Annual Cannes Film Festival jury. The same year she directed a segment of the collective film New York, I Love You. Her first feature film as a director, A Tale of Love and Darkness, was released in 2015.	Natalie Portman	1981-06-09	No data.	1
10989	http://image.tmdb.org/t/p/w185/dFVVJufva2zUSP6WS0pFfR7g8uN.jpg	From Wikipedia, the free encyclopedia\n\nRupert Alexander Grint (born 24 August 1988) is an English actor, who rose to prominence playing Ron Weasley, one of the three main characters in the Harry Potter film series. Grint was cast as Ron at the age of 11, having previously acted only in school plays and at his local theatre group. From 2001 to 2010, he starred in eight Harry Potter movies alongside Daniel Radcliffe and Emma Watson.\n\nBeginning in 2002, Grint began to work outside of the Harry Potter franchise, taking on a co-leading role in Thunderpants. He has had starring roles in Driving Lessons, a dramedy released in 2006, and Cherrybomb, a small budgeted drama released in 2010. Grint co-starred with Bill Nighy and Emily Blunt in Wild Target, a comedy. His first project following the end of the Harry Potter series will be Comrade, a 2012 anti-war release in which he stars as the main role.\n\nDescription above from the Wikipedia article Rupert Grint, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rupert Grint	1988-08-24	No data.	2
131	http://image.tmdb.org/t/p/w185/bbXNSh8PoaTO6mgpRkz6b9qeZfn.jpg	Jacob Benjamin "Jake" Gyllenhaal (born December 19, 1980) is a Swedish-American actor. A member of the Gyllenhaal family and the son of director Stephen Gyllenhaal and screenwriter Naomi Foner, Gyllenhaal began acting as a child with a screen debut in City Slickers (1991), followed by roles in A Dangerous Woman (1993) and Homegrown (1998). His breakthrough performance was as Homer Hickam in October Sky (1999) and he garnered an Independent Spirit Award nomination for Best Male Lead for playing the title character in the indie cult hit Donnie Darko (2001), in which he played a psychologically troubled teenager alongside his older sister, Maggie Gyllenhaal. He subsequently appeared in another indie film, The Good Girl (2002) and the climate fiction-disaster film The Day After Tomorrow (2004), portraying a student caught in a cataclysmic climate event.\n\nIn 2005, Gyllenhaal portrayed Anthony "Swoff" Swofford in Jarhead, Gwyneth Paltrow's love interest in Proof, and Jack Twist in Ang Lee's Brokeback Mountain. For his performance in Brokeback Mountain, he received critical acclaim and won the BAFTA Award for Best Actor in a Supporting Role and was nominated for the Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Supporting Role, the Satellite Award for Best Supporting Actor – Motion Picture, and the Academy Award for Best Supporting Actor.\n\nGyllenhaal received further recognition for roles in Zodiac (2007), Brothers (2009), Prince of Persia: The Sands of Time (2010), Love & Other Drugs (2010), for which he was nominated for a Golden Globe Award for Best Actor – Motion Picture Musical or Comedy, Source Code (2011), End of Watch (2012), Prisoners, Enemy (both 2013), Nightcrawler (2014), Southpaw (2015) and Nocturnal Animals (2016). For Nightcrawler, his performance was widely acclaimed and received rave reviews from critics and he was nominated for the Golden Globe Award for Best Actor – Motion Picture Drama, the Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Leading Role, and the BAFTA Award for Best Actor in a Leading Role.\n\nDescription above from the Wikipedia article Jake Gyllenhaal, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jake Gyllenhaal	1980-12-19	No data.	2
569	http://image.tmdb.org/t/p/w185/kcby6VYk6Gb0036nUyh8chY5ZAJ.jpg	Ethan Green Hawke (born November 6, 1970) is an American actor, writer and director. He made his feature film debut in 1985 with the science fiction movie Explorers, before making a supporting appearance in the 1989 drama Dead Poets Society which is considered his breakthrough role. He then appeared in such films as White Fang (1991), A Midnight Clear (1992), and Alive (1993) before taking a role in the 1994 Generation X drama Reality Bites, for which he gained critical acclaim. In 1995, he starred in the romantic drama Before Sunrise, and later in its sequel Before Sunset (2004).\n\nIn 2001, Hawke was cast as a rookie police officer in Training Day, for which he received a Screen Actors Guild and Academy Award nomination in the Best Supporting Actor category. Other films have included the science fiction feature Gattaca (1997), the title role in Michael Almereyda's Hamlet (2000), the action thriller Assault on Precinct 13 (2005), and the crime drama Before the Devil Knows You're Dead (2007).\n\nHawke has appeared in many theater productions including The Seagull, Henry IV, Hurlyburly, The Cherry Orchard, The Winter's Tale and The Coast of Utopia, for which he earned a Tony Award nomination. He made his directorial debut with the 2002 independent feature Chelsea Walls. In November 2007 Hawke directed his first play, Jonathan Marc Sherman's Things We Want. Aside from acting, he has written two novels, The Hottest State (1996) and Ash Wednesday (2002). Between 1998 and 2004, Hawke was married to actress Uma Thurman.\n\nDescription above from the Wikipedia article Ethan Hawke, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Ethan Hawke	1970-11-06	No data.	2
500	http://image.tmdb.org/t/p/w185/3oWEuo0e8Nx8JvkqYCDec2iMY6K.jpg	Thomas "Tom" Cruise (born Thomas Cruise Mapother IV; July 3, 1962) is an American actor and filmmaker. He has been nominated for three Academy Awards and has won three Golden Globe Awards.\n\nHe started his career at age 19 in the 1981 film Endless Love. After portraying supporting roles in Taps (1981) and The Outsiders (1983), his first leading role was in Risky Business, released in August 1983. Cruise became a full-fledged movie star after starring as Pete "Maverick" Mitchell in Top Gun (1986). He has since 1996 been well known for his role as secret agent Ethan Hunt in the Mission: Impossible film series. One of the biggest movie stars in Hollywood, Cruise has starred in many successful films, including The Color of Money (1986), Cocktail (1988), Rain Man (1988), Born on the Fourth of July (1989), Far and Away(1992), A Few Good Men (1992), The Firm (1993), Interview with the Vampire: The Vampire Chronicles (1994), Jerry Maguire (1996), Eyes Wide Shut (1999), Magnolia (1999), Vanilla Sky (2001), Minority Report (2002),The Last Samurai (2003), Collateral (2004), War of the Worlds (2005), Lions for Lambs (2007), Valkyrie (2008), Knight and Day (2010), Jack Reacher (2012), Oblivion (2013), and Edge of Tomorrow (2014).\n\nIn 2012, Cruise was Hollywood's highest-paid actor. Fifteen of his films grossed over $100 million domestically; twenty-one have grossed in excess of $200 million worldwide. Cruise is known for his support for the Church of Scientology and its affiliated social programs. From: Wikipedia.	Tom Cruise	1962-07-03	No data.	2
1333	http://image.tmdb.org/t/p/w185/olYcaJoZuHVW92gZgtVMUWGqMR8.jpg	Andrew "Andy" Clement Serkis (born 20 April 1964) is an English film actor and director. He is best known for his performance capture roles comprising motion capture acting, animation and voice work for such computer-generated characters as Gollum in The Lord of the Rings film trilogy (2001–2003) and The Hobbit: An Unexpected Journey (2012), King Kong in the eponymous 2005 film, Caesar in the Planet of the Apes reboot series (2011–17), Captain Haddock / Sir Francis Haddock in Steven Spielberg's The Adventures of Tintin (2011), and Supreme Leader Snoke in Star Wars: The Force Awakens (2015). Upcoming performance capture roles include Supreme Leader Snoke in Star Wars: The Last Jedi (2017), and Baloo in Jungle Book (2018).\n\nSerkis's film work in motion capture has been critically acclaimed. He has received an Empire Award, and two Saturn Awards for his motion-capture acting. He earned a Golden Globe nomination for his portrayal of serial killer Ian Brady in the British television film Longford (2006) and was nominated for a BAFTA for his portrayal of new wave and punk rock musician Ian Dury in the biopic Sex & Drugs & Rock & Roll (2010).\n\nIn 2015, he began playing Ulysses Klaue in the Marvel Cinematic Universe beginning with Avengers: Age of Ultron. Serkis has his own motion capture workshop, The Imaginarium Studios in London, which he used for Jungle Book. He made his directorial debut with the 2017 film Breathe.\n\nDescription above from the Wikipedia article Andy Serkis, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Andy Serkis	1964-04-20	No data.	2
9827	http://image.tmdb.org/t/p/w185/laJdQNmsuR2iblYUggEqr49LvwJ.jpg	Mary Rose Byrne (born 24 July 1979) is an Australian actress. Byrne made her screen debut in 1994 with a small role in the film Dallas Doll. In 2000, she played a leading role in the Australian film The Goddess of 1967, which brought her a Venice Film Festival award for Best Actress. Since 2007, she has played Ellen Parsons in the cable television series Damages, which has earned her two Golden Globe and two Emmy nominations. In 2011, she starred in the critically acclaimed and financially successful films Insidious, X-Men: First Class and Bridesmaids.\n\nDescription above from the Wikipedia article Rose Byrne, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rose Byrne	1979-07-24	No data.	1
234352	http://image.tmdb.org/t/p/w185/tN5jVaEYV52zNC8e5MJAXjvti3w.jpg	Margot Elise Robbie (born 2 July 1990) is an Australian actress and film producer. She is known for her role as Donna Freedman on the soap opera Neighbours, which earned her two Logie Award nominations. In 2011, Robbie began starring as Laura Cameron in the ABC drama series Pan Am. Following Pan Am's cancellation, Robbie has appeared in the feature films About Time (2013), The Wolf of Wall Street (2013), Suicide Squad (2016) and many more. In 2017 she starred in the biographical film I, Tonya, which earned her many accolades including her first Academy Award nomination. Since 2016 she has been married to British assistant director and producer Tom Ackerley.	Margot Robbie	1990-07-02	No data.	1
205307	http://image.tmdb.org/t/p/w185/r3hs2FTSp0RvR7lB2jeqF6tNg9z.jpg	Karen Lucille Hale (born June 14, 1989), better known as Lucy Hale, is an American actress and singer. She is known for her roles as Becca Sommers in Bionic Woman, Rose Baker in Privileged, Sherrie in the horror film Scream 4, and as Aria Montgomery on the hit ABC Family series Pretty Little Liars. She is also known for her appearance on the reality show American Juniors.\n\nDescription above from the Wikipedia article Lucy Hale, licensed under CC-BY-SA, full list of contributors on Wikipedia	Lucy Hale	1989-06-14	No data.	1
934281	http://image.tmdb.org/t/p/w185/9Xrq360pqpw3unye4T6zn2xz4q2.jpg	Alexander Draper Wolff (born November 1, 1997) is an American actor and musician.He first gained recognition for starring alongside his older brother Nat in the Nickelodeon musical comedy series The Naked Brothers Band (2007–09), which was created by the boys' mother Polly Draper. Wolff and his brother released two soundtrack albums for the series, The Naked Brothers Band and I Don't Want to Go to School, which were co-produced by their father Michael Wolff. Subsequent to the conclusion of the Nickelodeon series, Wolff and his older brother also formed a duo called Nat & Alex Wolff, and they released the album Black Sheep in 2011. Later on, Wolff began focusing his career on further acting roles. He portrayed Dzhokhar Tsarnaev in Patriots Day (2016) and John "Derf" Backderf in My Friend Dahmer (2017). He also starred in My Big Fat Greek Wedding 2 (2016), Jumanji: Welcome to the Jungle (2017), and Hereditary (2018).\n\nFrom Wikipedia, the free encyclopedia	Alex Wolff	1997-11-01	No data.	2
43366	http://image.tmdb.org/t/p/w185/zo44U71uiMNVW1HSiOa5F9MpqIq.jpg	Ann Dowd is an American actress. She decided to become an actress while a premed student at the College of the Holy Cross in Worcester, Massachusetts. She graduated in 1978 and went on to study at The Theatre School at DePaul University. In 1993 she won the Clarence Derwent Award for her performance in the play Candida. She has appeared in television shows including House, The X-Files, Third Watch and Law & Order: Special Victims Unit. Films Dowd has appeared in include Lorenzo's Oil, Philadelphia, Apt Pupil, Garden State and Flags of Our Fathers.	Ann Dowd	1956-01-30	No data.	1
1341	http://image.tmdb.org/t/p/w185/vlKBbOc0htUsDGvcxeULcFXDMRo.jpg	From Wikipedia, the free encyclopedia.\n\nDonnie Yen (born 27 July 1963) is a Hong Kong actor, martial artist, film director, action choreographer and film producer. Apart from being a well-known film and television actor in Hong Kong, Yen has also gained international recognition for appearing in many films together with other prominent and internationally-known actors such as Jackie Chan, Jet Li and Michelle Yeoh. He is considered to be Hong Kong's top action star; director Peter Chan mentioned that he "is the 'it' action person right now" and "has built himself into a bona fide leading man, who happens to be an action star."\n\nDescription above from the Wikipedia article Donnie Yen , licensed under CC-BY-SA, full list of contributors on Wikipedia.	Donnie Yen	1963-07-27	No data.	2
20519	http://image.tmdb.org/t/p/w185/Apus3dKsGBSRgsQg6N5T41F10at.jpg	From Wikipedia, the free encyclopedia.\n\nSimon Yam Tat-Wah, born March 19, 1955, is a Hong Kong actor and film producer.\n\nDescription above from the Wikipedia article Simon Yam Tat-Wah, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Simon Yam	1955-03-19	No data.	2
7499	http://image.tmdb.org/t/p/w185/i6zIpHiKBnaHtacJU6qgeoDjiw1.jpg	Jared Joseph Leto (born December 26, 1971) is an American actor and musician. He began his career as a model before studying art, and then later, film and video. Leto gained fame during his role as Jordan Catalano in My So-Called Life. He has appeared in films such as Fight Club; Girl, Interrupted; Panic Room; American Psycho; Alexander; Requiem for a Dream; Lord of War, Prefontaine, Mr. Nobody and Suicide Squad. He is the lead vocalist, rhythm guitarist and main songwriter for the American rock band 30 Seconds to Mars and has directed music videos under the pseudonym Bartholomew Cubbins.	Jared Leto	1971-12-26	No data.	2
26756	http://image.tmdb.org/t/p/w185/xqh4U82vnUOJKs5fygWWejdpclx.jpg	From Wikipedia, the free encyclopedia.  Yasuaki Kurata (  Kurata Yasuaki , born March 20, 1946), a.k.a David Kurata, is a Japanese actor specializing in action movies. An accomplished martial artist, he has dan ranks in karate (5th degree), judo (3rd degree), and aikido (2nd degree). He is perhaps best known for his extended battle against Jet Li in Fist of Legend and for his villainous role in So Close. He is fluent in Cantonese.\n\nKurata's home town is Sakura-mura, Niihari District, Ibaraki (now part of Tsukuba). Having studied performing arts at Nihon University and Toei Theater School, he began to work as an actor in the late 1960s. In 1971, Kurata made his Hong Kong debut in the Shaw Brothers Studio kung-fu movie Angry Guest  . Since then he has appeared in numerous other films and TV series within the genre.  In addition to his work as an actor, Kurata runs the stunt agency Kurata Promotion (established 1976 under the name Kurata Action Club),  teaches at a private college (the University of Creation, Art, Music &amp; Social Work),  is chief advisor to the All Japan Nunchaku League, and in 2004 published a book, Hong Kong Action Star Kōyūroku.  Description above from the Wikipedia article Yasuaki Kurata, licensed under CC-BY-SA,full list of contributors on Wikipedia.	Yasuaki Kurata	1946-03-20	No data.	2
28782	http://image.tmdb.org/t/p/w185/nkrIGojQy6FNn9s5cfpiUAmLeNz.jpg	Monica Bellucci (born September 30, 1964) is an Italian actress and fashion model. Bellucci began her career as a model and made a transition to Italian films. She played the role of Persephone in the 2003 science-fiction films The Matrix Reloaded and The Matrix Revolutions, Mary Magdalene in the 2004 biblical drama The Passion of the Christ, and Alex in the controversial art film Irreversible. Bellucci was a Bond girl in the 2015 James Bond film Spectre, making her the oldest Bond girl in the franchise.\n\nDescription above from the Wikipedia article Monica Bellucci, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Monica Bellucci	1964-09-30	No data.	1
5294	http://image.tmdb.org/t/p/w185/fwaEgwYJdzGyBmGcHiH13vobQii.jpg	Chiwetelu Umeadi "Chiwetel" Ejiofor was born on 10 July 1977 in Forest Gate, London. He attended London Academy of Music and Dramatic Art, but had to leave after a year after receiving the roll of Ens, in Steven Spielberg's historical drama, "Amistad". For his first leading film role in Dirty Pretty Things, he won a British Independent Film Award for best actor. He has portrayed Othello in numerous stage productions including Bloomsbury Theatre, Theatre Royal in Glasgow and Donmar Warehouse. He made his directorial debut in the short film Slapper, which he also wrote. He soon became well known after moving on to bigger roles in "Inside Man" (2005), "American Gangster" (2007), "Children of Men" and Steve McQueen's "12 Years a Slave" (2012).	Chiwetel Ejiofor	1977-07-10	No data.	2
1059597	http://image.tmdb.org/t/p/w185/csmSAm3vpJj9lB5vb5fTbRqOw9C.jpg	Zoey Francis Thompson Deutch (born November 10, 1994) is an American actress. She is known for portraying Juliet Martin on The CWtelevision series Ringer, Maya Bennett on the Disney Channel television series The Suite Life on Deck, and Rose Hathaway in the 2014 film Vampire Academy.\n\nDescription above from the Wikipedia article Zoey Deutch, licensed under CC-BY-SA, full list of contributors on Wikipedia	Zoey Deutch	1994-11-10	No data.	1
83271	http://image.tmdb.org/t/p/w185/sCeY5nuPUhfwWElxNtXuwRYKMBr.jpg	Glen Thomas Powell Jr. is an American actor, writer, and producer. Powell was born and raised in Austin, Texas by Glen Sr. and Cyndy Powell. He has one older sister, Lauren Powell, who lives in Houston, Texas. His younger sister, Leslie Powell, is a singer. Before moving to Los Angeles, Glen became an active member of the Sigma Phi Epsilon Fraternity and attended The University of Texas at Austin, majoring in Radio, Television and Film. Powell began performing in professional theatre with roles in The Music Man, Oliver, O. Henry, and The Sound of Music. He also was part of the award winning performance troupe, the "Broadway Texas Players" from 1999–2003. He has starred in television shows such as Into the West, Jack & Bobby, CSI: Miami, Without a Trace, along with feature films The Great Debaters, The Hottest State, Fast Food Nation, Jumping Off Bridges, The Safe Side, The Wendell Baker Story, and Spy Kids 3-D: Game Over. In 2007, before his first year of college, Glen landed a role in The Great Debaters, directed by and starring Denzel Washington. Since moving to Los Angeles, he has starred in television shows such as: Into the West, Jack & Bobby, CSI: Miami, Without a Trace, Rizzoli & Isles and The Lying Game along with feature films including: The Hottest State, Fast Food Nation, Jumping Off Bridges, The Safe Side, The Wendell Baker Story and The Dark Knight Rises. Most recently, he filmed the independent feature Stuck in Love.[2][3] In 2013, Powell was cast in a role in The Expendables 3.	Glen Powell	1988-10-21	No data.	2
1400744	http://image.tmdb.org/t/p/w185/vVROKlWJYQsAhUTLWVTtTNGuzGN.jpg	Joan Smalls Rodríguez (born July 11, 1988) is a Puerto Rican fashion Supermodel. In 2013, she ranked at #8 on Forbes magazine's "World's Highest-Paid Models" list. In 2011, she became the first Latina model to represent Estée Lauder cosmetics. In January 2014, Smalls appeared on the "Return of the Supermodel" cover of American Elle. Wikipedia	Joan Smalls	1988-07-11	No data.	1
7470	http://image.tmdb.org/t/p/w185/43nyfW3TxD3PxDqYB8tyqaKpDBH.jpg	Michael Lee Aday (born Marvin Lee Aday; September 27, 1947), better known by his stage name, Meat Loaf, is an American rock musician and actor. He is noted for the Bat Out of Hell album trilogy consisting of Bat Out of Hell, Bat Out of Hell II: Back Into Hell and Bat Out of Hell III: The Monster Is Loose. Bat Out of Hell has sold more than 43 million copies. After more than 30 years, it still sells an estimated 200,000 copies annually, and stayed on the charts for over nine years, making it one of the best selling albums of all time. Although he enjoyed success with Bat Out of Hell and Bat Out of Hell II: Back into Hell, and earned a Grammy Award for Best Rock Vocal Performance, Solo for a track on the latter album, Meat Loaf experienced some initial difficulty establishing a steady career within his native US. However, he has retained iconic status and popularity in Europe, especially the UK, where he ranks 23rd for number of weeks overall spent on the charts. He ranked 96th on VH1's "100 Greatest Artists of Hard Rock." Meat Loaf has also appeared in over 50 movies or television shows, sometimes as himself, or as characters resembling his stage persona. His most notable roles include Eddie in the American premiere of The Rocky Horror Show and in The Rocky Horror Picture Show, and Robert "Bob" Paulson in Fight Club.\n\nDescription above from the Wikipedia article Meat Loaf, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Meat Loaf	1947-09-27	No data.	2
11616	http://image.tmdb.org/t/p/w185/sFPpzOuDOLyB0YmTstS7MTSzEb6.jpg	Olivia Haigh Williams (born 26 July 1968) is an English film, stage and television actress who has appeared in British and American films.  Description above from the Wikipedia article Olivia Williams, licensed under CC-BY-SA, full list of contributors on Wikipedia	Olivia Williams	1968-07-26	No data.	1
970216	http://image.tmdb.org/t/p/w185/su6KMYwfr4qVXRjlXi4u0h16Fxg.jpg	Austin Miles Stowell (born December 24, 1984) is an American actor. He is best known for his role as Kyle Connellan in Alcon Entertainment's Dolphin Tale and Dolphin Tale 2, and as Dalton Joiner in the Vietnam romantic drama Love and Honor with Liam Hemsworth.\n\n Austin Stowell was born in Kensington, Connecticut, where he was raised by his father, Robert, a retired steelworker, and his mother, Elizabeth, a schoolteacher.  He graduated from Berlin High School in 2003 with the intention of pursuing a professional career in acting. Upon acceptance at the University of Connecticut in Storrs, Connecticut, he studied with the Department of Dramatic Arts, a division of the School of Fine Arts. He performed in several productions with the Connecticut Repertory Theatre, including Julius Caesar, It Can't Happen Here, and As You Like It.  Stowell graduated with a Bachelor of Fine Arts in 2007.	Austin Stowell	1984-12-24	No data.	2
529	http://image.tmdb.org/t/p/w185/vTqk6Nh3WgqPubkS23eOlMAwmwa.jpg	Guy Edward Pearce (born 5 October 1967) is an English-born Australian actor and musician, known for his roles as Leonard Shelby in Christopher Nolan's Memento, Lieutenant Ed Exley in the film L.A. Confidential, a drag queen in the cult film The Adventures of Priscilla, Queen of the Desert, Mike Young in the popular Australian television series Neighbours and King Edward VIII ("David") in the 2010 Best Picture Oscar winner The King's Speech.	Guy Pearce	1967-10-05	No data.	2
2282	http://image.tmdb.org/t/p/w185/2Eu3j31JDJek70ZXLY6xfeUaJoR.jpg	Sir Ben Kingsley, CBE (born 31 December 1943), born Krishna Pandit Bhanji , is a British actor. He has won an Oscar, BAFTA, Golden Globe and Screen Actors Guild awards in his career. He is known for starring as Mohandas Gandhi in the film Gandhi in 1982, for which he won the Academy Award for Best Actor. He is also known for his performances in the films Schindler's List (1993), Prince of Persia: The Sands of Time (2010), and House of Sand and Fog.	Ben Kingsley	1943-12-31	No data.	2
515	http://image.tmdb.org/t/p/w185/fF6tCfuvuUhaePm5onUNnIE4FvL.jpg	Glenn Close (born March 19, 1947) is an American actress and singer of theatre and film, known for her roles as a femme fatale (the scheming Marquise de Merteuil in Dangerous Liaisons (1988), and deranged stalker Alex Forrest in Fatal Attraction (1987). She is also known for playing Cruella de Vil in 101 Dalmatians (1996), and its sequel 102 Dalmatians (2000). She has been more recently known for her Emmy winning role as Patty Hewes in the FX TV series Damages. She has been nominated five times for an Oscar, and once for a BAFTA Film Award, and has won three Tonys, an Obie, three Emmys, two Golden Globes, and a Screen Actors Guild Award. Description above from the Wikipedia article Glenn Close, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Glenn Close	1947-03-19	No data.	1
6886	http://image.tmdb.org/t/p/w185/dzB58d6fNrTEi7nBAU1tySJc2at.jpg	Christina Ricci (born February 12, 1980) is an American actress. Ricci received initial recognition and praise as a child star for her performance as Wednesday Addams in The Addams Family (1991) and Addams Family Values (1993), and her role as Kat Harvey in Casper (1995). Ricci made a transition into more adult-oriented roles with The Ice Storm (1997), followed by an acclaimed performance in The Opposite of Sex (1998), for which she received a Golden Globe nomination for Best Actress. She continued her success with well-received performances in Sleepy Hollow (1999) and Monster (2003). Ricci has appeared in the films Black Snake Moan (2007), Penelope (2008), Speed Racer (2008), New York, I Love You (2009) and After.Life (2009) opposite Liam Neeson.	Christina Ricci	1980-02-12	No data.	1
3036	http://image.tmdb.org/t/p/w185/uKydQYuZ9TnCzvbQLtj6j98vWAT.jpg	John Paul Cusack (born June 28, 1966 - Height: 6' 2½" (1,89 m)) is an American film actor and screenwriter. He has appeared in more than 50 films, including The Journey of Natty Gann, Say Anything..., Grosse Point Blank, Con Air, High Fidelity, and 2012.\n\nCusack was born in Evanston, Illinois, to a Catholic Irish-American family. His mother, Ann Paula "Nancy" (née Carolan), is a former mathematics teacher and political activist. His father, Richard Cusack (1925–2003), was an actor, as are John's siblings, Ann, Joan, Bill, and Susie. His father was also a documentary filmmaker, owned a film production company, and was a friend of activist Philip Berrigan.\n\nCusack spent a year at New York University before dropping out, saying that he had "too much fire in [his] belly".\n\nCusack is a fan of both the Chicago Cubs and the Chicago White Sox, for which, he says, he is "in trouble there". He has led the crowd in a performance of "Take Me Out to the Ball Game" at Wrigley Field. He has also been spotted at multiple Chicago Bears games, and attended many of the Stanley Cup Finals games in support of the Chicago Blackhawks.\n\nCusack has trained in kickboxing for over 20 years, under former world kickboxing champion Benny Urquidez. He began training under Urquidez in preparation for his role in Say Anything... and currently holds the rank of a level 6 black belt in Urquidez's Ukidokan Kickboxing system.\n\nDescription above from the Wikipedia article John Cusack, licensed under CC-BY-SA, full list of contributors on Wikipedia.	John Cusack	1966-06-28	No data.	2
32205	http://image.tmdb.org/t/p/w185/pt6kjBmnhamO1nvc1YqX3AczYpS.jpg	Brendan Fletcher (born December 15, 1981) is a Canadian actor.\n\nDescription above from the Wikipedia article Brendan Fletcher, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Brendan Fletcher	1981-12-15	No data.	2
8784	http://image.tmdb.org/t/p/w185/mr6cdu6lLRscfFUv8onVWZqaRdZ.jpg	Daniel Wroughton Craig is an English actor, best known for playing British secret agent James Bond since 2006. Craig is an alumnus of the National Youth Theatre and graduated from the Guildhall School of Music and Drama in London and began his career on stage. His early on screen appearances were in the films Elizabeth, The Power of One and A Kid in King Arthur's Court, and on Sharpe's Eagle and Zorro in television. His appearances in the British films Love Is the Devil, The Trench and Some Voices attracted the industry's attention, leading to roles in bigger productions such as Lara Croft: Tomb Raider, Road to Perdition, Layer Cake and Munich.	Daniel Craig	1968-03-02	No data.	2
18999	http://image.tmdb.org/t/p/w185/jYYnhWbNoCSufoYkvs1GBZIyIX.jpg	From Wikipedia, the free encyclopedia\n\nJonathan Kimble "J. K." Simmons (born January 9, 1955) is an American actor. He is perhaps best known for his roles on television as Dr. Emil Skoda in NBC's Law & Order (and other shows in the Law & Order franchise), Assistant Police Chief Will Pope in TNT's The Closer, neo-Nazi Vernon Schillinger in the HBO prison drama Oz, on film as J. Jonah Jameson in the Spider-Man franchise, as Mac MacGuff in Juno, and as the voice of Cave Johnson in Portal 2.\n\nDescription above from the Wikipedia article J.K. Simmons, licensed under CC-BY-SA, full list of contributors on Wikipedia.	J.K. Simmons	1955-01-09	No data.	2
1896	http://image.tmdb.org/t/p/w185/b1EVJWdFn7a75qVYJgwO87W2TJU.jpg	Donald Frank "Don" Cheadle, Jr. was on born November 29, 1964 in Kansas City, Missouri. He is an American film actor as well as producer. Cheadle first received widespread notice for his portrayal of Mouse Alexander in the film Devil in a Blue Dress, for which he won Best Supporting Actor awards from the Los Angeles Film Critics Association and the National Society of Film Critics and was nominated for similar awards from the Screen Actors Guild and the NAACP Image Awards.\n\nFollowing soon thereafter was his performance in the title role of the 1996 HBO TV movie, Rebound: The Legend of Earl "The Goat" Manigault. He also starred in the 1997 film Volcano, directed by Mick Jackson. Cheadle continued his rise to prominence in the late 1990s and the early 2000s for his supporting roles in the Steven Soderbergh-directed films Out of Sight, Traffic, and Ocean's Eleven. In 2004, his lead role as Rwandan hotel manager Paul Rusesabagina in the genocide drama film Hotel Rwanda earned him an Academy Award nomination for Best Actor. He also starred in, and was one of the producers of Crash, which won the 2005 Academy Award for Best Picture.\n\nIn 2010, Cheadle assumed the role of James Rhodes in the film Iron Man 2, replacing Terrence Howard, his Crash co-star. He also campaigns for the end of genocide in Darfur, Sudan, and co-authored a book concerning the issue titled Not On Our Watch: The Mission To End Genocide In Darfur And Beyond. In 2007, Cheadle was awarded the BET Humanitarian award of the year for his numerous humanitarian services he rendered for the cause of the people of Darfur and Rwanda. In 2010, Cheadle was named U.N. Environment Program Goodwill Ambassador.	Don Cheadle	1964-11-29	No data.	2
4783	http://image.tmdb.org/t/p/w185/9uvfpHrMIl8CiztkNb3hJPYbYao.jpg	Nigel John Dermot "Sam" Neill (born 14 September 1947) is a New Zealand actor. He is perhaps best known for his starring role as paleontologist Dr Alan Grant in Jurassic Park and Jurassic Park III. He has also had a number of high-profile roles including: the lead in Reilly, Ace of Spies, the adult Damien in Omen III: The Final Conflict, Merlin in the miniseries Merlin, Captain Vasily Borodin in The Hunt for Red October, Lord Friedrich Hoffman in Snow White: A Tale of Terror, and Alisdair Stewart in The Piano.\n\nMost recently he played Cardinal Thomas Wolsey in the Peace Arch Entertainment production for Showtime, The Tudors.\n\nDescription above from the Wikipedia article Sam Neill licensed under CC-BY-SA, full list of contributors on Wikipedia.	Sam Neill	1947-09-14	No data.	2
71580	http://image.tmdb.org/t/p/w185/wz3MRiMmoz6b5X3oSzMRC9nLxY1.jpg	Benedict Timothy Carlton Cumberbatch (born 19 July 1976) is an English film, television, and theatre actor. His most acclaimed roles include: Stephen Hawking in the BBC drama "Hawking" (2004); William Pitt in the historical film "Amazing Grace" (2006); the protagonist Stephen Ezard in the miniseries thriller "The Last Enemy" (2008); Paul Marshall in "Atonement" (2007); Bernard in "Small Island" (2009); and Sherlock Holmes in the modern BBC adaptation series "Sherlock" (2010).\n\nHe is the son of actors Timothy Carlton (Timothy Carlton Congdon Cumberbatch) and Wanda Ventham.	Benedict Cumberbatch	1976-07-19	No data.	2
996701	http://image.tmdb.org/t/p/w185/g9DoeCHyn2C110gHbnh6nrD08Id.jpg	Miles Alexander Teller (born February 20, 1987) is an American actor. Born in Downingtown, Pennsylvania and an alumnus of NYU's Tisch School of Arts, he appeared in several short films and television movies before making his feature film debut in Rabbit Hole (2010). He had supporting roles in Footloose (2011) and Project X (2012), before garnering critical acclaim for his leading performance as Sutter Keely in The Spectacular Now (2013), for which he was awarded the Sundance Film Festival Special Jury Prize for Dramatic Acting and his role as Andrew Neiman in Whiplash, for which he was nominated for the Gotham Independent Film Award for Best Actor, the Satellite Award for Best Actor - Motion Picture, and the BAFTA Rising Star Award.	Miles Teller	1987-02-20	No data.	2
140	http://image.tmdb.org/t/p/w185/9nbtjqsx3De7hO2XDtrBQ7M9VCH.jpg	Lucy Alexis Liu (born Lucy Liu; December 2, 1968) is an American actress, voice actress, director, producer, singer and artist. She became known for playing the role of the vicious and ill-mannered Ling Woo in the television series Ally McBeal (1998–2002), for which she was nominated for a Primetime Emmy Award for Outstanding Supporting Actress in a Comedy Series and a Screen Actors Guild Award for Outstanding Performance by a Female Actor in a Comedy Series. Liu's film work includes starring as one of the heroines in Charlie's Angels (2000), portraying O-Ren Ishii in Kill Bill (2003), and starring roles in the main casts of Payback (1999), Chicago (2002), and the animated film series Kung Fu Panda (2008–present) portraying the character Master Viper.\n\nIn 2008, she starred in an ABC comedy-drama, Cashmere Mafia, which ended after one abbreviated season. The show was one of only a few American television shows to have an Asian American series lead. In 2012, Liu joined the cast of the TNT series Southland in the recurring role of Jessica Tang, for which she won the Critics' Choice Television Award for Best Drama Guest Actress. She is currently co-starring in the Sherlock Holmes–inspired crime drama series Elementary as Joan Watson for which she won the Seoul International Drama Award for Best Actress, and voicing Silvermist in Disney's Tinker Bell film series.\n\nDescription above from the Wikipedia article Lucy Liu, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Lucy Liu	1968-12-02	No data.	1
3051	http://image.tmdb.org/t/p/w185/oMps1ZPH3dHmqZmrpZcRiyUBgA.jpg	Antonia "Toni" Collette (born 1 November 1972) is an Australian actress and musician, known for her acting work on stage, television and film as well as a secondary career as the lead singer of the band Toni Collette & the Finish.\n\nCollette's acting career began in the early 1990s with comedic roles in films such as Spotswood (1992) and Muriel's Wedding (1994), for which she was nominated for a Golden Globe Award for Best Actress. Following her performances in Emma (1996) and The Boys (1998), Collette achieved international recognition as a result of her Academy Award-nominated portrayal of Lynn Sear in The Sixth Sense (1999). She has appeared in thrillers such as Shaft (2000) and Changing Lanes (2002) and independent comedy films like About a Boy (2002), In Her Shoes (2005) and Little Miss Sunshine (2006).\n\nIn 2009, she began playing the lead role in the television series United States of Tara, for which she won a Primetime Emmy Award and a Golden Globe Award for Best Actress – Television Series Musical or Comedy in 2010.	Toni Collette	1972-11-01	No data.	1
8256	http://image.tmdb.org/t/p/w185/eY3cgIQR4ao1fqCMvxrdcR0nyt0.jpg	Anne Celeste Heche ( born May 25, 1969) is an American actress, director, and screenwriter. She is a three-time Emmy Award nominee, winning the Daytime Emmy award for "Outstanding Younger Actress in a Drama Series" for her role on Another World, nominated again for the same role, and then again nominated for "Outstanding Supporting Actress in a Miniseries or Movie" for her role in Gracie's Choice.\n\nDescription above from the Wikipedia article Anne Heche, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Anne Heche	1969-05-25	No data.	1
12052	http://image.tmdb.org/t/p/w185/8x3jpWD7DEvyMXO1FOjwNdd1UZT.jpg	Paltrow made her acting debut on stage in 1990 and started appearing in films in 1991. She gained early notice for her work in films such as Se7en (1995), Emma (1996), in which she played the title role, and Sliding Doors (1998). She garnered worldwide recognition through her performance in Shakespeare in Love (1998), for which she won the Academy Award for Best Actress, a Golden Globe Award and two Screen Actors Guild Awards, for Outstanding Lead Actress and as a member of the Outstanding Cast. Since then, Paltrow has portrayed supporting as well as lead roles in films such as The Talented Mr. Ripley (1999), Shallow Hal (2001) and Proof (2005), for which she earned a Golden Globe nomination as Best Actress in Motion Picture Drama. In 2008, she appeared in the highest grossing movie of her career, the superhero film Iron Man, and then reprised her role as Pepper Potts in its sequel, Iron Man 2 (2010). Paltrow has been the face of Estée Lauder's Pleasures perfume since 2005.	Gwyneth Paltrow	1972-09-27	No data.	1
93210	http://image.tmdb.org/t/p/w185/nSZ0JZEvHnEJ3sxQ8TWwOvQlMSo.jpg	Domhnall Gleeson (born May 12, 1983) is an Irish actor, director and writer from Dublin. He has acted on both stage and screen, picking up a Tony Award nomination in 2006 for his part in the Broadway production The Lieutenant of Inishmore. He has performed in several shows at Dublin's Gate Theatre, including adaptations of American Buffalo and Great Expectations.\n\nGleeson's work on-screen includes the television series The Last Furlong, the comedy sketch show Your Bad Self and the films Six Shooter, Studs and Boy Eats Girl. He played Bill Weasley in the film Harry Potter and the Deathly Hallows, released in 2010/2011. He is the son of actor Brendan Gleeson, who plays Alastor Moody in the series.\n\nDescription above from the Wikipedia article Domhnall Gleeson, licensed under CC-BY-SA, full list of contributors on Wikipedia	Domhnall Gleeson	1983-05-12	No data.	2
1019	http://image.tmdb.org/t/p/w185/8F1dY2rjZ1YDEKH0imDs21xdTDX.jpg	Mikkelsen was born in the Østerbro area of Copenhagen, the son of Bente Christiansen and Henning Mikkelsen, a cab driver. He is the brother of actor Lars Mikkelsen. After attending Århus Theatre School, he made his film debut in the movie Pusher. He has starred in popular Danish movies such as Flickering Lights (Danish: Blinkende Lygter), The Green Butchers (Danish: De Grønne Slagtere), Valhalla Rising, his film debut Pusher, and Pusher II. Arguably, Mikkelsen's most famous role was as a policeman in the Danish television series Unit One (Danish: Rejseholdet). He also starred as Tristan in the Jerry Bruckheimer production of King Arthur, as well as playing the villain Le Chiffre in the 2006 James Bond film, Casino Royale. Also in 2006 he took the lead role in the Oscar nominated After the Wedding. In 2008, when the Quantum of Solace video game was released, Mikkelsen reprised Le Chiffre, voicing the character throughout. Also in 2008, Mikkelsen, along with fellow James Bond villain Richard Kiel, was invited by Swiss watchmaker Swatch to Bregenz, Austria to present the Swatch 007 Villain Collection. Mikkelsen had a large supporting role in the 2010 remake of the film Clash Of The Titans, starring as Draco, the leader of the king's guard. Mikkelsen will co-star alongside Harvey Keitel and Roy Dupuis in the Rue Morgue Cinema horror western Cut Throats Nine. Mads Mikkelsen serves as Goodwill Ambassador for Refugees United.\n\nDescription above from the Wikipedia article Mads Mikkelsen, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Mads Mikkelsen	1965-11-22	No data.	2
5469	http://image.tmdb.org/t/p/w185/kIRs1PlRtGH1C5Hr3fK2oyDtJXF.jpg	Ralph Nathaniel Twisleton-Wykeham-Fiennes (born December 22, 1962) is an English actor, director and producer. A noted Shakespeare interpreter, he first achieved success onstage at the Royal National Theatre.\n\nFiennes' portrayal of Nazi war criminal Amon Göth in Schindler's List (1993) earned him nominations for the Academy Award for Best Supporting Actor and the Golden Globe Award for Best Supporting Actor, and he won the BAFTA Award for Best Actor in a Supporting Role. His performance as Count Almásy in The English Patient (1996) garnered him a second Academy Award nomination, for Best Actor, as well as BAFTA and Golden Globe nominations.\n\nSince then, Fiennes has been in a number of notable films, including Quiz Show (1994), Strange Days (1995), The End of the Affair (1999), Red Dragon (2002), The Constant Gardener (2005), In Bruges (2008), The Reader (2008), Clash of the Titans (2010), Great Expectations (2012), and The Grand Budapest Hotel (2014). He voiced Rameses in The Prince of Egypt (1998). Fiennes is also known for his roles in major film franchises such as the Harry Potter film series (2005–2011), in which he played Lord Voldemort, and the James Bond series, in which he has played Gareth Mallory / M, starting with the 2012 film Skyfall.\n\nIn 2011, Fiennes made his directorial debut with his film adaptation of Shakespeare's tragedy Coriolanus, in which he also played the title character. Fiennes won a Tony Award for playing Prince Hamlet on Broadway. Since 1999, Fiennes has served as an ambassador for UNICEF UK.	Ralph Fiennes	1962-12-22	No data.	2
1283	http://image.tmdb.org/t/p/w185/rHZMwkumoRvhKV5ZvwBONKENAhG.jpg	Helena Bonham Carter (born 26 May 1966) is an English actress of film, stage, and television. She made her film debut in K. M. Peyton's A Pattern of Roses before winning her first leading role as the titular character in Lady Jane. She is known for her roles in films such as A Room with a View, Fight Club, and the Harry Potter series, as well as for frequently collaborating with director Tim Burton, her domestic partner since 2001. Bonham Carter is a two-time Academy Award nominee for her performances in The Wings of the Dove and The King's Speech; her portrayal of Queen Elizabeth in the latter film garnering her a BAFTA Award in 2011.\n\nDescription above from the Wikipedia article Helena Bonham Carter, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Helena Bonham Carter	1966-05-26	No data.	1
53714	http://image.tmdb.org/t/p/w185/j7EhBy7O6IbCdcTlXFNKHYS5StH.jpg	Canadian actress Rachel McAdams was born on November 17, 1978 in London, Ontario. Rachel’s parents Lance and Sandra encouraged her talent in performing arts at an early age when she started figure skating at 4, and later acting at 12.  Throughout her education Rachel starred in numerous student productions before ultimately earning her BFA in Theater at York University in 2001. Although Rachel’s first major casting was her lead role in the Canadian TV series Slings and Arrows, she is best known for her breakout roles in Mean Girls (2004), and Wedding Crashers (2005).\n\nSince then Rachel has starred in a variety of  films such as Red Eye (2005), Family Stone (2005), State of Play (2005), The Time Traveler’s Wife (2009), and Sherlock Holmes (2009). Throughout her career Rachel has received several nominations and awards for her  performances.  In 2005 she received three wins and five nominations at the MTV Movie Awards for her work in The Notebook, and in 2009 won the Female Star of the Year Award from ShoWest.  Rachel has dated a few of her co-stars including Ryan Gosing from The Notebook (who she was once engaged to), and more recently Michael Sheen from Midnight in Paris.	Rachel McAdams	1978-11-17	No data.	1
368	http://image.tmdb.org/t/p/w185/1QHF5Oaen1caFymCEigpaSeTu8g.jpg	​Laura Jeanne Reese Witherspoon (born March 22, 1976), better known as Reese Witherspoon, is an American actress and film producer. Witherspoon landed her first feature role as the female lead in the movie The Man in the Moon in 1991; later that year she made her television acting debut, in the cable movie Wildflower. In 1996, Witherspoon appeared in Freeway and followed that appearance with roles in three major 1998 movies: Overnight Delivery, Pleasantville, and Twilight. The following year, Witherspoon appeared in the critically acclaimed Election, which earned her a Golden Globe nomination.2001 marked her career's turning point with the breakout role as "Elle Woods" in the box office hit Legally Blonde, and in 2002 she starred in Sweet Home Alabama, which became her biggest commercial film success to date. 2003 saw her return as lead actress and executive producer of Legally Blonde 2: Red, White &amp; Blonde. In 2005, Witherspoon received worldwide attention and praise for her portrayal of June Carter Cash in Walk the Line, which earned her an Academy Award, Golden Globe, BAFTA, and Screen Actors Guild Award for Best Actress in a Leading Role.\n\nWitherspoon married actor and Cruel Intentions co-star Ryan Phillippe in 1999; they have two children, Ava and Deacon. The couple separated at the end of 2006 and divorced in October 2007. Witherspoon owns a production company, Type A Films, and she is actively involved in children's and women's advocacy organizations. She serves on the board of the Children's Defense Fund (CDF), and was named Global Ambassador of Avon Products in 2007, serving as honorary chair of the charitable Avon Foundation.	Reese Witherspoon	1976-03-22	No data.	1
1893	http://image.tmdb.org/t/p/w185/kPNMpiZHsAzeQar4DiNsrekwHBU.jpg	Caleb Casey McGuire Affleck-Boldt (born August 12, 1975), best known as Casey Affleck is an American actor and film director. Throughout the 1990s and early 2000s, he played supporting roles in mainstream hits like Good Will Hunting (1997) and Ocean's Eleven (2001) as well as in critically acclaimed independent films such as Chasing Amy (1997). During this time, he became known as the younger brother of actor and director Ben Affleck, with whom he has frequently collaborated professionally. In 2007, his breakout year, Affleck gained recognition and critical acclaim for his work in Gone Baby Gone and The Assassination of Jesse James by the Coward Robert Ford, which gained him an Academy Award nomination for Best Supporting Actor.	Casey Affleck	1975-08-12	No data.	2
25246	http://image.tmdb.org/t/p/w185/mrGR5igHcVWdUP1X8yIt1qBMX1L.jpg	Andy Lau Tak-wah (born 27 September 1961) is a Hong Kong Cantopop singer, actor, presenter, and film producer. Lau has been one of Hong Kong's most commercially successful film actors since the mid-1980s, performing in more than 160 films while maintaining a successful singing career at the same time.\n\nFor his contributions, a wax figure of Lau was unveiled on 1 June 2005 at the Madame Tussauds Hong Kong. He also entered into Guinness World Records for "Most Awards Won by a Cantopop Male Artist". By April 2000, he had already won a total unprecedented 292 awards.	Andy Lau	1961-09-27	No data.	2
1253360	http://image.tmdb.org/t/p/w185/8HP2vzmDR4Q9tmciUwFmzQJoJzP.jpg	Pedro Pascal is a Chilean-born Amercian stage and screen director and actor, best known for his portrayal of Oberyn Martell in the HBO series "Game of Thrones" and of Javier Peña in the Netflix series "Narcos". He studied acting at the Orange County High School of the Arts and New York University's Tisch School of the Arts.	Pedro Pascal	1975-04-02	No data.	2
1331	http://image.tmdb.org/t/p/w185/ysED1kp94bpnweNVaDoVQQ6iy8X.jpg	From Wikipedia, the free encyclopedia\n\nHugo Wallace Weaving (born 4 April 1960) is a British-Australian film and stage actor. He is best known for his roles as Agent Smith in the Matrix trilogy, Elrond in the Lord of the Rings trilogy, "V" in V for Vendetta, and performances in numerous Australian character dramas.\n\nDescription above from the Wikipedia article Hugo Weaving, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Hugo Weaving	1960-04-04	No data.	2
532	http://image.tmdb.org/t/p/w185/zBvDX2HWepvW9im6ikgoyOL2Xj0.jpg	Joseph Peter "Joe" Pantoliano (born September 12, 1951) is an American film and television actor. He played the character of Ralph Cifaretto on The Sopranos, Bob Keane in La Bamba, Cypher in The Matrix, Teddy in Memento, Francis Fratelli in The Goonies, Guido "the Killer Pimp" in Risky Business, and Jennifer Tilly's violent mobster boyfriend, Caesar, in Bound. He also played US Marshall Renfro in both The Fugitive and U.S. Marshals. He is often referred to as "Joey Pants", due to the difficulty some have pronouncing his Italian surname.\n\nDescription above from the Wikipedia article Joe Pantoliano, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Joe Pantoliano	1951-09-12	No data.	2
20577	http://image.tmdb.org/t/p/w185/50fLRb6xKqIrtTC5fBWTuxh1j82.jpg	Amira Casar (born 1 May 1971) is a French actress who grew up in England, Ireland, and France. She has appeared in more than 50 films since 1989.	Amira Casar	1971-05-01	No data.	1
11665	http://image.tmdb.org/t/p/w185/zNoj0cJHoD8RPUDOgTpVgJ0KcXM.jpg	In 2000, 12-year old Angarano acted in Cover Me: Based on the True Life of an FBI Family. The following year, he landed his first major film role in Little Secrets, opposite Evan Rachel Wood and David Gallagher.\n\nMichael then starred in a 2003 telefilm named Maniac Magee as Jeffery Lionel Magee, a 12-year-old boy who finds his way into Two Mills, Pennsylvania, a place divided by racial prejudice. It premiered on Nickelodeon.\n\nIn 2004, he appeared in the movie version of the critically acclaimed novel Speak, which costarred Kristen Stewart. Angarano was the lead role in Sky High and had a major role in Lords of Dogtown, both of which were released in the summer of 2005. Other film roles include parts in The Bondage, Black Irish, Man in the Chair, Snow Angels, The Final Season, One Last Thing... and The Forbidden Kingdom.\n\nOn television, Angarano had a recurring role as Elliott, the son of Jack McFarland, on the television series Will & Grace. In 2007, Angarano appeared in four episodes of the hit 24 as Scott Wallace, a teenager taken hostage by a terrorist.\n\nIn 2008, Angarano was featured in Vanity Fair as one of Hollywood's "New Wave" young stars.\n\nHe filmed Gentlemen Broncos, from Napoleon Dynamite director Jared Hess. The comedy film was released in October 2009. In 2010 he had the lead role in Ceremony, and in 2011, Angarano starred in the horror-thriller film Red State as "Travis".	Michael Angarano	1987-12-03	No data.	2
16501	http://image.tmdb.org/t/p/w185/maJeS6bA6ku21rSRceISQtwHL2h.jpg	Milo Anthony Ventimiglia (born July 8, 1977) is an American television actor best known for his role of Peter Petrelli on the TV series Heroes. Ventimiglia was first noticed by fans during his three year stint on the WB series Gilmore Girls, playing Rory Gilmore's boyfriend Jess Mariano from 2001 until his final guest appearance in 2006.\n\nAfter his own WB series The Bedford Diaries, a recurring role as Meg Pryor's love interest on NBC's American Dreams, and playing Rocky Balboa's son in the sixth and final installment of the Rocky series, Rocky Balboa, Ventimiglia's big break came in 2006 when he received the part of nurse-turned-superhero Peter Petrelli for four seasons on NBC's Heroes.\n\nDescription above from the Wikipedia article Milo Ventimiglia, licensed under CC-BY-SA, full list of contributors on Wikipedia	Milo Ventimiglia	1977-07-08	No data.	2
76793	http://image.tmdb.org/t/p/w185/p1XDxKIz3z5O1NlXE6xQecKEe7v.jpg	Saahabzaade Irfan Ali Khan credited as Irrfan Khan or simply Irrfan, is an Indian film actor, known for his work predominantly in Hindi cinema, as well as his works in British films and Hollywood. In a film career spanning almost thirty years and featuring in more than fifty domestic films, Khan has received numerous awards, including a National Film Award and Filmfare Awards in four categories. Film critics, contemporaries and other experts consider him to be one of the finest actors in Indian cinema for his versatile and natural acting. In 2011, he was awarded the Padma Shri, India's fourth highest civilian honour for his contribution to the field of arts.\n\nGlobally, Khan has worked in several international projects such as The Warrior (2001), The Namesake (2006), The Darjeeling Limited (2007), the Academy Award winning film Slumdog Millionaire (2008), New York, I Love You (2009), The Amazing Spider-Man (2012), Life of Pi (2012), Jurassic World (2015) and Inferno (2016).	Irrfan Khan	1967-01-07	No data.	2
7399	http://image.tmdb.org/t/p/w185/o9M2PyoF7QDSMq1OwW0D892fIkV.jpg	​Benjamin Edward "Ben" Stiller (born November 30, 1965) is an American comedian, actor, writer, film director, and producer. He is the son of veteran comedians and actors Jerry Stiller and Anne Meara. After beginning his acting career with a play, Stiller wrote several mockumentaries, and was offered two of his own shows, both entitled The Ben Stiller Show. He began acting in films, and had his directorial debut with Reality Bites. Throughout his career he has since written, starred in, directed, and/or produced over 50 films including Heavyweights, There's Something About Mary, Meet the Parents, Zoolander, Dodgeball, and Tropic Thunder. In addition, he has had multiple cameos in music videos, television shows, and films. Stiller is a member of the comedic acting brotherhood colloquially known as the Frat Pack. His films have grossed more than $2.1 billion domestically (United States and Canada), with an average of $73 million per film. Throughout his career, he has received several awards and honors including an Emmy Award, several MTV Movie Awards, and a Teen Choice Award.	Ben Stiller	1965-11-30	No data.	2
17838	http://image.tmdb.org/t/p/w185/zvBCjFmedqXRqa45jlLf6vBd9Nt.jpg	Rami Said Malek (born May 12, 1981) is an American actor from Los Angeles. He won a Critics' Choice Award and the Primetime Emmy Award for Outstanding Lead Actor in a Drama Series for his lead role as Elliot Alderson in the USA Network television series Mr. Robot. He also received Golden Globe Award, Screen Actors Guild Award, and TCA Award nominations.\n\nMalek has acted in supporting roles for other film and television series such as Night at the Museum trilogy, Fox comedy series The War at Home (2005–2007), HBO miniseries The Pacific (2010), Larry Crowne (2011), Paul Thomas Anderson's The Master (2012), The Twilight Saga: Breaking Dawn – Part 2 (2012), the independent film Ain't Them Bodies Saints (2013) and the dramatic film Short Term 12 (2013). He was also in the videogame Until Dawn (2015) as Joshua "Josh" Washington. Malek is set to portray musician Freddie Mercury in the upcoming biographical drama Bohemian Rhapsody (2018).\n\nDescription above from the Wikipedia article Rami Malek, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rami Malek	1981-05-12	No data.	2
2157	http://image.tmdb.org/t/p/w185/9QmmscSVCR5pJiUFyjxik5NYhCM.jpg	From Wikipedia, the free encyclopedia.\n\nRobin McLaurin Williams (July 21, 1951 – August 11, 2014) was an  American actor and stand-up comedian. Rising to fame with his role as  the alien Mork in the TV series Mork &amp; Mindy  (1978–1982), Williams  went on to establish a successful career in both  stand-up comedy and  feature film acting. His film career included such  acclaimed films as  "The World According to Garp" (1982), Good Morning, Vietnam (1987), Dead  Poets Society (1989), Awakenings (1990), The Fisher King (1991), and  Good Will Hunting (1997), as well as financial successes such as Popeye  (1980), Hook (1991), Aladdin (1992), Mrs. Doubtfire (1993), Jumanji  (1995), The Birdcage (1996), Night at the Museum (2006), and Happy Feet  (2006).\n\nHe also appeared in the video "Don't Worry, Be Happy" by Bobby  McFerrin.  Nominated for the Academy Award for Best Actor three times, Williams  received the Academy Award for Best Supporting Actor for his performance  in Good Will Hunting (1997). He also received two Emmy Awards, four  Golden Globe Awards, two Screen Actors Guild Awards and five Grammy  Awards.\n\nOn August 11, 2014, Williams was found unconscious at his residence and  was pronounced dead at the scene. The Marin County, California,  coroner's office said they believe the cause of death was asphyxiation.	Robin Williams	1951-07-21	2014-08-11	2
887	http://image.tmdb.org/t/p/w185/j7oYgvfDiO34VcFdSB7GhM2CSle.jpg	Owen Cunningham Wilson (born November 18, 1968) is an American actor and screenwriter from Dallas, Texas. His older brother, Andrew and younger brother, Luke, are also actors. He has had a long association with filmmaker Wes Anderson, having shared co-writing and acting credits for Bottle Rocket (1996) and The Royal Tenenbaums (2001), which was nominated for an Academy Award for Best Original Screenplay, and for his collaborations with fellow actor Ben Stiller. The two have appeared in ten films together.\n\nWilson is best known for his roles in Meet the Parents (2000), Shanghai Noon (2000), Zoolander (2001), Shanghai Knights (2003), Wedding Crashers (2005), Night at the Museum (2006), Cars (2006), Marley & Me (2008), Night at the Museum: Battle of the Smithsonian (2009), Midnight in Paris (2011), Cars 2 (2011) and The Internship (2013).	Owen Wilson	1968-11-18	No data.	2
117642	http://image.tmdb.org/t/p/w185/suNN1bv5Fc3M3CeUp6nVzwrwUDt.jpg	Joseph Jason Namakaeha Momoa (born August 1, 1979) is a Kānaka-American actor, model, and producer. He is known for his television roles as Ronon Dex on the military science fiction television series Stargate Atlantis (2004–2009), Khal Drogo in the HBO fantasy television series Game of Thrones (2011–2012), and Declan Harp in the Netflix series Frontier (2016–present). He is also known in the DC Extended Universe as the character Aquaman.	Jason Momoa	1979-08-01	No data.	2
1389339	http://image.tmdb.org/t/p/w185/dPy339yRfqvhzi6k9RFxLW94YlB.jpg	Blake Cooper (born in 2001) is an American actor, best known for playing the role of Chuck in The Maze Runner. Born in Atlanta, Georgia on a small animal farm, Blake grew up as a Boy Scout and was well acquainted with animal training. Blake was signed to J Pervis Talent Agency by Joy Pervis when he was 10, after being seen performing at a local event. Immediately after signing, Blake auditioned and landed his first co-star on BET's The Game. Shortly thereafter, he got a callback for the character of Ethan on USA Network'sNecessary Roughness where he impressed the room and had them laughing out loud, which led to booking the role. In April 2013, when Blake was 12, he landed the lead role of Chuck in 20th Century Fox's The Maze Runner. After reading James Dashner's international bestselling adventure story, The Maze Runner, Blake related so well to the character of 'Chuck' that upon discovering a big screen adaptation in the works, he contacted Wes Ball through Twitter for the role.	Blake Cooper	2001-01-01	No data.	2
1108907	http://image.tmdb.org/t/p/w185/33RypiHCQc3BkuzZ6WsonrhSIer.jpg	Nicholas John "Nick" Robinson (born March 22, 1995) is an American actor. As a child, he appeared in stage productions of A Christmas Carol and Mame (both in 2008), following which he starred in the television sitcom Melissa & Joey (2010–2015). He went on play a supporting role in the highly successful science fiction film Jurassic World (2015) and took on lead roles in several teen dramas, including The Kings of Summer (2013), The 5th Wave (2016), and Everything, Everything (2017). In 2018, Robinson starred as the titular protagonist Simon Spier in the romantic comedy-drama film Love, Simon.	Nick Robinson	1995-03-22	No data.	2
9278	http://image.tmdb.org/t/p/w185/470yA7ZOiyAG6HvwjfiJRj3P5dq.jpg	Jennifer Anne Garner (born April 17, 1972) is an American actress. Garner gained recognition on television for her performance as CIA agent Sydney Bristow in the thriller drama series Alias, which aired on ABC for five seasons from 2001 to 2006. While working on Alias, she gained minor roles in hit movies such as Pearl Harbor (2001) and Catch Me if You Can (2002). Since then, Garner has appeared in supporting as well as lead roles on the big screen in projects including Daredevil (2003), 13 Going on 30 (2004), Elektra (2005), a spin-off of Daredevil and Juno (2007).\n\nDescription above from the Wikipedia article Jennifer Garner, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jennifer Garner	1972-04-17	No data.	1
1636738	http://image.tmdb.org/t/p/w185/rJcjIAfN6m9ivyXUxopgRJeDiEN.jpg	Katherine Langford was born on April 29, 1996 in Perth, Australia. She is an actress, known for 13 Reasons Why (2017) and Love, Simon (2018).	Katherine Langford	1996-04-29	No data.	1
148096	http://image.tmdb.org/t/p/w185/6jyt6aUZFzoNBLc1eg8GHJaqdNn.jpg	Miles Heizer (born May 16, 1994) is an American actor. His most notable film appearance was in Rails &amp; Ties, playing Davey Danner when he was 12 years old. He also played the recurring character Joshua Lipnicki on the television series ER.	Miles Heizer	1994-05-16	No data.	2
90633	http://image.tmdb.org/t/p/w185/hzt1aV8FzEJlUtiWtrGSHlcdGCx.jpg	Gal Gadot is an Israeli actress and model. She was born in Rosh Ha'ayin, Israel, to an Ashkenazi Jewish family (from Poland, Austria, Germany, and Czechoslovakia). She served in the IDF for two years, and won the Miss Israel title in 2004.\n\nGal began modeling in the late 2000s, and made her film debut in the fourth film of the Fast and Furious franchise, Fast & Furious (2009), as Gisele, an associate of the film's lead villain. Her role was expanded in the sequels Fast Five (2011) and Fast & Furious 6 (2013), in which her character was romantically linked to Han Seoul-Oh (Sung Kang). In the films, Gal performed her own stunts. She also appeared in the 2010 films Date Night (2010) and Knight and Day (2010). In early December 2013, Gal was cast as Wonder Woman in the DC Extended Universe.\n\nGal is a motorcycle enthusiast, and owns a black 2006 Ducati Monster-S2R. She has been married to Yaron Versano since September 28, 2008. They have one child.	Gal Gadot	1985-04-30	No data.	1
5293	http://image.tmdb.org/t/p/w185/7t8fhfaFBoS9VOo3OPXCfK516eI.jpg	William James Dafoe (born July 22, 1955) is an American film, stage, and voice actor, and a founding member of the experimental theatre company The Wooster Group. He has had roles in a wide range of films, including Streets of Fire, To Live and Die in L.A., Platoon, Born on the Fourth of July, The English Patient, The Last Temptation of Christ, Mississippi Burning, Wild at Heart, The Boondock Saints, Inside Man, The Life Aquatic with Steve Zissou, Spider-Man, Shadow of the Vampire, The Aviator, American Psycho, Antichrist, and voice roles in Fantastic Mr. Fox and Finding Nemo.\n\nDafoe has been nominated for the Academy Award for Best Supporting Actor three times. The first was for his role in Platoon (1986), the second time for his performance in Shadow of the Vampire (2000), and the third for The Florida Project (2017).\n\nDescription above from the Wikipedia article Willem Dafoe, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Willem Dafoe	1955-07-22	No data.	2
4173	http://image.tmdb.org/t/p/w185/9ukJS2QWTJ22HcwR1ktMmoJ6RSL.jpg	Anthony Hopkins was born on 31 December 1937, in Margam, Glamorgan, Wales. Influenced by Richard Burton, he decided to study at College of Music and Drama in Cardiff and graduated in 1957. In 1965, he moved to London and joined the National Theatre, invited by Laurence Olivier, who could see the talent in Hopkins. In 1967, he made his first film for television, A Flea in Her Ear (1967) (TV).\n\nFrom this moment on, he enjoyed a successful career in cinema and television. In 1968, he worked on The Lion in Winter (1968) with Timothy Dalton. Many successes came later, and Hopkins' remarkable acting style reached the four corners of the world. In 1977, he appeared in two major films: A Bridge Too Far (1977) with James Caan, Gene Hackman, Sean Connery, Michael Caine, Elliott Gould and Laurence Olivier, and Maximilian Schell. In 1980, he worked on The Elephant Man (1980). Two good television literature adaptations followed: Othello (1981) (TV) and "Hallmark Hall of Fame: The Hunchback of Notre Dame (#31.2)" (1982). In 1987 he was awarded with the Commander of the order of the British Empire. This year was also important in his cinematic life, with 84 Charing Cross Road (1987), acclaimed by specialists. In 1993, he was knighted.\n\nIn the 1990s, Hopkins made movies like Desperate Hours (1990) and Howards End (1992), The Remains of the Day (1993) (nominee for the Oscar), Legends of the Fall (1994), Nixon (1995) (nominee for the Oscar), Surviving Picasso (1996), Amistad (1997) (nominee for the Oscar), The Mask of Zorro (1998), Meet Joe Black (1998) and Instinct (1999). His most remarkable film, however, was The Silence of the Lambs (1991), for which he won the Oscar for Best Actor. He also got a BAFTA for this role. IMDb Mini Biography By: Emerenciano	Anthony Hopkins	1937-12-31	No data.	2
1151657	http://image.tmdb.org/t/p/w185/kofshu6S97vdYoYbc7uOFBHiNaw.jpg	Jing Tian is a Chinese actress. She graduated from the Beijing Dance Academy and Beijing Film Academy. She is known for her roles in The Warring States, Special ID, and Police Story 2013. Wikipedia	Jing Tian	1988-07-21	No data.	1
83002	http://image.tmdb.org/t/p/w185/nyJavdWnCxgYYt3aYzJXB0Hdx4f.jpg	Jessica Chastain (born March 24, 1977) is an American theater, film and television actress. She played guest roles in several television shows before making her feature film debut with the 2008 independent film Jolene.\n\nIn 2011, Chastain gained wide public recognition for her starring roles in seven film releases; for her performance in The Help she received Best Supporting Actress nominations at the Academy Award, Golden Globe, BAFTA, and Screen Actors Guild Award ceremonies. In 2012, Time magazine featured her as one of the "100 Most Influential People in the World". Chastain's performance in the 2012 military thriller Zero Dark Thirty and the 2013 horror film Mama led film critic Richard Roeper to describe her as "one of the finest actors of her generation". For the former, she won a Golden Globe Award for Best Actress (Drama) and received a nomination for the Academy Award for Best Actress.	Jessica Chastain	1977-03-24	No data.	1
2975	http://image.tmdb.org/t/p/w185/8suOhUmPbfKqDQ17jQ1Gy0mI3P4.jpg	Laurence John Fishburne III (born July 30, 1961) is an American actor of screen and stage, as well as a playwright, director, and producer. He is perhaps best known for his roles as Morpheus in the Matrix science fiction film trilogy and as singer-musician Ike Turner in the Tina Turner biopic What's Love Got to Do With It. He became the first African-American to portray Othello in a motion picture by a major studio when he appeared in Oliver Parker's 1995 film adaption of the Shakespeare play. Fishburne has won a Tony Award for Best Featured Actor in a Play for his performance in Two Trains Running (1992) and an Emmy Award for Drama Series Guest Actor for his performance in TriBeCa (1993).\n\nFishburne’s first marriage was to actress to Hajna O. Moss. They had two children together: a son, Langston and a daughter, Montana. Fishburne is now married to actress Gina Torres. They live in Hollywood with their daughter Delilah.	Laurence Fishburne	1961-07-30	No data.	2
125167	http://image.tmdb.org/t/p/w185/m4veWEp9TEDallTZRobb7MLkd9K.jpg	Vera Mindy Chokalingam (born June 24, 1979), known professionally as Mindy Kaling, is an American actress, comedian, and writer. She rose to prominence in 2005 for her work on the NBC sitcom The Office, where she portrayed Kelly Kapoor and served as a writer, executive producer, and occasional director throughout most of the series' run. Kaling created, wrote, produced, and starred in the Fox/Hulu sitcom The Mindy Project, which ran for six seasons from 2012 to 2017. Kailing's film career includes voice work in the films Despicable Me (2010), Wreck It Ralph (2012), Inside Out (2015) and starring roles in the fantasy adventure A Wrinkle in Time and heist-comedy Ocean's 8, both 2018.\n\nDescription above from the Wikipedia article Mindy Kaling, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Mindy Kaling	1979-06-24	No data.	1
73968	http://image.tmdb.org/t/p/w185/hErUwonrQgY5Y7RfxOfv8Fq11MB.jpg	Henry William Dalgliesh Cavill (born 5 May 1983) is a British actor. He has appeared in the films The Count of Monte Cristo and Stardust, and played the role of Charles Brandon, 1st Duke of Suffolk, on the Showtime series The Tudors, from 2007 until 2010. He has been cast in the DC Extended Universe as Superman with the 2013 film Man Of Steel.	Henry Cavill	1983-05-05	No data.	2
7132	http://image.tmdb.org/t/p/w185/7pWCMLyOmmYNsifQ7IDOfTA6V6Y.jpg	Vincent Phillip D'Onofrio (born June 30, 1959) is an American actor, film producer, and singer.He first gained attention for his role as Private Leonard 'Gomer Pyle' Lawrence in the war film Full Metal Jacket and more recently for his role as Detective Robert Goren in the crime TV series Law & Order: Criminal Intent.\n\nDescription above from the Wikipedia article Vincent D'Onofrio, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Vincent D'Onofrio	1959-06-30	No data.	2
1327	http://image.tmdb.org/t/p/w185/coWjgMEYJjk2OrNddlXCBm8EIr3.jpg	Sir Ian Murray McKellen, CH, CBE (born 25 May 1939) is an English actor. He is the recipient of six Laurence Olivier Awards, a Tony Award, a Golden Globe Award, a Screen Actors Guild Award, a BIF Award, two Saturn Awards, four Drama Desk Awards and two Critics' Choice Awards. He has also received two Academy Award nominations, eight BAFTA film and TV nominations and five Emmy Award nominations. McKellen's work spans genres ranging from Shakespearean and modern theatre to popular fantasy and science fiction. His notable film roles include Gandalf in The Lord of the Rings and The Hobbit trilogies and Magneto in the X-Men films.	Ian McKellen	1939-05-25	No data.	2
30315	http://image.tmdb.org/t/p/w185/lRWWodfrOd5SaLnFrz7UryFhasI.jpg	Richard Armitage was born and raised in Leicester, England. He attended Pattison College in Binley Road, Coventry, and studied at LAMDA (the London Academy of Music and Dramatic Art). His first appearance on the screen was in a small role in This Year's Love (1999), but it was Sparkhouse (2002) (TV) that gave him a break-through role as the charming but a bit odd character of John Standring opposite Sarah Smart. After two guest-roles in "Cold Feet" (1997) in 2003 and "Between the Sheets" (2003), he landed a role as Steven in Frozen (2005/I), which eventually led him to play the lead role in the big hit BBC drama "North &amp; South" (2004). Other than appearing on screen, he has also appeared on stage--in, for example, Macbeth and Hamlet.	Richard Armitage	1971-08-22	No data.	2
1813	http://image.tmdb.org/t/p/w185/xENM3XJAtdpolwELYDy9iaCtU4m.jpg	Anne Jacqueline Hathaway (born November 12, 1982) is an American actress. After several stage roles, she appeared in the 1999 television series Get Real. She played Mia Thermopolis in The Princess Diaries (2001). Over the next three years, Hathaway reprised that role for The Princess Diaries 2: Royal Engagement, and starred in family films, appearing as the title character in Ella Enchanted, both in 2004.\n\nHathaway had dramatic roles in Havoc and Brokeback Mountain, both in 2005. She starred in The Devil Wears Prada (2006) and in Becoming Jane (2007) as Jane Austen. In 2008, she was acclaimed for her lead role in Rachel Getting Married, for which she won awards and was nominated for the Academy Award for Best Actress. In 2010, she starred in the box office hits Valentine's Day and Tim Burton's Alice In Wonderland, as well as Love and Other Drugs. In 2011, she had a voice role in the animated box office Rio. She is scheduled to play Selina Kyle/Catwoman in Christopher Nolan's The Dark Knight Rises.\n\nPeople magazine named her one of its breakthrough stars of 2001, and she first appeared on its list of the world's 50 Most Beautiful People in 2006.\n\nDescription above from the Wikipedia article Anne Hathaway (actress), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Anne Hathaway	1982-11-12	No data.	1
1892	http://image.tmdb.org/t/p/w185/elSlNgV8xVifsbHpFsqrPGxJToZ.jpg	Matthew Paige "Matt" Damon (born October 8, 1970) is an American actor, screenwriter, and philanthropist.\n\nHis career launched following the success of the film Good Will Hunting (1997) from a screenplay he co-wrote with friend Ben Affleck. The pair won an Academy Award for Best Original Screenplay and a Golden Globe Award for Best Screenplay for their work. Damon alone received multiple Best Actor nominations, including an Academy Award nomination for his lead performance in the film. Damon has since starred in commercially successful films such as Saving Private Ryan (1998), the Ocean's trilogy, and the first three films in the Bourne series, while also gaining critical acclaim for his performances in dramas such as Syriana (2005), The Good Shepherd (2006), and The Departed (2006). He garnered a Golden Globe nomination for portraying the title character in The Talented Mr. Ripley (1999) and was nominated for an Academy Award for Best Supporting Actor in Invictus (2009).\n\nHe is one of the top 40 highest grossing actors of all time. In 2007, Damon received a star on the Hollywood Walk of Fame and was named Sexiest Man Alive by People magazine. Damon has been actively involved in charitable work, including the ONE Campaign, H2O Africa Foundation, and Water.org.	Matt Damon	1970-10-08	No data.	2
976	http://image.tmdb.org/t/p/w185/PhWiWgasncGWD9LdbsGcmxkV4r.jpg	Jason Statham (born 26. Juli 1967) is an English actor and martial artist, known for his roles in the Guy Ritchie crime films Lock, Stock and Two Smoking Barrels; Revolver; and Snatch.\n\nStatham appeared in supporting roles in several American films, such as The Italian Job, as well as playing the lead role in The Transporter, Crank, The Bank Job, War (opposite martial arts star Jet Li), and Death Race. Statham solidified his status as an action hero by appearing alongside established action film actors Sylvester Stallone, Arnold Schwarzenegger, Bruce Willis, Jet Li and Dolph Lundgren in The Expendables. He normally performs his own fight scenes and stunts.\n\nDescription above from the Wikipedia article Jason Statham, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jason Statham	1967-07-26	No data.	2
112	http://image.tmdb.org/t/p/w185/eE98pTm0Q2xIn0710VBC603IE5Q.jpg	Catherine Élise "Cate" Blanchett (born 14 May 1969) is an Australian actress and theatre director. She has won multiple acting awards, most notably two SAGs, two Golden Globe Awards, two BAFTAs, and two Academy  Awards, as well as the Volpi Cup at the 64th Venice International Film  Festival. Blanchett has earned seven Academy Award nominations between 1998 and 2015. Blanchett came to international attention for her role as Elizabeth I of England in the 1998 film Elizabeth, directed by Shekhar Kapur, a role which she reprised in Elizabeth: The Golden Age (2007). She is  also well-known for her portrayal of the elf queen Galadriel in Peter Jackson's The Lord of the Rings trilogy (2001–2003) and the The Hobbit trilogy (2012–2014), Colonel-Doctor Irina Spalko in Indiana Jones and the Kingdom of the Crystal Skull (2008), Katharine Hepburn in Martin Scorsese's The Aviator (2004), Daisy Fuller in The Curious Case of Benjamin Button (2008), Jasmine Francis in Blue Jasmine (2013), Carol Aird in Carol (2015) and Hela in Thor: Ragnarok (2017). For her roles in The Aviator and Blue Jasmine, Blanchett received Academy Awards. From 2008 to 2013, she and her husband Andrew Upton were artistic directors of the Sydney Theatre Company.\n\nDescription above from the Wikipedia article Cate Blanchett, licensed  under CC-BY-SA, full list of contributors on Wikipedia.	Cate Blanchett	1969-05-14	No data.	1
880	http://image.tmdb.org/t/p/w185/rjGdI8f7MyGXg4kpTrA0ZZq1QX8.jpg	Ben Affleck (born Benjamin Géza Affleck-Boldt; August 15, 1972) is an American actor, film director, writer, and producer. He became known in the mid-1990s with his performance in the Kevin Smith films Mallrats (1995) and Chasing Amy (1997). Affleck is an Academy Award as well as a Golden Globe Award winner, along with Matt Damon, for their collaborative screenplay for the 1997 film Good Will Hunting. He established himself as a Hollywood leading man, having starred in several big budget films, such as Armageddon (1998), Pearl Harbor (2001), Changing Lanes (2002), The Sum of All Fears (2002), and Daredevil (2003).\n\nAffleck has drawn critical acclaim for his work as a filmmaker, directing Gone Baby Gone (2007) and The Town (2010), and playing the lead role in the latter. He has worked with his younger brother, actor Casey Affleck, on several projects, including Good Will Hunting and Gone Baby Gone.\n\nAfter a high profile relationship with actress Gwyneth Paltrow in 1998, his relationship with actress/singer Jennifer Lopez attracted worldwide media attention in which Affleck and Lopez were dubbed "Bennifer". Following their breakup in 2004, he began dating Jennifer Garner. The two married in June 2005 and have two daughters, Violet Anne, born December 2005, and Seraphina Rose Elizabeth, born January 2009.\n\nAffleck has been actively involved in politics and charitable causes. He and Matt Damon also founded the production company LivePlanet.\n\nDescription above from the Wikipedia article Ben Affleck, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Ben Affleck	1972-08-15	No data.	2
6283	http://image.tmdb.org/t/p/w185/bDjPDDiSna8FN5rqHdheg2wIYYo.jpg	Rolf Åke Mikael Nyqvist (8 November 1960 – 27 June 2017), better known as Michael Nyqvist, was a Swedish actor. Educated at the School of Drama in Malmö, he became well known for playing police officer Banck in the first series of Martin Beck films made in 1997, and later for his leading role in the film Grabben i graven bredvid in 2002. He was most recognized internationally for his role in the acclaimed Millennium series as Mikael Blomkvist, as well as the lead villains in Mission: Impossible – Ghost Protocol (as Kurt Hendricks) and John Wick (as Viggo Tarasov). In 2004, he played the leading role in the Academy Award-nominated Best Foreign Film As It Is in Heaven.\n\nDescription above from the Wikipedia article Michael Nyqvist, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Michael Nyqvist	1960-11-08	2017-06-27	2
71586	http://image.tmdb.org/t/p/w185/4q6yzSMi8Q5XeIn5A1yUD1tEfwq.jpg	Alfie Allen was born in Hammersmith, London. His older sister is singer Lily Allen. Allen's first professional appearance was in a one-off Channel 4 comedy, You Are Here in 1998. The same year, Allen and his sister Lily appeared in the 1998 film, Elizabeth, which was produced by their mother. His early work included small roles in Agent Cody Banks 2: Destination London, Atonement and BBC1's historical hospital drama, Casualty 1907. In 2008, he took over Daniel Radcliffe's role in the stage play, Equus. Currently, he is best know for his role as Theon Greyjoy in the hit series from HBO, Game of Thrones.  Allen has continued to work in films, appearing in Soulboy, The Kid, Freestyle and Powder in 2010. In 2012, he starred in the upcoming British thriller, Confine. 	Alfie Allen	1986-09-12	No data.	2
5644	http://image.tmdb.org/t/p/w185/aQS8gK9zJDu2eIUEHUIWqWFcTSj.jpg	From Wikipedia, the free encyclopedia.\n\nAlexandra Maria Lara (born Alexandra Plătăreanu; November 12, 1978) is a Romanian-born German actress. She performs predominantly in leading roles in a variety of historical and crime films. Lara is best known for her roles in Control (2007), Youth Without Youth (2007), Nackt (2002), Downfall (2004), About the Looking for and the Finding of Love (2005), and The Reader (2008).\n\nDescription above from the Wikipedia article Alexandra Maria Lara, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Alexandra Maria Lara	1978-11-12	No data.	1
10402	http://image.tmdb.org/t/p/w185/g0GOzbSDAzhMxoCBNofiMxHIJJj.jpg	Mini Biography Alanna Noel Ubach (born October 3, 1975) is an American actress and voice actress. She is known for her roles in Legally Blonde as Serena and Meet the Fockers as Isabel Villalobos. She has provided voices for several characters in a number of animated shows, such as Liz Allan in The Spectacular Spider-Man, the title character in El Tigre: The Adventures of Manny Rivera and Lola Boa in Brandy &amp; Mr. Whiskers. She has also written and performed a one-woman show. She played the first female assistant, Josie, in Beakman's World. Ubach was born in Downey, California, the daughter of Sidna and Rodolfo Ubach.\n\nHer sister Athena Ubach is a therapist. Her father is of Puerto Rican descent as well as Mexican. Source The Mini Biography is from Wikipedia: http://en.wikipedia.org/wiki/Alanna_Ubach.	Alanna Ubach	1975-10-03	No data.	1
37260	http://image.tmdb.org/t/p/w185/keDV2eWIcdGGiFNaF3DjJA98KIt.jpg	Abbie Cornish, born on 7th August 1982, is an Australian actress. She is well known in Australia for a number of film and television roles, including Penne in the comedy/lifestyle parody Life Support, her award-winning lead performance in 2004's Somersault and her role as Fannie Brawne in Bright Star.\n\nHer career began at the age of thirteen, when she began taking jobs as a model after reaching the finals of a Dolly Magazine competition. By the time she was sixteen, Cornish was juggling television acting roles with studying for her Higher School Certificate, with the intention of pursuing a career as a veterinarian. In 1999, Cornish was awarded the Australian Film Institute Young Actor's Award for her role in the ABC's television show Wildside and was soon offered her first role in a feature film, The Monkey's Mask. In 2001, Abbie landed the role of Reggie McDowell, a character on the Australian tv show "Outriders". In 2004, Cornish appeared in the award-winning short film Everything Goes with Hugo Weaving.\n\nShe received the Australian Film Institute Award for Best Actress in a Leading Role, Best Actress at the FCCA and IF Awards and Best Breakthrough Performance at the 2005 Miami International Film Festival for her role in 2004's Somersault, the film which raised her to international prominence. Cornish received widespread critical acclaim for her role in 2006's Candy, which she starred in opposite Heath Ledger. She has also starred in A Good Year, Elizabeth: The Golden Age and Kimberly Peirce's latest movie, Stop-Loss. She narrated her film Sucker Punch on the 2010 San Diego Comic-Con International.	Abbie Cornish	1982-08-07	No data.	1
57171	http://image.tmdb.org/t/p/w185/t94xhTY2tdMhYR3CO1wMDwx9OpX.jpg	Jesse Eden Metcalfe (born December 9, 1978) is an American actor, most known for his role on Desperate Housewives as John Rowland. He is also notable for his portrayal of Miguel Lopez-Fitzgerald on the soap opera Passions and his starring role as the title character in the movie John Tucker Must Die.\n\nDescription above from the Wikipedia article Jesse Metcalfe, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jesse Metcalfe	1978-12-09	No data.	2
4784	http://image.tmdb.org/t/p/w185/hoijifqwuyIXO6Lsp8QpO3MhIXv.jpg	Laura Elizabeth Dern (born February 10, 1967) is an American actress, film director and producer. Dern has acted in such films as Smooth Talk (1985), Blue Velvet (1986), Fat Man and Little Boy (1988), Wild at Heart (1990), Jurassic Park (1993) and October Sky (1999). She has won awards for her performance in the 1991 film Rambling Rose, for which she received an Academy Award nomination for Best Actress in a Leading Role. She was awarded a Golden Globe Award for Best Supporting Actress – Series, Miniseries or Television Film for her portrayal of Florida Secretary of State Katherine Harris in the film Recount (2008).	Laura Dern	1967-02-10	No data.	1
4786	http://image.tmdb.org/t/p/w185/Abo8fAcdruACs344ut6PNSKH7N4.jpg	From Wikipedia, the free encyclopedia.\n\nRichard Samuel Attenborough, Baron Attenborough, Kt, CBE (29 August 1923 – 24 August 2014) was an English actor, filmmaker, entrepreneur, and politician. He was the President of the Royal Academy of Dramatic Art (RADA) and the British Academy of Film and Television Arts (BAFTA). Attenborough joined the Royal Air Force during World War II and served in the film unit. He went on several bombing raids over Europe and filmed action from the rear gunner's position.\n\nAs a film director and producer, Attenborough won two Academy Awards for Gandhi in 1983. He also won four BAFTA Awards and four Golden Globe Awards. As an actor, he is perhaps best known for his roles in Brighton Rock, The Great Escape, 10 Rillington Place, Miracle on 34th Street (1994) and Jurassic Park.\n\nHe was the older brother of David Attenborough, a naturalist and broadcaster, and John Attenborough, an executive at Alfa Romeo. He was married to actress Sheila Sim from 1945 until his death.	Richard Attenborough	1923-08-29	2014-08-24	2
1315036	http://image.tmdb.org/t/p/w185/jJk36iuuuIWCMekApVeRLYL3x6W.jpg	Daisy Jazz Isobel Ridley (born 10 April 1992) is an English actress. Ridley was born in Westminster, London.\n\nHer great-uncle was actor and playwright Arnold Ridley, of Dad's Army fame. She attended Tring Park School for the Performing Arts in Hertfordshire, graduating in 2010 at the age of 18.\n\nRidley has appeared in the television programmes Youngers, Silent Witness, Mr Selfridge and Casualty. She also appeared in the short film Blue Season, which was entered into the Sci-Fi-London 48-Hour Film Challenge. She played the lead in film three of Lifesaver, an interactive film which was nominated for a BAFTA British Academy Award. She has also appeared in the music video for Wiley's song "Lights On".\n\nIn April 2014, it was announced that she will play Rey, one of the lead characters in Star Wars: The Force Awakens. She was chosen for the film in February 2014. The casting of Ridley has generally been seen as a deliberate move from director J. J. Abrams, as he wishes to repeat the casting of relatively unknown actors for the lead roles like George Lucas did with the first Star Wars film in 1977.\n\nAfter receiving several competing offers, Ridley switched from her original talent agency Jonathan Arun to the United Talent Agency in August 2014. Following a two-month stint with UTA, Ridley signed on with the Creative Artists Agency in October 2014.	Daisy Ridley	1992-04-10	No data.	1
24343	http://image.tmdb.org/t/p/w185/din1s5H4C4CfcnkHfEeRcdFlsVj.jpg	Peter Mayhew (born 19 May 1944) is a British-American actor. He is best known for playing Chewbacca in the Star Wars films.\n\nMayhew was born on 19 May 1944 in Barnes, Surrey, where he was also raised. His height is a product not of gigantism — "I don't have the big head" — but of an overactive pituitary gland secondary to a genetic disease called Marfan Syndrome. The overactive pituitary gland was treated successfully in his mid-teens. His peak height was 7 feet 3 inches (2.21 m)	Peter Mayhew	1944-05-19	No data.	2
258	http://image.tmdb.org/t/p/w185/o4sdHKTBbF8GpooIwp5bvliubyY.jpg	​García Bernal was born in Guadalajara, Mexico, the son of Patricia Bernal, an actress and former model, and José Angel García, an actor and director. His stepfather is Sergio Yazbek, whom his mother married when García Bernal was young. He started acting at just a year old and spent most of his teen years starring in telenovelas. Gael studied the International Baccalaureate, with chemistry being unquestionably his favorite subject. When he was fourteen, he taught indigenous peoples in Mexico to read, often working with the Huichol Indians. In his later teens, he took part in peaceful demonstrations during the Chiapas uprisingof 1994.	Gael García Bernal	1978-11-30	No data.	2
4589	http://image.tmdb.org/t/p/w185/5g88fU683ZXhFn0VSsBMjLHsXG1.jpg	Benjamin Bratt (born December 16, 1963) is an American actor. He is most famous for his role as Rey Curtis on the TV series Law &amp; Order; and his appearances in the movies Blood in Blood Out, Miss Congeniality, Cloudy with a Chance of Meatballs, Traffic, and Piñero. He starred on the A&amp;E Network drama The Cleaner.	Benjamin Bratt	1963-12-16	No data.	2
253	http://image.tmdb.org/t/p/w185/pKrnsL8g6AVoHZljLCPhOQJWFQl.jpg	From Wikipedia, the free encyclopedia.\n\nDouglas Rain (born 1928) is a Canadian actor and narrator. He is primarily a stage actor, but his best known film role was as the voice of the HAL 9000 computer in 2001: A Space Odyssey (1968) and its sequel 2010 (1984).\n\nRain was born in Winnipeg, Manitoba. He studied acting at the Banff School of Fine Arts in Banff, Alberta as well as in London at the Old Vic School. As a stage actor, his long association with the Stratford Festival of Canada that spans more than four decades. He has performed in many diverse roles on stage, most notably recognized for his performance at Stratford, Ontario in Henry V which was made into a television production in 1966.\n\nRain was also nominated for Broadway's 1972 Tony Award as Best Supporting or Featured Actor (Dramatic) for his performance in Vivat! Vivat Regina!\n\nDescription above from the Wikipedia article Douglas Rain, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Douglas Rain	1928-03-13	No data.	2
247	http://image.tmdb.org/t/p/w185/iz3JAVIColzTaQ3PFvxdlFaCzfW.jpg	From Wikipedia, the free encyclopedia.\n\nWilliam Sylvester (January 31, 1922 – January 25, 1995) was an American TV and film actor. His most famous film credit was Dr. Heywood Floyd in Stanley Kubrick's 2001 A Space Odyssey (1968). Born in Oakland, California and married at one time to the British actress Veronica Hurst, he moved to England after the Second World War and became a staple of British B films at a time when American and Canadian actors were much in demand in order to give indigenous films some appeal in the US.\n\nAs a result, he gained top billing in one of his very first films, House of Blackmail (1953), directed by the veteran filmmaker Maurice Elvey, for whom he also made What Every Woman Wants the following year. He also starred in such minor films as The Stranger Came Home (1954, for Hammer), Dublin Nightmare (1958), Offbeat (1960), Information Received (1961), Incident at Midnight, Ring of Spies and Blind Corner (all 1963). There were also lead roles in four British horror films: Gorgo (1960), Devil Doll (1963), Devils of Darkness (1964) and The Hand of Night (1966). Among his many TV credits were a 1959 BBC version of Shakespeare's Julius Caesar (playing Mark Antony), The Saint, The Baron, The High Chaparral, Harry O and The Six Million Dollar Man.\n\nHis later films included You Only Live Twice (1967) and, back in the USA after his prominent role for Kubrick, Busting (1973), The Hindenburg (1975) and Heaven Can Wait (1978). He died in Sacramento, California in 1995, aged 72.\n\nDescription above from the Wikipedia article William Sylvester, licensed under CC-BY-SA, full list of contributors on Wikipedia.	William Sylvester	1922-01-31	1995-01-25	2
251	http://image.tmdb.org/t/p/w185/nQrvFDN5pIo4y5qHRgsCJ3zpoQM.jpg	From Wikipedia, the free encyclopedia\n\nRobert Beatty (19 October 1909 – 3 March 1992) was a Canadian actor who worked in film, television and radio for most of his career and was especially known in the UK.\n\nDescription above from the Wikipedia article Robert Beatty, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Robert Beatty	1909-10-19	1992-03-03	2
15277	http://image.tmdb.org/t/p/w185/sJSGJwGa3hjMlJNUCxF7wQwo7fb.jpg	Jonathan Kolia "Jon" Favreau (born October 19, 1966) is an American actor, screenwriter, film director and comedian. He is best known for appearing in films including Rudy, I Love You, Man, Swingers and Couples Retreat, as well as directing such films as Elf, Iron Man, and Iron Man 2. He is also known for playing the role of Pete Becker, Monica Geller's boyfriend during season three of the television sitcom Friends.\n\nDescription above from the Wikipedia article Jon Favreau, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jon Favreau	1966-10-19	No data.	2
74541	http://image.tmdb.org/t/p/w185/yhMa3nzOsxQYSLr51OcvCsrovFa.jpg	From Wikipedia, the free encyclopedia.\n\nCorey Daniel Stoll (born March 14, 1976) is an American stage and screen actor. He received a Drama Desk Award nomination as Outstanding Featured Actor in a Play for Intimate Apparel, opposite Tony winner and Oscar nominee Viola Davis. He graduated from Oberlin College in 1998. He studied drama at Long Lake Camp For The Arts from 1988 through 1992.\n\nHe has starred in several films, including North Country, Lucky Number Slevin, the TV movie A Girl Like Me: The Gwen Araujo Story, Brief Interviews with Hideous Men, and Push. In 2010, he appeared in Helena from the Wedding and Salt. He also had a guest appearance on the "Sacrifice" episode of Numb3rs.\n\nStoll currently stars as LAPD Detective Tomas "TJ" Jaruszalski on the NBC police drama Law &amp; Order: LA.\n\nDescription above from the Wikipedia article Corey Stoll, licensed under CC-BY-SA, full list of contributors on Wikipedia	Corey Stoll	1976-03-14	No data.	2
17419	http://image.tmdb.org/t/p/w185/9dvZ0Id5RtnCGianoayNJBFrNVU.jpg	Bryan Lee Cranston (born March 7, 1956) is an American actor, voice actor, writer and director. He is perhaps best known for his roles as Hal, the father in the Fox situation comedy "Malcolm in the Middle", and as Walter White in the AMC drama series Breaking Bad, for which he has won three consecutive Outstanding Lead Actor in a Drama Series Emmy Awards. Other notable roles include Dr. Tim Whatley on Seinfeld, Doug Heffernan's neighbor in The King of Queens, Astronaut Buzz Aldrin in From the Earth to the Moon, and Ted Mosby's boss on How I Met Your Mother.	Bryan Cranston	1956-03-07	No data.	2
1532	http://image.tmdb.org/t/p/w185/7BOoOAIA1CnSzFSVSJP7saniQaB.jpg	William James "Bill" Murray (born September 21, 1950) is an American actor and comedian. He first gained national exposure on Saturday Night Live and later went on to star in a number of critically and commercially successful comedic films, including Caddyshack (1980), Ghostbusters (1984), and Groundhog Day (1993). Murray gained additional critical acclaim later in his career, starring in Lost in Translation (2003), for which he was nominated for an Academy Award, and a series of films directed by Wes Anderson, including Rushmore (1998), The Royal Tenenbaums (2001), The Life Aquatic with Steve Zissou (2004) and Fantastic Mr. Fox (2009).\n\nDescription above from the Wikipedia article Bill Murray, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Bill Murray	1950-09-21	No data.	2
12438	http://image.tmdb.org/t/p/w185/3g7IKz8ycv0opDxmpoBxsQkUslU.jpg	Robert Elmer "Bob" Balaban (born August 16, 1945) is an American actor, author and director.\n\nDescription above from the Wikipedia article Bob Balaban, licensed under CC-BY-SA, full list of contributors on Wikipedia .	Bob Balaban	1945-08-16	No data.	2
47296	http://image.tmdb.org/t/p/w185/6ors2HGy8UdXm8kBx6on0HwRHB5.jpg	From Wikipedia, the free encyclopedia\n\nJeffrey Dean Morgan (born April 22, 1966) is an American actor, best known to television and movie audiences as Denny Duquette on Grey's Anatomy, patriarch John Winchester on Supernatural, and as The Comedian in the 2009 superhero film Watchmen. He is known for often playing characters whose death is significant to the plot.\n\nDescription above from the Wikipedia article Jeffrey Dean Morgan, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jeffrey Dean Morgan	1966-04-22	No data.	2
30614	http://image.tmdb.org/t/p/w185/5rOcicCrTCWye0O2S3dnbnWaCr1.jpg	Ryan Thomas Gosling (born November 12, 1980) is a Canadian actor, musician, social activist and producer. Gosling began acting at age 12 on the American variety television show The Mickey Mouse Club. At the age of 17, Gosling was cast as Sean in the short lived Canadian television show Breaker High (1997–1998). Following his feature film debut in Remember the Titans (2000), Gosling had his breakout role as a fanatic Neo-Nazi in the 2001 drama film The Believer, for which he received an Independent Spirit Awards nomination for Best Male Lead.\n\nIn 2004, Gosling gained mainstream success for playing the male lead in the romantic drama The Notebook. Two years later, Gosling was honored with winning Best Male Lead from the Independent Spirit Awards and earned his first Academy and Screen Actors Guild nominations as Best Leading Actor, for portraying a junior high school teacher in the independent film Half Nelson (2006). Gosling was also awarded the Best Actor in a Motion Picture, Comedy or Musical at the Satellite Award and earned his second Screen Actors Guild Award nomination and his first Golden Globe Award for his lead performance in Lars and the Real Girl (2007). Gosling earned his second Golden Globe Award nomination for the independent drama Blue Valentine (2010).\n\nAside from acting, Gosling formed the band Dead Man's Bones with his friend Zach Shields. They released their self-titled debut album in October 2009.\n\nDescription above from the Wikipedia article Ryan Gosling, licensed under CC-BY-SA, full list of contributors can be found on Wikipedia.	Ryan Gosling	1980-11-12	No data.	2
224513	http://image.tmdb.org/t/p/w185/8F6ziFZaK71L3rFeDIc4aAkPZPv.jpg	Ana de Armas was born in Cuba on April 30, 1988. At the age of 14, she began her studies at the National Theatre School of Havana, where she graduated after 4 years. She made her film debut with Una rosa de Francia (2006), which was directed by Manuel Gutiérrez Aragón. In 2006 she moved to Spain where she continued her film career, and started doing television. She currently lives between Madrid and Barcelona. Ana is known for her roles on Knock Knock (2015), War Dogs (2016), Hands Of Stone (2016) and Blade Runner 2049 (2017).	Ana de Armas	1988-04-30	No data.	1
62644	http://image.tmdb.org/t/p/w185/gsEwsWWtC5xwFCzL2CnPmc24uIO.jpg	Curtis James Jackson III (born July 6, 1975), better known by his stage name 50 Cent, is an American rapper and actor. He rose to fame with the release of his albums Get Rich or Die Tryin' (2003) and The Massacre (2005). Get Rich or Die Tryin' has been certified eight times platinum by the RIAA and has sold over 15 million copies worldwide. His album The Massacre has been certified five times platinum by the RIAA and has sold 11 million copies worldwide.\n\nBorn in South Jamaica, Queens, Jackson began drug dealing at the age of twelve during the 1980s crack epidemic. After leaving drug dealing to pursue a rap career, he was shot at and struck by nine bullets during an incident in 2000. After releasing his album Guess Who's Back? in 2002, Jackson was discovered by rapper Eminem and signed to Interscope Records. With the help of Eminem and Dr. Dre, who produced his first major commercial successes, Jackson became one of the world's highest selling rappers. In 2003, he founded the record label G-Unit Records, which signed several successful rappers such as Young Buck, Lloyd Banks, and Tony Yayo.\n\nJackson has engaged in feuds with other rappers including Ja Rule, Fat Joe, Jadakiss, Cam'ron, Rick Ross, and former G-Unit members The Game and Young Buck. He has also pursued an acting career, appearing in the semi-autobiographical film Get Rich or Die Tryin' in 2005, the Iraq War film Home of the Brave in 2006, and Righteous Kill in 2008. 50 Cent was ranked as the sixth best artist of the 2000–2009 decade by Billboard magazine. The magazine also ranked him as the fourth top male artist and as the third top rapper behind Eminem and Nelly. Billboard magazine also ranked him as the sixth best and most successful Hot 100 Artist of the 2000–2009 decade and as the number one rap artist of the 2000–2009 decade. Billboard ranked his album Get Rich or Die Tryin' as the twelfth best album of the 2000–2009 decade and his album The Massacre as the 37th best album of the 2000–2009 decade. He is currently working on his fifth studio album, Black Magic, which currently has no official release date but is expected to be released later in 2011.	50 Cent	1975-07-06	No data.	2
1136406	http://image.tmdb.org/t/p/w185/dO9FYcPPShhiYQ9D50Takd2W8xo.jpg	Thomas Stanley "Tom" Holland (1st June 1996) is an English actor and dancer. He is best known for playing the title role in Billy Elliot the Musical at the Victoria Palace Theatre, London, as well as for starring in the 2012 film The Impossible. In 2015, Holland was cast as Peter Parker / Spider-Man in the Marvel Cinematic Universe. 	Tom Holland	1996-06-01	No data.	2
109	http://image.tmdb.org/t/p/w185/hHzLAVspGGuPg1KW5JAEsyRvnUT.jpg	Elijah Jordan Wood ( born January 28, 1981) is an American actor. He made his film debut with a minor part in Back to the Future Part II (1989), then landed a succession of larger roles that made him a critically acclaimed child actor by age 9. He is best known for his high-profile role as Frodo Baggins in Peter Jackson's critically acclaimed The Lord of the Rings trilogy. Since then, he has resisted typecasting by choosing varied roles in critically acclaimed films such as Bobby, Eternal Sunshine of the Spotless Mind, Sin City, Green Street and Everything Is Illuminated. He starred in the film Day Zero (2007) and provided the voice of the main character, Mumble, in the award-winning animated film Happy Feet. He played an American tourist turned vampire in Paris, je t'aime. In 2005, he started his own record label, Simian Records. He was cast in the lead role of an Iggy Pop biopic to be called The Passenger, but after years of development, the project now appears to be shelved.\n\nDescription above from the Wikipedia article Elijah Wood, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Elijah Wood	1981-01-28	No data.	2
17051	http://image.tmdb.org/t/p/w185/m9he3UnbmAAxkV1XH2EmzkNfkaS.jpg	James Edward Franco (born April 19, 1978) is an American actor. He left college in order to pursue acting and started off his career by making guest appearances on television series in the 1990s. Franco landed a lead part on the short-lived cult hit television program Freaks and Geeks and later achieved recognition for playing the titular character in the TV biopic James Dean (2001), for which he was awarded a Golden Globe Award. He achieved international fame with his portrayals of Harry Osborn in Sam Raimi's Spider-Man trilogy.\n\nFranco has appeared in an eclectic range of projects since the 2000s. Ranging from period to contemporary pieces, and from major Hollywood productions to less publicized indie films, as well as fantasy movies to biopics and soap operas. Other notable films include Pineapple Express, a stoner comedy that earned him his second Golden Globes nomination, the Harvey Milk-biopic Milk (both 2008) as well as Danny Boyle's 2010 movie 127 Hours, about real-life mountain climber Aron Ralston's struggle to free his hand from a boulder. His performance in 127 Hours earned him nominations for many high-profile awards, including the Academy Awards, Golden Globe and SAG Awards (None of which he won)\n\nFranco has hosted the skit comedy Saturday Night Live twice as well as the 83rd Academy Awards with Anne Hathaway. He volunteers for the Art of Elysium charity and is in a relationship with actress Ahna O'Reilly.\n\nDescription above from the Wikipedia article James Franco, licensed under CC-BY-SA, full list of contributors on Wikipedia.	James Franco	1978-04-19	No data.	2
228	http://image.tmdb.org/t/p/w185/a9ITc3shCAWjV4qKf3rgR0Opu3y.jpg	Ed Harris is an American stage, film and television actor, writer, producer and director, best known for playing supporting characters in feature films such as "Apollo 13", "A Beautiful Mind", and "The Truman Show", as well as many recurring and starring roles in television shows, among them the portrayal of The Man in Black in HBO's "Westworld". He holds a BFA in Drama from the California Institute of the Arts, Valencia, USA.	Ed Harris	1950-11-28	No data.	2
110	http://image.tmdb.org/t/p/w185/qmC8XfeiFhQtJGKlUk5KyGkPoWp.jpg	Viggo Peter Mortensen, Jr. (born October 20, 1958) is an American-Danish actor, poet, musician, photographer and painter. He made his film debut in Peter Weir's 1985 thriller Witness, and subsequently appeared in many notable films of the 1990s, including The Indian Runner (1991), Carlito's Way (1993), Crimson Tide (1995), The Portrait of a Lady (1996), G.I. Jane (1997), A Perfect Murder (1998), and A Walk on the Moon (1999).\n\nMortensen made his major breakthrough in 2001 with the epic film trilogy The Lord of the Rings. In 2005, Mortensen won critical acclaim for David Cronenberg's crime thriller A History of Violence. Two years later, another Cronenberg film Eastern Promises (2007) earned him an Academy Award nomination for Best Actor. Other well-received films in recent years have included Appaloosa (2008) and the 2009 film adaptation of Cormac McCarthy's novel The Road.\n\nAside from acting, his other artistic pursuits include fine arts, photography, poetry, and music. In 2002, he founded the Perceval Press to publish the works of little-known artists and authors. Mortensen is politically active. He campaigned for Dennis Kucinich in the 2008 United States presidential election, and later endorsed Barack Obama for President. Mortensen has one son from his previous marriage to musician Exene Cervenka.\n\nDescription above from the Wikipedia article Viggo Mortensen, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Viggo Mortensen	1958-10-20	No data.	2
4	http://image.tmdb.org/t/p/w185/oVYiGe4GzgQkoJfdHg8qKqEoWJz.jpg	Carrie Frances Fisher (21 October 1956 - 27 December 2016) was an American actress, novelist, screenwriter, and lecturer. She is most famous for her portrayal of Princess Leia Organa in the original Star Wars trilogy, her bestselling novel Postcards from the Edge, for which she wrote the screenplay to the film of the same name, and her autobiography Wishful Drinking.	Carrie Fisher	1956-10-21	2016-12-27	1
118	http://image.tmdb.org/t/p/w185/5h91WHSK80YtqTk1bMiar2IZzO2.jpg	Geoffrey Roy Rush (born 6 July 1951) is an Australian actor and film producer. As of November 2009, he was one of 25 people to have won the "Triple Crown of Acting": an Academy Award, a Tony Award and an Emmy Award. Apart from being nominated for 4 Academy Awards for acting (winning 1) and 5 BAFTA Awards (winning 3), he has also won 2 Golden Globe and 3 Screen Actors Guild Awards.\n\nDescription above from the Wikipedia article Geoffrey Rush, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Geoffrey Rush	1951-07-06	No data.	2
882	http://image.tmdb.org/t/p/w185/lD2YnrKdnRUvFDMSiK2pw13ZMIB.jpg	Liv Rundgren Tyler is an American actress and model. She is the daughter of Aerosmith's lead singer, Steven Tyler, and Bebe Buell, model and singer. Tyler began a career in modeling at the age of 14, but after less than a year she decided to focus on acting. She made her film debut in the 1994 film Silent Fall. She then appeared in supporting roles in Empire Records (1995), Heavy (1996), and That Thing You Do! (1996). Tyler later achieved critical recognition in the leading role Stealing Beauty (1996). She followed this by starring in supporting roles including Inventing the Abbotts (1997) and Cookie's Fortune (1999).\n\nTyler achieved international recognition as a result of her portrayal of Elf maiden Arwen Undómiel in the Lord of the Rings film trilogy. She has appeared in an eclectic range of films, including the 2004 comedy Jersey Girl, the indie film Lonesome Jim (2005), the drama Reign Over Me (2007) and big-budget studio films such as Armageddon (1998), The Strangers (2008) and The Incredible Hulk (2008).\n\nSince 2003, Tyler has served as a United Nations Children's Fund (UNICEF) Goodwill Ambassador for the United States, and as a spokesperson for Givenchy's line of perfume and cosmetics. Tyler married musician Royston Langdon of the band Spacehog in 2003; they have one son, Milo, born December 14, 2004. The couple announced their separation in May 2008.  	Liv Tyler	1977-07-01	No data.	1
6384	http://image.tmdb.org/t/p/w185/bOlYWhVuOiU6azC4Bw6zlXZ5QTC.jpg	Keanu Charles Reeves is a Canadian actor. Reeves is known for his roles in Bill &amp; Ted's Excellent Adventure, Speed, Point Break, and The Matrix trilogy as Neo. He has collaborated with major directors such as Stephen Frears (in the 1988 period drama Dangerous Liaisons); Gus Van Sant (in the 1991 independent film My Own Private Idaho); and Bernardo Bertolucci (in the 1993 film Little Buddha). Referring to his 1991 film releases, The New York Times' critic, Janet Maslin, praised Reeves' versatility, saying that he "displays considerable discipline and range. He moves easily between the buttoned-down demeanor that suits a police procedural story and the loose-jointed manner of his comic roles." A repeated theme in roles he has portrayed is that of saving the world, including the characters of Ted Logan, Buddha, Neo, Johnny Mnemonic, John Constantine and Klaatu.	Keanu Reeves	1964-09-02	No data.	2
1023139	http://image.tmdb.org/t/p/w185/rsjwgpV2OukxOJ9HEiEyf4qu1vR.jpg	Adam Douglas Driver (born November 19, 1983) is an American actor. He rose to prominence in the supporting role of Adam Sackler in the HBO comedy-drama series Girls (2012–2017), for which he received three consecutive nominations for the Primetime Emmy Award for Outstanding Supporting Actor in a Comedy Series. He made his Broadway debut in Mrs. Warren's Profession (2010). In 2011, he returned to Broadway in Man and Boy and made his feature film debut in J. Edgar.\n\nDriver has appeared in supporting roles in a wide range of films, including Lincoln (2012), Frances Ha (2012) and Inside Llewyn Davis (2013). He starred in While We're Young (2014) and won the Volpi Cup for his role in Hungry Hearts (2014), as well as several best actor awards for his performance in Jim Jarmusch's Paterson (2016).\n\nDriver gained worldwide attention and acclaim for playing the villain Kylo Ren in Star Wars: The Force Awakens (2015), a role which he is set to reprise in the future Star Wars films.\n\nHe is also the founder of Arts in the Armed Forces (AITAF), a nonprofit that performs theater for all branches of the military, both in the US and abroad.	Adam Driver	1983-11-19	No data.	2
236695	http://image.tmdb.org/t/p/w185/3153CfpgZQXTzCY0i74WpJumMQe.jpg	John Boyega (born 17 March 1992) is a British actor, best known for playing Finn in the 2015 film Star Wars: The Force Awakens.\n\nBoyega was born in Peckham, London, to Nigerian parents. His first role was that of a leopard in a play at his primary school at the age of five. He attended Westminster City School as a teenager. He later took part in various school productions and attended classes at Theatre Peckham. He was a performing arts student at South Thames College in Wandsworth and was active in theatre productions there, including the lead in Othello in 2010.	John Boyega	1992-01-01	No data.	2
31168	http://image.tmdb.org/t/p/w185/i0YEpWuk1zSvadwwa1r0rahDONt.jpg	Kiele Michelle Sanchez (born October 13, 1977) is an American actress who stars in the A&amp;E Network drama The Glades. Previously she starred as the second-eldest Sorelli sister, Anne, a therapist in her mid-twenties, in The WB's comedic ensemble drama, Related. She was cast as a co-star in the third season of the ABC television series Lost but her character was soon written out of the show. Sanchez appeared as a lead in the 2007 ABC pilot Football Wives, which did not go to series.\n\nDescription above from the Wikipedia article Kiele Sanchez, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Kiele Sanchez	1977-10-13	No data.	1
819	http://image.tmdb.org/t/p/w185/eIkFHNlfretLS1spAcIoihKUS62.jpg	Edward Harrison Norton (born August 18, 1969) is an American actor, screenwriter, film director and producer. In 1996, his supporting role in the courtroom drama Primal Fear garnered him a nomination for the Academy Award for Best Supporting Actor. Two years later, his lead role as a reformed white power skinhead in American History X earned a nomination for Academy Award for Best Actor. His other films include period dramas such as Kingdom of Heaven (2005), The Illusionist (2006), and The Painted Veil (2006); and other notable films such as Rounders (1998), Fight Club (1999), 25th Hour (2002), Red Dragon (2002), and The Incredible Hulk (2008).\n\nIn addition to acting, Norton is also a writer and director. He made his directorial debut with the film Keeping the Faith (2000) and is slated to direct the film adaptation of the novel Motherless Brooklyn. Norton did uncredited work on the scripts for The Score, Frida, and The Incredible Hulk.\n\nIn his private life, Norton is an environmental and social activist. He is a member of the board of trustees of Enterprise Community Partners, a non-profit organization for developing affordable housing, founded by his grandfather, James Rouse. Norton is president of the American branch of the Maasai Wilderness Conservation Trust. He ran in the 2009 New York City Marathon to raise money for the Trust. He also raises money for charity through Crowdrise, a social networking community for volunteers and a micro-donations fundraising platform. In July 2010, Norton was designated as the United Nations Goodwill Ambassador for Biodiversityby UN Secretary-General Ban Ki-moon.	Edward Norton	1969-08-18	No data.	2
17276	http://image.tmdb.org/t/p/w185/i54XoxYieuff2w6MwyfwVUBvmR0.jpg	Gerard James Butler (born 13 November 1969) is a Scottish actor who has appeared on film, stage, and television.\n\nA trained lawyer, Butler turned to acting in the mid-1990s with small roles in productions such as the James Bond film Tomorrow Never Dies (1997), which he followed with steady work on television, most notably in the American miniseries Attila (2001).\n\nHe garnered critical acclaim for his breakthrough work as the lead in Joel Schumacher's 2004 film adaptation of the musical The Phantom of the Opera. In 2007, Butler gained worldwide recognition through his portrayal of King Leonidas in the film 300. Since then, he has appeared in projects including P.S. I Love You (2007), Nim's Island (2008), RocknRolla (2008), The Ugly Truth (2009), Gamer (2009), Law Abiding Citizen (2009), The Bounty Hunter (2010), and How to Train Your Dragon (2010). Description above from the Wikipedia article Gerard Butler, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Gerard Butler	1969-11-13	No data.	2
16483	http://image.tmdb.org/t/p/w185/gnmwOa46C2TP35N7ARSzboTdx2u.jpg	Michael Sylvester Gardenzio Stallone is an American actor and filmmaker. He is well known for his Hollywood action roles, including boxer Rocky Balboa in the Rocky series' seven films from 1976 to 2015; soldier John Rambo from the four Rambo films, released between 1982 and 2008; and Barney Ross in the three The Expendables films from 2010 to 2014. He wrote or co-wrote most of the 14 films in all three franchises, and directed many of the films.\n\nStallone's film Rocky was inducted into the National Film Registry as well as having its film props placed in the Smithsonian Museum. Stallone's use of the front entrance to the Philadelphia Museum of Art in the Rocky series led the area to be nicknamed the Rocky Steps. Philadelphia has a statue of his Rocky character placed permanently near the museum. It was announced on December 7, 2010 that Stallone was voted into the International Boxing Hall of Fame in the non-participant category.\n\nIn 1977, Stallone was nominated for two Academy Awards for Rocky, Best Original Screenplay and Best Actor. He became the third man in history to receive these two nominations for the same film, after Charlie Chaplin and Orson Welles. He received positive reviews, as well as his first Golden Globe Award win and a third Academy Award nomination, for reprising the role of Rocky Balboa in Ryan Coogler's 2015 film Creed.	Sylvester Stallone	1946-07-06	No data.	2
1248	http://image.tmdb.org/t/p/w185/m15C58NWii5WCIg57Llr7hejnfy.jpg	​Brian Denis Cox, CBE (born 1 June 1946) is a Scottish actor. He is known for his work with the Royal Shakespeare Company, where he gained recognition for his portrayal of King Lear. He has also appeared in many Hollywood productions playing parts such as Dr. Guggenheim in Rushmore and William Stryker in X2. He was the first actor to portray Hannibal Lecter on film in the 1986 production Manhunter.\n\nDescription above from the Wikipedia article Brian Cox , licensed under CC-BY-SA, full list of contributors on Wikipedia.	Brian Cox	1946-06-01	No data.	2
134	http://image.tmdb.org/t/p/w185/cDRGXCNrwf1p9jouw9GzhU2vWP7.jpg	Eric Marlon Bishop (born December 13, 1967), professionally known as Jamie Foxx, is an American actor, singer-songwriter, stand-up comedian, and talk radio host. As an actor, his work in the film Ray earned him the Academy Award and BAFTA Award for Best Actor as well as the Golden Globe Award for Best Actor in a musical/comedy. He is also a Grammy Award winning musician, producing two albums which have charted highly on the Billboard 200: Unpredictable, which topped the chart, and Intuition.\n\nFoxx was abandoned seven months after birth, and was subsequently adopted and raised in Terrell by his mother's adoptive parents, Estelle and Mark Talley. Foxx had a strict Baptist upbringing and began piano lessons at the age of five by his grandmother's orders. He has often acknowledged his grandmother's influence in his life as one of the greatest reasons for his success. When he found that female comedians were often called first to perform, he changed his name to Jamie Foxx, feeling that it was an ambiguous enough name to disallow any biases. He chose his surname as a tribute to comedian Redd Foxx.\n\nFrom 1996 to 2001, Foxx starred in his own sitcom The Jamie Foxx Show, and in 1992 he made his film debut in Toys a comedy directed by Barry Levinson. Following Toys, his first dramatic role came in Oliver Stone's 1999 film Any Given Sunday, where he portrayed a hard-partying American football player. Foxx has since evolved into a respected dramatic actor. Foxx was featured as taxi driver Max Durocher in the film Collateral alongside Tom Cruise, for which he received outstanding reviews and a nomination for the Academy Award for Best Supporting Actor. His standout performance, however, was his portrayal of Ray Charles in the biopic Ray (2004), for which he won the Academy Award for Best Actor and the BAFTA Award for Best Actor in a Leading Role. Foxx is the second male in history to receive two acting Oscar nominations in the same year for two different movies, Collateral and Ray.\n\nIn September 2007, Foxx was awarded a star on the Hollywood Walk of Fame.	Jamie Foxx	1967-12-13	No data.	2
50463	http://image.tmdb.org/t/p/w185/sQ18pOQEgu1zsmaIVEw5GwIMgpn.jpg	Malin Maria Åkerman (born May 12, 1978) is a Swedish–Canadian actress and model born in Stockholm, Sweden. She moved to Canada at the age of two and as a child appeared in several television commercials before going on to win a modeling contract at age sixteen. Åkerman's subsequent acting career began with her debut on the Canadian television series Earth: Final Conflict in 1997, followed by many small television and film parts, including The Utopian Society (2003) and Harold &amp; Kumar Go to White Castle (2004). Åkerman gained her first starring role as Lila in The Heartbreak Kid (2007), opposite Ben Stiller and the following year played a supporting role in the romantic comedy 27 Dresses (2008) with Katherine Heigl. In 2009, Åkerman got her big break when cast as Silk Spectre II in the superhero film Watchmen, for which she received a Saturn Award nomination for Best Supporting Actress. Other notable films include The Proposal, Couples Retreat, and The Bang Bang Club.\n\nDescription above from the Wikipedia article Malin Åkerman, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Malin Åkerman	1978-05-12	No data.	1
135651	http://image.tmdb.org/t/p/w185/xjMZd0k7G0nN6BXTjQBzf3Gyrz7.jpg	Michael Bakari Jordan (born February 9, 1987) is an American actor. Jordan's television roles include Wallace in the HBO series The Wire (2002), Reggie Montgomery in the ABC soap opera All My Children (2003–2006), and Vince Howard in the NBC drama series Friday Night Lights (2009–2011).\n\nJordan's film roles include shooting victim Oscar Grant in the film Fruitvale Station (2013), for which he received considerable critical acclaim, the Human Torch in the 2015 Fantastic Four, and Adonis Creed in the Rocky sequel film Creed (2015). Other film performances include Red Tails (2012), Chronicle (2012), That Awkward Moment (2014) and the Marvel Studios superhero film Black Panther (2018). He frequently collaborates with filmmaker Ryan Coogler.\n\nDescription above from the Wikipedia article Michael B. Jordan, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Michael B. Jordan	1987-02-09	No data.	2
1267329	http://image.tmdb.org/t/p/w185/95QjzhpCgoNQ06piZRVSPxZTQHd.jpg	Lupita Nyong'o is an actress, film and music video director of dual Kenyan and Mexican citizenship. After graduating from Hampshire College with a bachelor's degree in film and theatre studies, Nyong'o worked as a production assistant on several Hollywood films. In 2008 she made her acting debut with the short film East River and subsequently starred in the Kenyan television series Shuga (2009). Also in 2009, she wrote, produced and directed the documentary film In My Genes. Nyong'o later completed a master's degree in acting from the Yale School of Drama, followed by her first feature film role in Steve McQueen's historical drama 12 Years a Slave (2013). Her role in the film was widely acclaimed, earning her the Academy Award for Best Supporting Actress, among numerous other awards and nominations. In 2014, she was named "The Most Beautiful Woman" by People.	Lupita Nyong'o	1983-03-01	No data.	1
82104	http://image.tmdb.org/t/p/w185/xgo39kFf6rAynb1i9J1BeLfSXxg.jpg	Danai Jekesai Gurira (born February 14, 1978) is a Zimbabwean-American actress and playwright. She is best known for her role as Michonne on the AMC drama series The Walking Dead.\n\nGrinnell, IowaGurira was born in Grinnell, Iowa and was raised there until December 1983, when she moved with her family to Harare, Zimbabwe. She has an older brother who is a chiropractor and two older sisters, while her mother is a university librarian and her father is a chemistry professor. She returned to the United States at age 19 to study at Macalester College. She earned her MFA at New York University	Danai Gurira	1978-02-14	No data.	1
64436	http://image.tmdb.org/t/p/w185/mIa3Dj2ailEg2vYpBLJdfByhAHe.jpg	Daniel Wu is a Chinese-American actor, director, and producer. Since his film debut in 1998, he has been featured in over 60 films. He was awarded Best Supporting Actor for his role in "New Police Story", and was awarded Best New Director for his mockumentary, "The Heavenly Kings". Currently, he is most well-known for his role as Sunny in the AMC action series "Into the Badlands".	Daniel Wu	1974-09-30	No data.	2
5470	http://image.tmdb.org/t/p/w185/9NuZGaPn3Z1svlbF9ZkdtjgrHZo.jpg	Kristin A. Scott Thomas, OBE (born 24 May 1960) is an English actress who has also acquired French nationality. She gained international recognition in the 1990s for her roles in Bitter Moon, Four Weddings and a Funeral and The English Patient.\n\nSince the 1980s, she has also worked in French cinema in films such as the thriller Tell No One and Philippe Claudel's I've Loved You So Long. She has lived in France since she was nineteen, has brought up her three children in Paris, and says she considers herself more French than British. She has been a member of the Légion d'honneur since 2005.	Kristin Scott Thomas	1960-05-24	No data.	1
928572	http://image.tmdb.org/t/p/w185/w8yZtoTB2XGJWYJxZBLWp1Smqrk.jpg	Scott Eastwood (born Scott Clinton Reeves; March 21, 1986) is an American actor, model, and professional skydiver. He has appeared in the films Flags of Our Fathers (2006), Gran Torino (2008), Invictus (2009), The Forger (2012), Trouble with the Curve (2012), Texas Chainsaw (2013), Fury (2014), The Perfect Wave (2014), The Longest Ride (2015), Mercury Plains (2016), Suicide Squad (2016), Snowden (2016) and The Fate of the Furious (2017). He has also been the model for the fragrance Cool Water by Davidoff. He is the youngest son of Academy Award-winning actor-director Clint Eastwood and second youngest of Jacelyn Reeves.\n\nDescription above from the Wikipedia article Scott Eastwood, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Scott Eastwood	1986-04-21	No data.	2
71375	http://image.tmdb.org/t/p/w185/hPbiRySz3k5XEZ3DwJtExnNTKiG.jpg	Alden Caleb Ehrenreich (born November 22, 1989) is an American actor. He made his feature-film debut in Francis Ford Coppola's Tetro in 2009, and also appeared in Coppola's subsequent film, Twixt (2011). In 2013, he appeared in Woody Allen's Blue Jasmine and Park Chan-wook's Stoker. In 2016, Ehrenreich gained significant critical praise for his starring role as Hobie Doyle in the Coen brothers comedy Hail, Caesar! and for his leading role in Warren Beatty's romantic comedy-drama Rules Don't Apply. He played Han Solo in Solo: A Star Wars Story, which focuses on the younger years of the character, before the events of A New Hope.\n\nDescription above from the Wikipedia article Alden Ehrenreich, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Alden Ehrenreich	1989-11-22	No data.	2
119589	http://image.tmdb.org/t/p/w185/36o5mpbQVdxOf9kUxWw7SllOuk.jpg	Donald McKinley Glover (born September 25, 1983) is an American actor, writer, comedian, musician and rapper. Glover first came to attention for his work in the sketch group Derrick Comedy and is best known for his role as community college student Troy Barnes on the NBC comedy series Community. Contrary to a persistent rumor, he is not related to actor Danny Glover.	Donald Glover	1983-09-25	No data.	2
6162	http://image.tmdb.org/t/p/w185/1zmr8C7TCqsoCjDVKJycVp2wWyf.jpg	Paul Bettany was born into a theatre family. His father, Thane Bettany, is still an actor but his mother, Anne Kettle, has retired from acting. He has an older sister who is a writer and a mother. His maternal grandmother, Olga Gwynne (her maiden and stage name), was a successful actress, while his maternal grandfather, Lesley Kettle, was a musician and promoter. He was brought up in North West London and, after the age of 9, in Hertfordshire (Brookmans Park). Immediately after finishing at Drama Centre, he went into the West End to join the cast of "An Inspector Calls", though when asked to go on tour with this play, he chose to stay in England.	Paul Bettany	1971-05-27	No data.	2
59254	http://image.tmdb.org/t/p/w185/uo8YljeePz3pbj7gvWXdB4gOOW4.jpg	Pablo Tell Schreiber (born April 26, 1978) is a Canadian actor known for his dramatic stage work and for his portrayal of Nick Sobotka on The Wire and for his Emmy nominated role of George Mendez on Orange Is the New Black. He was nominated for a Tony Award for his performance in Awake and Sing! on Broadway. He also narrated the American Psycho audiobook. He also starred in the HBO series The Brink as Lieutenant Commander Zeke “Z-Pak” Tilson, a Naval pilot who is also a drug dealer, and played a leading role in the Michael Bay film 13 Hours: The Secret Soldiers of Benghazi (2016). He also played William Lewis on Law and Order Special Victims Unit.	Pablo Schreiber	1978-04-26	No data.	2
1371398	http://image.tmdb.org/t/p/w185/zov23iUpL3QFHqzjdtzrBGOQYaF.jpg	O'Shea Jackson, Jr. (born February 24, 1991), also known as OMG, is an American rapper and actor. Jackson is the son of rapper and actor Ice Cube, and he portrayed his father in the 2015 biopic Straight Outta Compton.\n\nJackson was born in Compton, California, to O'Shea Jackson, better known as Ice Cube, and Kimberly Woodruff. He has two brothers, Darryl and Sharif, and a sister Kareema. His brother Darryl is also a rapper under the name Doughboy, which is the nickname of the character his father portrayed, Darin "Doughboy" Baker, in his first film Boyz n the Hood.\n\nIn June 2014, it was announced that Jackson had been cast to portray his father in Straight Outta Compton, a biographical film about N.W.A. The film was released on August 14, 2015. Jackson is noted for his physical resemblance to his father, which Ice Cube described as "spot on." "He was born to play the part," he told Jimmy Kimmel in October 2014.\n\nDescription above from the Wikipedia article O'Shea Jackson Jr., licensed under CC-BY-SA, full list of contributors on Wikipedia.	O'Shea Jackson Jr.	1991-02-24	No data.	0
1160	http://image.tmdb.org/t/p/w185/vyoJV5QYwIGZohrPpKFdKc7EpSP.jpg	Michelle Marie Pfeiffer  (born April 29, 1958) is an American actress and singer. She made her screen debut in 1980, but first garnered mainstream attention with her performance in Scarface (1983). She rose to prominence in the late 1980s and early 1990s with critically acclaimed performances in the films Dangerous Liaisons (1988), Married to the Mob (1988), The Fabulous Baker Boys (1989), The Russia House (1990), Frankie and Johnny (1991), Love Field (1992), Batman Returns (1992), and The Age of Innocence (1993). Michelle Pfeiffer has won numerous awards for her work, including the Golden Globe Award for Best Actress - Motion Picture Drama for The Fabulous Baker Boys, the BAFTA Award for Best Actress in a Supporting Role for Dangerous Liaisons, and the Silver Bear for Best Actress for Love Field; each of these films also resulted in a nomination for an Academy Award. She received a star on the Hollywood Walk of Fame on August 6, 2007. Her star is located at 6801 Hollywood Boulevard.	Michelle Pfeiffer	1958-04-29	No data.	1
1223786	http://image.tmdb.org/t/p/w185/lRSqMNNhPL4Ib1hAJxmDFBXHAMU.jpg	Emilia Isabelle Euphemia Rose Clarke (born 23 October 1986) is an English actress.\n\nClarke rose to prominence in 2011 for her breakthrough role as Daenerys Targaryen in the HBO series Game of Thrones, a performance that has gained her both critical and popular acclaim. In 2017, Clarke became one of the highest paid actors on television for earnings of £2 million per episode of Game of Thrones.\n\nClarke made her Broadway debut as Holly Golightly in a production of Breakfast at Tiffany's in March 2013. In 2015, she was named Esquire's Sexiest Woman Alive. She is also known for her starring roles as Sarah Connor in the science fiction film Terminator Genisys (2015) and as Louisa Clark in the romance film Me Before You (2016). In November 2016 she was cast as the female lead in the upcoming Star Wars Han Solo anthology film.\n\nDescription above from the Wikipedia article Emilia Clarke, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Emilia Clarke	1986-10-23	No data.	1
54697	http://image.tmdb.org/t/p/w185/sWsW3mFSJzfbMUf43R0J8tY8BeW.jpg	Dave Franco is an American TV and film performing artist who is known for his parts in the movies 21 Jump Street, Now You See Me, Warm Bodies, and Neighbors, Charlie St. Cloud, Fright Night,  and on the ninth season of the series Scrubs. He is the more youthful sibling of performer James Franco.\n\nIn 2006, Franco made his acting presentation on The CW dramatization TV arrangement 7th Heaven.\n\nFranco has been dating on-screen character Alison Brie since 2012. In August 2015, the couple got to be locked in.	Dave Franco	1985-06-12	No data.	2
2387	http://image.tmdb.org/t/p/w185/wEy5qSDT5jT3ZASc2hbwi59voPL.jpg	Sir Patrick Hewes Stewart is an English film, television and stage actor. He has had a distinguished career in theatre and television for around half a century. He is most widely known for his television and film roles, as Captain Jean-Luc Picard in Star Trek: The Next Generation and as Professor Charles Xavier in the X-Men films.\n\nStewart was born in Mirfield near Dewsbury in the West Riding of Yorkshire, England, the son of Gladys, a weaver and textile worker, and Alfred Stewart, a Regimental Sergeant Major in the British Army who served with the King's Own Yorkshire Light Infantry and previously worked as a general labourer and as a postman. Stewart and his first wife, Sheila Falconer, have two children: Daniel Freedom and Sophie Alexandra. Stewart and Falconer divorced in 1990. In 1997, he became engaged to Wendy Neuss, one of the producers of Star Trek: The Next Generation, and they married on 25 August 2000, divorcing three years later. Four months prior to his divorce from Neuss, Stewart played opposite actress Lisa Dillon in a production of The Master Builder. The two dated for four years, but are no longer together. He is now seeing Sunny Ozell; at 31, she is younger than his daughter. "I just don't meet women of my age," he explains.\n\nStewart has been a prolific actor in performances by the Royal Shakespeare Company, appearing in over 60 productions.	Patrick Stewart	1940-07-13	No data.	2
39189	http://image.tmdb.org/t/p/w185/A70Gtg3kkTeCBgtFkSRPu9qfPQu.jpg	Stephen Merchant is a British writer, director, radio presenter, stand-up comedian, and actor, best known for his work on The Office, Extras, andThe Ricky Gervais Show.	Stephen Merchant	1974-11-24	No data.	2
54649	http://image.tmdb.org/t/p/w185/4DCfloJ8CDsvchaKE0KdYW07obz.jpg	​From Wikipedia, the free encyclopedia.  \n\nLouis Mandylor (born 13 September 1966) is an Australian film and television actor.Mandylor has enjoyed success in US television shows, such as a prominent guest appearance on Relic Hunter with Tia Carrere. Louis is probably most famous for his role in the movie My Big Fat Greek Wedding. Other major roles include playing Louis Malone in Martial Law alongside Sammo Hung. However, the show only lasted two seasons, with Mandylor being dropped at the end of its first season. Mandylor appeared in the sitcom Friends, pretending to be Joey's twin in "The One With Unagi". Additionally, he appeared in the third season of CSI: Miami as a robber/killer. He and his brother Costas have acted alongside each other in the Charmed episode "Saving Private Leo" and a short movie written and produced by Louis entitled My Brother Cicero. Louis portrayed Deputy Lloyd in the Syfy thriller film The Cursed, he stars alongside his brother Costas. One of his more popular roles was that of Bobby DeLuca in the cult-classic Suckers, where he plays a good-guy turned car salesman.\n\nDescription above from the Wikipedia article  Louis Mandylor, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Louis Mandylor	1966-09-13	No data.	2
130597	http://image.tmdb.org/t/p/w185/dJ7tDtwazd5RiheT0oenbzEqENa.jpg	Dennis To Yu-hang (born 1 January 1981) is a Hong Kong martial artist and actor. He started his career as a wushu practitioner and won several awards at various competitions, including a silver medal at the 2002 Asian Games and a gold medal at the 2005 East Asian Games t to became an actor in 2007 and started off by playing minor roles in Ip Man(2008), Bodyguards and Assassins (2009) and Ip Man 2 (2010). He is best known for his role as the Wing Chun grandmaster Ip Man in the 2010 film The Legend Is Born - Ip Man. (Wikipedia)	Dennis To Yue-Hong	1981-01-01	No data.	2
227454	http://image.tmdb.org/t/p/w185/tSre3oQhYq3ma74IXtaG3Qrm33p.jpg	Alicia Amanda Vikander (born 3 October 1988) is a Swedish actress and former dancer. Born and raised in Gothenburg, she began acting as a child in minor stage productions at The Göteborg Opera and trained as a ballet dancer at the Royal Swedish Ballet School in Stockholm and the School of American Ballet in New York. She began her professional acting career by appearing in Swedish short films and television series and first gained recognition in Northern Europe for her role as Josefin Björn-Tegebrandt in the TV drama Andra Avenyn (2008–10).\n\nVikander made her feature film debut in Pure (2010), for which she won the Guldbagge Award for Best Actress. She attracted widespread recognition in 2012 for portraying Princess Ekaterina "Kitty" Alexandrovna Shcherbatskaya in Joe Wright's film adaptation of Anna Karenina and Queen Caroline Mathilde in the acclaimed Danish film A Royal Affair, receiving a BAFTA Rising Star Award nomination. She went on to star in the 2013 Swedish drama film Hotell and appeared in the Julian Assange-biopic The Fifth Estate that same year.\n\nIn 2014 and 2015, Vikander achieved global recognition and acclaim for her roles as activist Vera Brittain in Testament of Youth, a humanoid robot in Ex Machina (for which she was nominated for the Golden Globe and BAFTA Award for Best Supporting Actress) and painter Gerda Wegener in The Danish Girl, for which she received the Academy Award and the Screen Actors Guild Award for Best Supporting Actress, among other awards.	Alicia Vikander	1988-10-03	No data.	1
44735	http://image.tmdb.org/t/p/w185/c01G88eCpiLLmT4RIWGkr7nm31o.jpg	Jesse Adam Eisenberg (born October 5, 1983) is an American actor. He made his screen debut with the comedy-drama television series Get Real from 1999 to 2000. After his first leading role in the film Roger Dodger (2002), he appeared in such films as The Squid and the Whale (2005) and The Education of Charlie Banks (2007).\n\nIn 2008, Eisenberg was honored alongside Olivia Wilde with the Vail Film Festival Rising Star Award. In 2009, he starred in the comedy drama Adventureland and the zombie comedy Zombieland, for which he gained critical acclaim. He then played Facebook co-founder Mark Zuckerberg in The Social Network (2010), for which he received a Golden Globe and Academy Award nomination in the Best Actor category. Since then, he voiced the lead role in Rio (2011), and has filmed the adventure comedy 30 Minutes or Less (2011).\n\nDescription above from the Wikipedia article Jesse Eisenberg, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jesse Eisenberg	1983-10-05	No data.	2
10993	http://image.tmdb.org/t/p/w185/1lzM9lcwuZynxX3WEfzJqAAxVag.jpg	​From Wikipedia, the free encyclopedia\n\nThomas Andrew "Tom" Felton (born 22 September 1987) is a British actor and musician. He is best known for playing the role of Draco Malfoy in the Harry Potter film series, the movie adaptations of the best-selling Harry Potter fantasy novels by author J. K. Rowling, for which he auditioned at age twelve. Felton started filming in commercials when he was eight years old and in films at the age of ten, appearing in The Borrowers and Anna and the King. After being cast as Draco Malfoy he has subsequently appeared in all eight Harry Potter films, from 2001 to 2011, and finished filming the last two. A fishing aficionado, he helped form the World Junior Carp Tournament, a "family-friendly" fishing tournament. Felton's portrayal of Draco Malfoy in Harry Potter and the Half-Blood Prince won him the MTV Movie Award for Best Villain in 2010.\n\nDescription above from the Wikipedia article Tom Felton, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Tom Felton	1987-09-22	No data.	2
57755	http://image.tmdb.org/t/p/w185/1ecdooAHICUhCZKKEKlFtccEmTU.jpg	Woodrick Tracy "Woody" Harrelson (born July 23, 1961) is an American actor and comedian. Harrelson's breakthrough role came in the television sitcom Cheers as bartender Woody Boyd. Notable film characters include basketball hustler Billy Hoyle in White Men Can't Jump, bowler Roy Munson in Kingpin, serial killer Mickey Knox in Natural Born Killers, magazine publisher Larry Flynt in The People vs. Larry Flynt, country singer Dusty in A Prairie Home Companion, bounty hunter Carson Wells in No Country for Old Men, zombie killer Tallahassee in Zombieland, blind piano player/meat salesman Ezra Turner in Seven Pounds, conspiracy nut Charlie Frost in 2012, a delusional man who believes that he is a superhero named Defendor in Defendor and Cpt. Tony Stone in The Messenger. For The People vs. Larry Flynt and The Messenger, Harrelson earned Academy Award nominations for Best Actor and Best Supporting Actor, respectively.\n\nDescription above from the Wikipedia article Woody Harrelson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Woody Harrelson	1961-07-23	No data.	2
1254583	http://image.tmdb.org/t/p/w185/n4vK7CuElT0YIQi93nTgk3LsYW0.jpg	James Dornan (born 1 May 1982) is an Irish actor, model, and musician. He played Axel von Fersen in Sofia Coppola's film Marie Antoinette (2006), Sheriff Graham Humbert in the ABC series Once Upon a Time, serial killer Paul Spector in the BBC Two and RTÉ One crime drama series The Fall, and Christian Grey in the Fifty Shades franchise (2015-).\n\nDescription above from the Wikipedia article Jamie Dornan licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jamie Dornan	1982-05-01	No data.	2
118545	http://image.tmdb.org/t/p/w185/dKMg1vpCGqIz6QP4ZsK70TdRURR.jpg	Dakota Mayi Johnson (born October 4, 1989) is an American actress and model. She is the daughter of actors Melanie Griffith and Don Johnson. She had her screen debut alongside her mother in the comedy-drama Crazy in Alabama (1999) and was named Miss Golden Globe in 2006. Following high school graduation, she returned to acting with roles in The Social Network (2010), Beastly (2011), 21 Jump Street (2012), Need for Speed (2014) and the short-lived comedy Ben and Kate (2012–2013).\n\nShe received international recognition in 2015 after landing the lead role of Anastasia Steele in the romantic drama Fifty Shades of Grey, which catapulted her to fame and earned her the People's Choice Award for Favorite Dramatic Movie Actress. The same year, she took part in Black Mass and A Bigger Splash, which garnered her a BAFTA Rising Star Award nomination. She also starred in the romantic comedy How to Be Single (2016) and will reprise her role as Anastasia Steele in Fifty Shades Darker (2017) and Fifty Shades Freed (2018).\n\nDescription above from the Wikipedia article Dakota Johnson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Dakota Johnson	1989-10-04	No data.	1
18054	http://image.tmdb.org/t/p/w185/n1GSGFdpoiDXT3ozZflsmcJy21Y.jpg	Rinko Kikuchi, born Yuriko Kikuchi, January 6, 1981, is a Japanese actress. Kikuchi is the first Japanese actress to be nominated for an Academy Award in 50 years. She is currently Japan's only living female Academy Award nominee in acting categories. The only other nominee was Miyoshi Umeki, who won the Best Supporting Actress award in 1957 for Sayonara.	Rinko Kikuchi	1981-01-06	No data.	1
1173223	http://image.tmdb.org/t/p/w185/lo1Rh5BoWAsXv8xWP5sfZhLMavh.jpg	Danny Chan ( Kwok-Kwan Chan) was born on August 1, 1975 in Hong Kong. He is an actor, known for  Ip Man 3 (2015), Kung Fu Hustle (2004), and Shaolin Soccer (2001).	Danny Chan Kwok-Kwan	1975-08-01	No data.	2
6968	http://image.tmdb.org/t/p/w185/dFbNlPpiEPupTAlNVNh5vrxBU1h.jpg	Hugh Michael Jackman (born 12 October 1968) is an Australian actor and producer who is involved in film, musical theatre, and television. Jackman has won international recognition for his roles in major films, notably as action/superhero, period and romance characters.\n\nHe is known for his role as Wolverine in the X-Men series, as well as for his leads in Kate &amp; Leopold, Van Helsing, The Prestige, and Australia. Jackman is a singer, dancer, and actor in stage musicals, and won a Tony Award for his role in The Boy from Oz. In November 2008, Open Salon named Jackman one of the sexiest men alive. Later that same month, People magazine named Jackman "Sexiest Man Alive.” A three-time host of the Tony Awards, winning an Emmy Award for one of these appearances, Jackman also hosted the 81st Academy Awards on 22 February 2009. Description above from the Wikipedia article Hugh Jackman , licensed under CC-BY-SA, full list of contributors on Wikipedia.	Hugh Jackman	1968-10-12	No data.	2
12074	http://image.tmdb.org/t/p/w185/uquz3dZ0fs0lAK57lCXwxaslVkb.jpg	​From Wikipedia, the free encyclopedia.  \n\nJohn Arthur Lithgow (born October 19, 1945) is an American actor, musician, and author. Presently, he is involved with a wide range of media projects, including stage, television, film, and radio. He also has written and published several books of poetry and children's literature. He appeared in the films The World According to Garp (1982) and Terms of Endearment (1983), receiving an Academy Award nomination for Best Actor in a Supporting Role for each. Lithgow is known for his roles as the Reverend Shaw Moore in Footloose, Dick Solomon on the NBC sitcom 3rd Rock from the Sun, the voice of Lord Farquaad in Shrek, and The Trinity Killer on Showtime's Dexter for which he won Golden Globe and Emmy awards. On the stage, he appeared in the musical adaptation of Sweet Smell of Success, winning the Tony Award for Best Leading Actor in a Musical. He again appeared in a musical, Dirty Rotten Scoundrels, again receiving the Tony nomination for Best Leading Actor in a Musical. He has also recorded music, such as the 1999 album of children's music, Singin' in the Bathtub, and has written poetry and short stories for children, such as Marsupial Sue.\n\nDescription above from the Wikipedia article John Lithgow, licensed under CC-BY-SA, full list of contributors on Wikipedia.	John Lithgow	1945-10-19	No data.	2
3810	http://image.tmdb.org/t/p/w185/p5xjCovj1uzvA2SXrWLH78Nh1Jf.jpg	Javier Ángel Encinas Bardem is a Spanish actor from the Canary Islands. He is best known for his role in the 2007 film No Country for Old Men, for which he won the Academy Award for Best Supporting Actor portraying the psychopathic assassin Anton Chigurh. He has also received critical acclaim for roles in films such as Jamón, jamón, Carne trémula, Boca a boca, Los Lunes al sol, Mar adentro, and Skyfall, for which he received both a BAFTA and a SAG nomination for Best Supporting Actor.\n\nBardem has also won a Screen Actors Guild Award, a BAFTA, five Goya Awards, two European Film Awards, a Prize for Best Actor at Cannes and two Volpi Cups at Venice for his work. He is the first Spaniard actor to be nominated for an Oscar (Best Actor, 2000, for Before Night Falls), as well as the first Spanish actor to win an Academy Award. He received his third Academy Award nomination, and second Best Actor nomination, for the film Biutiful.	Javier Bardem	1969-03-01	No data.	2
74568	http://image.tmdb.org/t/p/w185/lrhth7yK9p3vy6p7AabDUM1THKl.jpg	Chris Hemsworth (born 11 August 1983) is an Australian actor. He is best known for his roles as Kim Hyde in the Australian TV series Home and Away (2004) and as Thor in the Marvel Cinematic Universe films Thor (2011), The Avengers (2012), Thor: The Dark World (2013) and Avengers: Age of Ultron (2015). He has also appeared in the science fiction action film Star Trek(2009), the thriller adventure A Perfect Getaway (2009), the horror comedy The Cabin in the Woods (2012), the dark fantasy action film Snow White and the Huntsman (2012), the war film Red Dawn (2012) and the biographical sports drama film Rush (2013).\n\nDescription above from the Wikipedia article Chris Hemsworth, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Chris Hemsworth	1983-08-11	No data.	2
2038	http://image.tmdb.org/t/p/w185/3Y55D8wZgg4CkKadhXvSh91Q121.jpg	Naomie Melanie Harris (born 6 September 1976) is an English screen actress known for her starring role as Selena in 28 Days Later and her supporting turn as Tia Dalma in the second and third Pirates of the Caribbean films.\n\nDescription above from the Wikipedia article Naomie Harris, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Naomie Harris	1976-09-06	No data.	1
65717	http://image.tmdb.org/t/p/w185/wb14AA6u8dqA0XNweRIeKXatzzc.jpg	Jonathan Daniel "Jon" Hamm (born March 10, 1971) is an American actor who works primarily in television. For much of the mid-1990s, Hamm lived in Los Angeles as a struggling actor appearing in small parts in multiple television series, including Providence, The Division, What About Brian and Related. In 2000 he made his feature film debut in Clint Eastwood's space adventure, Space Cowboys. The following year, Hamm appeared in the independent comedy, Kissing Jessica Stein (2001) in a minor role.\n\nHamm gained global recognition for playing advertising executive Don Draper in the AMC drama series Mad Men, which premiered in July 2007. Hamm's performance earned him a Golden Globe Award for Best Actor in a Drama Series in 2008. Aside from his work on Mad Men, Hamm appeared in the 2008 science fiction remake, The Day the Earth Stood Still and claimed his first leading film role in the independent thriller Stolen (2010). Hamm had a supporting role in the 2010 crime film The Town.\n\nDescription above from the Wikipedia article Jon Hamm, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jon Hamm	1971-03-10	No data.	2
1047649	http://image.tmdb.org/t/p/w185/otPT5Ty6zy5jGBi3PQN6yC2FMel.jpg	Skrein made his acting debut in Plan B's short film Michelle. Skrein got his first lead role in Plan B's Ill Manors. Skrein portrayed Daario Naharis in the third season of the television series Game of Thrones. However, in the fourth season of the series, he had been replaced by Dutch actor Michiel Huisman. Skrein states that "behind the scenes politics" had forced him to leave the show. In 2014, Skrein was cast in The Transporter: Refueled, replacing Jason Statham as the lead. Though the film was critically panned, his performance was praised. In 2016, Skrein played the lead villain, Ajax, in the blockbuster action film Deadpool.\n\nOn 23 October 2015 Skrein was cast in sci-fi thriller, Gateway 6, alongside Rhys Ifans, with Tanel Toom making his directorial debut. Filming will commence in Estonia in the spring of 2016. On 29 October 2015 Skrein was cast in psychological revenge thriller, In Darkness, alongside Natalie Dormer and Stacy Martin; principal photography will begin early 2016.	Ed Skrein	1983-03-29	No data.	2
5724	http://image.tmdb.org/t/p/w185/lnk4HjUeqDlT6Kg9PaQsVIDpl56.jpg	Denis Colin Leary (born August 18, 1957) is an American actor, comedian, writer, director and film producer. Leary is known for his biting, fast paced comedic style and chain smoking. He is the star and co-creator of the television show Rescue Me, which ended its seventh and final season on September 7, 2011. Leary has starred in many motion pictures, most recently as CaptainGeorge Stacy in Marc Webb's 2012 film The Amazing Spider-Man and the voice of Diego in the animated Ice Age series.	Denis Leary	1957-08-18	No data.	2
10127	http://image.tmdb.org/t/p/w185/oxLsItDwLddXu8YYJCfkddYNejL.jpg	From Wikipedia, the free encyclopedia\n\nJonathan Vincent "Jon" Voight (born December 29, 1938) is an American actor. He has received an Academy Award, out of four nominations, and three Golden Globe Awards, out of nine nominations.\n\nVoight came to prominence in the late 1960s with his performance as a would-be gigolo in Midnight Cowboy (1969). During the 1970s, he became a Hollywood star with his portrayals of a businessman mixed up with murder in Deliverance (1972), a paraplegic Vietnam veteran in Coming Home (1978), for which he won an Academy Award for Best Actor, and a penniless ex-boxing champion in The Champ (1979).\n\nAlthough his output slowed during the 1980s, Voight received critical acclaim for his performance as a ruthless bank robber in Runaway Train (1985). During the 1990s, he most notably starred as an unscrupulous showman attorney in The Rainmaker (1997).\n\nVoight gave critically acclaimed biographical performances during the 2000s, appearing as sportscaster Howard Cosell in Ali (2001), as Nazi officer Jürgen Stroop in Uprising (2001), and as Pope John Paul II in the television film of the same name (2005).\n\nVoight is the father of actress Angelina Jolie.\n\nDescription above from the Wikipedia article Jon Voight, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jon Voight	1938-12-29	No data.	2
15319	http://image.tmdb.org/t/p/w185/vlUuasZW9mIrcnvp6IIEs1B43hT.jpg	Henry Czerny is a Canadian stage, film and television actor, best known for playing regular character Conrad Grayson in the television series "Revenge". He's a graduate of the National Theatre School in Montreal, Quebec, Canada.	Henry Czerny	1959-02-08	No data.	2
39658	http://image.tmdb.org/t/p/w185/aV85ryQtFk12JoKDh9cQvmqdKGO.jpg	Sally Cecilia Hawkins (born 27 April 1976) is an English actress. Her breakthrough performance as Poppy Cross in the 2008 film Happy-Go-Lucky won her several international awards, including the Golden Globe Award for Best Actress – Motion Picture Musical or Comedy. Other significant roles include Susan Wells in Vera Drake (2004), Sue Trinder in the BBC serial Fingersmith (2005), Anne Elliot in Persuasion (2007), Rita O'Grady in Made in Dagenham (2010), Ginger in Blue Jasmine (2013), Dr. Vivienne Graham in Godzilla (2014), Mary Brown in Paddington (2014) and Paddington 2 (2018) and Elisa Esposito in The Shape of Water (2017). For her performances in The Shape of Water and Blue Jasmine, Hawkins earned Academy Award nominations.	Sally Hawkins	1976-04-27	No data.	1
17005	http://image.tmdb.org/t/p/w185/rpvvWATYWHGjedJea0G97XufOwU.jpg	Doug Jones (born May 24, 1960) is an American film and television actor best known to science fiction, fantasy, and horror fans for his various roles playing non-human characters, often in heavy makeup, in films and television series such as Buffy the Vampire Slayer, Hellboy, Pan's Labyrinth and Fantastic Four: Rise of the Silver Surfer.\n\nDescription above from the Wikipedia article Doug Jones, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Doug Jones	1960-05-24	No data.	2
335	http://image.tmdb.org/t/p/w185/5yGCJ6znHM96zTfW2LNP6uPPDCZ.jpg	Michael Corbett Shannon (born August 7, 1974) is an American actor and musician. He made his film debut opposite Bill Murray in Groundhog Day (1993) and received widespread attention for his performance in 8 Mile (2002), where he portrayed the boyfriend of Eminem's character's mother (Kim Basinger). Shannon is known for his on-screen versatility, performing in both comedies and dramas. Notable projects include Pearl Harbor (2001), Bad Boys II (2003), Bug (2006), Before the Devil Knows You're Dead (2007), The Iceman (2012), Man of Steel (2013) and Elvis & Nixon (2016). He is a frequent collaborator with Jeff Nichols, appearing in all of his films: Shotgun Stories (2007), Take Shelter (2011), Mud (2012), Midnight Special and Loving (both 2016). He is also known for his role as Nelson Van Alden/George Mueller in the HBO period drama series Boardwalk Empire (2010–2014).\n\nShannon has been twice nominated for the Academy Award for Best Supporting Actor, first for Revolutionary Road (2008) and again for Nocturnal Animals (2016). 99 Homes (2014) further earned him nominations for a Screen Actors Guild Award and the Golden Globe Award for Best Supporting Actor – Motion Picture.\n\nDescription above from the Wikipedia article Michael Shannon, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Michael Shannon	1974-08-07	No data.	2
28633	http://image.tmdb.org/t/p/w185/iz61iPIgNUp0yk48bRNjEJ5GHO4.jpg	Richard Dale Jenkins (born May 4, 1947) is an American stage, film, and television actor. After beginning his career in theatre, Jenkins made his film debut in 1974, and appeared in supporting roles in numerous film productions in the 1980s and the 1990s before coming to prominence in the early 2000s for playing the deceased patriarch Nathaniel Fisher on the HBO funeral drama series Six Feet Under. He has since established himself in Hollywood by appearing in lead roles in the films The Visitor and The Cabin in the Woods.\n\nDescription above from the Wikipedia article Richard Jenkins , licensed under CC-BY-SA, full list of contributors on Wikipedia.	Richard Jenkins	1947-05-04	No data.	2
72118	http://image.tmdb.org/t/p/w185/9TUy7BO42uOQD31X7F1RNwL0NXH.jpg	Anil Kapoor is an Indian actor and producer who mainly appears in Bollywood films. He won a Filmfare Best Supporting Actor Award for his role in Yash Chopra's film Mashaal (1984).\n\nKapoor earned his first Filmfare Best Actor Award for his performance in N. Chandra's Tezaab in 1988, and later for Indra Kumar's Beta in 1992. Since then, he has starred in films including Virasat (1997), for which he won the Filmfare Critics Award for Best Performance; Biwi No.1 (1999); Taal (1999), for which he won his second Filmfare Best Supporting Actor Award; Pukar (2000), for which he won his first National Film Award for Best Actor; No Entry (2005) and Welcome (2007).\n\nKapoor's first role in an international film was in Danny Boyle's 2008 Academy Award-winning film Slumdog Millionaire, for which he shared the Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture. His performance in the eighth season of the action series 24 generated rave reviews from the American press. Globally, Anil Kapoor is one of the most recognised Indian actors.	Anil Kapoor	1956-12-24	No data.	2
60898	http://image.tmdb.org/t/p/w185/8MOp9cazWpC4CrGLZnD11A6Dv8c.jpg	Sebastian Stan (born August 13, 1982) is a Romanian American actor, known for his role as James Buchanan "Bucky" Barnes/Winter Soldier in the Marvel Cinematic Universe. He also appeared in the 2010 film Black Swan. On television, Stan portrayed Carter Baizen on Gossip Girl, Prince Jack Benjamin on Kings, Jefferson on Once Upon a Time, and T.J. Hammond on the miniseries Political Animals. His role on Political Animals earned him a nomination for the Critics' Choice Television Award for Best Supporting Actor in a Movie/Miniseries. In 2015, he co-starred in Jonathan Demme's Ricki and the Flash and Ridley Scott's The Martian.\n\nDescription above from the Wikipedia article Sebastian Stan, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Sebastian Stan	1982-08-13	No data.	2
17857	http://image.tmdb.org/t/p/w185/qRHZD8EdqeUor8A6tazJ3v3gxyD.jpg	Shaun Toub is an Iranian-American film and television actor. He is perhaps best known for his role as Farhad in the 2004 movie Crash, as Rahim Khan in the movie The Kite Runner, and as Yinsen in the film adaptation of the Iron Man comic book series.\n\nToub, who is of Persian Jewish background, was born in Tehran, Iran and raised in Manchester, England (his family left Iran before the 1979 revolution). At the age of fourteen, he moved to Switzerland and after a two year stay, he crossed the Atlantic to Nashua, New Hampshire to finish his last year of high school. His high school yearbook notes: "The funniest guy in school and the most likely to succeed in the entertainment world." After two years of college in Massachusetts, Shaun transferred to USC.\n\nShaun is active in the Iranian Jewish community. Through various charity events and public speaking engagements, he inspires the community to embrace the arts, as the arts enhance everyday life. He has been a recipient of the Sephard award at the Los Angeles Sephardic Film Festival. Toub currently resides in Los Angeles.	Shaun Toub	1963-01-01	No data.	2
1308445	http://image.tmdb.org/t/p/w185/aX7kfLrSYWK7s9KvjldO1JYCbPv.jpg	Carrie Alexandra Coon (born January 24, 1981) is an American actress. Coon was nominated for a Tony Award for her performance in the 2012 revival of Who's Afraid of Virginia Woolf?. In 2014, she began starring as Nora Durst in the HBO drama series, The Leftovers, and appeared in the thriller film Gone Girl.	Carrie Coon	1981-01-24	No data.	1
41686	http://image.tmdb.org/t/p/w185/3GJBcsLf6Kfy0x5DeSXKsIqcctP.jpg	Neil Patrick Harris (born June 15, 1973) is an American actor, singer, and magician. Prominent roles of his career include the title role in Doogie Howser, M.D., Colonel Carl Jenkins in Starship Troopers, the womanizing Barney Stinson in How I Met Your Mother, a fictionalized version of himself in the Harold &amp; Kumar series, and the title role in Joss Whedon's musical web series Dr. Horrible's Sing-Along Blog.\n\nHe also hosted the 63rd Tony Awards on June 7, 2009, and the 61st Primetime Emmy Awards on September 20, 2009. On March 7, 2010, he made a surprise appearance at the 82nd Academy Awards, delivering the opening musical number, and on August 21, 2010 he won two Emmy Awards at the Creative Arts Emmy Awards ceremony. On December 11, 2010, Harris hosted Spike's Video Game Awards. He was named as one of Time magazine's 100 most influential people in 2010. In June 2010, it was announced that Harris would receive a star on the Hollywood Walk of Fame in 2011.\n\nDescription above from the Wikipedia article Neil Patrick Harris, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Neil Patrick Harris	1973-06-15	No data.	2
80602	http://image.tmdb.org/t/p/w185/fdBvkrv4lSKZ97eDLpmjlK1Tnbx.jpg	Tyler Perry (born Emmitt Perry, Jr.; September 13, 1969) is an African-American actor, director, playwright, screenwriter, producer, author, and songwriter. Already a successful artist in Southern theater, Perry began to make national celebrity status in 2005 with the release of his first film, Diary of a Mad Black Woman. In 2009, Perry was ranked by Forbes magazine as the sixth highest-paid man in Hollywood. He has won critical praise for playing Madea, a mentally strong woman who handles adversity with optimism and happiness; his critically acclaimed portrayal of her in the award-winning "Madea" series has caused him to be one of the most respected black actors in Hollywood. As of July 2009, Perry's films had grossed nearly $400 million worldwide.	Tyler Perry	1969-09-13	No data.	2
52139	http://image.tmdb.org/t/p/w185/v4c6JhGYpjMRBwf95gtPxBnElNu.jpg	Seth Woodbury MacFarlane (born October 26, 1973) is an American animator, writer, comedian, producer, actor, singer, voice actor, and director best known for creating the animated sitcoms Family Guy, American Dad! and The Cleveland Show, for which he also voices many of the shows' various characters.\n\nA native of Kent, Connecticut, MacFarlane is a graduate of the Rhode Island School of Design, where he studied animation, earning a Bachelor of Fine Arts Degree. He was an animator and writer for Hanna-Barbera for several television shows, including Johnny Bravo, Cow and Chicken and Dexter's Laboratory, before creating his own series for 20th Century Fox entitled Family Guy in 1999. MacFarlane would go on to co-create American Dad! in 2005, The Winner in 2007 and The Cleveland Show in 2009 for 20th Century Fox.\n\nAs an actor, he has made guest appearances on shows such as Gilmore Girls, The War at Home and FlashForward. MacFarlane's interest in science fiction and fantasy has led to cameo and guest appearances on Star Trek: Enterprise and voicing the character of Johann Kraus in Guillermo del Toro's Hellboy II: The Golden Army. In 2008, he created his own YouTube series entitled Seth MacFarlane's Cavalcade of Cartoon Comedy. As a performer, MacFarlane has sung at several venues, including Carnegie and Royal Albert Hall.\n\nMacFarlane has won several awards for his work on Family Guy, including two Primetime Emmy Awards, and an Annie Award. In 2009, he won the Webby Award for Film & Video Person of the Year. He has been a subject of criticism from television watchdog groups, such as the Parents Television Council, who regularly condemn Family Guy for its indecency. He occasionally speaks at universities and colleges throughout the United States, and is a supporter of gay rights.\n\nOn the February 10, 2011 episode of the TBS variety nighttime talk-show series Conan, MacFarlane announced he is directing his first feature-length film, Ted. The film stars Mark Wahlberg as an adult, who as a child, wished his teddy bear would come to life. MacFarlane will be the voice and motion capture for the bear.	Seth MacFarlane	1973-10-26	No data.	2
71070	http://image.tmdb.org/t/p/w185/rkMBMJyRekUnZf59ipVRrtw74xk.jpg	Amanda Michelle Seyfried (born December 3, 1985) is an American actress and singer. She began her career as a model when she was 11, then at 15 began an acting career, starting off with uncredited roles and moving on to recurring roles on the soap operas As the World Turns and All My Children. Amanda is also noted to be an avid fan of the New York Rangers, her favorite player being Ryan McDonagh. In addition to hockey, Seyfried enjoys professional wrestling and is a fan of independent wrestler Kai Katana.\n\nIn 2004, Seyfried made her film debut in the teen comedy Mean Girls. Her subsequent supporting roles were in independent films, such as the drama Nine Lives(2005) and the crime drama Alpha Dog (2006), she also had a recurring role in the UPN TV drama show Veronica Mars (2004–2006). Between 2006 and 2011, she starred on the HBO drama series Big Love and appeared in the 2008 musical feature film Mamma Mia!.\n\nHer other appearances include leading roles in the black comedy horror film Jennifer's Body (2009), as a call girl in the erotic thriller, Chloe (2009), the romantic drama-war film Dear John (2010), the romantic drama Letters to Juliet (2010), the dark fantasy historical romance Red Riding Hood (2011), the dystopian sci-fi thriller In Time (2011), the thriller Gone (2012), the musical drama film Les Misérables (2012), as the title porn actress in the biographical drama Lovelace (2013), and in the comedies A Million Ways to Die in the West (2014) and Ted 2 (2015).\n\nDescription above from the Wikipedia article Amanda Seyfried, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Amanda Seyfried	1985-12-03	No data.	1
10859	http://image.tmdb.org/t/p/w185/h1co81QaT2nJA41Sb7eZwmWl1L2.jpg	Ryan Rodney Reynolds (born October 23, 1976) is a Canadian actor. He portrayed Michael Bergen on the ABC sitcom Two Guys and a Girl (1998–2001), Billy Simpson in the YTV Canadian teen soap opera Hillside (1991), as well as Marvel Comics characters Hannibal King in Blade: Trinity (2004), Wade Wilson / Weapon XI in X-Men Origins: Wolverine (2009), and the title character in Deadpool (2016) for which he received a Golden Globe Award nomination.\n\nDescription above from the Wikipedia article Ryan Reynolds, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Ryan Reynolds	1976-10-23	No data.	2
27972	http://image.tmdb.org/t/p/w185/fuLYoaiiFhkJzAVj5jOtdZ8FlEl.jpg	Joshua Ryan "Josh" Hutcherson (born October 12, 1992) is an American film and television actor. He began working in the early 2000s, appearing in several minor film and television roles. He gained wider exposure with major roles in the 2005 films Little Manhattan and Zathura, the 2006 comedy RV, the 2007 family adventure film Firehouse Dog, and the film adaptations of Bridge to Terabithia, Journey to the Center of the Earth and Cirque du Freak: The Vampire's Assistant. On March 30, 2008, Hutcherson won a Young Artist Award (for Leading Young Actor). Hutcherson was also featured on a Celebrity Teens edition of the hit show MTV Cribs, and is set to play Robert in the Red Dawn remake.\n\nDescription above from the Wikipedia article Josh Hutcherson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Josh Hutcherson	1992-10-12	No data.	2
55636	http://image.tmdb.org/t/p/w185/luKIiU3wAAZ5C6j2053g35cRhzE.jpg	Donald McNicol Sutherland, OC (born 17 July 1935) is a Canadian character actor with a film career spanning nearly 50 years. Some of Sutherland's more notable movie roles included offbeat warriors in such war movies as "The Dirty Dozen" in 1967, and "MASH" and "Kelly's Heroes" in 1970, as well as in such popular films as "Klute", "Invasion of the Body Snatchers", and "Ordinary People".  His more recent credits include "Reign Over Me" with Don Cheadle and Adam Sandler; "Ask the Dust," written and directed by Robert Towne; "Land of the Blind," with Ralph Fiennes; "An American Haunting," opposite Sissy Spacek; "American Gun," with Marcia Gay Harden and Forest Whitaker; and "Fierce People," directed by Griffin Dunne. He is the father of actor Kiefer Sutherland. Above description from the Wikipedia article Donald Sutherland, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Donald Sutherland	1935-07-17	No data.	2
224181	http://image.tmdb.org/t/p/w185/yJJz9PIrVWnSdfAEOrfhevxNbLO.jpg	Born March 15, 1986 in Sydney, Australia, Courtney and his sister were raised in Sydney's leafy northwest suburbs, attending Galston Public School where their mother, Karen, was a teacher. His father, Chris, was a civil servant with the state electricity company, implying that there were no show business influences in the family when Jai caught the acting bug as a 10-year-old. He went on to develop his dramatic skills at Cherrybrook Technology High School. At 18, Courtney, like many of Australia's finest thespians before him, tried and failed to win a place at the country's leading acting school, the National Academy for Dramatic Art (NIDA).	Jai Courtney	1986-03-15	No data.	2
655	http://image.tmdb.org/t/p/w185/dvT1NPY8CXIVQh0O1h6rpfYOgKz.jpg	​From Wikipedia, the free encyclopedia.   John Rhys-Davies (born 5 May 1944) is a Welsh actor and vocal artist. He is perhaps best known for playing the charismatic Arab excavator Sallah in the Indiana Jones films and the dwarf Gimli in The Lord of the Rings trilogy, in which he also voiced the ent, Treebeard. He also played Agent Michael Malone in the 1993 remake of the 1950s television series The Untouchables, Professor Maximillian Arturo in Sliders, King Richard I in Robin of Sherwood, General Leonid Pushkin in the James Bond film The Living Daylights, and Macro in I, Claudius. Additionally, he provided the voices of Cassim in Disney's Aladdin and the King of Thieves, Man Ray in SpongeBob SquarePants, and Tobias in the computer game Freelancer. He is also the narrator for the TV show Wildboyz. Description above from the Wikipedia article  John Rhys-Davies, licensed under CC-BY-SA, full list of contributors on Wikipedia.	John Rhys-Davies	1944-05-05	No data.	2
10959	http://image.tmdb.org/t/p/w185/6dqxucKnrqCwWNnwC37ckNfTJkZ.jpg	Shia Saide LaBeouf is an American actor, voice actor, and comedian. LaBeouf began his comedy career when he was 10 years old, and then launched his acting career in 1998 at the age of 12. He became known among younger audiences for his part in the Disney Channel series Even Stevens, also appearing in three Disney TV movies. In 2003, LaBeouf made his theatrical film debut in Holes, also appearing in the lead role in The Battle of Shaker Heights that same year.\n\nIn 2005, LaBeouf made his transition into more mature roles with The Greatest Game Ever Played. In 2007, he starred as the leads in Disturbia and Transformers, and the following year he appeared in Indiana Jones and the Kingdom of the Crystal Skull as Indiana's son. In 2009, LaBeouf reprised his role as Sam Witwicky in the Transformers sequel Transformers: Revenge of the Fallen, and appeared in New York, I Love You. His upcoming films include the lead roles in Wall Street: Money Never Sleeps, Transformers 3 and The Associate. In 2004, he made his directorial debut by directing "Lets Love Hate" with Lorenzo Eduardo. Five years later he also directed Cage's music video for the single "I Never Knew You". LaBeouf has been in one long-term relationship, which began in 2004 and lasted three years. He is currently in a relationship with Carey Mulligan; the two began dating in the summer of 2009. In November 2007, LaBeouf was arrested for misdemeanor criminal trespassing in a Chicago Walgreens after refusing to leave; the criminal charges were dropped the following month. In July 2008, LaBeouf was involved in a car accident, which was caused by the other driver. LaBeouf was arrested at the scene of the car accident for misdemeanor drunk driving, and his driver's license was suspended for one year because he refused a breathalyzer examination. As a result of the injuries he sustained from the accident, he has undergone multiple surgeries on his left hand, which has permanent damage and scarring.	Shia LaBeouf	1986-06-11	No data.	2
33235	http://image.tmdb.org/t/p/w185/A8Cws1ZLrUyHa2s8D2rsBeohgh3.jpg	Born and raised in Beverly Hills, Logan Lerman wanted to become an actor at an early age. So he told his mother of his desire to be an actor when he was 2 1/2 years old. At the age of 4, Logan had an agent and was booked for two commercials. His first appearance on the big screen was as William, the youngest son of Mel Gibson's character in The Patriot (2000). Also in 2000, he appeared with the same actor (Gibson), this time as the younger version of his character Nick Marshall, in What Women Want (2000). After a small role in 2001's Riding in Cars with Boys (2001), he starred in John Grisham's A Painted House (2003) (TV).His most recent work on the silver screen is his portrait as the younger version of Ashton Kutcher's character Evan in The Butterfly Effect (2004). After making his small screen debut in a guest-starring role in "10-8: Officers on Duty" (2003), he stars as Bobby (Robert) McCallister in "Jack &amp; Bobby" (2004), where he portrays a teenager who will be a future president of the United States.When Logan is not working, he likes to play soccer and baseball. He is a LA Lakers fan and, even though he plays mostly dramatic roles, he enjoys playing pranks on his friends.	Logan Lerman	1992-01-19	No data.	2
65731	http://image.tmdb.org/t/p/w185/9XzAE3ZnCnazub4xrSY8YBN7sNq.jpg	Samuel Henry John "Sam" Worthington is an Australian actor, best known for the portrayals of Jake Sully in Avatar, Marcus Wright in Terminator Salvation and Perseus in Clash of the Titans and its sequel, Wrath of the Titans, and Alex Mason in the video game Call of Duty: Black Ops and its sequel Call of Duty: Black Ops II.\n\nIn 2004, Worthington received Australia's highest film award for his lead performance in Somersault. He performed predominantly in leading roles in a variety of low-budget films before moving to major studio films, ranging from romantic drama and comedy-drama to science fiction and action.\n\nDescription above from the Wikipedia article Samuel L. Jackson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Sam Worthington	1976-08-02	No data.	2
955	http://image.tmdb.org/t/p/w185/sKxTvrd1JseydlmcU0quFfiwBT8.jpg	Penélope Cruz Sánchez is a Spanish actress and model, signed at age 15, made her acting debut at 16 on television and her feature film debut the following year in Jamón, jamón (1992), to critical acclaim.  Cruz achieved recognition for her lead roles in the 2001 films Vanilla Sky and Blow.\n\nShe has since built a successful career, appearing in films from a range of genres, from thrillers to family friendly holiday features. She has received critical acclaim for her roles in Volver (2006) and Nine (2009) receiving Golden Globe and Academy Award nominations for each. She won the Academy Award for Best Supporting Actress in 2008 for Vicky Cristina Barcelona (2008). She was the first Spanish actress in history to receive an Academy Award and the first Spanish actress to receive a star at the Hollywood Walk of Fame.\n\nCruz has modeled for companies such as Mango, Ralph Lauren and L'Oréal. Penélope and her younger sister Mónica Cruz have designed items for Mango.  Cruz has volunteered in Uganda and India; she donated her salary from The Hi-Lo Country to help fund the late nun's mission. A wax sculpture of Cruz will be placed in a premier spot in the Grevin Wax Museum in Paris.	Penélope Cruz	1974-04-28	No data.	1
6972	http://image.tmdb.org/t/p/w185/pY9ud4BJwHekNiO4MMItPbgkdAy.jpg	Ian David McShane (born 29 September 1942) is an English actor. Although he has appeared in numerous films, it is by his television roles that he is generally known, starting with the BBC's Lovejoy (1986–94) and particularly in the HBO Western drama Deadwood (2004–06). He starred as King Silas Benjamin in NBC series Kings and as Blackbeard in Pirates of the Caribbean: On Stranger Tides.\n\nDescription above from the Wikipedia article Ian McShane, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Ian McShane	1942-09-29	No data.	2
19498	http://image.tmdb.org/t/p/w185/w3epqN0BlV4TiUV9255d5tSCIRV.jpg	Jonathan E. "Jon" Bernthal (born September 20, 1976) is an American actor, best known for his role on the AMC television series The Walking Dead. He has performed in over 30 plays regionally and off-Broadway, including many with his own award-winning theatre company Fovea Floods. He also appeared in several TV shows such as Law & Order: Criminal Intent in 2002, The Class from 2006 to 2007 and The Pacific in early 2010.	Jon Bernthal	1977-09-20	No data.	2
6885	http://image.tmdb.org/t/p/w185/aHOB9UMgSI7MlXF3GMZaVQXqfQg.jpg	Charlize Theron (born 7 August 1975) is a South African actress, film producer and former fashion model.\n\nShe rose to fame in the late 1990s following roles in the films The Devil's Advocate (1997), Mighty Joe Young (1998), and The Cider House Rules (1999). Theron received critical acclaim for her portrayal of serial killer Aileen Wuornos in Monster (2003), for which she won the Silver Bear, Golden Globe Award, Screen Actors Guild Award, and Academy Award for Best Actress among several other accolades, becoming the first South African to win an Academy Award in a major acting category. In recent years, she has moved into the field of producing, both in television and film.\n\nShe received further Academy Award and Golden Globe Award nominations for her performance in North Country in 2005, and a Golden Globe Award nomination for her performance in Young Adult in 2011. In 2012, she appeared in Snow White & the Huntsman and Prometheus, both of which were box office successes. Theron became a U.S. citizen in 2007, while retaining her South African citizenship.\n\nTheron was born in Benoni, in the then-Transvaal Province of South Africa, the only child of Gerda (née Maritz) and Charles Theron (born 27 November 1947). Second Boer War figure Danie Theron was her great-great-uncle. Her ancestry includes French, German, and Dutch; her French forebears were early Huguenot settlers in South Africa. "Theron" is an Occitan surname (originally spelled Théron) pronounced in Afrikaans as [tɜːron], although she has said that the way she pronounces it in South Africa is [θron]. She changed the pronunciation when she moved to the U.S. to give it a more "American" sound.\n\nShe grew up on her parents' farm in Benoni, near Johannesburg. On 21 June 1991, Theron's father, an alcoholic, physically attacked her mother and threatened both her mother and her while drunk; Theron's mother then shot and killed him. The shooting was legally adjudged to have been self-defense and her mother faced no charges.\n\nTheron attended Putfontein Primary School (Laerskool Putfontein), a period she later characterised as not "fitting in". At 13, Theron was sent to boarding school and began her studies at the National School of the Arts in Johannesburg. Although Theron is fluent in English, her first language is Afrikaans.	Charlize Theron	1975-08-07	No data.	1
26060	http://image.tmdb.org/t/p/w185/lhYUcPimMMy7Ltp58NkB3RuJzSv.jpg	From Wikipedia, the free encyclopedia. Hugh Keays-Byrne (born 18th May 1947 in Kashmir, India) is an English character actor who moved to Australia in 1973. He is well-known in Australia as a television and film actor. Outside of Australia, he is best known for his role as a gang leader in the late 1970s Mad Max and, in the 2000s, for his role in the science fiction television series Farscape. He has been cast in George Miller's live action film adaptation of the Justice League.\n\nDescription above from the Wikipedia article Hugh Keays-Byrne, licensed under CC-BY-SA,full list of contributors on Wikipedia.	Hugh Keays-Byrne	1947-05-18	No data.	2
1229	http://image.tmdb.org/t/p/w185/xms1RAY6q7Lzp7wNeRCB0kzhucn.jpg	American actor Jeff Bridges has starred in over 50 films during his lengthy career. He comes from a family of performers and was introduced to show business by his father Lloyd. Jeff is most famous for his work in the films Big Lebowski (1998), Seabiscuit (2003), Crazy Heart (2009), and most recently True Grit (2010). His accolades include a long list of Academy Award nominations, and one win for Best Actor in 2010.\n\nBridges was born in 1949 and grew up in Los Angeles, California. After high school Jeff traveled to New York to study acting at the famous Herbert Berghof Studio. In the late 1960's Jeff served in the US Coast Guard, and stayed on reserve through the early 1970's to avoid Vietnam. As a child Jeff got a start in acting through his father Lloyd, and even starred in two of his television shows. Jeff achieved major success early in his career when he was nominated for an Academy Award in his first major film, the 1971 drama Last Picture Show. Three years later he starred opposite of Clint Eastwood in Thunderbolt and Lightfoot.\n\nBy 1976 Bridges was casted in the first remake of King Kong, which turned out to be a huge commercial success raking in more than 90 million dollars. Over the next three decades Bridges went on to star in over 50 films and win countless awards for his work. More recently Jeff starred in the 2009 film Crazy Heart, which earned him his first Academy Award for Best Actor.\n\nIn 1977 Jeff married Susan Geston, the two met while filming Ranch Deluxe. Together they have three daughters.\n\nAlong with other entertainment industry leaders, in 1984 Bridges founded the End Hunger Network, a humanitarian effort which aims to eliminate childhood hunger in the US by 2015.\n\nAlong with his charitable work, Jeff is also known for his music and photography.	Jeff Bridges	1949-12-04	No data.	2
68812	http://image.tmdb.org/t/p/w185/nUnDLli9zmGQu6UCEU3G4FUdYqQ.jpg	Edward Asner (born November 15, 1929), commonly known as Ed Asner, is an American film, television, stage, and voice actor and former president of the Screen Actors Guild, primarily known for his Emmy Award-winning role as Lou Grant on both The Mary Tyler Moore Show and its spin-off series, Lou Grant. In 2009, he starred as the voice of Carl Fredricksen in Pixar's award-winning animated film, Up. In early 2011, Asner returned to television as butcher Hank Greziak in Working Class, the first original sitcom on cable channel CMT.\n\nDescription above from the Wikipedia article Edward Asner, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Ed Asner	1929-11-15	No data.	2
10882	http://image.tmdb.org/t/p/w185/bLU5kON4fHyN0xk4jx1V6zkf80y.jpg	Rosamund Mary Ellen Pike, born 27 January 1979) is an English actress who began her acting career by appearing in stage productions such as Romeo and Juliet and Skylight. After her screen debut in the television film A Rather English Marriage (1998) and television roles in Wives and Daughters (1999) and Love in a Cold Climate (2001), she received international recognition for her film debut as Bond girl Miranda Frost in Die Another Day (2002), for which she received the Empire Award for Best Newcomer. Following her breakthrough, she won the BIFA Award for Best Supporting Actress for The Libertine (2004) and portrayed Jane Bennet in Pride and Prejudice (2005).\n\nPike had film appearances in the sci-fi film Doom (2005), the crime-mystery thriller film Fracture (2007), the drama film Fugitive Pieces (2007), and the coming-of-age drama An Education (2009), for which she was nominated for the London Film Critics Circle Award for British Supporting Actress of the Year. She also received British Independent Film Award nominations for An Education, Made in Dagenham (2010), and was nominated for a Genie Award for Barney's Version (2010).\n\nIn 2014, her performance in the psychological thriller film Gone Girl was met with critical acclaim and she was awarded the Saturn Award for Best Actress and was nominated for the Academy Award for Best Actress, the BAFTA Award for Best Actress in a Leading Role, and the Golden Globe Award for Best Actress – Motion Picture Drama.\n\nDescription above from the Wikipedia article Rosamund Pike, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rosamund Pike	1979-01-27	No data.	1
1121	http://image.tmdb.org/t/p/w185/5TlC56RMfTeeBxhI6myQe4SDEEo.jpg	Benicio Monserrate Rafael del Toro Sánchez (born February 19, 1967) is a Puerto Rican actor and film producer. His awards include the Academy Award, Golden Globe, Screen Actors Guild (SAG) Award and British Academy of Film and Television Arts (BAFTA) Award. He is known for his roles as Fred Fenster in The Usual Suspects, Javier Rodríguez in Traffic (his Oscar-winning role), Jack 'Jackie Boy' Rafferty in Sin City, Dr. Gonzo in Fear and Loathing in Las Vegas, Franky Four Fingers in Snatch, and Che Guevara in Che. He is the third Puerto Rican to win an Academy Award.\n\nDescription above from the Wikipedia article Benicio del Toro, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Benicio del Toro	1967-02-19	No data.	2
54882	http://image.tmdb.org/t/p/w185/dhdQT0fMRcbg8Gi9nx7JF0oVzzr.jpg	Morena Baccarin (born June 2, 1979) is a Brazilian-born American actress most widely known for roles in several American science fiction television shows: as Inara Serra in the series Firefly; as Adria in the series Stargate SG-1; and as Anna in the 2009 version of the series V.\n\nBaccarin was born in Rio de Janeiro, Brazil. Her mother is Brazilian stage and TV actress Vera Setta, and her father is Italian journalist Fernando Baccarin. When she was 7, Baccarin moved with her family to Greenwich Village, New York, as her father was transferred to Globo TV's headquarters in the United States, working as editor. Baccarin attended Public School 41 and New York City Lab School for Collaborative Studies, where she and Claire Danes were classmates. She later attended the Fiorello H. LaGuardia High School of Music & Art and Performing Arts before she entered the theater program at Juilliard. Baccarin landed her first movie role in the improvised fashion world comedy Perfume (2001).	Morena Baccarin	1979-06-02	No data.	1
13240	http://image.tmdb.org/t/p/w185/z2wJh5n7qZRUE1y9uB8UrivAV2b.jpg	Mark Robert Michael Wahlberg (born June 5, 1971) is an American actor, film and television producer, and former rapper. He was known as Marky Mark in his earlier years, and became famous for his 1991 debut as a musician with the band Marky Mark and the Funky Bunch. He was named No.1 on VH1's 40 Hottest Hotties of the 90's. He is well known for his roles in films such as Boogie Nights (1997), Three Kings (1999), The Perfect Storm (2000), Planet of the Apes (2001), The Italian Job (2003), I Heart Huckabees (2004), Four Brothers (2005), The Departed (2006), Invincible (2006), Shooter (2007), and The Fighter (2010). He has also served as the executive producer of the TV series Entourage and Boardwalk Empire.\n\nDescription above from the Wikipedia article Mark Wahlberg, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Mark Wahlberg	1971-06-05	No data.	2
10205	http://image.tmdb.org/t/p/w185/gxBIAr3CnBjkNRoPovVJCvEGqP0.jpg	Sigourney Weaver (born October 8, 1949, height 5' 11" (1,80 m)) is an American actress best known for her role as Ellen Ripley in the Alien film series, a role for which she has received worldwide recognition. Other notable roles include the Ghostbusters films, Gorillas in the Mist, The Ice Storm, Working Girl, Death and the Maiden, Prayers for Bobby and Avatar.\n\nShe is a three-time Academy Award nominee for her performances in Aliens (1986), Gorillas in the Mist (1988), and Working Girl (1988) winning Golden Globe Awards in the latter two films. Weaver has been called "The Sci-Fi Queen" by many on account of her many science fiction and fantasy films.	Sigourney Weaver	1949-10-08	No data.	1
17647	http://image.tmdb.org/t/p/w185/xNQX2itPnMaznG3GhHKdxBhwbum.jpg	Mayte Michelle Rodríguez (born July 12, 1978), known professionally as Michelle Rodriguez, is an American actress, screenwriter, and DJ. She got her breakout role as a troubled boxer in the independent film Girlfight (2000), which was met with critical acclaim and earned her several awards, including the Independent Spirit Award and Gotham Award for Best Debut Performance. The following year, she starred as Letty Ortiz in the blockbuster film The Fast and the Furious (2001), reprising her role in its sequels Fast & Furious (2009), Fast & Furious 6 (2013), and Furious 7 (2015).\n\nDuring her career, Rodriguez has played tough, independent women in a number of successful action films, such as Blue Crush, S.W.A.T., Battle: Los Angeles, and Avatar. She is also known for her roles as Shé in the action comedy films Machete and Machete Kills, and Rain Ocampo in the science fiction films Resident Evil and Resident Evil: Retribution.\n\nRodriguez also branched into television, playing Ana Lucia Cortez in the second season of the series Lost as part of the main cast, before making numerous guest appearances before the series ended. She has also done voice work in video games such as Call of Duty and Halo, and lent her voice for the 3D animated film Turbo and the television series IGPX.\n\nWith her films grossing over $5 billion collectively, a 2013 Entertainment Weekly article described Rodriguez as "arguably the most iconic actress in the action genre, as well as one of the most visible Latinas in Hollywood".	Michelle Rodriguez	1978-07-12	No data.	1
1810	http://image.tmdb.org/t/p/w185/5Y9HnYYa9jF4NunY9lSgJGjSe8E.jpg	Heathcliff Andrew "Heath" Ledger (4 April 1979 – 22 January 2008) was an Australian actor and director. After performing roles in several Australian television and film productions during the 1990s, Ledger left for the United States in 1998 to develop his film career. His work comprised nineteen films, including 10 Things I Hate About You (1999), The Patriot (2000), A Knight's Tale (2001), Monster's Ball (2001), Lords of Dogtown (2005), Brokeback Mountain (2005), The Dark Knight (2008) and The Imaginarium of Doctor Parnassus (2009), the latter two being posthumous releases. He also produced and directed music videos and aspired to be a film director.	Heath Ledger	1979-04-04	2008-01-22	2
933238	http://image.tmdb.org/t/p/w185/5i3268fkFMTvUcqlQ9gycMwTfeU.jpg	Rebecca Louisa Ferguson Sundström (born 19 October 1983), known professionally as Rebecca Ferguson, is a Swedish actress. She played the lead role in the soap-opera Nya tider and later played Chrissy in the Swedish-American soap Ocean Ave.. Ferguson has also appeared in movies, including A One-Way Trip to Antibes, the horror film Strandvaskaren and the upcoming film Vi alongside Gustaf Skarsgård. Ferguson's role in The White Queen has been met with some praise. \n\nFerguson grew up in the Vasastaden district in central Stockholm. Today she lives with her boyfriend and young child in the seaside town of Simrishamn, on the Swedish south coast. Ferguson has said she wanted to get away from city life and the public spotlight following her soap opera success. In Simrishamn, she started drifting away from acting, ran an Argentine dance studio, and also worked on several short film art projects. Swedish director Richard Hobert spotted her at the town market in 2011. He recognized her and this led to her starring in his film A One - Way to Antibes.	Rebecca Ferguson	1983-10-19	No data.	1
17604	http://image.tmdb.org/t/p/w185/l6CxIOFCjF65298teEJd5mCnPDO.jpg	Jeremy Lee Renner (born January 7, 1971, height 5' 10" (1,78 m)) is an American actor and musician. Renner appeared in films throughout the 2000s, mostly in supporting roles. He came to prominence in films such as Dahmer (2002), S.W.A.T. (2003), Neo Ned (2005), 28 Weeks Later (2007), The Town (2010), and was nominated for an Academy Award for Best Actor for his starring role in the 2009 Best Picture-winning war thriller The Hurt Locker.\n\nThe following year he appeared in the critically acclaimed film The Town. His work as "James Coughlin" in that film received a nomination for the 2010 Academy Award for Best Supporting Actor plus nominations in the Supporting Actor category at the SAG Awards and the Golden Globes.\n\nDescription above from the Wikipedia article Jeremy Renner, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jeremy Renner	1971-01-07	No data.	2
16851	http://image.tmdb.org/t/p/w185/x8KKnvHyPvH16M6waAnY1OeCtA8.jpg	Josh James Brolin (born February 12, 1968) is an American actor. He has acted in theater, film and television roles since 1985, and won acting awards for his roles in the films W., No Country for Old Men, Milk and Wall Street: Money Never Sleeps. He appeared in True Grit, a 2010 western film adaptation of the 1968 novel by Charles Portis.\n\nDescription above from the Wikipedia article Josh Brolin, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Josh Brolin	1968-02-12	No data.	2
11108	http://image.tmdb.org/t/p/w185/23e2uoNlpDvLumNic16fS2YjZjL.jpg	Simon Pegg (born Simon John Beckingham) is an English comedic actor, writer, producer and director.\n\nHe is best known for his TV show Spaced, about two roommates, as well as his film Shaun of the Dead, which he described as a 'Romantic Zombie Comedy'.  In 2009 he played Montgomery "Scotty" Scott in the Star Trek Reboot, taking over the iconic role previously played by James Doohan, In 2005 he married Maureen McCann in Glasgow, Scotland.  In 2009 the pair had their first child.  He has stated that his favorite film is Raising Arizona and his favorite TV shows The X-FIles and Arrested Development.  	Simon Pegg	1970-02-14	No data.	2
72129	http://image.tmdb.org/t/p/w185/yb3tCnEMVNSMWPocpTPFUSpnFT8.jpg	Jennifer Shrader Lawrence (born August 15, 1990) is an American actress.  \n\nHer first major role was as a lead cast member on TBS's The Bill Engvall Show (2007–2009) and she subsequently appeared in the independent films The Burning Plain (2008) and Winter's Bone (2010), for which she received nominations for the Academy Award, Golden Globe Award, Satellite Award, Independent Spirit Award, and Screen Actors Guild Award for Best Actress. At age 20, she was the second-youngest actress ever to be nominated for the Academy Award for Best Actress. At age 22, her performance in the romantic comedy Silver Linings Playbook (2012) earned her the Academy Award, Golden Globe Award, Screen Actors Guild Award, Satellite Award and the Independent Spirit Award for Best Actress, amongst other accolades, making her the youngest person ever to be nominated for two Academy Awards for Best Actress and the second-youngest Best Actress winner.\n\nLawrence is also known for playing Raven Darkhölme / Mystique in the 2011 film X-Men: First Class, a role she will reprise in X-Men: Days of Future Past in 2014. In 2012, she achieved international recognition starring as the heroine Katniss Everdeen in The Hunger Games, an adaptation of Suzanne Collins' best-selling novel of the same name. Her performance in the film garnered her notable critical praise and marked her as the highest-grossing action heroine of all time.\n\nLawrence's performances thus far have prompted Rolling Stone to call her "the most talented young actress in America." In 2013, Time named her one of the 100 most influential people in the world.\n\nDescription above from the Wikipedia article Jennifer Lawrence, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jennifer Lawrence	1990-08-15	No data.	1
8945	http://image.tmdb.org/t/p/w185/u9QXn3fL7zCC2c6HA2vFgH1JxZg.jpg	Kevin Delaney Kline (born October 24, 1947) is an American theatre, voice and film actor. He has won an Academy Award and two Tony Awards, and has been nominated for five Golden Globe Awards, two BAFTA Awards and an Emmy Award.	Kevin Kline	1947-10-24	No data.	2
94185	http://image.tmdb.org/t/p/w185/kkLbiTlBGNwJL9qHuVHeqCMNrEx.jpg	Shailene Diann Woodley (born November 15, 1991) is an American actress. Her first major role was as the main character, Amy Juergens, in the ABC Family series The Secret Life of the American Teenager (2008–13). She then appeared in the independent American drama The Descendants (2011), for which she received the Independent Spirit Award for Best Supporting Actress and a Golden Globe nomination for Best Supporting Actress – Motion Picture, and The Spectacular Now (2013), receiving the Special Jury Award for Acting at the 2013 Sundance Film Festival and an Independent Spirit Award nomination for Best Female Lead.\n\nWoodley gained commercial success when cast as the main protagonist, Beatrice "Tris" Prior, in The Divergent Series, and as Hazel Grace Lancaster in The Fault in Our Stars (2014).\n\nDescription above from the Wikipedia article Shailene Woodley, licensed under CC-BY-SA, full list of contributors on Wikipedia	Shailene Woodley	1991-11-15	No data.	1
587020	http://image.tmdb.org/t/p/w185/hLNSoQ3gc52X5VVb172yO3CuUEq.jpg	Theo James was born on December 16, 1984 in Oxford, Oxfordshire, England as Theodore Peter James Kinnaird Taptiklis. He is an actor, known for Divergent (2014), Underworld: Awakening (2012) and Insurgent (2015).	Theo James	1984-12-16	No data.	2
973667	http://image.tmdb.org/t/p/w185/bwY3wWrpG3YqIWiwFbHkN3zSUEk.jpg	Rosa Bianca Salazar (born July 16, 1985) is an American actress. She was raised in Greenbelt, Maryland. She began performing in New York City and moved to Los Angeles, California in 2009 to pursue acting. She appeared in several CollegeHumor sketches. She is best known for her roles as Zoe DeHaven on the NBC series Parenthood, and Nurse Maria in the FX anthology series American Horror Story: Murder House. She appeared in the 2015 films The Divergent Series: Insurgent, as Lynn, and Maze Runner: The Scorch Trials, as Brenda.	Rosa Salazar	1985-07-16	No data.	1
10	http://image.tmdb.org/t/p/w185/13YNM8lBKnK26MYd2Lp3OpU6JdI.jpg	Robert "Bob" Peterson (born January 1961) is an American animator, screenwriter, director and voice actor, who has worked for Pixar since 1994. His first job was working as a layout artist and animator on Toy Story. He was nominated for an Oscar for his screenplay for Finding Nemo. Petersonis a co-director and the writer of Up, which gained him his second Oscar nomination. He also performed the voices of Roz in Monsters, Inc., Mr. Ray in Finding Nemo, Dug the dog and Alpha the dog in Up and in Dug's Special Mission, and the Janitor in Toy Story 3.\n\nPeterson  was born in Wooster, Ohio, his family moved to Dover, Ohio, where he graduated from Dover High School. He received his undergraduate degree from Ohio Northern University, and a Master's degree in mechanical engineering from Purdue University in 1986. While attending Purdue, he wrote and illustrated the comic strip Loco Motives for the Purdue Exponent. Prior to coming to Pixar, Peterson worked at Wavefront Technologies and Rezn8 Productions.\n\nIn 2008,  Peterson played the part of Terry Cane, a puppeteer in Dan Scanlon's first feature film Tracy. He also played additional voices in Tokyo Mater in 2008, and the voice of Mr. Ray for the Finding Nemo Submarine Voyage ride at Disneyland Park in 2007. His most  recent job at Pixar was voicing the Janitor at Sunnyside Daycare Center in Pixar's 11th film, Toy Story 3, which was released on June 18, 2010.\n\nDescription above from the Wikipedia article Bob  Peterson (animator), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Bob Peterson	1961-01-18	No data.	2
18792	http://image.tmdb.org/t/p/w185/uhjdTemc2kYbQj47bVqRb7OdVjH.jpg	Delroy Lindo is an English director, writer and actor for stage and screen, best known for his film roles as West Indian Archie in Spike Lee's "Malcolm X", Catlett in "Get Shorty", Detective Castlebeck in "Gone in 60 Seconds", and Woody Carmichael in "Crooklyn".	Delroy Lindo	1952-11-18	No data.	2
3084	http://image.tmdb.org/t/p/w185/vklkhX4QlRKnEG8ylhWzoBdcuev.jpg	Marlon Brando, Jr. (April 3, 1924 – July 1, 2004) was an American actor who performed for over half a century.\n\nHe was perhaps best known for his roles as Stanley Kowalski in A Streetcar Named Desire (1951), his Academy Award-nominated performance as Emiliano Zapata in Viva Zapata! (1952), his role as Mark Antony in the MGM film adaptation of the Shakespeare play Julius Caesar (1953), for which he was nominated for an Academy Award, and his Academy Award-winning performance as Terry Malloy in On the Waterfront (1954). During the 1970s, he was most famous for his Academy Award-winning performance as Vito Corleone in Francis Ford Coppola's The Godfather (1972), also playing Colonel Walter Kurtz in another Coppola film, Apocalypse Now (1979). Brando delivered an Academy Award-nominated performance as Paul in Last Tango in Paris (1972), in addition to directing and starring in the western film One-Eyed Jacks (1961).\n\nBrando had a significant impact on film acting, and was the foremost example of the "method" acting style. While he became notorious for his "mumbling" diction and exuding a raw animal magnetism, his mercurial performances were nonetheless highly regarded, and he is considered one of the greatest and most influential actors of the 20th century. Director Martin Scorsese said of him, "He is the marker. There's 'before Brando' and 'after Brando'.'"Actor Jack Nicholson once said, "When Marlon dies, everybody moves up one."\n\nBrando was also an activist, supporting many issues, notably the African-American Civil Rights Movement and various American Indian Movements.	Marlon Brando	1924-04-03	2004-07-01	2
1158	http://image.tmdb.org/t/p/w185/vfbfcqINRHzXNTenycHIjNO6Va7.jpg	Alfredo James "Al" Pacino (born April 25, 1940) is an American film and stage actor and director. He is famous for playing mobsters, including Michael Corleone in The Godfather trilogy, Tony Montana in Scarface, Alphonse "Big Boy" Caprice in Dick Tracy and Carlito Brigante in Carlito's Way, though he has also appeared several times on the other side of the law — as a police officer, detective and a lawyer. His role as Frank Slade in Scent of a Woman won him the Academy Award for Best Actor in 1992 after receiving seven previous Oscar nominations.\n\nHe made his feature film debut in the 1969 film Me, Natalie in a minor supporting role, before playing the leading role in the 1971 drama The Panic in Needle Park. Pacino made his major breakthrough when he was given the role of Michael Corleone in The Godfather in 1972, which earned him an Academy Award nomination for Best Supporting Actor. Other Oscar nominations for Best Supporting Actor were for Dick Tracy and Glengarry Glen Ross. Oscar nominations for Best Actor include The Godfather Part II, Serpico, Dog Day Afternoon, the court room drama ...And Justice for All and Scent of a Woman.\n\nIn addition to a career in film, he has also enjoyed a successful career on stage, picking up Tony Awards for Does a Tiger Wear a Necktie? and The Basic Training of Pavlo Hummel. His love of Shakespeare led him to direct his first film with Looking for Richard, a part documentary on the play Richard III. Pacino has received numerous lifetime achievement awards, including one from the American Film Institute. He is a method actor, taught mainly by Lee Strasberg and Charlie Laughton at the Actors Studio in New York. Although he has never married, Pacino has had several relationships with actresses and has three children.	Al Pacino	1940-04-25	No data.	2
3087	http://image.tmdb.org/t/p/w185/1aBC7NxPy10ofng6HsJBecJ1vMZ.jpg	Robert Selden Duvall (born January 5, 1931) is an American actor and director. He has won an Academy Award, two Emmy Awards, and four Golden Globe Awards over the course of his career. Duvall has been in some of the most acclaimed and popular films of all time, among them To Kill a Mockingbird, The Godfather, The Godfather Part II, MASH, Network, True Grit, Bullitt, The Conversation, Apocalypse Now, Tender Mercies, The Natural and Lonesome Dove. He began appearing in theatre during the late 1950s, moving into small, supporting television and film roles during the early 1960s in such works as To Kill a Mockingbird (1962) (as Boo Radley) and Captain Newman, M.D. (1963). He started to land much larger roles during the early 1970s with movies like MASH (1970) (as Major Burns) and THX 1138 (1971). This was followed by a series of critical successes: The Godfather (1972), The Godfather Part II (1974), Network (1976), The Great Santini (1979), Apocalypse Now (1979), and True Confessions (1981). Since then Duvall has continued to act in both film and television with such productions as Tender Mercies (1983) (for which he won an Academy Award, The Natural (1984), Colors (1988), the television mini-series Lonesome Dove (1989), Stalin (1992), The Man Who Captured Eichmann (1996), A Family Thing (1996), The Apostle (1997) (which he also wrote and directed), A Civil Action (1998), Gods and Generals (2003), Broken Trail (2006) and Get Low (2010).\n\nDescription above from the Wikipedia article Robert Duvall, licensed under CC-BY-SA, full list of contributors on Wikipedia	Robert Duvall	1931-01-05	No data.	2
6944	http://image.tmdb.org/t/p/w185/4FEVru6fBFyJECqwqjHwlZdsL4c.jpg	From Wikipedia, the free encyclopedia.\n\nOctavia Spencer (born 25 May 1972) is an American actress. She is perhaps best known for her role on Ugly Betty as Constance Grady, the INS Agent turned stalker of Betty's father, Ignacio Suarez	Octavia Spencer	1972-05-25	No data.	1
6383	http://image.tmdb.org/t/p/w185/aRSofX2rMpOhPanB9Wh7veYmFn4.jpg	Aaron Edward Eckhart is an American film and stage actor. Born in California, he moved to England at 13 when his father relocated the family. Several years later, he began his acting career performing in school plays. In 1994, he graduated from Brigham Young University with a Bachelor of Fine Arts degree in film. For much of the mid-1990s, he lived in New York City as a struggling, unemployed actor. In 2000, Eckhart gained wide recognition as George in Steven Soderbergh's critically acclaimed film Erin Brockovich. In 2006, he received a Golden Globe nomination for Best Actor for his portrayal of Nick Naylor in Thank You for Smoking. In 2008, he starred in the big-budget studio film The Dark Knight as District Attorney Harvey Dent and the villain he becomes, Two-Face. Eckhart was born in Cupertino, California, and is the youngest of three sons born to Mary Eckhart, a poet and children's author, and James C. Eckhart "Jim Senior", a computer executive. His brothers are James Lawrence Eckhart (born 1963) and Adam Eckhart (born 1966). Eckhart was raised as a Mormon in The Church of Jesus Christ of Latter-day Saints. Eckhart was engaged to actress Emily Cline, whom he met during filming of In the Company of Men, but separated from her in 1998. From 2006 to 2007, he was in a relationship with SheDaisy's Kristyn Osborn. In 2007, he dated Ashley Wicks, though the two have ended their relationship. He has been reluctant in speaking about his relationships in interviews. In 2009, Eckhart dated actress Molly Sims.	Aaron Eckhart	1968-03-12	No data.	2
4495	http://image.tmdb.org/t/p/w185/jHo6HUDgTL7j6wmipCzvjMGM0Dm.jpg	Steven John "Steve" Carell (born August 16, 1962) is an American actor, comedian, voice artist, producer, director and writer. Carell became famous for his roles in the television series The Daily Show with Jon Stewart from 1999 to 2004, and The Office from 2005 onwards. He has also starred in several Hollywood films, including Anchorman, The 40-Year-Old Virgin, Little Miss Sunshine, Evan Almighty, Dan in Real Life, Get Smart, Date Night and Dinner for Schmucks; and voiced characters in the animated films Over the Hedge, Horton Hears a Who!, and Despicable Me. Carell was nominated as "America's funniest man" in Life magazine. He received the Golden Globe Award for Best Actor in the Television Comedy Series for his lead role of Michael Scott for the American television series The Office during 2006.  Carell is married to Saturday Night Live alumna Nancy Carell, whom he met when she was a student in an improvisation class he was teaching at Second City. They have two children, Elisabeth Anne "Annie" (born May 25, 2001) and John "Johnny" (born June 2004). Nancy acted with him on The Office as his realtor and short-lived girlfriend Carol Stills, and also cameoed as a sex therapist in The 40 Year Old Virgin. The Carells have a home in Marshfield, Massachusetts. He recently helped to preserve some of the town's history by purchasing the 155-year-old Marshfield Hills General Store, an antique country store well-known for its candy counter. ​	Steve Carell	1962-08-16	No data.	2
59919	http://image.tmdb.org/t/p/w185/WwyYUbZYq4YJ7Zh7KTy1klJNso.jpg	Russell Edward Brand (born 4 June 1975) is an English comedian, actor, columnist, author and presenter of radio and television.\n\nBrand achieved mainstream fame in the UK for presenting a Big Brother spin-off, Big Brother's Big Mouth, and for his radio show, among other television series and award ceremonies. He has also appeared in a number of films, including the romantic comedy Forgetting Sarah Marshall, St Trinian's, and Bedtime Stories. He is noted for various controversies that have surrounded him in the British media, such as the 2008 prank calls that led to his resignation from the BBC.	Russell Brand	1975-06-04	No data.	2
5823	http://image.tmdb.org/t/p/w185/yQ0J92DMiLtQYoytLJ6CuBkdeN0.jpg	Dame Julia Elizabeth Andrews, DBE (née Wells; born 1 October 1935) is a British film and stage actress, singer, and author. She is the recipient of Golden Globe, Emmy, Grammy, BAFTA, People's Choice Award, Theatre World Award, Screen Actors Guild and Academy Award honours. Andrews was a former British child actress and singer who made her Broadway debut in 1954 with The Boy Friend, and rose to prominence starring in other musicals such as My Fair Lady and Camelot, and in musical films such as Mary Poppins (1964), for which she won the Academy Award for Best Actress, and The Sound of Music (1965): the roles for which she is still best-known. Her voice, which originally spanned four octaves, was damaged by a throat operation in 1997.\n\nAndrews had a revival of her film career in 2000s in family films such as The Princess Diaries (2001), its sequel The Princess Diaries 2: Royal Engagement (2004), the Shrek animated films (2004–2010), and Despicable Me (2010). In 2003 Andrews revisited her first Broadway success, this time as a stage director, with a revival of The Boy Friend at the Bay Street Theatre, Sag Harbor, New York (and later at the Goodspeed Opera House, in East Haddam, Connecticut in 2005).\n\nAndrews is also an author of children's books, and in 2008 published an autobiography, Home: A Memoir of My Early Years.\n\nDescription above from the Wikipedia article Julie Andrews, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Julie Andrews	1935-10-01	No data.	1
139549	http://image.tmdb.org/t/p/w185/x6S1iZAHHjtPCCyYKOVMOea6zbU.jpg	Rory Kinnear (born 17 February 1978) is an English actor and playwright who has worked with the Royal Shakespeare Company and the Royal National Theatre.\n\nHe is best known for playing Bill Tanner in the James Bond films Quantum of Solace, Skyfall, and Spectre, and in various video games of the franchise. He is the youngest actor to play the role of Bill Tanner. He also won a Laurence Olivier Award for portraying Fopling Flutter in a 2008 version of The Man of Mode, and a British Independent Film Award for his performance in the 2012 film Broken. In 2014, he won the Olivier Award for Best Actor for his portrayal of Shakespeare's villain Iago in the National Theatre production of Othello.	Rory Kinnear	1978-02-17	No data.	2
85718	http://image.tmdb.org/t/p/w185/bNySmAuGa0AyeEXnVk8RCmSVhOg.jpg	Allen Leech (born 18 May 1981 in Ireland) is an Irish stage, television and film actor, best known for his role as Marcus Agrippa in the 2007 HBO television series Rome.\n\nHe studied Drama and Theatre Studies at Trinity College, Dublin.	Allen Leech	1981-05-18	No data.	2
98285	http://image.tmdb.org/t/p/w185/n4iYde3cUEPK0hgvT6MpWs5SZWf.jpg	Annabella Avery "Bella" Thorne (born October 8, 1997) is an American actress and model. An accomplished child model and actress with appearances in more than 20 films and television series and more than 40 commercials, she is best known for her role as the aspiring young dancer, CeCe Jones on the Disney Channel original series Shake It Up!.\n\nDescription above from the Wikipedia article Bella Thorne, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Bella Thorne	1997-10-08	No data.	1
5530	http://image.tmdb.org/t/p/w185/oPIfGm3mf4lbmO5pWwMvfTt5BM1.jpg	James Andrew McAvoy  (born 21 April 1979) is a Scottish stage and screen actor. His best-known work includes the films The Last King of Scotland and Atonement, both of which earned him BAFTA Award nominations, and the TV series Shameless. McAvoy has won the BAFTA Rising Star Award and a BAFTA Scotland award. He has also been nominated for an ALFS Award, a European Film Award, and a Golden Globe award.	James McAvoy	1979-04-21	No data.	2
71403	http://image.tmdb.org/t/p/w185/tWh7aVLl82jxX6U0f7tRTN7Sw3S.jpg	Rob Riggle, comedian, actor and United States Marine Corps Reserve Lieutenant Colonel, was born April 21, 1970 in Louisville, Kentucky, to Sandra Sue (Hargis) and Robert Allen Riggle. Riggle has amassed many notable television credits and has also earned roles in several feature films, including Le Lorax (2012) and 21 Jump Street(2012). After graduating from the University of Kansas with a B.A. in Theater and Film, Riggle joined the Marines and earned a Master's degree from Webster University in Public Administration. Riggle had intentions of becoming a Marine Corps pilot, but eventually left the military to pursue a career in comedy. A featured cast member onSaturday Night Live (1975) during the 2004/2005 season, Riggle then joined Comedy Central's The Daily Show (1996) in 2006 as a correspondent. Riggle's numerous television appearances, including credits on Arrested development - Les nouveaux pauvres (2003), Chappelle's Show (2003), 30 Rock (2006) and The Office (2005) would lead to big-screen roles in Frangins malgré eux (2008), Very Bad Trip (2009) and Very Bad Cops (2010). When he is not on set or traveling across the United States performing stand-up comedy, Rob Riggle lives in Los Angeles.  - IMDb Mini Biography By: dv82	Rob Riggle	1970-04-21	No data.	2
429728	http://image.tmdb.org/t/p/w185/gr4tuBp5x0iy083GBcDGvKpODjL.jpg	Quinn Shephard (born February 28, 1995) is an American screenwriter, director, and actress for film and television. She is best known for her role as Morgan Sanders in the CBS television series Hostages and as Donna Malone in the holiday comedy Unaccompanied Minors. She has since gone on to write, direct, and produce a number of short and feature films.	Quinn Shephard	1995-02-28	No data.	1
1231	http://image.tmdb.org/t/p/w185/v2FcWGiiuvl6P7NV0966jNL09uh.jpg	Julianne Moore (born Julie Anne Smith; December 3, 1960) is an American actress and a children's book author. Throughout her career she has been nominated for four Oscars, six Golden Globes, three BAFTAs and nine Screen Actors Guild Awards. Moore began her acting career in 1983 in minor roles, before joining the cast of the soap opera As the World Turns, for which she won a Daytime Emmy Award in 1988. She began to appear in supporting roles in films during the early 1990s, in films such as The Hand That Rocks the Cradle and The Fugitive. Her performance in Short Cuts (1993) won her and the rest of the cast a Golden Globe for their ensemble performance, and her performance in Boogie Nights (1997) brought her widespread attention and nominations for several major acting awards.\n\nHer success continued with films such as The Big Lebowski (1998), The End of the Affair (1999) and Magnolia (1999). She was acclaimed for her portrayal of a betrayed wife in Far from Heaven (2002), winning several critic awards as best actress of the year, in addition to several other nominations, including the Academy Award, Golden Globe, and Screen Actors Guild Award. The same year she was also nominated for several awards as best supporting actress for her work in The Hours. In 2010 Moore starred in the comedy drama The Kids Are All Right, for which she received a Golden Globe and BAFTA nomination.	Julianne Moore	1960-12-03	No data.	1
24045	http://image.tmdb.org/t/p/w185/zSuXCR6xCKIgo0gWLdp8moMlH3I.jpg	Joseph Leonard Gordon-Levitt (born February 17, 1981) is an American actor whose career as both a child and adult has included television series and theatrical films. He is known for his roles in the 2009 indie (500) Days of Summer and Christopher Nolan's sci-fi Inception. The former earned him a Golden Globe nomination. Beginning in commercials as a young child he made his film debut in 1992's Beethoven. Gordon-Levitt subsequently co-starred in the television sitcom 3rd Rock from the Sun (1996–2001) as the young Tommy Solomon. After a hiatus during which he attended Columbia University, Gordon-Levitt left television for film acting, appearing in various independent films, beginning with the 2001 film Manic, followed by the acclaimed roles in 2004's Mysterious Skin and 2005's Brick. He runs an online collaborative production company titled HitRECord.\n\nDescription above from the Wikipedia article Joseph Gordon-Levitt, licensed under CC-BY-SA, full list of contributors on Wikipedia	Joseph Gordon-Levitt	1981-02-17	No data.	2
27578	http://image.tmdb.org/t/p/w185/xYMqDWthY4mnbVptrnvOZms9FYt.jpg	Ellen Philpotts-Page (born February 21, 1987), known professionally as Ellen Page, is a Canadian actress. Page received both Golden Globe and Academy Award nominations for Best Actress for her role as the title character in the film Juno.\n\nIn 2008, Page was nominated for Time's 100 Most Influential People list and placed #86 on FHM's Sexiest Women in the World list, and moved up to #70 for 2010. In June 2008, Page was named on Entertainment Weekly's future A-List stars list.\n\nPage resides in her hometown of Halifax, Nova Scotia and has two dogs named Julie and Sprout. She is prone to walk and talk in her sleep. In 2008, Page was one of 30 celebrities who participated in an online ad series for U.S. Campaign for Burma, calling for an end to the military dictatorship in Burma. She describes herself as a pro-choice feminist.\n\nIn the fall of 2008 Page spent a month living in an eco-village, studying permaculture at the Lost Valley Educational Center outside Eugene, Oregon.	Ellen Page	1987-02-21	No data.	1
21657	http://image.tmdb.org/t/p/w185/oWZfxv4cK0h8Jcyz1MvvT2osoAP.jpg	Vera Ann Farmiga (born August 6, 1973) is an American actress and director. Farmiga made her film debut in the 1998 drama thriller Return to Paradise. This was followed by supporting roles in the 2000 romantic film Autumn in New York and the 2001 television series UC: Undercover. She was also cast in the 2001 thriller 15 Minutes. Her other film appearances and roles include the 2003 comedy Dummy, the 2004 drama Down to the Bone, the 2006 crime thriller The Departed, the 2007 horror Joshua, and the 2008 drama The Boy in the Striped Pyjamas. Farmiga gained critical acclaim following her work in the 2009 comedy-drama Up in the Air, for which she was nominated for an Academy Award, a BAFTA Award, a Golden Globe Award, and a Screen Guild Actors Award. She also starred as Kate Coleman in Orphan in 2009. Her latest appearance was in the critically acclaimed 2011 thriller/action movie Source Code, as Capt. Colleen Goodwin.\n\nDescription above from the Wikipedia article Vera Farmiga, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Vera Farmiga	1973-08-06	No data.	1
21200	http://image.tmdb.org/t/p/w185/vHCqn3SHfSV6GOWrxzEtoDaSMoU.jpg	William Emerson "Will" Arnett (born May 4, 1970) is a Canadian actor and comedian best known for roles as George Oscar "G.O.B." Bluth II on the Fox comedy Arrested Development and as Devon Banks on the NBC comedy 30 Rock. Since his success on Arrested Development, Arnett has landed major film roles. He recently played supporting roles in the comedy films Semi-Pro, Blades of Glory, and Hot Rod. He starred in 2006's Let's Go to Prison and 2007's The Brothers Solomon. Arnett has also done work as a voiceover artist for commercials, films, television programs, and video games.\n\nDescription above from the Wikipedia article Will Arnett, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Will Arnett	1970-05-04	No data.	2
81685	http://image.tmdb.org/t/p/w185/7JNCBT6A7zEN3ZqRjFNiTXGISo6.jpg	Frank Anthony Grillo is an American actor known for his roles in films such as Warrior (2011), The Grey (2012), End of Watch (2012) and Zero Dark Thirty (2012). He had his first leading role in The Purge: Anarchy (2014), portraying Sergeant Leo Barnes; he reprises this role in The Purge: Election Year (2016). He also plays the Marvel supervillain Brock Rumlow / Crossbones in the Marvel Cinematic Universe.\n\nGrillo was born June 8, 1965 in New York City as the oldest of three children, and is of Italian heritage. He graduated from New York University with a business degree and spent a year on Wall Street before being asked to do a Miller Genuine Draft beer commercial.	Frank Grillo	1965-06-08	No data.	2
290	http://image.tmdb.org/t/p/w185/fauMGxa6dc86nHNenQ8X6DlE6YV.jpg	Arthur Christopher Orme Plummer CC (born December 13, 1929) is a Canadian theatre, film and television actor. He made his film debut in 1958's Stage Struck, and notable film performances include The Night of the Generals, The Return of the Pink Panther, Star Trek VI: The Undiscovered Country, The Man Who Would Be King, and The Insider. In a career that spans seven decades and includes substantial roles in each of the dramatic arts, Plummer is probably best known to film audiences as the autocratic widower Captain Georg Johannes von Trapp in the hit 1965 musical film The Sound of Music alongside Julie Andrews.[1] Plummer has also ventured into various television projects, including the legendary miniseries The Thorn Birds.\n\nIn the 21st century his film roles include The Insider as Mike Wallace, Inside Man with Denzel Washington, the Disney–Pixar 2009 film Up as Charles Muntz, the Shane Acker production 9 as '1', The Last Station as Leo Tolstoy, The Imaginarium of Doctor Parnassus as Doctor Parnassus, The Girl with the Dragon Tattoo as Henrik Vanger, and Beginners as Hal.\n\nPlummer has won numerous awards and accolades for his work, including an Academy Award, two Emmy Awards, two Tony Awards, a Golden Globe Award, a SAG Award, and a BAFTA Award. With his win at the age of 82 in 2012 for Beginners, Plummer is the oldest actor and person ever to win an Academy Award.	Christopher Plummer	1929-12-13	No data.	2
54415	http://image.tmdb.org/t/p/w185/6ctni3kK4lPteBAInd7kKZyCdZD.jpg	Joshua Gad (born February 23, 1981) is an American film, television and stage actor who was in the short-lived television series Back to You in the role of Ryan Church. The show premiered in September 2007 co-starring Patricia Heaton and Kelsey Grammer. Gad has also appeared in episodes of ER and Numb3rs. His film appearances include The Rocker, Crossing Over, 21, and Razortooth. He appeared on Broadway in the role of William Barfeé in The 25th Annual Putnam County Spelling Bee and as Elder Cunningham in The Book of Mormon.\n\nDescription above from the Wikipedia article Josh Gad, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Josh Gad	1981-02-23	No data.	2
204	http://image.tmdb.org/t/p/w185/e3tdop3WhseRnn8KwMVLAV25Ybv.jpg	Kate Elizabeth Winslet (born 5 October 1975) is an English actress and occasional singer. She has received multiple awards and nominations. She is the youngest person to accrue six Academy Award nominations, and won the Academy Award for Best Actress for The Reader (2008).\n\nWinslet has been acclaimed for both dramatic and comedic work in projects ranging from period to contemporary films, and from major Hollywood productions to less publicised indie films. She has won awards from the Screen Actors Guild, British Academy of Film and Television Arts, and the Hollywood Foreign Press Association among others, and has been nominated for an Emmy Award for television acting. Raised in Berkshire, Winslet studied drama from childhood, and began her career in British television in 1991.\n\nShe made her film debut in Heavenly Creatures (1994), for which she received her first notable critical praise. She achieved recognition for her subsequent work in a supporting role in Sense and Sensibility (1995) and for her leading role in Titanic (1997), the highest grossing film at the time. Since 2000, Winslet's performances have continued to draw positive comments from film critics, and she has been nominated for various awards for her work in such films as Quills (2000), Iris (2001), Eternal Sunshine of the Spotless Mind (2004), Finding Neverland (2004), Little Children (2006), The Reader (2008) and Revolutionary Road (2008). Her performance in the latter prompted New York magazine to describe her as "the best English-speaking film actress of her generation". The romantic comedy The Holiday and the animated film Flushed Away (both 2006) were among the biggest commercial successes of her career.\n\nWinslet was awarded a Grammy Award for Best Spoken Word Album for Children in 2000. She has been included as a vocalist on some soundtracks of works she has performed in, and the single "What If" from the soundtrack for Christmas Carol: The Movie (2001), was a hit single in several European countries. Winslet has a daughter with her former husband, Jim Threapleton, and a son with her second husband, Sam Mendes, from whom she is separated. She lives in New York City. Description above from the Wikipedia article Kate Winslet, licensed under CC-BY-SA, full list of contributors on Wikipedia,	Kate Winslet	1975-10-05	No data.	1
3896	http://image.tmdb.org/t/p/w185/9mdAohLsDu36WaXV2N3SQ388bvz.jpg	William John "Liam" Neeson OBE (born 7 June 1952) is an Irish actor who has been nominated for an Oscar, a BAFTA and three Golden Globe Awards.\n\nHe has starred in a number of notable roles including Oskar Schindler in Schindler's List, Michael Collins in Michael Collins, Peyton Westlake in Darkman, Jean Valjean in Les Misérables, Qui-Gon Jinn in Star Wars Episode I: The Phantom Menace, Alfred Kinsey in Kinsey, Ras Al Ghul in Batman Begins and the voice of Aslan in The Chronicles of Narnia film series. He has also starred in several other notable films, from major Hollywood studio releases (ie. Excalibur, The Dead Pool, Nell, Rob Roy, The Haunting, Love Actually, Kingdom of Heaven, Taken, Clash of the Titans, The A-Team, Unknown) to smaller arthouse films (ie. Deception, Breakfast on Pluto, Chloe).\n\nHe was born in Ballymena, County Antrim, Northern Ireland and educated at Saint Patrick's College, Ballymena Technical College and Queen's University Belfast. He moved to Dublin after university to further his acting career, joining the renowned Abbey Theatre. In the early 1990s, he moved again to the United States, where the wide acclaim for his performance in Schindler's List led to more high-profile work. He is widowed and lives in New York with his two sons.\n\nDescription above from the Wikipedia article Liam Neeson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Liam Neeson	1952-06-07	No data.	2
17178	http://image.tmdb.org/t/p/w185/6KbbwBcE69jssnuwDyhmyykaGFH.jpg	Patrick Joseph Wilson (born July 3, 1973) is an American actor and singer.\n\nWilson has spent years singing lead roles in major Broadway musicals, beginning in 1996. In 2003, he appeared in the HBO mini-series Angels in America. Wilson has appeared in more than 18 feature films, including The Alamo (2004 film), The Phantom of the Opera (2004 film) with Emmy Rossum and Gerard Butler, 2006's Little Children (opposite Kate Winslet), the 2009 film of Watchmen, the 2010 film The A-Team, and 2011 film The Ledge, among others. He has been nominated for several acting awards.	Patrick Wilson	1973-07-03	No data.	2
446511	http://image.tmdb.org/t/p/w185/lvpKTDdWUv61sty299uC8DQzVTX.jpg	Shakira is a Colombian singer, songwriter, dancer, record producer, choreographer, and model. Born and raised in Barranquilla, she began performing in school, demonstrating Latin American, Arabic, and rock and roll influences and belly dancing abilities. Shakira released her first studio albums, Magia and Peligro, in the early 1990s, failing to attain commercial success; however, she rose to prominence in Latin America with her major-label debut, Pies Descalzos (1996), and her fourth album, Dónde Están los Ladrones? (1998).	Shakira	1977-02-02	No data.	1
4587	http://image.tmdb.org/t/p/w185/w7HRZh4UhimZO2F6GywkYhjgAX3.jpg	Halle Maria Berry is an American actress and former fashion model. She won an Academy Award for Best Actress in 2002 for her performance in Monster's Ball, becoming the first and, as of 2014, the only woman of African-American descent to win an Oscar for a leading role. She is one of the highest paid actresses in Hollywood and has been involved in the production side of several of the films in which she performed. Berry is also a Revlon spokes-model.\n\nBefore becoming an actress, Berry entered and placed in several beauty contests, including the Miss USA Pageant and Miss World Pageants. Her breakthrough film role was in 1992's Boomerang, which led to numerous roles throughout the 1990s, including Introducing Dorothy Dandridge (1999), for which she won the Emmy Award and Golden Globe Award for Best Actress.  Berry reached a higher level of prominence in the 21st Century with prominent action films, including Die Another Day (2002), where she played Bond Girl Jinx.  In addition to her Academy Award win, Berry was awarded a "worst actress" Razzie award in 2005 for her controversial role as the titular character in Catwoman. She appeared at the ceremony to accept the award in person (making her the third person, and second actor, ever to do so) with a sense of humor, holding the Academy Award in one hand and the Razzie in the other. Divorced from baseball player David Justice and musician Eric Benét, Berry has a daughter by model Gabriel Aubry, and a son with her current husband, actor Olivier Martinez.  Berry has routinely been nominated for beauty-based awards in print, including ranking number one in People Magazine’s “50 Most Beautiful People in the World” list in 2003. Berry continues to star in film roles, while also participating in political activism in support of environmentalism, among other causes.	Halle Berry	1966-08-14	No data.	1
1765227	http://image.tmdb.org/t/p/w185/9J32nef6iZT7g7ah3gF4xznVRU5.jpg	Tom Glynn-Carney is an English film, theatre and television actor. After studying at the Canon Slade School in Bolton he went on to study Musical Theatre in Pendleton College of Performing Arts and later attended the Guildhall School of Music and Drama in London where he studied acting.	Tom Glynn-Carney	1995-02-07	No data.	2
1052109	http://image.tmdb.org/t/p/w185/4xE26jBRq4cLbl8ZIlxGEYqKaHw.jpg	Harry Edward Styles (born 1 February 1994) is an English pop singer and actor, known as a member of the boy band 'One Direction'. He made his debut as a singer with his band 'White Eskimo', who performed locally in Holmes Chapel, Cheshire. In 2010, Styles auditioned as a solo artist for the British television series "The X Factor". After being eliminated as a solo performer, Styles was brought back into the competition, along with four other contestants, to form the group that would later become known as One Direction. On 23 June 2016 it was reported by Billboard that Styles had signed a 3-album solo recording deal with Columbia Records, the same label behind One Direction. Styles made his feature film acting debut in the war drama "Dunkirk" in July 2017.	Harry Styles	1994-02-01	No data.	2
886	http://image.tmdb.org/t/p/w185/oIGjbztWvTqn4tnolW9rDCjpgxu.jpg	William Edward Fichtner (born November 27, 1956) is an American actor. He has appeared in a number of notable film and TV series. He is known for his roles as Sheriff Tom Underlay in the cult favorite television series Invasion, Alexander Mahone on Prison Break and Butch Cavendish in The Lone Ranger.\n\nDescription above from the Wikipedia article William Fichtner, licensed under CC-BY-SA, full list of contributors on Wikipedia.	William Fichtner	1956-11-27	No data.	2
64295	http://image.tmdb.org/t/p/w185/aCyp11i8yTFqa8vOAksarDkRfR7.jpg	Alan Michael Ritchson is an American actor, model, and singer. He is known for his modeling career as well as his portrayals of the superhero Aquaman on The CW's Smallville and Thad Castle on Spike TV's Blue Mountain State.\n\nRitchson also starred as Gloss in 2013's The Hunger Games: Catching Fire and Raphael in 2014's Teenage Mutant Ninja Turtles reboot.\n\nRitchson was born in Grand Forks, North Dakota, the son of Vickie (born June 21, 1958), a high school teacher, and David Ritchson (born June 5, 1956), a retired U.S. Air Force Chief Master Sergeant. He is the middle of three brothers; Eric, the oldest, and Brian, the youngest. During his childhood, his family moved to Rantoul, Illinois. At age 10, Ritchson's family finally settled in Niceville, Florida. He attended Niceville High School and graduated in 2001. In a revealing 2013 interview with Indonesian magazine Da Man, he once obtained a full music scholarship but was overwhelmed.From 1999 to 2003, he attended as a dual-enrollment student and graduated with an AA degree at Okaloosa Walton Community College (now Northwest Florida State College). He was a member of Fine Arts Division's Soundsations and Madrigal Singers.	Alan Ritchson	1982-11-28	No data.	2
80352	http://image.tmdb.org/t/p/w185/57rdFE8AZnhWhwH28QXpeXFhUgB.jpg	From Wikipedia, the free encyclopedia\n\nNoel Fisher (born March 13, 1984) is a Canadian actor. He appeared on the television show X-Men: Evolution and starred in the Disney film Max Keeble's Big Move as the school bully. His past television roles include playing Patricia Arquette's son in the Medium episode Sweet Child o' Mine and is a regular on the Vancouver based show "Godiva's", as TJ. He was also featured in the FX show The Riches, as Cael Malloy. He played Teddy Parker, a soldier who was killed while serving with FBI Agent Seely Booth (David Boreanaz) in the military, on the TV series Bones. Most recently he played CSU Technician Dale Stuckey in the tenth season of Law &amp; Order: Special Victims Unit. He has starred with Hilary Duff twice: the 2009 Law &amp; Order: Special Victims Unit episode "Selfish", and also the film Agent Cody Banks. He also starred in the miniseries The Pacific as he played private Hamm in the battle of Okinawa.\n\nMost recently, he has portrayed Mickey Milkovich on the series Shameless on Showtime, and also portrayed USMC Private First Class Shaun Lenihan in the 2011 film Battle: Los Angeles.\n\nDescription above from the Wikipedia article Noel Fisher (actor), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Noel Fisher	1984-03-13	No data.	2
5725	http://image.tmdb.org/t/p/w185/kMtnrBNrinINIgQIyWhATYRP8Ne.jpg	Goran Visnjic (born September 9, 1972) is a Croatian-born American actor who has appeared in American and British films and television productions. He is best known for his role as Dr. Luka Kovač in the hit television series ER.\n\nVisnjic grew up in Sibenik, Croatia (then Yugoslavia), a port town on the Adriatic Sea, where he decided at an early age that he wanted to be an actor. He first performed in local theater groups and then entered the Academy of Dramatic Arts in Zagreb. Goran gained popularity in Croatia when, at the age of 21, he was cast as Hamlet in the prestigious Dubrovnik Summer Festival’s staging of Shakespeare’s play. His performance earned him three national Best Actor awards, including an Orlando (the Croatian equivalent of a Tony). Visnjic made his American motion-picture debut in the "Welcome to Sarajevo," drama, directed by Michael Winterbottom.\n\nIn his leisure time, Visnjic enjoys fencing, swimming and diving. He lives in Los Angeles with his wife, Eva Visnjic, and their three children.	Goran Visnjic	1972-09-09	No data.	2
25072	http://image.tmdb.org/t/p/w185/5THRQFToENORTQkU9qTZTiW31EZ.jpg	Oscar Isaac was born Óscar Isaac Hernández in Guatemala, to a Guatemalan mother, Maria, and a Cuban father, Óscar Gonzalo Hernández-Cano, a pulmonologist. His maternal grandfather was of French origin. Oscar was raised in Miami, Florida. Before he became an actor, he played lead guitar and sang vocals in his band the Blinking Underdogs. He graduated from the Juilliard School in 2005. Isaac's first major film role was Joseph in the film The Nativity Story (2006). He also had a small role in All About the Benjamins (2002) and the Ché Guevara biopic Che: Part One (2008). In addition to movie appearances, he made an appearance in the television series Law &amp; Order: Criminal Intent (2001). He also had a part in the movies The Life Before Her Eyes (2007); Body of Lies (2008), alongside Leonardo DiCaprio and Russell Crowe; Agora (2009), alongside Rachel Weisz; and Balibo (2009), set amid the Indonesian invasion of East Timor in 1975. In 2013, Oscar starred in the Coen Brothers' folk music-themed drama, Inside Llewyn Davis (2013).	Oscar Isaac	1979-03-09	No data.	2
2130	http://image.tmdb.org/t/p/w185/wmvYoJHStQeQzrpqOM9tkvf1wwF.jpg	Cary Elwes is the third son born to interior designer/shipping heiress Tessa Kennedy and the late portrait painter Dominick Elwes, and is the brother of producer/agent Cassian Elwes and artist Damian Elwes. He was born and raised in London and attended Harrow. After graduating from Harrow, he moved to the US and studied drama at Sarah Lawrence College. He left school after two years to begin his film career. Cary is well respected by colleagues and fans alike and considered by many to be one of the finest young actors working today. He is interested in history and says, "It's deliberate that a lot of my films have been period pieces". He is politically active for causes he believes in, such as protecting the environment and helping Native American peoples. He is married to Lisa Marie Kurbikoff, a stills photographer.	Cary Elwes	1962-10-26	No data.	2
2131	http://image.tmdb.org/t/p/w185/kftJqCNab1x5W29b46rLUeXkwZi.jpg	Kenneth "Ken" Leung (born January 21, 1970) is an American actor best known for his role as Miles Straume in the ABC television series Lost and roles in such films as Shanghai Kiss, Rush Hour, X-Men: The Last Stand, and Saw.\n\nDescription above from the Wikipedia article Ken Leung, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Ken Leung	1970-01-21	No data.	2
59251	http://image.tmdb.org/t/p/w185/2ess6BrXJunsYoUun3QePbW8IAJ.jpg	​From Wikipedia, the free encyclopedia.  \n\nVictor Rasuk (born January 15, 1984) is an American actor. Rasuk was born in Harlem, New York to Dominican parents. He has one brother, Silvestre, with whom he starred in Raising Victor Vargas. Rasuk attended performing arts school as a teenager, and began acting at 14. He garnered his first movie role at 16 in Five Feet High and Rising. The film—less than 30 minutes long—was a hit at the Independent Spirit Film Festival. Two years later, the same director, Peter Sollett, suggested expanding the short film into a feature-length movie: Raising Victor Vargas, which went on to win Rasuk an Independent Spirit Award for his work. In his next film, Rock Steady, Rasuk played a character named Roc. Two years later, he took a leading role in Haven with Orlando Bloom. In 2005, Lords of Dogtown was released, with Victor playing Tony Alva, one of the leading roles. The part included surfing and performing skateboarding tricks. Although the more complicated maneuvers were performed by stunt men (including the scenes of surfing at Pacific Ocean Park pier and skating in empty swimming pools), Rasuk is a method actor and worked on remaining in character both on and off screen. Believing he had mastered skating a huge ramp in only his second week of training, Rasuk fractured one of his orbital bones. Rasuk says the accident likely earned him more respect from serious skaters within the cast and crew. Victor can now be seen on the HBO television series How To Make It In America (2010), co-starring alongside Bryan Greenberg and rapper Kid Cudi. Marjorie Ballentine is his acting coach.\n\nDescription above from the Wikipedia article Victor Rasuk , licensed under CC-BY-SA, full list of contributors on Wikipedia.	Victor Rasuk	1984-01-15	No data.	2
28846	http://image.tmdb.org/t/p/w185/aVAPqwoElxk9O8QID96l6qG4x2E.jpg	Alexander Johan Hjalmar Skarsgård (born August 25, 1976) is a Swedish actor. He is best known for his roles as vampire Eric Northman on the HBO series True Blood, a male model in Zoolander and Brad Colbert in the HBO miniseries Generation Kill. Description above from the Wikipedia article Alexander Skarsgård, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Alexander Skarsgård	1976-08-25	No data.	2
22227	http://image.tmdb.org/t/p/w185/qUxRtuQxWcuaUitnKoTyKgeIitu.jpg	Christopher Peter Meloni (born April 2, 1961) is an American actor. He is best known for his television roles as NYPD Detective Elliot Stabler on the NBC police drama Law &amp; Order: Special Victims Unit, and as inmate Chris Keller on the HBO prison drama Oz. Description above from the Wikipedia article Christopher Meloni, licensed under CC-BY-SA, full list of contributors on Wikipedia	Christopher Meloni	1961-04-02	No data.	2
234982	http://image.tmdb.org/t/p/w185/uhNri9He6qWKrXeC68DXz5IlrGA.jpg	Isabella "Bella" Heathcote was born on May 27, 1987 is an Australian actress. She began her acting career in 2008. Heathcote is know for her role in films Pride & Prejudice + Zombies (2016), The Neon Demon (2016) and Fifty Shades Darker (2017)	Bella Heathcote	1987-05-27	No data.	1
49735	http://image.tmdb.org/t/p/w185/w37z62Ex1kxqLTyI3SRySmiVsDB.jpg	Aidan Gillen (born Aidan Murphy on 24 April 1968) is an Irish stage and screen actor, best known in the UK for his role as Stuart Jones in the ground-breaking Channel 4 television series Queer as Folk. He is perhaps best known to US audiences for his role in HBO's television series The Wire in which he plays Tommy Carcetti and for his role as Petyr Baelish in the HBO series Game of Thrones. Description above from the Wikipedia article Aidan Gillen, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Aidan Gillen	1968-04-24	No data.	2
17288	http://image.tmdb.org/t/p/w185/hvtyvcLd3hqRiYECH0bP9IJXCX2.jpg	Michael Fassbender was born in Heidelberg, Germany, to a German father, Josef, and an Irish mother, Adele (originally from Larne, County Antrim, in Northern Ireland). Michael was raised in the town of Killarney, Co. Kerry, in south-west Ireland, where his family moved to when he was two years old. His parents ran a restaurant (his father is a chef). Fassbender is based in London, England, and is known for his roles in the films Inglourious Basterds (2009), X-Men: First Class (2011), Shame (2011) and 12 Years a Slave (2013). First language is English and second is German.	Michael Fassbender	1977-04-02	No data.	2
1397778	http://image.tmdb.org/t/p/w185/v2EH3lNF9d5wmsq8B4l3EKl0sC.jpg	Anya Taylor-Joy was born on April 16th, 1996 in Miami (Florida). Her mother is African-Spanish-English and her father is Scottish-Argentinian. She's the youngest of six children. Anya was raised in Argentina until the age of six and then moved to London. Taylor-Joy is more know for playing the roles in The Witch (2015), Split (2016) and Morgan (2016)	Anya Taylor-Joy	1996-04-16	No data.	1
13	http://image.tmdb.org/t/p/w185/kahlMTdygrPJ28VYRhKPavYD9hs.jpg	From Wikipedia, the free encyclopedia.\n\nAlbert Lawrence Brooks (born Albert Lawrence Einstein; July 22, 1947) is an American actor, voice actor, writer, comedian and director. He received an Academy Award nomination in 1987 for his role in Broadcast News. His voice acting credits include Marlin the clownfish in Finding Nemo and recurring guest voices for the animated television series The Simpsons and Russ Cargill in its film adaptation The Simpsons Movie.\n\nDescription above from the Wikipedia article Albert Brooks, licensed under CC-BY-SA, full list of contributors on Wikipedia.​	Albert Brooks	1947-07-22	No data.	2
14	http://image.tmdb.org/t/p/w185/wBB6C4IGsYlHzIEMW6Q3JIvNAfz.jpg	Ellen DeGeneres (born January 26, 1958) is an American stand-up comedienne, television host and actress. She hosts the syndicated talk show The Ellen DeGeneres Show, and was also a judge on American Idol for one year, having joined the show in its ninth season.\n\nDeGeneres has hosted both the Academy Awards and the Primetime Emmys. As a film actress, she starred in Mr. Wrong, appeared in EDtv and The Love Letter, and provided the voice of Dory in the Disney-Pixar animated film Finding Nemo, for which she was awarded a Saturn Award for Best Supporting Actress, the first and only time a voice performance won a Saturn Award.\n\nShe also starred in two television sitcoms, Ellen from 1994 to 1998 and The Ellen Show from 2001 to 2002. During the fourth season of Ellen in 1997, DeGeneres came out publicly as a lesbian in an appearance on The Oprah Winfrey Show. Shortly afterwards, her character Ellen Morgan also came out to a therapist played by Winfrey, and the series went on to explore various LGBT issues including the coming out process.\n\nShe has won twelve Emmys and numerous other awards for her work and charitable efforts.\n\nDescription above from the Wikipedia article Ellen DeGeneres, licensed under CC-BY-SA, full list of contributors on Wikipedia.​	Ellen DeGeneres	1958-01-26	No data.	1
12	http://image.tmdb.org/t/p/w185/c4EHOhxzwx7uDBxC8zODvKAEFGX.jpg	From Wikipedia, the free encyclopedia.\n\nAlexander Jerome Gould (born May 4, 1994) is an American television actor and voice artist. He is best known for his role as Shane Botwin on the Showtime TV series Weeds and for having provided the voice of Nemo in Pixar's Finding Nemo.\n\nDescription above from the Wikipedia article Alexander Gould, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Alexander Gould	1994-05-04	No data.	2
9290	http://image.tmdb.org/t/p/w185/2E0cZdoJsdt1Lv4waG3s6fsfJeU.jpg	Henry Rollins (born Henry Lawrence Garfield; February 13, 1961) is an American singer-songwriter, spoken word artist, writer, publisher, actor, radio DJ, and activist.\n\nAfter performing for the short-lived Washington D.C.-based band State of Alert in 1980, Rollins fronted the California hardcore punk band Black Flag from August 1981 until early 1986. Following the band's breakup, Rollins soon established the record label and publishing company 2.13.61 to release his spoken word albums, as well as forming the Rollins Band, which toured with a number of lineups until 2003 and during 2006.\n\nSince Black Flag, Rollins has embarked on projects covering a variety of media. He has hosted numerous radio shows, such as Harmony in My Head on Indie 103, and television shows such as The Henry Rollins Show, MTV's 120 Minutes, and Jackass. He had a recurring dramatic role as a white supremacist in the second season of Sons of Anarchy and has also had roles in several films. Rollins has also campaigned for various political causes in the United States, including promoting marriage equality for LGBT couples, World Hunger Relief, and an end to war in particular, and tours overseas with the United Service Organizations to entertain American troops.\n\nDescription above from the Wikipedia article Henry Rollins, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Henry Rollins	1961-02-13	No data.	2
57514	http://image.tmdb.org/t/p/w185/1YZkzcZD5kDmxBxBHWWr3z0l3FA.jpg	​From Wikipedia, the free encyclopedia.\n\nErica Lei Leerhsen  (born February 14, 1976) is an American actress. She is best known for her lead roles in the horror films Book of Shadows: Blair Witch 2, The Texas Chainsaw Massacre, and Wrong Turn 2, and for which she is often referred to as a modern day scream queen. She is also known for her acting on television series, such as her lead role in The Guardian and several guest appearances, including The Sopranos, Alias, and others.\n\nDescription above from the Wikipedia article Erica Leerhsen, licensed under CC-BY-SA, full list of contributors on Wikipedia	Erica Leerhsen	1976-02-14	No data.	1
59296	http://image.tmdb.org/t/p/w185/vav3NuWbftAoYfolDuZdK1dSiA3.jpg	Daniella Alonso (born September 22, 1978) is an American actress known for her guest appearances as Anna Taggaro on The CW television series One Tree Hill and her lead roles in The Hills Have Eyes 2 and Wrong Turn 2: Dead End. She was voted #41 in 2006's Maxim Hot 100. Alonso appeared in the ABC documentary-style dramedy television series My Generation, which premiered in Fall 2010. The show was canceled after only two episodes.\n\nDescription above from the Wikipedia article Daniella Alonso, licensed under CC-BY-SA, full list of contributors on Wikipedia	Daniella Alonso	1978-09-22	No data.	1
3894	http://image.tmdb.org/t/p/w185/pPXnqoGD91znz4FwQ6aKuxi6Pcy.jpg	Christian Charles Philip Bale (born 30 January 1974) is a Welsh-born English actor. In addition to starring roles in big budget Hollywood films, he has long been heavily involved in films produced by independent producers and art houses. Bale first caught the public eye when he was cast in the starring role of Steven Spielberg's Empire of the Sun at the age of 13, playing an English boy who is separated from his parents and subsequently finds himself lost in a Japanese internment camp during World War II. Since then, he has portrayed a wide range of characters. Bale is especially noted for his cult following: the tenth anniversary issue of Entertainment Weekly hailed him as one of the "Top 8 Most Powerful Cult Figures of the Past Decade", citing his cult status on the Internet. EW called Bale one of the "Most Creative People in Entertainment" in anticipation of the release American Psycho (2000). The Guardian named Bale as one of the best actors never to have received an Academy Award nomination.\n\nBale was born in Haverfordwest, Pembrokeshire, Wales to parents of English descent. His father, David Bale, was an entrepreneur, commercial pilot, and talent manager and his mother, Jenny James, was a circus clown and performer. He is the youngest of four children. After leaving Wales in 1976, Bale spent his childhood in several countries, including England, Portugal and the United States. Settling for four years in Bournemouth and Henley-on-Thames, Bale was educated at Shiplake C of E Primary School, the independent Dolphin School in Berkshire, and at Bournemouth School. He participated actively in rugby union. Bale has described his childhood, with respect to his mother being in the circus, as "interesting". He recalled his first kiss was with an acrobat named Barta. As a child, he trained in ballet and guitar. His sister Louise's work in theatre also influenced his decision to become an actor. Bale's father was very supportive of his son's acting, resigning from his job as a commercial pilot to travel and manage Bale's burgeoning career. Bale's first foray into acting was a commercial for the fabric softener Lenor in 1982, when he was eight years old. He appeared in a Pac-Man cereal commercial playing a child rock star a year later and in 1984 made his stage debut in The Nerd, opposite Rowan Atkinson.\n\nOn 29 January, 2000, Bale married Sandra "Sibi" Blažić (born 1970), a one-time model, make-up artist and personal assistant to Winona Ryder; the couple have a daughter, Emmeline, who was born on 27 March 2005, in Santa Monica, California. Since 1992, Bale has resided in Los Angeles.	Christian Bale	1974-01-30	No data.	2
70851	http://image.tmdb.org/t/p/w185/vMXgtzMdt2jSAjOECFQ5F53blbr.jpg	Thomas Jacob "Jack" Black (born August 28, 1969) is an American comedian, actor and musician.\n\nHe makes up one half of the comedy and satirical rock duo Tenacious D. The group has two albums as well as a television series and a film. His acting career is extensive, starring primarily as bumbling, cocky, but internally self-conscious outsiders in comedy films. He was a member of the Frat Pack, a group of comedians who have appeared together in several Hollywood films, and has been nominated for a Golden Globe award. He has also won an MTV Movie Award, and a Nickelodeon Kids Choice Award.\n\nDescription above from the Wikipedia article Jack Black, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jack Black	1969-08-28	No data.	2
17605	http://image.tmdb.org/t/p/w185/d9NkfCwczP0TjgrjpF94jF67SK8.jpg	Idris Elba (born 6 September 1972) is a British television, theatre, and film actor who has starred in both British and American productions. One of his first acting roles was in the soap opera Family Affairs. Since then he has worked in a variety of TV and movie projects including Ultraviolet, The Wire, No Good Deed and Zootopia.	Idris Elba	1972-09-06	No data.	2
41091	http://image.tmdb.org/t/p/w185/iqRX3PDxA33zFhSfKTo5BE593G4.jpg	Kristen Carroll Wiig (born August 22, 1973) is an American film and television actress who currently appears as a cast member on Saturday Night Live. Wiig is a member of improvisational comedy troupe The Groundlings, and has appeared in several films and television series, including MacGruber, Flight of the Conchords, Adventureland, Walk Hard: The Dewey Cox Story and Paul. She was also the voice of Ruffnut in How to Train Your Dragon and Miss Hatie in Despicable Me and she is the voice of Lola Bunny in the series The Looney Tunes Show.	Kristen Wiig	1973-08-22	No data.	1
10867	http://image.tmdb.org/t/p/w185/gSUxpCsSpjjTEWbNGCnxGhNKVw7.jpg	Steve Braun (born August 14, 1976) is a Canadian television and movie actor from Winnipeg, Manitoba. Braun's credits include The Immortal, a TV show in which he and co-star Lorenzo Lamas hunted demons; The Trip, a popular independent film about coming of age in the HIV era; and Harold &amp; Kumar Go to White Castle (2004), a major motion picture release in which he plays the lead villain. He also played the role of "Jonsey" in the 2007 thriller movie Wrong Turn 2: Dead End. He also co-starred in the 2005 horror movie "Pterodactyl" as Willis Bradbury.\n\nBraun was cast in a recurring guest role in The WB show Twins, as Jordan, the unrequited love interest of Mitchee Arnold, played by Sara Gilbert. The series, which debuted on September 16, 2005, was cancelled in May, 2006.\n\nDescription above from the Wikipedia article Steve Braun, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Steve Braun	1976-08-14	No data.	2
1233	http://image.tmdb.org/t/p/w185/vEDJukK8CjIsA0DjNFhoT88TvzS.jpg	Philip Seymour Hoffman (July 23, 1967 – February 2, 2014) was an American actor and director. Hoffman began acting in television in 1991, and the following year started to appear in films. He gradually gained recognition for his supporting work in a series of notable films, including Scent of a Woman (1992), Twister (1996), Boogie Nights (1997), Happiness (1998), The Big Lebowski (1998), Magnolia (1999), The Talented Mr. Ripley (1999), Almost Famous (2000), 25th Hour (2002), Punch-Drunk Love (2002), Cold Mountain (2003), and Along Came Polly (2004).  \n\nIn 2005, Hoffman played the title role in the biographical film Capote (2005), for which he won multiple acting awards including an Academy Award for Best Actor. He received another two Academy Award nominations for his supporting work in Charlie Wilson's War (2007) and Doubt (2008). Other critically acclaimed films in recent years have included Before the Devil Knows You're Dead (2007) and The Savages (2007). In 2010, Hoffman made his feature film directorial debut with Jack Goes Boating‎.\n\nHoffman is also an accomplished theater actor and director. He joined the LAByrinth Theater Company in 1995, and has directed and performed in numerous Off-Broadway productions. His performances in two Broadway plays led to two Tony Award nominations: one for Best Leading Actor in True West (2000), and another for Best Featured Actor in Long Day's Journey into Night (2003).\n\n Description above from the Wikipedia article Philip Seymour Hoffman, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Philip Seymour Hoffman	1967-07-23	2014-02-02	2
9778	http://image.tmdb.org/t/p/w185/dzdn1tyWkC4EjlBVKvpAhg5osYA.jpg	O'Shea Jackson Sr., better known by his stage name Ice Cube, is an American rapper, record producer, actor, screenwriter, film producer, and director. He began his career as a member of the hip-hop group C.I.A. and later joined N.W.A. Monetary conflict with his bandmate Eric "Eazy-E" Wright and manager Jerry Heller caused him to embark on a solo rap career, leading to forays into acting, writing and directing.	Ice Cube	1969-06-15	No data.	2
1246972	http://image.tmdb.org/t/p/w185/yH11h8nvhtzyiLGfg9exJdAqhVr.jpg	Ruby Rose Langenheim, better known as Ruby Rose, is an Australian model, DJ, recording artist, actress, television presenter, and former MTV VJ. Rose emerged in the media spotlight as a presenter on MTV Australia, followed by several high-profile modelling gigs, notably as the face of Maybelline New York in Australia. In addition to her modelling career, she has co-hosted various television shows, namely Australia's Next Top Model and The Project on Network Ten.\n\nRose pursued a career in acting from 2008 onwards, with her debut performance in the Australian film Suite for Fleur. In 2013, she had a small role in the drama Around the Block. She appeared in seasons three and four of the Netflix series Orange Is the New Black, and received praise for her work. Her personal life has also received attention.	Ruby Rose	1986-03-20	No data.	1
14596	http://image.tmdb.org/t/p/w185/9mfS2Tuf4C4VXOsTglXaCyHI4cj.jpg	From Wikipedia, the free encyclopedia.\n\nTshering Phintso Denzongpa, widely known by his acting name "Danny" Denzongpa (born 25 February 1948) is an Indian actor of Sikkimese ancestry working in Bollywood films.\n\nDenzongpa was born in the state of Sikkim, at that time an independent Bhutia monarchy. He is an ethnic Bhutia and speaks Bhutia as his mother tongue.\n\nHe started his career by singing Indian and Nepali songs and acting in Indian and Nepali movies. His nepali song "Kaanchi lai ghumaune Kathmandu Sahara" is still famous among Nepali people after 2 decades. He has acted in numerous Hindi films such as Asoka and 16 December. He has also starred in some international projects, the most famous being Seven Years in Tibet where he acted alongside Hollywood actor Brad Pitt. In 2003, Denzongpa was awarded the Padma Shree, India's fourth highest civilian honour. Denzongpa is noted for his villainous and character roles.\n\nHe started dabbling in the brewing industry after 1982, and in 2009, his company Yuksom Breweries, which has three breweries in Sikkim, Orissa and Assam, and sells over three million cases, acquired Rhino Breweries in Assam, to thwart industry leader United Breweries’ (UB) plans to take over the North East market.\n\nDescription above from the Wikipedia article Danny Denzongpa, licensed under CC-BY-SA, full list of contributors on Wikipedia.​	Danny Denzongpa	1948-02-25	No data.	2
5064	http://image.tmdb.org/t/p/w185/jsjuUW07WTinnb1d0GcK2wCwZvE.jpg	Mary Louise "Meryl" Streep (born June 22, 1949) is an American actress who has worked in theatre, television and film. She is widely regarded as one of the most talented and respected actresses of the modern era. Streep made her professional stage debut in 1971's The Playboy of Seville, before her screen debut in the television movie The Deadliest Season in 1977. In that same year, she made her film debut with Julia. Both critical and commercial success came quickly with roles in The Deer Hunter (1978) and Kramer vs. Kramer (1979), the former giving Streep her first Oscar nomination and the latter her first win. She later won an Academy Award for Best Actress for her performance in Sophie's Choice (1982). Streep has received 16 Academy Award nominations, winning two, and 25 Golden Globe nominations, winning seven, more nominations than any other actor in the history of either award. Her work has also earned her two Emmy Awards, two Screen Actors Guild Awards, a Cannes Film Festival award, four New York Film Critics Circle Awards, five Grammy Award nominations, a BAFTA award, an Australian Film Institute Award and a Tony Award nomination, amongst others. She was awarded the American Film Institute's Lifetime Achievement Award in 2004. Description above from the Wikipedia article Meryl Streep, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Meryl Streep	1949-06-22	No data.	1
109513	http://image.tmdb.org/t/p/w185/s544zfrPI1Dnk60t1x1KUXF4iH3.jpg	Alexandra Anna Daddario (born March 16, 1986) is an American actress, known to film audiences as Annabeth Chase in the 2010 film Percy Jackson & the Olympians: The Lightning Thief. Daddario was also in The Squid and the Whale, All My Children, The Babysitters, The Attic, The Hottest State, White Collar, It's Always Sunny in Philadelphia, and Bereavement. She will star as the protagonist "Heather Miller" in the 2013 horror film Texas Chainsaw 3D.	Alexandra Daddario	1986-03-16	No data.	1
59410	http://image.tmdb.org/t/p/w185/1NrWxUR86TnHzqxl4Cs9qTzJhtm.jpg	Robert "Bob" Odenkirk (born October 22, 1962) is an American actor, comedian, writer, director and producer. He is best known as the co-creator and co-star of the HBO sketch comedy series Mr. Show with Bob and David.\n\nIn the 1980s and 1990s, he worked as a writer for such notable shows as Saturday Night Live, Get A Life, The Ben Stiller Show, and The Dennis Miller Show. In the mid-1990s, Odenkirk and David Cross created the Emmy-winning sketch comedy program Mr. Show, which ran for four seasons and ultimately became a cult success.\n\nIn the early 2000s, Odenkirk discovered Tim Heidecker and Eric Wareheim, and helped the pair create and produce the television series Tom Goes to the Mayor and Tim and Eric Awesome Show, Great Job!. To date, he has directed three films: 2003's Melvin Goes to Dinner, 2006's Let's Go to Prison, and 2007's The Brothers Solomon. Odenkirk currently appears in the recurring role of Saul Goodman in AMC's Breaking Bad.\n\nDescription above from the Wikipedia article Bob Oderkirk, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Bob Odenkirk	1962-10-22	No data.	2
18973	http://image.tmdb.org/t/p/w185/6Lp9qPkMO740Hcp8NBYZZLWWvJF.jpg	Milena "Mila" Kunis (born August 14, 1983) is an American actress. Her television work includes the role of Jackie Burkhart on That '70s Show and the voice of Meg Griffin on the animated series Family Guy. She has also played roles in film, such as Rachel Jansen in Forgetting Sarah Marshall, Mona Sax in Max Payne and Solara in The Book of Eli.\n\nIn 2010, she won the Marcello Mastroianni Award for Best Young Actor or Actress at the 67th Venice International Film Festival for her performance as Lily in Black Swan. She was also nominated for a Golden Globe Award for Best Supporting Actress and a Screen Actors Guild Award for Outstanding Performance by a Female Actor in a Supporting Role for the same role.	Mila Kunis	1983-08-14	No data.	1
48	http://image.tmdb.org/t/p/w185/iIxP2IzvcLgr5WaTBD4UfSqaV3q.jpg	Shaun Mark "Sean" Bean (born 17 April 1959) is an English film and stage actor. Bean is best known for starring roles in the films Lord of the Rings: The Fellowship of the Ring, GoldenEye, Patriot Games, Troy, National Treasure and Silent Hill, as well as the television series Sharpe. Bean has also acted in a number of television productions, most recent being HBO's Game of Thrones, as well as performing voice work for computer games and television adverts.\n\nDescription above from the Wikipedia article Sean Bean, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Sean Bean	1959-04-17	No data.	2
230680	http://image.tmdb.org/t/p/w185/3IQQB5SIMyF5d6Tu4pMKU2FQehP.jpg	Douglas John Booth is an English actor. Booth was born in London, England, the son of Vivien (De Cala), an artist, and Simon Booth, who works in shipping for Citigroup. He has appeared on English television as (Christopher and His Kind (2011), Great Expectations (2011)), starred in the film Romeo &amp; Juliet (2013), and played Shem, one of the sons of Noah, in Noah (2014). More recently, he played Harry Villiers in The Riot Club (2014) and Titus Abrasax in Jupiter Ascending (2015). Booth was educated at at Solefield School, a boys independent school in Sevenoaks, Kent, followed by Bennett Memorial Diocesan School, and Lingfield Notre Dame School, an independent school in Lingfield, Surrey.  His mother is of half Spanish and half Dutch ancestry, and his father is of English descent.	Douglas Booth	1992-07-09	No data.	2
512991	http://image.tmdb.org/t/p/w185/4OBtiwJBBIeffW5XyY8u83ZPyoF.jpg	Richard Madden (born 18 June 1986) is a Scottish stage, film, and television actor, known for his work in theatre and for his roles in both film and television. Currently he is best known for his portrayal of Robb Stark in the fantasy TV series, Game of Thrones.	Richard Madden	1986-06-18	No data.	2
937	http://image.tmdb.org/t/p/w185/jJ4MkVS59gCfJhWMfLTbeHKjoyC.jpg	From Wikipedia, the free encyclopedia.\n\nSir Derek George Jacobi, CBE, (born 22 October 1938) is an English actor and film director.\n\nA "forceful, commanding stage presence", Jacobi has enjoyed a highly successful stage career, appearing in such stage productions as Hamlet, Uncle Vanya, and Oedipus the King. He received a Tony Award for his performance in Much Ado About Nothing. His stage work also includes playing notable historical figures such as Edward II, Octavius Caesar, Richard III of England, and Cyrano de Bergerac.\n\nIn addition to being a founder member of the Royal National Theatre and winning several prestigious theatre awards, Jacobi has also enjoyed a successful television career, appearing in the critically praised adaptation I, Claudius, for which he won a BAFTA; the titular role in the acclaimed medieval drama series Brother Cadfael, and Stanley Baldwin in The Gathering Storm. Though principally a stage actor, Jacobi has appeared in a number of films, such as Henry V (1989), Dead Again (1991), Gladiator (2000), Gosford Park (2001), The Golden Compass (2007), The King's Speech (2010), and the forthcoming Hippie Hippie Shake. Like Laurence Olivier, he holds two knighthoods, Danish and British.\n\nDescription above from the Wikipedia article Derek Jacobi, licensed under CC-BY-SA, full list of contributors on Wikipedia	Derek Jacobi	1938-10-22	No data.	2
1812	http://image.tmdb.org/t/p/w185/sXTP6wlqIDz1tDGLU3DFbklSTpq.jpg	Michelle Ingrid Williams (born September 9, 1980) is an American actress. She began her career with television guest appearances, and made her feature film debut in Lassie (1994), which earned her a Youth in Film nomination. She gained wider recognition for her role as Jen Lindley on the The WB series Dawson's Creek from 1998 to 2003.\n\nWilliams received critical acclaim for her role as the wife of Ennis Del Mar in Brokeback Mountain (2005), for which she won a Broadcast Film Critics Association Award and was nominated for the SAG Award, BAFTA Award, Golden Globe, and Academy Award for Best Supporting Actress. She followed this with films such as Martin Scorsese's Shutter Island (2010). Her work in Blue Valentine (2010) garnered her nominations for the Golden Globe Award and the Academy Award for Best Actress. She won a Golden Globe and an Independent Spirit Award for her portrayal of Marilyn Monroe in My Week with Marilyn (2011), which also garnered her BAFTA, SAG, and Academy Award nominations. In 2016, she received wide acclaim for her performance in the drama Manchester by the Sea, earning her nominations from the BAFTA, SAG, and Academy Award ceremonies.\n\nOn Broadway, Williams appeared in a revival of the musical Cabaret in 2014 and a revival of the play Blackbird in 2016. She received a Tony Award for Best Actress in a Play nomination for the latter.	Michelle Williams	1980-09-09	No data.	1
998225	http://image.tmdb.org/t/p/w185/w0ixLYjKN5I171bQ3XSsgW3Lte3.jpg	Alison Loren Sudol (born December 23, 1984), also known by her musical moniker A Fine Frenzy, is an American alternative singer-songwriter, pianist, actress and Goodwill Ambassador for the International Union for Conservation of Nature (IUCN).	Alison Sudol	1984-12-23	No data.	1
8167	http://image.tmdb.org/t/p/w185/iqvYezRoEY5k8wnlfHriHQfl5dX.jpg	Paul William Walker IV (September 12, 1973 – November 30, 2013) was an American actor. He became well known in 1999 after his role in the hit film Varsity Blues. However, he was perhaps best known for starring as Brian O'Conner in The Fast and the Furious film series. His other films include Eight Below, Into the Blue, She's All That and Takers.	Paul Walker	1973-09-12	2013-11-30	2
17832	http://image.tmdb.org/t/p/w185/xddYLCp8zWLgYcQRck7REEgCUWl.jpg	Carla was born in Sarasota, Florida. Moved with her mother to Paradise, California, when Carla was just five years old. During her childhood, they moved many times within the state. But she remained a straight-A student throughout high school and graduated as valedictorian. A major modeling agency discovered Carla in San Diego and sent her to New York to begin a new career when she was 15. New York was more than she could handle at that young age, so she returned to LA in the summer, modeling and enrolling in an acting class at the suggestion of her aunt, Carol Merrill, known from "Let's Make a Deal" (1963). During her free time, Carla enjoys yoga, traveling and spending time with her friends in Los Angeles.\n\nDescription above from the Wikipedia article Carla Gugino, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Carla Gugino	1971-08-29	No data.	1
65524	http://image.tmdb.org/t/p/w185/iGJI8szrwaRBd484sGO8OOm1HOH.jpg	Ioan Gruffudd is a Welsh actor who trained at the Royal Academy of Dramatic Art in London, England. He started off mainly in Welsh-language productions, then came to international attention as Fifth Officer Harold Lowe in the film "Titanic" (1997), and as Lt. John Beales in "Black Hawk Down" (2001).\n\nHowever, he is probably best known for playing the role of Horatio Hornblower in "Hornblower", the British made-for-TV films (1998–2003) based on C.S. Forester's novels. Gruffudd's recent notable film roles include Lancelot in "King Arthur" (2004), Mister Fantastic (Reed Richards) in "Fantastic Four" (2005) and the sequel "Fantastic Four: Rise of the Silver Surfer" (2007), and British slavery abolitionist William Wilberforce in "Amazing Grace" (2006). He played Tony Blair in "W." (2008).	Ioan Gruffudd	1973-10-06	No data.	2
504	http://image.tmdb.org/t/p/w185/7pirFsBQe93TSfzu404Hgcj1YWj.jpg	​Timothy Francis "Tim" Robbins (born October 16, 1958) is an American actor, screenwriter, director, producer, activist and musician. He is the former longtime partner of actress Susan Sarandon. He is known for his roles as Nuke in Bull Durham, Andy Dufresne in The Shawshank Redemption, and as Dave Boyle in Mystic River, for which he won an Academy Award for Best Supporting Actor.\n\nDescription above from the Wikipedia article Tim Robbins, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Tim Robbins	1958-10-16	No data.	2
6574	http://image.tmdb.org/t/p/w185/pwiG1ljLoqfcmFH2zFp5NP2ML4B.jpg	Clarence J. "Clancy" Brown III (born January 5, 1959 height 6' 3½" (1,92 m)) is an American film, television and voice actor. He is known for his live-action roles as Captain Byron Hadley in the award-winning The Shawshank Redemption; The Kurgan in the film Highlander; Brother Justin Crowe in HBO's critically acclaimed Carnivàle and Career Sergeant Zim in Starship Troopers. Brown is most famous for providing the voices of animated characters such as Mr. Eugene H. Krabs in the animated series SpongeBob SquarePants; Lex Luthor throughout various DC projects; Captain Black and Ratso in Jackie Chan Adventures; Otto in Super Robot Monkey Team Hyperforce Go!; Dr. Neo Cortex in the original Crash Bandicoot video games and Savage Opress in Star Wars: The Clone Wars.\n\nBrown was born in Urbana, Ohio in 1959 and had an older sister Beth (1958–1965). Their mother Joyce (née Eldridge) was a conductor, composer, and concert pianist. Their father Clarence J. "Bud" Brown, Jr. helped manage the Brown Publishing Company, the family-owned newspaper business started by Clancy's grandfather, Congressman Clarence J. Brown. From 1965 to 1983 Bud Brown also served as a US Congressman, and later as chairman of the board of Brown Publishing. The family operated the business until 2010.Brown graduated from St. Albans School in Washington, D.C., as his family lived there much of the time when his father served in Congress. He earned a scholarship to Northwestern University, where he became a member of the Sigma Chi Fraternity.\n\nBrown is often cast in roles of villains or authority figures. His career has tended to alternate among mainstream TV/cable; major-studio and independent-studio movies; and a large repertoire of voice work for animated and video game roles.\n\nBrown has been married to Jeanne Johnson since 1993; they have a son and daughter.	Clancy Brown	1959-01-05	No data.	2
4238	http://image.tmdb.org/t/p/w185/fYA8xm95u4papXddRvQrGRNDThF.jpg	Lonnie Rashid Lynn, Jr. (born March 13, 1972), better known by his stage name Common (formerly Common Sense), is an American hip hop recording artist, actor, film producer and poet from Chicago, Illinois.	Common	1972-03-13	No data.	2
58225	http://image.tmdb.org/t/p/w185/qsDfoUlRnXHUiqZeBPWHzmgmKGX.jpg	​Zacharias "Zach" Galifianakis is an American actor and stand-up comedian.  He is most widely known for his role as Alan in 2009's The Hangover, the highest grossing R rated comedy ever.  Prior to his explosion to the main stage Galifianakis was known mainly for his stand up act, which features a large amount of absurdist and self deprecating humor. Zach had worked for several years in film and television playing small once off roles, often playing maladjusted characters.  He also worked for two weeks as a writer on Saturday Night Live, a show he would later return to host.  Galifainakis achieved more fame appearing in a webseries, Between Two Ferns, of his own creation that features famous guest stars. Since his role in the Hangover, Zach has been cast in more big budget films and leading roles.	Zach Galifianakis	1969-10-01	No data.	2
127558	http://image.tmdb.org/t/p/w185/5Qi1DVUts9gahVpj1dCtspbwcAC.jpg	Andrea Louise Riseborough (born 20 November 1981) is an English stage and film actress. Her film appearances include Birdman, Oblivion, Welcome to the Punch, Disconnect, Shadow Dancer, W.E., Brighton Rock, Made in Dagenham, Never Let Me Go, Happy-Go-Lucky, and Venus.	Andrea Riseborough	1981-11-20	No data.	1
39388	http://image.tmdb.org/t/p/w185/icpKwwx4v17xrBtB3qT8uY0ClKv.jpg	Amy Beth Dziewiontkowski (born November 30, 1969), known professionally as Amy Ryan, is an American actress. She has been nominated for an Academy Award and Golden Globe for her performance in Gone Baby Gone (2007) and is also known for her roles in the HBO series The Wire, playing Port Authority Officer Beadie Russell; In Treatment, playing psychiatrist Adele Brousse; and The Office, playing human resources representative Holly Flax.\n\nEarly life Ryan was born in Queens, New York City. She is the daughter of Pam, a nurse, and John, a trucking business owner. Ryan is her mother's maiden name. She is of English, Irish, and Polish descent. Growing up in the 1970s, Ryan and her sister delivered the Daily News by bike. At a young age, Ryan attended the Stagedoor Manor Performing Arts Center in upstate New York. At 17, she graduated from New York's High School of Performing Arts. Hired for the national tour of Biloxi Blues right out of high school, Ryan worked steadily off-Broadway for the next decade.	Amy Ryan	1969-11-30	No data.	1
11885	http://image.tmdb.org/t/p/w185/6AJL0ylRtJ9vcR57yEenhWHXHFt.jpg	John Christopher McGinley (born August 3, 1959) is an American actor, most notable for his roles as Perry Cox in Scrubs, Bob Slydell in Office Space, and Sergeant Red O'Neill in Oliver Stone's Platoon. He has also written and produced for television and film. Apart from acting, McGinley is also an author and a spokesperson for the National Down Syndrome Society.\n\nDescription above from the Wikipedia article John C. McGinley, licensed under CC-BY-SA, full list of contributors on Wikipedia.	John C. McGinley	1959-08-03	No data.	2
1440574	http://image.tmdb.org/t/p/w185/u2ig0kkgxq36BMbFQ4DEWfu5G3A.jpg	Charlie Faulkner Plummer (born May 24, 1999) is an American actor. Plummer began his career as a child actor in short films before appearing on the television dramas Boardwalk Empire and Granite Flats. He made his feature film debut in David Chase's drama Not Fade Away (2012) before landing the lead role in Felix Thompson's directorial debut King Jack (2015).\n\nIn 2017, he gained wider recognition for his supporting role in Ridley Scott's crime thriller All the Money in the World (2017), and his lead role in Andrew Haigh's drama Lean on Pete (2017). His performance in the latter garnered critical praise and earned him the Marcello Mastroianni Award for best emerging actor at the 74th Venice Film Festival.\n\nDescription above from the Wikipedia article Charlie Plummer, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Charlie Plummer	1999-05-24	No data.	2
2295	http://image.tmdb.org/t/p/w185/AvGzQ8fvjurGmZW3W1wlQ5WfSeT.jpg	Philip Andre "Mickey" Rourke, Jr. (born September 16, 1952) is an American actor and screenwriter who has appeared primarily as a leading man in action, drama, and thriller films.\n\nTrained as a boxer in his early years, Rourke had a short stint as a professional boxer in the 1990s. He won a 2009 Golden Globe award and a BAFTA award, and was nominated for a Screen Actors Guild Award and an Academy Award for his work in the film The Wrestler. He appears as the main villain Whiplash in Iron Man 2 along with Robert Downey Jr., Don Cheadle, and Sam Rockwell and is also well known for playing Marv in Sin City.	Mickey Rourke	1952-09-16	No data.	2
4756	http://image.tmdb.org/t/p/w185/j9ETatVKFxYR5Ijk8l5tzKO4HPn.jpg	Matthew Broderick is an American actor whose career has spanned both the silver screen and the stage.  Broderick got his start off broadway but quickly wound up as the lead in Neil Simon's Brighton Beach Memoirs. His first screen role was Max Dugan Returns, also penned by Neil Simon.  His breakout role came the same year for his role as a young hacker in Wargames.  Later he stared as the eponymous Ferris Bueller in 1985's Ferris Bueller's Day Off, a film which has achieved cult status and had made Broderick a household name.   In 1985 while on Vacation in Ireland with his then fiancee Jennifer Grey, who played his sister in Ferris Bueller's Day Off, Broderick was involved in a head on collision that killed two locals.  Broderick was deemed at fault and faced five years in prison but his punishment was lessened to just a fine.   In 1997 he married Sarah Jessica Parker and the pair have had 3 children together.	Matthew Broderick	1962-03-21	No data.	2
20005	http://image.tmdb.org/t/p/w185/pQstHxjYadJBlwD0ifXFRS0xUT5.jpg	Moira Kelly (born March 6, 1968) is an American actress. She is best known for her roles as Kate Moseley in The Cutting Edge, Oona O'Neill in Chaplin, Mandy Hampton in the television series The West Wing (1999–2000), Karen Roe on One Tree Hill (2003–2009) and providing the voice for Adult Nala in The Lion King and its sequel The Lion King II: Simba's Pride.\n\nDescription above from the Wikipedia article Moira Kelly, licensed under CC-BY-SA,full list of contributors on Wikipedia.	Moira Kelly	1968-03-06	No data.	1
3897	http://image.tmdb.org/t/p/w185/eYeE0Z1sOvqxt7LsQHK30vUfWaM.jpg	Kate Noelle "Katie" Holmes (born December 18, 1978) is an American actress and director. Born in Toledo, Ohio, teen modelling led to a supporting role in Ang Lee's The Ice Storm, before she found international fame as Joey Potter on the teen drama Dawson's Creek from 1998 to 2003. She transitioned to film in her hiatuses between seasons, appearing in movies including Doug Liman's Go, Curtis Hanson's Wonder Boys, and Joel Schumacher's Phone Booth.\n\nDuring promotion for her role in Christopher Nolan's Batman Begins, Holmes began a highly publicized relationship with actor Tom Cruise. The couple were engaged within two months of meeting, with Holmes converting from Roman Catholicism to the Church of Scientology, and Cruise flamboyantly professing his love for her during a controversial episode of The Oprah Winfrey Show. Months later, the couple produced a daughter, Suri, before marrying in November 2006.\n\nHolmes went on to make her Broadway debut in a revival of Arthur Miller's All My Sons, portray Jacqueline Kennedy in the Reelz mini-series The Kennedys, and launched a short-lived fashion line. Holmes filed for divorce from Cruise in July 2012, gaining custody of her daughter and moving to New York, where she returned to the Roman Catholic Church. While tabloids have long speculated on the circumstances of the couple's divorce, Holmes has declined to speak publicly on the matter.\n\nFollowing her divorce, Holmes returned to film with roles in The Giver, Woman in Gold and Steven Soderbergh's Logan Lucky, and recurred on the Showtime series Ray Donovan. In 2016, she made her feature directorial debut with the mother-daughter drama All We Had.	Katie Holmes	1978-12-18	No data.	1
1331023	http://image.tmdb.org/t/p/w185/sF1ei5jaH7CQTEp6mpA3n7RJOJX.jpg	Emilia Jones (born 23 February 2002) is an English child actress, best known for portraying the young Queen of Years, Merry Gejelh, in the 2013 Doctor Who episode "The Rings of Akhaten"and playing the part of Lottie McLeod in the BBC feature-length film What We Did on Our Holiday. She has also worked in theatre including playing Young Fiona in the original cast of Shrek the Musical at the Theatre Royal, Drury Lane and Flora in a stage adaptation of Henry James's The Turn of the Screw.\n\nJones' acting career began in 2010, aged 8 years old, when she appeared as Jasmine in the film One Day.[1] She also portrayed Alice in the Channel 4 drama Utopia, and later that year played the young Queen of Years Merry Gejelh in the British television series Doctor Who episode "The Rings of Akhaten" (2013). In film, Jones has had small roles in One Day (2011) and Pirates of the Caribbean: On Stranger Tides (2011).\n\nDescription above from the Wikipedia article Emilia Jones, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Emilia Jones	2002-02-23	No data.	1
19119	http://image.tmdb.org/t/p/w185/pKV3XJ6mlzfj0B0MGS8uMcMI9cl.jpg	Mélanie Laurent (born 21 February 1983) is a French actress, singer, pianist, screenwriter, and director, perhaps best known to international audiences for her role in Inglourious Basterds (2009).\n\nLaurent was born in Paris, the daughter of Annick, a ballerina, and Pierre Laurent, a voiceover actor. Laurent is Jewish, and has both Ashkenazi and Tunisian Sephardic ancestry. Her grandfather survived deportation by the Nazis.\n\nLaurent had a long relationship with fellow French actor Julien Boisselier. She describes recording artist Damien Rice and Tarantino as her two "masters".	Mélanie Laurent	1983-02-21	No data.	1
5365	http://image.tmdb.org/t/p/w185/31FbXPcEwKLE1eiQ8ceyQpsnheE.jpg	Clifton Collins Jr. is an American film and television actor, best known for playing student Cesar Sanchez opposite substitute teacher Samuel L. Jackson in the feature film "One Eight Seven", and as the killer Perry Smith in the independent movie "Capote". He also played recurring characters in many television shows and is a series regular in HBO's "Westworld".	Clifton Collins Jr.	1970-06-16	No data.	2
16847	http://image.tmdb.org/t/p/w185/lV7xjR2fUXX3u8Ixg8nhKFbuqm3.jpg	Eli Raphael Roth is an American film director, producer, writer and actor. He is part of the group of filmmakers dubbed the Splat Pack, because of their association and their focus on the horror genre.\n\nRoth is known for making violent, low-budget horror films that are box office hits worldwide, and for bringing back the R-rating to horror at a time when studios believed only PG-13 horror would work. Roth is also an award-winning actor, most known for his role as Donny Donowitz in Quentin Tarantino's Inglourious Basterds, for which he won both a SAG Award (Best Ensemble) and a BFCA Critic's Choice Award (Best Acting Ensemble).\n\nRoth was born in Newton, Massachusetts, to Dr. Sheldon Roth, a psychiatrist/psychoanalyst and professor at Harvard University, and Cora Roth, a painter. His grandparents immigrated from Austria, Russia and Poland, and Roth was raised Jewish.	Eli Roth	1972-04-18	No data.	2
12898	http://image.tmdb.org/t/p/w185/uX2xVf6pMmPepxnvFWyBtjexzgY.jpg	From Wikipedia, the free encyclopedia.\n\nTim Allen (born Timothy Allen Dick; June 13, 1953) is an American comedian, actor, voice-over artist, and entertainer, known for his role in the sitcom Home Improvement. He is also known for his film roles in several popular movies, including the Toy Story series, The Santa Clause series, and Galaxy Quest.\n\nDescription above from the Wikipedia article Tim Allen, licensed under CC-BY-SA, full list of contributors on Wikipedia​	Tim Allen	1953-06-13	No data.	2
77795	http://image.tmdb.org/t/p/w185/zgLVX4KJJ6hTD2niGLchkzjfWpJ.jpg	Katherine Boyer Waterston (born March 3, 1980) is an American actress. She made her feature film debut in Michael Clayton (2007). She then had supporting roles in films including Robot & Frank, Being Flynn (both 2012) and The Disappearance of Eleanor Rigby: Her (2013) before her leading role as Shasta Fay Hepworth in Paul Thomas Anderson's Inherent Vice (2014). In 2015, she portrayed Chrisann Brennan in Steve Jobs. She had starring roles in the Harry Potter prequel, Fantastic Beasts and Where to Find Them (2016), and Alien: Covenant (2017), a prequel to Ridley Scott's Alien film series.	Katherine Waterston	1980-03-03	No data.	1
8289	http://image.tmdb.org/t/p/w185/pYblSarjmmIUggmOafanD2yk0Zj.jpg	William Gaither Crudup (born July 8, 1968) is an American actor. He is known for supporting roles in films including Almost Famous, Big Fish, Mission: Impossible III, Watchmen, Public Enemies, Spotlight, and Alien: Covenant, as well as lead roles in films including Without Limits, Dedication, and the animated film Princess Mononoke. He appeared in the 2017 superhero film Justice League as Doctor Henry Allen.\n\nHe has also had an extensive stage acting career, appearing mostly on Broadway. He has been nominated four times for a Tony Award for his acting, and won once, for his role in Tom Stoppard's The Coast of Utopia in 2007.\n\nFrom 1998 to 2005, Crudup was the narrator for "Priceless", a U.S. television ad campaign for MasterCard.	Billy Crudup	1968-07-08	No data.	2
16940	http://image.tmdb.org/t/p/w185/9AWphjIgGX7JjTrwrx3tsTZlUgv.jpg	Jeremy John Irons (born 19 September 1948) is an English actor.\n\nAfter receiving classical training at the Bristol Old Vic Theatre School, Irons began his acting career on stage in 1969, and has since appeared in many London theatre productions including The Winter's Tale, Macbeth, Much Ado About Nothing, The Taming of the Shrew, and Richard II. In 1984, he made his Broadway debut in Tom Stoppard's The Real Thing and received a Tony Award for Best Actor.\n\nIrons's first major film role came in the 1981 romantic drama The French Lieutenant's Woman, for which he received a BAFTA nomination for Best Actor. After starring in such films as Moonlighting (1982), Betrayal (1983), and The Mission (1986), he gained critical acclaim for portraying twin gynecologists in David Cronenberg's psychological thriller Dead Ringers (1988).\n\nIn 1990, Irons delivered another strong performance as a European aristocrat in Reversal of Fortune, and took home multiple awards including an Academy Award for Best Actor. Other notable films have included The House of the Spirits (1993), The Lion King (1994), Die Hard with a Vengeance (1995), Lolita (1997), The Merchant of Venice (2004), Being Julia (2004), and Appaloosa (2008). Irons has also made several notable appearances on television. He earned his first Golden Globe Award nomination for his breakout role in the ITV series Brideshead Revisited (1981).\n\nIn 2006, Irons starred opposite Helen Mirren in the historical miniseries Elizabeth I, for which he received a Golden Globe Award and an Emmy Award for Best Supporting Actor.\n\nDescription above from the Wikipedia article Jeremy Irons, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jeremy Irons	1948-09-19	No data.	2
14329	http://image.tmdb.org/t/p/w185/owIr4b4VIlJu0m6Drofd3P0qDl5.jpg	Dean Joseph Norris (born April 10, 1963 height 5' 7" (1,70 m)) is an American actor, best known for portraying DEA agent Hank Schrader on the AMC series Breaking Bad (2008–2013) and town selectman James "Big Jim" Rennie on the CBS series Under the Dome (2013–present). He has also appeared in films such as Lethal Weapon 2 (1989), Total Recall (1990), Terminator 2: Judgment Day (1991), Starship Troopers (1997), Little Miss Sunshine (2006), and Evan Almighty (2007).\n\nNorris was born in South Bend, Indiana, to Jack, a furniture store owner, and Rosie Norris. He has four sisters. Norris graduated from Clay High School in 1981, where he says he got straight A's. He is a 1985 graduate of Harvard College, where he majored in social studies. He also attended the Royal Academy of Dramatic Art.\n\nNorris starred in Tremors: The Series and the film Without Limits. He has had guest spots in other television series including NYPD Blue, The X-Files, The West Wing, and Lost, and has appeared in films including Gattaca and Terminator 2: Judgment Day. Norris is best known for his role as DEA agent Hank Schrader on Breaking Bad, which he played from the show's premiere in 2008 to its final season in 2013. He is currently starring in the CBS series Under the Dome, based on the Stephen King novel of the same name. He plays selectman James "Big Jim" Rennie, the only town council member in the area which is cut off from the rest of the USA; Rennie initially seems to do the right thing in getting the town accustomed to the separation, but he soon starts to abuse his power.	Dean Norris	1963-04-10	No data.	2
11705	http://image.tmdb.org/t/p/w185/d9QH5GJ9vxJZPur6yMv9GHPqi4O.jpg	American actress Michelle Lynn Monaghan's first notable roles were in episodes of Young Americans, and Law &amp; Order: Special Victims Unit, both in 2001. That year she also her big screen debut in the movie “Perfume” (2001), followed by another small role in “Unfaithful” (2002).\n\nMonaghan had her big break in 2002 when she co-starred in the television series Boston Public.   Monaghan is better known for her roles in “Mission: Impossible III”, “Kiss Kiss Bang Bang”, “Gone Baby Gone”, “Made of Honor”, “The Heartbreak Kid” and “Eagle Eye”.\n\nMonaghan met Australian graphic artist Peter White at a party in 2000. They were married in August 2005 and live in New York. She gave birth to daughter Willow Katherine White on November 5, 2008.	Michelle Monaghan	1976-03-23	No data.	1
12900	http://image.tmdb.org/t/p/w185/oGE6JqPP2xH4tNORKNqxbNPYi7u.jpg	Wallace Michael Shawn (born November 12, 1943) is an American actor, voice actor, playwright, essayist and comedian. His film roles have included those of Wally Shawn in the Louis Malle directed comedy-drama My Dinner with Andre (1981), Vizzini in The Princess Bride (1987), Mr. Wendell Hall in Clueless (1995) and providing the voice of Rex in the Toy Story franchise. He has also appeared in a variety of television series, including recurring roles as Cyrus Rose in Gossip Girl (2008–2012) and as Grand Nagus Zek in Star Trek: Deep Space Nine (1993–1999).\n\nHis plays include The Designated Mourner, Aunt Dan and Lemon and Grasses of a Thousand Colors. He also co-wrote the screenplay for My Dinner with Andre with Andre Gregory, and he scripted A Master Builder (2013), a film adaptation of of the play by Henrik Ibsen, which he also starred in. His book Essays was published in 2009 by Haymarket Books.\n\nDescription above from the Wikipedia article Wallace Shawn, licensed under CC-BY-SA,full list of contributors on Wikipedia.	Wallace Shawn	1943-11-12	No data.	2
3910	http://image.tmdb.org/t/p/w185/AskZbUslI8HkkbdmwyAXHjmQqPg.jpg	Frances Louise McDormand (born Cynthia Ann Smith; June 23, 1957) is an American film, stage and television actress. McDormand began her career on stage and made her screen debut in the 1984 film Blood Simple, having since appeared in several theatrical and television roles. McDormand has been recognized for her performances in 'Mississippi Burning' (1988), 'Short Cuts' (1993), 'Fargo' (1996), 'Wonder Boys' (2000), 'Almost Famous' (2000), 'North Country' (2005), 'Moonrise Kingdom' (2012), 'Hail, Caesar!' (2016) and 'Three Billboards Outside Ebbing, Missouri' (2017).\n\nThroughout her career, she has been nominated for eight Golden Globes, five Academy Awards, four BAFTA Awards, and three Emmy Awards. She is one of the few performers to achieve the "Triple Crown of Acting", winning an Academy Award, a Primetime Emmy Award, and a Tony Award. She won her first Academy Award for Best Actress in 1997 for her role as Marge Gunderson in 'Fargo'.  She also won Best Supporting Actress from the Broadcast Film Critics Association, the Florida Film Critics Circle, and the Los Angeles Film Critics Association for her performance in 'Wonder Boys' (2000).  McDormand returned to the stage in the David Lindsay-Abaire play Good People on Broadway from February 8, 2011 to April 24, 2011. In 2017, McDormand starred in 'Three Billboards Outside Ebbing, Missouri' which earned her a second Academy Award for Best Actress.\n\nMcDormand has been married to filmmaker Joel Coen since 1984, they reside in New York City along with their adopted son Pedro.	Frances McDormand	1957-06-23	No data.	1
16861	http://image.tmdb.org/t/p/w185/bz4usMR7NWEgVgWTxVBLEjCo3Dv.jpg	John Hawkes (born John Marvin Perkins; September 11, 1959) is an American film and television actor. He is known for his portrayal of the merchant Sol Star on the HBO series Deadwood, his role in Eastbound &amp; Down, and his Academy Award-nominated performance as the menacing backwoods meth addict Teardrop in Winter's Bone.\n\nDescription above from the Wikipedia article John Hawkes, licensed under CC-BY-SA, full list of contributors on Wikipedia.	John Hawkes	1959-09-11	No data.	2
31	http://image.tmdb.org/t/p/w185/zLDjweF7EvnPGbgnYHrNBlVlNhg.jpg	Thomas Jeffrey "Tom" Hanks (born July 9, 1956) is an American actor, producer, writer and director. Hanks worked in television and family-friendly comedies, gaining wide notice in 1988's Big, before achieving success as a dramatic actor in several notable roles, including Andrew Beckett in Philadelphia, the title role in Forrest Gump, Commander James A. Lovell in Apollo 13, Captain John H. Miller in Saving Private Ryan, Joe Fox in You've Got Mail and Chuck Noland in Cast Away. Hanks won consecutive Best Actor Academy Awards, in 1993 for Philadelphia and in 1994 for Forrest Gump. U.S. domestic box office totals for his films exceed $3.9 billion.	Tom Hanks	1956-07-09	No data.	2
33	http://image.tmdb.org/t/p/w185/ngYV91xYfCu0JNcSxJ4yQ7tzOna.jpg	Gary Sinise ( born March 17, 1955) is an American actor, film director and musician. During his career, Sinise has won various awards including an Emmy and a Golden Globe Award and was nominated for an Academy Award. In 1992, Sinise directed, and played the role of George Milton in the successful film adaptation Of Mice and Men. Sinise was nominated for the Academy Award for Best Supporting Actor in 1994 for his role as Lt. Dan Taylor in Forrest Gump. He won a Golden Globe Award for his role in Truman, as Harry S. Truman. In 1996, he played a corrupt police officer in the dramatic hit Ransom, Detective Jimmy Shaker. In 1998, Sinise was awarded an Emmy Award for the television film George Wallace, a portrayal of the late George C. Wallace. Since 2004, Sinise has starred in CBS's CSI: NY as Detective Mac Taylor.\n\nDescription above from the Wikipedia article Gary Sinise, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Gary Sinise	1955-03-17	No data.	2
35	http://image.tmdb.org/t/p/w185/ymhpsxujOO3a9qaGYSpkenCt9Le.jpg	​From Wikipedia, the free encyclopedia.  \n\nSally Margaret Field (born November 6, 1946) is an American actress, singer, producer, director, and screenwriter. In each decade of her career, she has been known for major roles in American TV/film culture, including: in the 1960s, for Gidget (1965–66) or Sister Bertrille on The Flying Nun (1967–70); in the 1970s, for Sybil (1976), Smokey and the Bandit (1977) and Norma Rae (1979); in the 1980s, for Absence of Malice, Places in the Heart (1984) and Steel Magnolias; in the 1990s, for Not Without My Daughter, Mrs. Doubtfire (1993) and Forrest Gump; and in the 2000s, on the TV shows ER and Brothers &amp; Sisters. She has also performed in numerous other roles. Field has won two Academy Awards, for Norma Rae (1979) and Places in the Heart (1984). She has also won three Emmy Awards: for her role in the TV film Sybil (1976); her guest-starring role on ER in 2000; and for her starring role as Nora Holden Walker on ABC's series Brothers &amp; Sisters in 2007. She has also won two Golden Globes and the Screen Actors Guild Award for Best Actress. She also won the Best Female Performance Prize at the Cannes Film Festival, for Norma Rae (1979).\n\nDescription above from the Wikipedia article Sally  Field, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Sally Field	1946-11-06	No data.	1
94864	http://image.tmdb.org/t/p/w185/fUGKNDsQnKCLzNrWyyBkx7O26XC.jpg	Maximilian Carlo "Max" Martini (born December 11, 1969) is an American film, theater and television actor known for his roles as Corporal Fred Henderson in Saving Private Ryan, Wiley in Level 9, First Sergeant Sid Wojo in The Great Raid, and as Sergeant Mack Gerhardt on the military television drama, The Unit.	Max Martini	1969-12-11	No data.	2
449	http://image.tmdb.org/t/p/w185/7EX0od3FwdaoEegJlY1q0kZgEqt.jpg	Jonathan Adam Saunders "Jay" Baruchel (born April 9, 1982) is a Canadian actor. He has had a successful career in comedy films, and has appeared in such box office successes as Million Dollar Baby, Knocked Up, Tropic Thunder, and How to Train Your Dragon, as well as the films She's Out of My League, The Trotsky, and The Sorcerer's Apprentice.\n\nDescription above from the Wikipedia article Jay Baruchel, licensed under CC-BY-SA, full list of contributors on Wikipedia	Jay Baruchel	1982-04-09	No data.	2
16644	http://image.tmdb.org/t/p/w185/hjR1tpZV5XKX8daIKmU80ZuOfMO.jpg	Hans "Dolph" Lundgren (born 3 November 1957) is a Swedish actor, director, screenwriter, producer, and martial artist.\n\nLundgren received a degree in chemistry from Washington State University, a degree in chemical engineering from the Royal Institute of Technology in the early 1980s, and a master's degree in chemical engineering from the University of Sydney in 1982. He holds the rank of 3rd dan black belt in Kyokushin karate and was European champion in 1980-81. While in Sydney, he became a bodyguard for Jamaican singer Grace Jones and began a relationship with her. He received a Fulbright scholarship to MIT and moved to Boston. Jones convinced him to leave the university and move to New York City to be with her and begin acting, where, after a short stint as a model and bouncer at the Manhattan nightclub The Limelight, Jones got him a small debut role as a KGB henchman in the James Bond film A View to a Kill.\n\nLundgren's breakthrough came when he starred in Rocky IV in 1985 as the imposing Soviet boxer Ivan Drago. Since then, he has starred in more than 40 films, almost all of them in the action genre. He portrayed He-Man in the 1987 science fantasy film Masters of the Universe and Frank Castle in the 1989 film The Punisher. In the early 1990s, he also appeared in films such as Dark Angel (1990), Universal Soldier (1992), Joshua Tree (1993), Johnny Mnemonic (1995), and Blackjack (1998). In 2004, he directed his first film, The Defender, and subsequently directed The Mechanik (2005), Missionary Man (2007), Command Performance (2009), and Icarus (2010), also starring in the latter.\n\nAfter a long spell performing in direct-to-video films since 1995, Lundgren returned to Hollywood in 2010 with the role of Gunner Jensen in The Expendables, alongside Sylvester Stallone and an all-action star cast. He reprised his role in The Expendables 2 (2012) and The Expendables 3 (2014). Also in 2014, he co-starred in Skin Trade, an action thriller about human trafficking. The film marks his third collaboration with Cary-Hiroyuki Tagawa, the previous two being Showdown in Little Tokyo (1991) and Bridge of Dragons (1999). He is due to reprise his role as Gunner Jensen in The Expendables 4 (2018).\n\nDescription above from the Wikipedia article Dolph Lundgren, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Dolph Lundgren	1957-11-03	No data.	2
76788	http://image.tmdb.org/t/p/w185/hd2Aw7JPzA0urEwFLC9yqZ5sjbj.jpg	Dev Patel (born 23 April 1990) is a British film and television actor. He is known for his performances as Anwar Kharral in the UK television teen drama series Skins and, on a more global scale, as the main male lead Jamal Malik in Danny Boyle's critically acclaimed and multiple Academy Award-winning film Slumdog Millionaire (2008), for which Patel won a number of awards, including a Critics' Choice Award and a Screen Actors Guild Award.  Description above from the Wikipedia article Dev Patel, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Dev Patel	1990-04-23	No data.	2
985041	http://image.tmdb.org/t/p/w185/Q9tTc7O0tik9jwnoPP4U2zfUHl.jpg	Watkin Tudor Jones (born 26 September 1974), currently known by his stage name Ninja, is a South African rapper, record producer, performance artist and satirist. Previously, he has recorded under a guise of different names, Max Normal and MC Totally Rad being some of the most prominent.\n\nWatkin Tudor Jones was a part of South African hip-hop scene for many years, fronting such acts as The Original Evergreens, MaxNormal.TV and The Constructus Corporation. He is known for adopting different stage personas. He currently fronts the group Die Antwoord under the name Ninja.\n\nJones has released several albums under different guises (including the Sibot-produced The Fantastic Kill and Markus Wormstorm-produced promo-only EP "Emmanuel Rothchild - My Favourite Songs" and "Markus Wormstorm Is Not Gay"), and expanded into graphic art, stuffed animal making, and other aspects of his creativity. He has a child with Yolandi Visser, who is also a frequent collaborator.\n\nAlthough he now lives in Cape Town, Jones comes from Johannesburg where he attended Parktown Boys' High School, graduating in 1993.	Ninja	No data.	No data.	0
20191	http://image.tmdb.org/t/p/w185/CWxL7dLHXEqMcgDdh40tHbLb0l.jpg	​From Wikipedia, the free encyclopedia.  \n\nJose Pablo Cantillo (born March 30, 1979) is an American actor of Costa Rican descent. Jose Pablo Cantillo (known as 'Joey' in his HS days) grew up in Terre Haute, Indiana, and attended Terre Haute South Vigo High School where he was a tennis standout for all 4 years, leading the Terre Haute South Braves to a State Runner-Up finish in 1996. He attended Indiana University, and graduated in 2002 with a double major in Finance and Marketing. Cantillo then decided to pursue an acting career in New York City after taking some drama classes at IU. In late 2003, he moved to California, where he and his wife Kristi, and their 7-year-old daughter live in Santa Clarita, a town “that kind of reminds us of Terre Haute.” After doing off-Broadway plays in New York, Cantillo landed guest roles on popular television series from early 2000 to present. After 2006 he started getting supporting and large roles.	Jose Pablo Cantillo	1979-03-30	No data.	0
1289968	http://image.tmdb.org/t/p/w185/fxpve7evj6H1kl8rTnDqNyIdObI.jpg	Cara Jocelyn Delevingne (/ˈkɑːrə ˌdɛləˈviːn/ kah-rə del-ə-veen; born 12 August 1992) is an English fashion model and actress. She signed with Storm Model Management after leaving school in 2009. Delevingne won the "Model of the Year" award at the British Fashion Awards in 2012 and 2014 and has appeared in shows for houses including Burberry, Mulberry, Dolce & Gabbana, and Jason Wu. She started her acting career with a minor role in the 2012 film adaptation of Anna Karenina. Her first major roles were as Margo Roth Spiegelman in the romantic mystery film Paper Towns (2015), Kath Talent in London Fields, and the Enchantress in the comic book film Suicide Squad (2016).	Cara Delevingne	1992-08-12	No data.	1
2296	http://image.tmdb.org/t/p/w185/jm2as6tLcvHCYQvmMYM4VK6JEnr.jpg	Clive Owen (born 3 October 1964) is an English actor, who has worked on television, stage and film. He first gained recognition in the United Kingdom for portraying the lead in the ITV series Chancer from 1990 to 1991. He then garnered critical acclaim for his work in the film Close My Eyes (1991) before getting international notice for his performance as a struggling writer in Croupier (1998). In 2005, Owen won a Golden Globe and a BAFTA Award and was nominated for an Academy Award for Best Supporting Actor for his appearance in the drama Closer (2004). He has since played leading as well as supporting roles in films such as Sin City (2005), Inside Man (2006), Children of Men (2006), and The International (2009).\n\nDescription above from the Wikipedia article Clive Owen, licensed under CC-BY-SA, full list of contributors on Wikipedia	Clive Owen	1964-10-03	No data.	2
586	http://image.tmdb.org/t/p/w185/4zgkRFQruIlaJ4JakNZLoKJ70fH.jpg	​From Wikipedia, the free encyclopedia.\n\nSean Young  (born November 20, 1959) is an American actress, best known for her performance in films from the 1980s such as Blade Runner, Dune, and No Way Out.\n\nDescription above from the Wikipedia article Sean Young, licensed under CC-BY-SA, full list of contributors on Wikipedia	Sean Young	1959-11-20	No data.	1
587	http://image.tmdb.org/t/p/w185/i7zKqsFqL5L1HPmAMeSA1xZzlD5.jpg	Edward James Olmos (born February 24, 1947) is a Mexican American actor and director. Among his most memorable roles are William Adama in the re-imagined Battlestar Galactica, Lt. Martin Castillo in Miami Vice, teacher Jaime Escalante in Stand and Deliver, patriarch Abraham Quintanilla in the film Selena, Detective Gaff in Blade Runner, and narrator El Pachuco in both the stage and film versions of Zoot Suit. Description above from the Wikipedia article Edward James Olmos, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Edward James Olmos	1947-02-24	No data.	2
24264	http://image.tmdb.org/t/p/w185/2ZIvieSjzfA4c8YHxs3jgHJPBta.jpg	​From Wikipedia, the free encyclopedia\n\nCraig Ferguson (born 17 May 1962) is a Scottish-born, naturalized American television host, stand-up comedian, writer, actor, director, and producer. He is the host of The Late Late Show with Craig Ferguson, an Emmy Award-nominated, Peabody Award-winning late-night talk show that airs on CBS. In addition to hosting that program and performing stand-up comedy, Ferguson has written two books: Between the Bridge and the River, a novel, and American on Purpose, an autobiography. He became a citizen of the United States in 2008.\n\nBefore his career as a late-night television host, Ferguson was best known in the United States for his role as the office boss, Nigel Wick, on The Drew Carey Show from 1996 to 2003. After that, he wrote and starred in three films, directing one of them.\n\nDescription above from the Wikipedia article Craig Ferguson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Craig Ferguson	1962-05-17	No data.	2
59174	http://image.tmdb.org/t/p/w185/9xuc962JhsW51bCFURtel7RBrMM.jpg	America Georgina Ferrera (born April 18, 1984) is a Honduran-American actress, best known for playing the lead role in the television comedy series "Ugly Betty". Her portrayal garnered critical acclaim, and she won the Golden Globe Award for "Best Actress in a Comedy Series", the Screen Actors Guild Award for "Best Female Actor in a Comedy Series", and the Emmy Award for "Outstanding Lead Actress in a Comedy Series". She has also starred in Real Women Have Curves, The Dry Land, The Sisterhood of the Traveling Pants, its sequel Sisterhood of the Traveling Pants 2, and had a small role in the skateboard biopic Lords of Dogtown (2005). In addition, she was the voice of Astrid the Viking in the Dreamworks animated picture How to Train Your Dragon.	America Ferrera	1984-04-18	No data.	1
8447	http://image.tmdb.org/t/p/w185/gai03gCu3DxMYxFympt7hUObpI5.jpg	Jeffrey Warren "Jeff" Daniels (born February 19, 1955) is an American actor, musician and playwright. He founded a non-profit theatre company, the Purple Rose Theatre Company, in his home state of Michigan. He has performed in a number of stage productions, both on and off Broadway. He has been nominated for the Tony Award as Best Actor for the Broadway play God of Carnage (2009), along with his other three cast-mates.\n\nHe has had a thriving film career, from his debut in 1981 in Ragtime, through State of Play in 2009. For his film work, he has received three Golden Globe Award nominations, including as Best Performance by an Actor in a Motion Picture – Comedy/Musical for Woody Allen's The Purple Rose of Cairo (1985) (hence the name of his theatre company). He has also received nominations by the Screen Actors Guild, Satellite Awards, and several for his work in The Squid and the Whale (London Critics Circle Awards, Independent Spirit Awards, Chlotrudis Awards and Gotham Awards).\n\nDescription above from the Wikipedia article Jeff Daniels, licensed under CC-BY-SA, full list of contributors on Wikipedia	Jeff Daniels	1955-02-19	No data.	2
9191	http://image.tmdb.org/t/p/w185/yMClxMrLdOXk37RGvrqJEWjg9ko.jpg	Timothy Leonard Spall, OBE (born 27 February 1957) is an English character actor and occasional presenter.\n\nDescription above from the Wikipedia article Timothy Spall, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Timothy Spall	1957-02-27	No data.	2
98103	http://image.tmdb.org/t/p/w185/qHKoy9kP4bsv4G9EkvU4FMUmYkS.jpg	From Wikipedia, the free encyclopedia.\n\nRichard Ellef Ayoade (born 12 June 1977 in Whipps Cross, London) is an English comedian, actor, writer and director best known for his role as Maurice Moss in The IT Crowd.\n\nAyoade was born an only child to a Norwegian mother, Dagny (née Baassuik), and a Nigerian father, Layide Ade Laditi Ayoade. Ayoade studied at St. Joseph's College in Ipswich, Suffolk and later studied law at St Catharine's College, Cambridge (1995–1998) where he won the Martin Steele Prize for play production and became president of the prestigious Footlights during 1997 -1998.\n\nWhile in Footlights, Ayoade acted in and wrote many shows. He and Footlights vice-president John Oliver wrote two pantomimes together: Sleeping Beauty, and Grimm Fairy Tales. Ayoade acted in both Footlights' 1997 and 1998 touring shows: Emotional Baggage and Between a Rock and a Hard Place (directed by Cal McCrystal).\n\nOn 8 September 2007 he married the actress Lydia Fox. They live in Gipsy Hill, South London.\n\nDescription above from the Wikipedia article Richard Ayoade, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Richard Ayoade	1977-06-12	No data.	2
29222	http://image.tmdb.org/t/p/w185/l0nzNkwTTT4a7QDC3HzYQSYsyXY.jpg	Zachary David Alexander "Zac" Efron (born October 18, 1987) is an American actor, singer, and dancer. He began acting professionally in the early 2000s, and became known to young audiences after his roles in the Disney Channel Original Movie High School Musical, the WB series Summerland, and the 2007 film version of the Broadway musical Hairspray. In 2007, before the release of High School Musical 2, Rolling Stone declared him the "poster boy for tweenyboppers" and featured him in their late August 2007 issue. Efron has since starred in the films 17 Again, Me and Orson Welles, and Charlie St. Cloud, and is due to star in New Year's Eve and The Lucky One.\n\nDescription above from the Wikipedia article Zac Efron, licensed under CC-BY-SA, full list of contributors on Wikipedia​	Zac Efron	1987-10-18	No data.	2
505710	http://image.tmdb.org/t/p/w185/6WPolY7Wd3GMiuN1dPxYZX7liik.jpg	Zendaya Maree Stoermer Coleman, known simply as Zendaya, is an American actress, singer and dancer. She began performing at an early age with the dance group Future Shock Oakland, the California Shakespeare Theater in Orinda, and as part of her studies at the Oakland School for the Arts and Cal Shakes Summer Conservatory Program. While she was in her early teens, she embarked on her entertainment career, graduating from modeling work for Macy's and Old Navy to appearing in the video for Kidz Bop's version of Katy Perry's hit single, "Hot N Cold".\n\nLate in 2009, she auditioned for the Disney Channel series eventually known as "Shake It Up!", landing the role of Rocky Blue. Several of the songs she performed on the show were released as singles, including 2011's "Watch Me," a duet with her co-star Bella Thorne that charted at number 86 on the Billboard Hot 100. That year, she also released the single "Swag It Out". Zendaya parlayed her "Shake It Up!" success into a role in the 2012 Disney Channel original movie Frenemies alongside Thorne, and hosting Make Your Mark: The Ultimate Dance Off 2011. That year, more of Zendaya's songs were featured on the second season of "Shake It Up!" and the soundtrack Shake It Up: Live 2 Dance. After signing a deal with Disney imprint Hollywood Records, she began work on her first solo album.\n\nEarly in 2013, Zendaya was cast on the sixteenth season of ABC's "Dancing with the Stars", becoming the show's youngest contestant at 16 and placing runner-up. That July, "Shake It Up!" concluded, and in the following months, the book Between U and Me and her debut album Zendaya arrived. The album's lead single "Replay" was released on July 16, 2013, reached number 40 on the Billboard Hot 100, number 18 in New Zealand, and was certified platinum by the RIAA on January 30, 2014. The self-titled debut album was released on September 17 and peaked at #51 on the Billboard 200. In 2017, Zendaya played Michelle 'MJ' Jones in Spider-Man: Homecoming.	Zendaya	1996-09-01	No data.	1
55536	http://image.tmdb.org/t/p/w185/qVb4VmZRwcANDuzhXjVjTlQ761x.jpg	Melissa McCarthy (born August 26, 1970) is an American actress known most for her portrayal of chef Sookie St. James, Lorelai Gilmore's best friend, on the television series Gilmore Girls, and currently as the title character Molly Flynn on the CBS sitcom Mike &amp; Molly.\n\nDescription above from the Wikipedia article Melissa McCarthy, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Melissa McCarthy	1970-08-26	No data.	1
94098	http://image.tmdb.org/t/p/w185/rBnhe5vhNPnhRUdtYahBWx90fJM.jpg	Gillian Jacobs (born October 20, 1982) is an American film, theatre and television actress, best known for her role as Britta Perry on the NBC comedy series Community.\n\nJacobs was born in Pittsburgh, Pennsylvania. Her mother, Martina Magenau Jacobs, was a Carnegie Mellon University director of alumni relations at the Heinz College. Her father, William F. Jacobs Jr., was an investment banker.She was raised in the Pittsburgh suburb of Mt. Lebanon. She is of French, German, Irish, and Scottish descent. Her family owned the Jackson Koehler Eagle Brewery, established in 1847 in Erie, Pennsylvania, where her grandfather, John Martin Magenau Jr., served as President and CEO until its closure in 1978.\n\nJacobs began studying acting at the age of eight, and attended acting classes on Saturdays at the Pittsburgh Playhouse while growing up.She performed with the Pittsburgh Public Theater, where she was a perennial contender in the Public's Shakespeare Monologue Contest, leading her to be cast as Titania in its production of A Midsummer Night's Dream. After graduating from Mt. Lebanon High School in 2000, Jacobs moved to New York City, New York to attend the Juilliard School, where she was a member of the Drama Division's Group 33. She graduated with a bachelor's degree in 2004.	Gillian Jacobs	1982-10-20	No data.	1
84482	http://image.tmdb.org/t/p/w185/yFa8XsiUIGZJtmF6Td8CuEqVwMv.jpg	From Wikipedia, the free encyclopedia.  Luke Aaron "Luke" Benward (born May 12, 1995) is an American teen actor and singer, best known for his starring role as William "Billy" Forrester in How to Eat Fried Worms and as Charles "Charlie" Tuttle in the 2008 Disney Channel Original Movie, Minutemen. He also played the role of "Nicky" in Mostly Ghostly: Who Let the Ghosts Out? and played Steven "Stevie" Dewberry in the film Because of Winn-Dixie. At the age 7, he appeared in Martina McBride's music video for "Concrete Angel".\n\nDescription above from the Wikipedia article Luke Benward, licensed under CC-BY-SA,full list of contributors on Wikipedia.	Luke Benward	1995-05-12	No data.	2
2283	http://image.tmdb.org/t/p/w185/omGlTJF2IW5r3L3c5y0qkCt3hFr.jpg	Stanley Tucci (born November 11, 1960) is an American actor, writer, film producer and film director. He has been nominated for several notable film awards, including an Academy Award for Best Supporting Actor, for his performance in The Lovely Bones (2009).\n\nDescription above from the Wikipedia article Stanley Tucci, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Stanley Tucci	1960-11-11	No data.	2
7090	http://image.tmdb.org/t/p/w185/8h3ThicYhj6fEMSMtSdzFXrUyx2.jpg	From Wikipedia, the free encyclopedia.\n\nAllen Kelsey Grammer (born February 21, 1955) is a 5-time Emmy Award-winning American actor and comedian. He is most widely known for his two-decade portrayal of psychiatrist Dr. Frasier Crane in the NBC sitcoms Cheers and Frasier. He has been nominated for fourteen Emmys, including one for playing his character on three sitcoms (the third being a guest appearance on Wings), as well as portraying the part on an episode of The John Larroquette Show, and has also worked as a television producer, director, writer, and as a voice artist. He has received many accolades for his role as the voice of Sideshow Bob on The Simpsons.\n\nDescription above from the Wikipedia article Kelsey Grammer, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Kelsey Grammer	1955-02-21	No data.	2
1007683	http://image.tmdb.org/t/p/w185/dQ5cqeYLlYl3tZjIXJAPuuAwMOt.jpg	Jack Reynor (born January 23, 1992) is an Irish actor. Notable roles include a lead character in Lenny Abrahamson's critically acclaimed Irish film What Richard Did (2012), for which he won an IFTA Award for Best Film Actor, in Transformers: Age of Extinction, Gerard Barrett's film Glassland where Reynor won the World Cinema Dramatic Special Jury Award for Acting at the Sundance Film Festival, in Macbeth and lead role in Irish film Sing Street.	Jack Reynor	1992-01-01	No data.	2
76961	http://image.tmdb.org/t/p/w185/hIldnp3pj3LeDq1rVfGgVy4a7cT.jpg	From Wikipedia, the free encyclopedia.\n\nDemián Bichir Nájera (August 1, 1963, height 5' 10" (1,78 m)) is a Mexican actor. Both of his parents, Alejandro Bichir and Maricruz Nájera, and brothers Odiseo and Bruno Bichir are actors. He was married to singer Lisset Gutiérrez.\n\nHe started his acting career at the age of 14 in the telenovela Rina with Ofelia Medina. His second acting role was as an adult in Vivir enamorada both telenovelas were during his years with Televisa. The following year he obtained a role in his first movie, the American production Choices of the Heart. He then continued his acting roles in telenovelas with film productions of Mexico, Spain and the United States. His movie Sexo, pudor y lágrimas (1999) broke box-office records in Mexico becoming the #1 movie in the history of Mexican cinema until El crimen del Padre Amaro. The MTV Movie Awards-México created a special category "Mejor Bichir en una Película" ("Best Bichir in a movie") because of the many films the Bichir siblings act in every year. He earned this award for Bendito infierno, in which he co-stars with Victoria Abril, Penélope Cruz and Gael García Bernal. His American debut occurred when he depicted Fidel Castro in Steven Soderbergh's 2008 biopic Che, on the life of revolutionary Che Guevara.\n\nRecently he has been exposed to a wider American audience with his recurring role as Esteban Reyes, the corrupt mayor of Tijuana and love interest of Nancy Botwin in the fourth, fifth and sixth seasons of the Showtime comedy series Weeds.	Demián Bichir	1963-08-01	No data.	2
19394	http://image.tmdb.org/t/p/w185/h7xxQ7jVPBy5jjOsE89V3LSAkns.jpg	Idina Menzel (/ɪˈdiːnə mɛnˈzɛl/; born Idina Kim Mentzel; May 30, 1971) is an American actress, singer, and songwriter. She rose to prominence for her performance as Maureen Johnson in the Broadway musical Rent, a role which she reprised for the 2005 feature film adaptation. In 2004, she won the Tony Award for originating the role of Elphaba in the Broadway blockbuster Wicked. In 2014, she will be returning to Broadway in the musical If/Then. Menzel is also known for her portrayal of Shelby Corcoran, the biological mother of Lea Michele's character Rachel Berry, on the Fox musical comedy-drama series Glee, and as the voice of snow queen Elsa in the Disney animated film, Frozen.	Idina Menzel	1971-05-30	No data.	1
221611	http://image.tmdb.org/t/p/w185/xkFr1vd1pO2Ls2gQxxuMd1mgrfL.jpg	Jonathan Drew Groff (born March 26, 1985) is an American actor and singer.\n\nGroff rose to prominence in 2006 for his performance in the lead role of Melchior Gabor in the original Broadway production of Spring Awakening, for which he was nominated for the Tony Award for Best Actor in a Musical. He returned to Broadway in 2015 to play the role of King George III in Hamilton, a performance for which he earned a nomination for the Tony Award for Best Featured Actor in a Musical. He also appeared on the cast recording, which won the Grammy Award for Best Musical Theater Album.\n\nGroff is also known for his many television appearances, starring as Ian Todd in the Starz political drama Boss and as Patrick Murray in the HBO drama series Looking. He also received critical acclaim for his recurring role of Jesse St. James in the Fox musical-comedy series Glee. He also voiced the role of Kristoff in Walt Disney Animation Studios' 2013 film Frozen.	Jonathan Groff	1985-03-26	No data.	2
22970	http://image.tmdb.org/t/p/w185/xuB7b4GbARu4HN6gq5zMqjGbkwF.jpg	Peter Dinklage (born June 11, 1969) is an American film, television and theater actor. Since his breakout role in the 2003 film The Station Agent, he has acted in Elf, Underdog, Find Me Guilty, the 2007 Death at a Funeral film and the 2010 remake, and The Chronicles of Narnia: Prince Caspian. Since 2011 he has starred in the HBO series Game of Thrones, based on George R.R. Martin's series of novels A Song of Ice and Fire.\n\nDescription above from the Wikipedia article Peter Dinklage, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Peter Dinklage	1969-06-11	No data.	2
3753	http://image.tmdb.org/t/p/w185/tIUO3sO3wIuxGNAlZ1c7zMySln3.jpg	From Wikipedia, the free encyclopedia\n\nGiancarlo Giannini (born 1 August 1942) is an Italian actor and dubber.\n\nGiannini was born La Spezia, Liguria, Italy. He studied at the Accademia Nazionale d'Arte Drammatica in Rome, and made his film debut in a small part in Fango sulla metropoli in 1965. He appeared in supporting roles in Anzio and The Secret of Santa Vittoria, and starred in the original version of Swept Away. In 1971, he appeared in E le stelle stanno a guardare, a television adaptation of A. J. Cronin's novel, The Stars Look Down.\n\nIn 1976, he starred in Seven Beauties, for which he was nominated for the Academy Award for Best Actor, which is unusual in that his performance was given entirely in Italian. He dubbed Jack Nicholson's voice in the Italian release of both The Shining and Batman; he is the official Italian dubber of Al Pacino. His fluency in English has brought him a number of featured roles in Hollywood productions, most notably as Inspector Pazzi in Hannibal. He has also appeared in A Walk in the Clouds and Man on Fire.\n\nGiannini's best-known starring roles have been in films directed by Lina Wertmuller. In addition to Swept Away and Seven Beauties, he also appeared in The Seduction of Mimi, Love and Anarchy, A Night Full of Rain, and Francesca e Nunziata.\n\nHe played the role of the protective father, Alberto Aragón, in A Walk in the Clouds in 1995. He played the Padishah Emperor Shaddam IV in the 2000 Dune miniseries. In 2002, he starred in the horror film Darkness.\n\nPerhaps his best-known recent role is as French agent René Mathis in the 21st and 22nd James Bond films, Casino Royale and the sequel, Quantum of Solace.\n\nGiannini has a son, Adriano Giannini, who is also an actor and dubber.\n\nDescription above from the Wikipedia article Giancarlo Giannini, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Giancarlo Giannini	1942-08-01	No data.	2
4139	http://image.tmdb.org/t/p/w185/fVuxSZ8VoPxRJDm3VohtDDz5x8l.jpg	​From Wikipedia, the free encyclopedia\n\nThomas Roy "Tom" Skerritt (born August 25, 1933) is an American actor who has appeared in over 40 films and more than 200 television episodes since 1962.\n\nDescription above from the Wikipedia article Tom Skerritt, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Tom Skerritt	1933-08-25	No data.	2
5047	http://image.tmdb.org/t/p/w185/8s31kdotRrghkH4DkxpRZCmELYd.jpg	Veronica A. Cartwright (born 20 April 1949) is an English-born actress who has worked mainly in American film and television.\n\nDescription above from the Wikipedia article Veronica Cartwright, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Veronica Cartwright	1949-04-20	No data.	1
5048	http://image.tmdb.org/t/p/w185/nDSav6v9Z8dSJSXoooT2g0LjbCd.jpg	Harry Dean Stanton (July 14, 1926 - September 15, 2017) was an American actor, musician, and singer. Stanton's career spanned over fifty years, which saw him star in such films as Cool Hand Luke, Kelly's Heroes, Dillinger, Alien, Repo Man, The Last Temptation of Christ, Wild at Heart, The Green Mile and The Pledge. In the late 2000s, he played a recurring role in the HBO television series Big Love.  Mr. Stanton died on September 15, 2017. He was 91.\n\nDescription above from the Wikipedia article Harry Dean Stanton, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Harry Dean Stanton	1926-07-14	2017-09-15	2
5049	http://image.tmdb.org/t/p/w185/rpuH2YRLpxJjMxHq4T1QdOSVtlN.jpg	John Vincent Hurt, CBE (22 January 1940 - 25 January 2017) was an English actor, known for his leading roles as John Merrick in The Elephant Man, Winston Smith in Nineteen Eighty-Four, Mr. Braddock in The Hit, Stephen Ward in Scandal and Quentin Crisp in The Naked Civil Servant, Caligula in the television series, I, Claudius (TV series), and An Englishman in New York. Recognizable for his distinctive rich voice, he has also enjoyed a successful voice acting career, starring in films such as Watership Down, The Lord of the Rings and Dogville, as well as BBC television series Merlin. Hurt initially came to prominence for his role as Richard Rich in the 1966 film A Man for All Seasons, and has since appeared in such popular motion pictures as: Alien, Midnight Express, Rob Roy, V for Vendetta, Indiana Jones and the Kingdom of the Crystal Skull, the Harry Potter film series and the Hellboy film series. Hurt is one of England's best-known, most prolific and sought-after actors, and has had a versatile film career spanning six decades. He is also known for his many Shakespearean roles. Hurt has received multiple awards and honours throughout his career including three BAFTA Awards and a Golden Globe Award, with six and two nominations respectively, as well as two Academy Award nominations. His character's final scene in Alien is consistently named as one of the most memorable in cinematic history.	John Hurt	1940-01-22	2017-01-25	2
980	http://image.tmdb.org/t/p/w185/1QQea9t0JkRVVVbgVtpGAQuf0x5.jpg	Vincent Peter "Vinnie" Jones (born 5 January 1965) is a retired British footballer and film actor.\n\nJones represented and captained the Welsh national football team, having qualified via a Welsh grandparent. He also previously played for Chelsea and Leeds United. As a member of the "Crazy Gang", Jones won the 1988 FA Cup Final with Wimbledon. Jones appeared in the 7th and final series of UK gameshow Celebrity Big Brother finishing in 3rd place behind Dane Bowers and Alex Reid.\n\nHe has capitalised on his tough man image as a footballer and is known as an actor for his aggressive style and intimidating demeanour, often being typecast into roles as coaches, hooligans and violent criminals.\n\nDescription above from the Wikipedia article Vinnie Jones, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Vinnie Jones	1965-01-05	No data.	2
21594	http://image.tmdb.org/t/p/w185/foKh17RAUIhmfNgZ3TIvHJrNkDR.jpg	Frederick Christopher "Chris" Klein (born March 14, 1979) is an American movie actor. He is perhaps best known for playing Chris "Oz" Ostreicher in the 1999 film American Pie and its sequel American Pie 2.\n\nDescription above from the Wikipedia article Chris Klein (actor), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Chris Klein	1979-03-14	No data.	2
21403	http://image.tmdb.org/t/p/w185/tYiQ6Ift5S8ZVeWQ8f7CJnQLkT.jpg	Thomas Ian Nicholas (born July 10, 1980) is an American film actor, singer, musician, producer, director, and writer. Nicholas is best known for playing Henry Rowengartner in Rookie of the Year and Kevin Myers in American Pie, American Pie 2, and American Wedding.\n\nDescription above from the Wikipedia article Thomas Ian Nicholas, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Thomas Ian Nicholas	1980-07-10	No data.	2
21595	http://image.tmdb.org/t/p/w185/vZw7AEUOs9lbkS0lYzDyaFp9Tjv.jpg	Alyson Lee Hannigan (born March 24, 1974) is an American actress. She is best known for her roles as Willow Rosenberg in the television series Buffy the Vampire Slayer (1997–2003), Lily Aldrin on the CBS sitcom How I Met Your Mother (2005–2014) and Michelle Flaherty in the American Pie film series (1999–present).\n\nHannigan was born in Washington, D.C., the only child of Emilie (Posner) Haas, a real estate agent, and Al Hannigan, a truck driver. Her father is of Irish descent and her mother is Jewish. Her parents divorced when she was two and she was raised mostly by her mother in Atlanta, Georgia.\n\nHannigan married fellow Buffy the Vampire Slayer actor Alexis Denisof at Two Bunch Palms Resort in Desert Hot Springs, California, on October 11, 2003. The couple have two daughters, Satyana Marie Denisof, born March 24, 2009, and Keeva Jane Denisof, born May 23, 2012. Hannigan and her husband are godparents to Joss Whedon's son, Arden.\n\nDescription above from the Wikipedia article Alyson Hannigan, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Alyson Hannigan	1974-03-24	No data.	1
2712	http://image.tmdb.org/t/p/w185/uZvJIfVirbv32OK4nba5bMZ6t9G.jpg	Michael Connell Biehn (born July 31, 1956) is an American actor. He is best known for his roles in James Cameron's science fiction action films The Terminator as Kyle Reese, Aliens as Cpl. Dwayne Hicks, and The Abyss as Lt. Coffey. He has also acted in other genres in such films as Tombstone, The Rock, and Planet Terror. On television, Biehn appeared in the cast of the Emmy Award-winning 1980s television series Hill Street Blues.\n\nDescription above from the Wikipedia article  Michael Biehn, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Michael Biehn	1956-07-31	No data.	2
2713	http://image.tmdb.org/t/p/w185/fcRpgjonpH3WmPs0V63g7iP7Dbm.jpg	Linda Carroll Hamilton, born 26 September 1956, is an American actress best known for role as Sarah Connor in The Terminator and Terminator 2: Judgment Day; and for her television work as Catherine Chandler in the television series Beauty and the Beast, for which she was nominated for two Golden Globes and an Emmy. She also had a recurring role in the comedy television series Weeds and Chuck.	Linda Hamilton	1956-09-26	No data.	1
1818	http://image.tmdb.org/t/p/w185/6FuLfJh70aDUxggFuPC2oID5Mjg.jpg	Paul Edward Winfield (May 22, 1939 – March 7, 2004) was an American television, film, and stage actor. He was known for his portrayal of a Louisiana sharecropper who struggles to support his family during the Great Depression in the landmark film Sounder which earned him an Academy Award nomination. Winfield also portrayed Dr. Martin Luther King, Jr. in the television miniseries King, for which he was nominated for an Emmy Award.\n\nDescription above from the Wikipedia article  Paul Winfield, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Paul Winfield	1939-05-22	2004-03-07	2
15336	http://image.tmdb.org/t/p/w185/zeZmtK4EKK9R2r6bp2nTxMs3ByS.jpg	From Wikipedia, the free encyclopedia\n\nStephen Dougray Scott (born 25 November 1965) is a Scottish actor.\n\nDescription above from the Wikipedia article Dougray Scott, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Dougray Scott	1965-11-25	No data.	2
12206	http://image.tmdb.org/t/p/w185/hN1bWQ0Qe0DrA33Ch6TLKuIWs0.jpg	​From Wikipedia, the free encyclopedia.  \n\nRichard Roxburgh (born 23 January 1962) is an Australian AFI Award-winning actor who has starred in many Australian films and has appeared in supporting roles in a number of Hollywood productions, usually as villains.\n\nDescription above from the Wikipedia article Richard Roxburgh, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Richard Roxburgh	1962-01-01	No data.	2
934	http://image.tmdb.org/t/p/w185/ktuOAyUHM2u2YPPChH8gAArxJ7b.jpg	Russell Ira Crowe (born 7 April 1964) is a New Zealand-born Australian actor and musician. His acting career began in the late 1980s with roles in Australian television series including Police Rescue and Neighbours. In the early 1990s, Crowe's local prominence peaked when he won the Australian Film Industry Award for Best Actor for his portrayal of an inner-city skinhead in the Geoffrey Wright film, Romper Stomper. In the late 1990s, Crowe transferred his acting ambitions to the USA with his breakout role in L.A. Confidential (1997). Crowe won the Academy Award for Best Actor for Gladiator in 2001 and has received three Academy Award nominations for Best Actor in a Leading Role: The Insider (1999), Gladiator (2000) and A Beautiful Mind (2001). He is also co-owner of National Rugby League team the South Sydney Rabbitohs.\n\nDescription above from the Wikipedia article Russell Crowe, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Russell Crowe	1964-04-07	No data.	2
73421	http://image.tmdb.org/t/p/w185/cK0BTrAM1xcsto8kVvHhd9AV8dW.jpg	American film actor Joaquin Rafael Phoenix, born Joaquin Rafael Bottom has ventured behind the camera, directing music videos as well as producing movies and television shows. Phoenix recorded an album, the soundtrack to “Walk the Line”. He is also known for his work as a social activist, particularly as an advocate for animal rights. Phoenix's first acting jobs were guest appearances on two television shows with his brother River in Seven Brides for Seven Brothers (1982) and Backwards: The Riddle Of Dyslexia (1984). He made his big-screen debut in Space Camp (1986), playing the role of Max, after starring in an Alfred Hitchcock Presents episode "A very happy ending" the same year. His first starring role was in Russkies (1987). He later co-starred in Ron Howard's Parenthood (1989), in which he was credited as Leaf Phoenix.\n\nPhoenix served as one of the executive producers of a television show called 4Real, a half-hour series which showcase celebrity guests on global adventures "in order to connect with young leaders who are creating social and economic change." He is also listed as a producer on the movie We Own the Night. He has directed music videos for the following bands: Ringside, She Wants Revenge, People in Planes, Arckid, Albert Hammond Jr., and Silversun Pickups.	Joaquin Phoenix	1974-10-28	No data.	2
34	http://image.tmdb.org/t/p/w185/8TTxzpuvvpw2tB8xZBCDslYupNU.jpg	Michael T. "Mykelti" Williamson (born March 4, 1957) is an American actor best known for his role as Benjamin Buford (Bubba) Blue in the 1994 film Forrest Gump, as Detective Bobby "Fearless" Smith in the critically acclaimed but commercially unsuccessful crime drama Boomtown, and recently for appearing as the head of CTU for season 8 of the hit TV series 24.	Mykelti Williamson	1957-03-04	No data.	2
56679	http://image.tmdb.org/t/p/w185/oC56KKxXBufH182bw4QwtsZ5Jj6.jpg	Edwin Martel Basil Hodge (born January 26, 1985) is an American actor. Hodge is the older brother of actor Aldis Hodge.\n\n Hodge was born on January 26, 1985, in Jacksonville, Florida, to Aldis Hodge and Yolette Evangeline Richardson, but he was raised in New York.[3] Hodge's mother is from the state of Florida and his father is Dominican. He recently guest starred on an episode of the TNT series Leverage which stars his younger brother. He guest starred on an episode ofOne Tree Hill.  In 2013, Hodge played the role of the "Stranger" in The Purge. He then went on to act in the second Purge, titled The Purge: Anarchy, as well the 2014 horror film As Above, So Below.	Edwin Hodge	1985-01-26	No data.	2
9640	http://image.tmdb.org/t/p/w185/srOJahx4uOhfVfnNh2Ns9jDGkPX.jpg	Haley Joel Osment (born April 10, 1988) is an American actor. After a series of roles in television and film during the 1990s, including a small part in Forrest Gump playing the title character’s son, Osment rose to fame with his performance as Cole Sear in M. Night Shyamalan’s thriller film The Sixth Sense that earned him a nomination for Academy Award for Best Supporting Actor. He subsequently appeared in leading roles in several high-profile Hollywood films including Steven Spielberg's A.I. Artificial Intelligence and Mimi Leder's Pay it Forward. He made his Broadway debut in 2008 in a revival of American Buffalo, co-starring with John Leguizamo and Cedric the Entertainer.	Haley Joel Osment	1988-04-10	No data.	2
2680	http://image.tmdb.org/t/p/w185/3AAn53k39LIQtnCfVSxDPdIbhDd.jpg	From Wikipedia, the free encyclopedia.\n\nDonald Edward "Donnie" Wahlberg, Jr. (born August 17, 1969) is an American singer, actor and film producer. He is a member of the popular 1980s and 1990s boy band New Kids on the Block. His work background includes music, feature films, and television. Donnie has had featured roles in the Saw films, The Sixth Sense, Boomtown and Righteous Kill, also appearing in the award-winning World War II miniseries Band of Brothers. He is also known for currently starring in the critically successful series Blue Bloods.	Donnie Wahlberg	1969-08-17	No data.	2
21676	http://image.tmdb.org/t/p/w185/yA0fsFe7mq21rTRLJXmJTgxZD6D.jpg	Sharon Horgan is an Irish actress, writer, director and producer. She is best known for the comedy series Pulling and Catastrophe, both of which she starred in and co-wrote. Pulling was nominated for two BAFTA awards, and won two British Comedy Awards.\n\nDescription above from the Wikipedia article Sharon Horgan,\n\nlicensed under CC-BY-SA, full list of contributors on Wikipedia.	Sharon Horgan	1970-07-13	No data.	1
12073	http://image.tmdb.org/t/p/w185/sa8MMxXZrHgQ85hTAP11WS4N3ik.jpg	Michael John "Mike" Myers (born May 25, 1963) is a Canadian actor, comedian, screenwriter, and film producer of British parentage. He was a long-time cast member on the NBC sketch show Saturday Night Live in the late 1980s and the early 1990s and starred as the title characters in the films Wayne's World, Austin Powers, and the Shrek film series.\n\nDescription above from the Wikipedia article Mike Myers, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Mike Myers	1963-05-25	No data.	2
776	http://image.tmdb.org/t/p/w185/bsi706zdqs0KAPdOsqz6AkLNcFF.jpg	Edward "Eddie" Regan Murphy (born April 3, 1961) is an American actor, voice actor, film director, producer, comedian and singer.\n\nHe is the second-highest grossing actor in motion picture history. He was a regular cast member on Saturday Night Live from 1980 to 1984, and has worked as a stand-up comedian. He was ranked #10 on Comedy Central's list of the 100 Greatest Stand-ups of All Time. He has received Golden Globe Award nominations for Golden Globe Award for New Star of the Year - Actor for his performance in 48 Hrs and best actor in a comedy or musical for his performances in Beverly Hills Cop, Trading Places, and The Nutty Professor. In 2007, he won the Golden Globe for Best Supporting Actor for his portrayal of soul singer James "Thunder" Early in Dreamgirls, and received a nomination for the Academy Award for Best Supporting Actor for the same role. Murphy's work as a voice actor includes Thurgood Stubbs in The PJs, Donkey in the Shrek series and the dragon Mushu in Disney's Mulan. In some of his films, he plays multiple roles in addition to his main character, intended as a tribute to one of his idols Peter Sellers, who played multiple roles in Dr. Strangelove and elsewhere. Murphy has played multiple roles in Coming to America, Wes Craven's Vampire In Brooklyn, the Nutty Professor films (where he played the title role in two incarnations, plus his father, brother, mother, and grandmother), Bowfinger, and 2007's Norbit.	Eddie Murphy	1961-04-03	No data.	2
6941	http://image.tmdb.org/t/p/w185/ahFkUN9Sm8oF1txUHE5JcJ95Ere.jpg	Cameron Michelle Diaz (born August 30, 1972) is an American actress and former model. She rose to prominence during the 1990s with roles in the movies The Mask, My Best Friend's Wedding and There's Something About Mary. Other high-profile credits include the two Charlie's Angels films, voicing the character Princess Fiona in the Shrek series, Any Given Sunday, Knight and Day, The Holiday, The Green Hornet and Bad Teacher. Diaz has received four Golden Globe Award nominations for her performances in the movies, Being John Malkovich, Vanilla Sky, Gangs of New York, and There's Something About Mary for which she also won the New York Film Critics Best Lead Actress Award. She is also a BAFTA Nominee. In 2013, Diaz was named the highest paid actress over 40 in Hollywood.\n\nCameron Diaz was born in San Diego, California. Her mother, Billie Joann (née Early), is an import-export agent, and her father, Emilio Luis Diaz (1949–2008), worked for the California oil company UNOCAL for more than 20 years as a field gauger. Diaz has an older sister, Chimene. Her father's family were Cuban (of Spanish descent), and settled in Tampa's Ybor City, later moving to California, where Emilio was born. Her mother has English, German, and Scots-Irish ancestry. Diaz was raised in Long Beach, California, and attended Long Beach Polytechnic High School	Cameron Diaz	1972-08-30	No data.	1
62050	http://image.tmdb.org/t/p/w185/98Ba48wIcnOci21yvkWfNiMmni0.jpg	From Wikipedia, the free encyclopedia.\n\nDonna Paige O'Hara (born May 10, 1956) is an American Broadway singer and actress best known for her voicework as Belle in Disney's Beauty and the Beast.\n\nDescription above from the Wikipedia article Paige O'Hara, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Paige O'Hara	1956-05-10	No data.	1
108055	http://image.tmdb.org/t/p/w185/iiX9ytEkszJGOwcZ0qFVClfjzeJ.jpg	From Wikipedia, the free encyclopedia.\n\nRichard White (born August 4, 1953 in Oak Ridge, Tennessee) is an American actor, opera singer and voice actor. He is best known for voicing the character of Gaston in Disney's Beauty and the Beast and in the TV series House of Mouse. His vocal range is low tenor-baritone.\n\nHe also played the character of Gaylord Ravenal in Show Boat at Paper Mill Playhouse and Robert Mission in The New Moon, at the New York City Opera. White also created the title role of Erik in the world premiere of Arthur Kopit and Maury Yeston's musical, Phantom and sings the role on the cast recording.\n\nWhite has performed on Broadway as Joey in The Most Happy Fella and has had roles in New York revivals of Brigadoon, South Pacific, and Auntie Mame.\n\nHe was also considered for the voice of Governor Ratcliffe in the 1995 Disney animated feature Pocahontas, but the producers realized that viewers would hear his voice and think of Gaston. David Ogden Stiers, White's co-star from Beauty and the Beast, provided Ratcliffe's voice.\n\nDescription above from the Wikipedia article Richard White(actor), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Richard White	1953-08-04	No data.	2
11662	http://image.tmdb.org/t/p/w185/67wSoVHxlOqtRhh3KJFBYf2qrDJ.jpg	Jason Michael Lee (born April 25, 1970) is an American actor and skateboarder known for his role as the title character on the NBC television series My Name is Earl, his portrayal of Syndrome in the film The Incredibles, his role as Dave Seville in the Alvin and the Chipmunks films, and his work with director Kevin Smith.\n\nDescription above from the Wikipedia article Jason Lee (actor), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jason Lee	1970-04-25	No data.	2
725	http://image.tmdb.org/t/p/w185/95n3bLxEv1kRCwyfpA30J1IEc7N.jpg	Jerome Bernard "Jerry" Orbach (October 20, 1935 – December 28, 2004) was an American actor and singer, well known for his starring role as Detective Lennie Briscoe in the Law & Order television series and as the voice of Lumière in Disney's Beauty and the Beast, as well as for being a noted musical theatre star; his prominent roles included originating the character of El Gallo in The Fantasticks, the longest-running musical play in history, as Chuck Baxter in the original production of Promises, Promises (for which he won a Tony Award), Julian Marsh in 42nd Street, and Billy Flynn in the original production of Chicago.\n\nDescription above from the Wikipedia article Jerry Orbach, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jerry Orbach	1935-10-20	2004-12-28	2
28010	http://image.tmdb.org/t/p/w185/zngM0eXq6RuYZmdocsAY2AMKUja.jpg	From Wikipedia, the free encyclopedia\n\nDavid Ogden Stiers (October 31, 1942 – March 3, 2018) is an American actor, director, vocal actor, and musician, noted for his role in the television series MAS*H as Major Charles Emerson Winchester III and the science fiction drama The Dead Zone as Reverend Gene Purdy. He was also known for his character Attorney Michael Reston in the Perry Mason TV Movies.\n\nDescription above from the Wikipedia article David Ogden Stiers, licensed under CC-BY-SA, full list of contributors on Wikipedia.	David Ogden Stiers	1942-10-31	2018-03-03	2
18269	http://image.tmdb.org/t/p/w185/n8VOWXp94nhIEo5nS9o6bOpUHiN.jpg	The son of a Canadian travel executive who frequently moved his family, Brendan can claim affinity with Ottawa, Indianapolis, Detroit, Seattle, London and Rome. His early exposure to theatre, particularly in London, led him to Seattle's Cornish Institute. After graduation he found a minor role as Sailor #1 in River Phoenix's Dogfight (1991), then somewhat more substantial roles in Encino Man (1992) and School Ties (1992). He expresses a preference for playing "fish out of water" men. Five more years of supporting work led finally to the title role in George of the Jungle (1997), a role which fully utilized his charm and beefy good looks, as well as offering him a chance to show off his comic talents. He describes this role as the one which dramatically altered his career. Critical raves for his role in Gods and Monsters (1998) pointed to yet another dimension to his dramatic persona.	Brendan Fraser	1968-12-03	No data.	2
1291350	http://image.tmdb.org/t/p/w185/ouuo4ulVO9j6T8JixFp4lWTVdtd.jpg	Anthony Revolori (born April 28, 1996) is an American actor who was born and raised in Anaheim, California. He is of Guatemalan descent. His father, Mario Quinonez, was an actor when he was young. He is the younger brother of actor Mario Revolori. He made his feature film debut in The Perfect Game (2009), and his first major role came in 2014 when he portrayed Zero Moustafa in Wes Anderson's acclaimed film The Grand Budapest Hotel.	Tony Revolori	1996-04-28	No data.	2
1164	http://image.tmdb.org/t/p/w185/vXurMA6XOAREPEyW6QRu5xKfGIT.jpg	From Wikipedia, the free encyclopedia.\n\nFahrid Murray Abraham (born October 24, 1939) is an American actor. He became known during the 1980s after winning the Academy Award for Best Actor for his role as Antonio Salieri in Amadeus. He has appeared in many roles, both leading and supporting, in films such as All the President's Men and Scarface. He is also known for his television and theatre work.	F. Murray Abraham	1939-10-24	No data.	2
8789	http://image.tmdb.org/t/p/w185/yJlm02FobTETwbyaCTOOU26OfmS.jpg	​From Wikipedia, the free encyclopedia.  \n\nMathieu Amalric (born 25 October 1965) is a French actor and film director, perhaps best known internationally for his performance in The Diving Bell and the Butterfly, for which he drew critical acclaim. He also has won the Étoile d'or and the Lumière Award.\n\nDescription above from the Wikipedia article Mathieu Amalric, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Mathieu Amalric	1965-10-25	No data.	2
84214	http://image.tmdb.org/t/p/w185/xazf3pX3fbScXvi8WojuxsGOJX2.jpg	Taylor Daniel Lautner was born on February 11th, 1992 in Grand Rapids, Michigan, US. He is best known for his role as werewolf Jacob Black in the film adaptations of the Twilight novels written by Stephenie Meyer. The franchise brought him worldwide stardom at the age of 16 and the five films between 2008 and 2012 grossed over $3.3 billion in worldwide receipts. 	Taylor Lautner	1992-02-11	No data.	2
21029	http://image.tmdb.org/t/p/w185/yA94PNmskOX0toimPss6aTHPgKO.jpg	William Albert "Billy" Burke (born November 25, 1966) is an American actor. He is known for his role as Charlie Swan in Twilight, The Twilight Saga: New Moon and the 2010 film The Twilight Saga: Eclipse. He is also known for his role as Gary Matheson in the second season of 24.\n\nDescription above from the Wikipedia article Billy Burke (actor), licensed under CC-BY-SA, full list of contributors on Wikipedia	Billy Burke	1966-11-25	No data.	2
1004	http://image.tmdb.org/t/p/w185/UvPalkz4ynJJrTcrbpfD05gVoO.jpg	​From Wikipedia, the free encyclopedia.\n\nDaniel Louis "Danny" Aiello, Jr.  (born June 20, 1933) is an American actor who has appeared in numerous motion pictures, including Once Upon a Time in America, Ruby, The Godfather: Part II, Hudson Hawk, The Purple Rose of Cairo, Moonstruck, Léon, Two Days in the Valley, and Dinner Rush. He had a pivotal role in the 1989 Spike Lee film Do the Right Thing, earning a nomination for a Best Supporting Actor Academy Award for his portrayal of Salvatore 'Sal' Frangione, the pizzeria owner, and also as Don Domenico Clericuzio in the miniseries Mario Puzo's The Last Don.\n\nDescription above from the Wikipedia article Danny Aiello, licensed under CC-BY-SA, full list of contributors on Wikipedia	Danny Aiello	1933-06-20	No data.	2
45827	http://image.tmdb.org/t/p/w185/vtISAJd1hFxst09mNUuM59jQbyV.jpg	Ashley Michele Greene (born February 21, 1987) is an American actress and model, best known for playing Alice Cullen in the film adaptations of Stephenie Meyer's Twilight novels.\n\nDescription above from the Wikipedia article Ashley Greene, licensed under CC-BY-SA, full list of contributors on Wikipedia​	Ashley Greene	1987-02-21	No data.	1
2219	http://image.tmdb.org/t/p/w185/l8e9we9RmTsYgNpx4xqQIlMplLl.jpg	Tobias Vincent "Tobey" Maguire (born June 27, 1975) is an American actor and producer. He began his career in the 1980s, and has since become best known for his role as Peter Parker/Spider-Man in the 2002 - 2007 Spider-Man films.\n\nDescription above from the Wikipedia article Tobey Maguire, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Tobey Maguire	1975-06-27	No data.	2
57599	http://image.tmdb.org/t/p/w185/c7iqFLkgNiTMAS9xGw0GlfJcm4H.jpg	Seann William Scott (born October 3, 1976) is an American actor and comedian. He is most widely known for having played Steve Stifler in the American Pie series of teen sex comedy films. He is also known for his roles in the films Final Destination, Road Trip, Dude, Where's My Car?, Evolution, The Rundown, The Dukes of Hazzard, Role Models, and Cop Out.\n\nDescription above from the Wikipedia article Seann William Scott, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Seann William Scott	1976-10-03	No data.	2
205	http://image.tmdb.org/t/p/w185/hQjeM4HUa6eC9dcfVWGeCPhskHy.jpg	Kirsten Caroline Dunst (born April 30, 1982) is an American actress, singer and model. She made her film debut in Oedipus Wrecks, a short film directed by Woody Allen for the anthology New York Stories (1989). At the age of 12, Dunst gained widespread recognition playing the role of vampire Claudia in Interview with the Vampire (1994), a performance for which she was nominated for a Golden Globe Award for Best Supporting Actress. The same year she appeared in Little Women, to further acclaim. Dunst achieved international fame as a result of her portrayal of Mary Jane Watson in the Spider-Man trilogy (2002–07). Since then her films have included the romantic comedy Wimbledon (2004), the romantic science fiction Eternal Sunshine of the Spotless Mind (2004) and Cameron Crowe's tragicomedy Elizabethtown (2005). She played the title role in Sofia Coppola's Marie Antoinette (2006) and starred in the comedy How to Lose Friends &amp; Alienate People (2008). She won the Best Actress Award at the Cannes Film Festival in 2011 for her performance in Lars von Trier's Melancholia.\n\nIn 2001, Dunst made her singing debut in the film Get Over It, in which she performed two songs. She also sang the jazz song "After You've Gone" for the end credits of the film The Cat's Meow (2001).\n\nDescription above from the Wikipedia article Kirsten Dunst, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Kirsten Dunst	1982-04-30	No data.	1
7673	http://image.tmdb.org/t/p/w185/10JhoIaKHQGG0DNbQECTI4gHNn9.jpg	Bonnie Bedelia Culkin (born March 25, 1948) is an American actress best known for her supporting roles in the action films Die Hard and Presumed Innocent. She is currently starring in the NBC series Parenthood.\n\nDescription above from the Wikipedia article Bonnie Bedelia, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Bonnie Bedelia	1948-03-25	No data.	1
7672	http://image.tmdb.org/t/p/w185/dZtIIOI0PpD3dmTVfUOWiQzOY28.jpg	Reginald VelJohnson (born August 16, 1952) is an American actor of film, stage and television, well known for his role as Carl Winslow on the sitcom Family Matters, where he was the only cast member to appear in every single episode. He also portrayed LAPD Sgt. Al Powell in the film Die Hard (1988), its sequel Die Hard 2 (1990), and the Chuck episode "Chuck Versus Santa Claus" (2008).\n\nDescription above from the Wikipedia article Reginald VelJohnson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Reginald VelJohnson	1952-08-16	No data.	2
543505	http://image.tmdb.org/t/p/w185/7X6pb4SDs9RoXi5gI4Nl8ZiPO4l.jpg	Jake Johnson was born on May 28, 1978 in Evanston, Illinois, USA. He is an actor and producer, known for New Girl (2011), Let's Be Cops (2014) and 21 Jump Street (2012). He is married to Erin Payne.\n\nMember of the Sunday Men's Basketball League.\n\nMember of The Interstate 5 Tennis Association.\n\nHis father is from an Ashkenazi Jewish family (from Hungary, Poland, and Russia). His mother's ancestry is English, Irish, and Polish Catholic.\n\nMother Eve Johnson. Father Ken Weinberger. Brother Dan Johnson. Sister Rachel Johnson. Raised by a single mother and took her last name during high school.\n\nDropped out of high school during his sophomore year, returned the following year.\n\nNamed after his Uncle Mark Johnson, who died at the age of 26 in a motorcycle accident in 1977.\n\nFan of NFL's Chicago Bears.\n\nChicago native.	Jake Johnson	1978-05-28	No data.	2
17306	http://image.tmdb.org/t/p/w185/gSBxQWda0T67hrK3pNyqreRYoyw.jpg	Zachary Quinto is a american actor best known for his roles as the evil Sylar on TV's Heroes and as Spock in the Star Trek Reboot.  In 1999 Quinto graduated from Carnegie Melon's School of Drama, afterwards beginning his career as a television actor.  In 2003, he landed a recurring role on 24, appearing as a computer specialist working for CTU. Later, in 2006, he began working on Heroes, playing the evil serial killer Sylar.   In 2009 he played Spock in Star Trek, a role which he was lauded for bringing his own spin to a decades old character and a role he is set to reprise in the second film in the new series.   Like his costar Chris Pine, Zachary has taken some time to perform on stage, performing in various productions including Shakespeare's Much Ado About Nothing.  Quinto is signed up to play George Gershwin in the Steven Spielberg directed Biopic about the composer. 	Zachary Quinto	1977-06-02	No data.	2
1372	http://image.tmdb.org/t/p/w185/tHYOUO33K7iaDw8nXyqRvDIkVuM.jpg	He is known for playing Éomer in the second and third installments of Peter Jackson's The Lord of the Rings trilogy, Dr. Leonard "Bones" McCoy in the 2009 film Star Trek and Julius Caesar on Xena: Warrior Princess. He played Vaako in The Chronicles of Riddick, the Russian assassin Kirill in The Bourne Supremacy, and Ghost in Pathfinder and won acclaim for his performances in New Zealand films The Price of Milk and Out of the Blue.\n\nHis father, a German immigrant, owned a leather goods retail store, and his mother once worked for Film Facilities in Wellington, through which the young Urban was exposed to New Zealand cinema and developed an interest in the film industry. Urban attended St Mark's Church School, where he showed an early love for public performance. His first acting role came at age eight, when he had a single line in one episode of the New Zealand television series 'Pioneer Woman', but he did not act professionally again until after high school.\n\nHe attended Wellington College in 1990, then Victoria University of Wellington in the Bachelor of Arts programme for one year, but left to pursue his acting career. Over the next few years, he landed several theatre roles in the Wellington area, and eventually he moved to Auckland, where he was offered many guest roles in local shows (one of which was playing a heroin addict in the police drama Shark in the Park). The role which launched him to local fame was that of gay paramedic Jamie Forrest in the hit New Zealand TV series Shortland Street. He appeared on the show for the 1993–1994 season.\n\nUrban then moved to Bondi Beach, Sydney, Australia in 1995, returning to New Zealand the following year.	Karl Urban	1972-06-07	No data.	2
670	http://image.tmdb.org/t/p/w185/nfkHcZkAIGEyJ0m2jtOKaPyqNxu.jpg	From Wikipedia, the free encyclopedia.  Benjamin "Ben" Burtt, Jr. (born July 12, 1948) is an American sound designer for the films Star Wars (1977), Invasion of the Body Snatchers (1978), Raiders of the Lost Ark (1981), E.T. the Extra-Terrestrial (1982), Indiana Jones and the Last Crusade (1989) and WALL-E (2008). He is also a film editor and director, screenwriter, and voice actor.  He is most notable for creating many of the iconic sound effects heard in the Star Wars film franchise, including the "voice" of R2-D2, the lightsaber hum and the heavy-breathing sound of Darth Vader.  Description above from the Wikipedia article Ben Burtt, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Ben Burtt	1948-07-12	No data.	2
20753	http://image.tmdb.org/t/p/w185/j1jWdqmklfIH4hpAbw1DK0gPMX0.jpg	Fred Willard (born September 18, 1939) is an American comedian, actor and voice over actor known for his improvisational comedy skills. He is known for his roles in the Christopher Guest mockumentary films This is Spinal Tap, Waiting for Guffman, Best in Show, A Mighty Wind, and For Your Consideration as well as television series D.C. Follies. He is an alumnus of The Second City comedy troupe. He received three Emmy nominations for his recurring role on the TV series Everybody Loves Raymond as Robert Barone's father-in-law, Hank MacDougall.	Fred Willard	1939-09-18	No data.	2
19274	http://image.tmdb.org/t/p/w185/aQc8O52P4vWDRfuxCLsz9rvnwf3.jpg	Seth Rogen (born April 15, 1982) is a Canadian actor, comedian, voice artist, screenwriter, and film producer. Rogen began his career doing stand-up comedy for four years during his teens, coming in second place in the Vancouver Amateur Comedy Contest in 1998. While still living in his native Vancouver, he landed a supporting role in Freaks and Geeks. Shortly after Rogen moved to Los Angeles for his role, Freaks and Geeks was canceled after one season due to poor ratings. He then got a part on the equally short-lived Undeclared, which also hired him as a staff writer. After landing a job as a staff writer on the final season of Da Ali G Show, for which Rogen and the other writers received an Emmy nomination, he was guided by film producer Judd Apatow toward a film career. Rogen was cast in a major supporting role and credited as a co-producer in Apatow's directorial debut, The 40-Year-Old Virgin. \n\nAfter receiving critical praise for that performance, Universal Pictures agreed to cast him as the lead in Apatow's next directorial feature, Knocked Up.\n\nRogen has appeared in the films Donnie Darko, You, Me and Dupree, Zack and Miri Make a Porno, Observe and Report, and The Green Hornet, and also in the Apatow-produced comedies The 40-Year-Old Virgin, Knocked Up, Superbad, Pineapple Express, and Funny People. He and his comedy partner Evan Goldberg co-wrote the comedy films Superbad and Pineapple Express, for which he originally intended to headline while in high school. Rogen has provided voice talents in the animated films Horton Hears a Who!, Kung Fu Panda, and Monsters vs. Aliens. He also supports Crowdrise, a charitable networking site.	Seth Rogen	1982-04-15	No data.	2
51988	http://image.tmdb.org/t/p/w185/DXYOG7Gz4yj20AU92pDMYuxlqt.jpg	Elizabeth Caplan better known as Lizzy Caplan was born on June 30, 1982 in Los Angeles, CA. She is an American actress, best known for her roles in the CBS show The Class, in the 2004 film Mean Girls, and the 2008 film Cloverfield.\n\nCaplan began her television acting career in 1999, when she played the minor role of Sara on the short-lived series Freaks and Geeks. She had a series of guest appearances on other shows, and has been a guest on Sharon Osbourne's talk show. Another of her major television characters came on Smallville, a series about Superman as a teenager. She debuted on that show on November 6, 2001, playing "freak of the week" Tina Greer on the episode "X-Ray." She reprised her role on the show on January 14, 2003, in the episode "Visage."Although she was already an experienced actress, she gained much notice in the 2004 movie Mean Girls, where she played alternative styled girl Janis Ian, namesake of the lesbian singer-songwriter Janis Ian. Caplan's character has been compared to that of Nancy McKeon's character Jo from The Facts of Life.\n\nIn 2003, she starred in the television series The Pitts, playing Faith Pitt. In the second season of Tru Calling, she played Avery Bishop, a friend of Tru Davies.\n\nCaplan landed a starring role in 2005, playing Marjee Sorelli, the troubled sister in Related, a one-hour dramedy on The WB. The show was cancelled after one season. Caplan currently appears in the CBS sitcom, The Class, which premiered on September 18th, 2006 but was cancelled before its second season.\n\nUndaunted, she has since moved on to more prominent movie roles in Cloverfield and Hot Tub Time Machine.	Lizzy Caplan	1982-06-30	No data.	1
4483	http://image.tmdb.org/t/p/w185/3pZx8NB30KIw31rBAT62TUDQFEb.jpg	Dustin Hoffman is an American stage, film and television actor. After versatile portrayals of antiheroes and vulnerable types of characters in stage plays, he had his breakthrough film role as Benjamin Braddock in the feature film "The Graduate". Since then he starred in many films, like "Papillon", "Kramer vs. Kramer", "Tootsie", and "Rain Man". He has won two Academy Awards, five Golden Globes, three BAFTAs, three Drama Desk Awards, a Genie Award, and an Emmy Award - and received the AFI Life Achievement Award in 1999.	Dustin Hoffman	1937-08-08	No data.	2
11701	http://image.tmdb.org/t/p/w185/wdrSStdTmiSHhynCV5CtTJTuzY1.jpg	Angelina Jolie is an American actress. She has received an Academy Award, two Screen Actors Guild Awards, and three Golden Globe Awards. Jolie has promoted humanitarian causes throughout the world, and is noted for her work with refugees as a Goodwill Ambassador for the United Nations High Commissioner for Refugees (UNHCR). She has been cited as one of the world's most beautiful women and her off-screen life is widely reported. Though she made her screen debut as a child alongside her father Jon Voight in the 1982 film Lookin' to Get Out, Jolie's acting career began in earnest a decade later with the low-budget production Cyborg 2 (1993). Her first leading role in a major film was in Hackers (1995). She starred in the critically acclaimed biographical films George Wallace (1997) and Gia (1998), and won an Academy Award for Best Supporting Actress for her performance in the drama Girl, Interrupted (1999). Jolie achieved wider fame after her portrayal of video game heroine Lara Croft in Lara Croft: Tomb Raider (2001), and since then has established herself as one of the best-known and highest-paid actresses in Hollywood. She has had her biggest commercial successes with the action-comedy Mr. &amp; Mrs. Smith (2005) and the animated film Kung Fu Panda (2008). Divorced from actors Jonny Lee Miller and Billy Bob Thornton, Jolie currently lives with actor Brad Pitt, in a relationship that has attracted worldwide media attention. Jolie and Pitt have three adopted children, Maddox, Pax, and Zahara, as well as three biological children, Shiloh, Knox, and Vivienne.	Angelina Jolie	1975-06-04	No data.	1
18897	http://image.tmdb.org/t/p/w185/pmKJ4sGvPQ3imzXaFnjW4Vk5Gyc.jpg	Jackie Chan, born Chan Kong-sang, is a Hong Kong actor, action choreographer, filmmaker, comedian, producer, martial artist, screenwriter, entrepreneur, singer and stunt performer. In his movies, he is known for his acrobatic fighting style, comic timing, use of improvised weapons, and innovative stunts. Jackie Chan has been acting since the 1970s and has appeared in over 100 films.\n\nChan has received stars on the Hong Kong Avenue of Stars and the Hollywood Walk of Fame. As a cultural icon, Chan has been referenced in various pop songs, cartoons, and video games. Chan is also a Cantopop and Mandopop star, having released a number of albums and sung many of the theme songs for the films in which he has starred.\n\nChan was born on April 7, 1954, in Victoria Peak, in the former Crown colony of Hong Kong, as Chan Kong-sang (meaning "born in Hong Kong") to Charles and Lee-Lee Chan, refugees from the Chinese Civil War. He was nicknamed Paopao (Chinese: 炮炮, literally meaning "Cannonball") because he was such a big baby, weighing 12 pounds, or about 5.4 kgs. Since his parents worked for the French Consul to Hong Kong, Chan spent his formative years within the grounds of the consul's residence in the Victoria Peak district. Chan attended the Nah-Hwa Primary School on Hong Kong Island, where he failed his first year, after which his parents withdrew him from the school.\n\nIn 1960, his father immigrated to Canberra, Australia, to work as the head cook for the American embassy, and Chan was sent to the China Drama Academy, a Peking Opera School run by Master Yu Jim-yuen. Chan trained rigorously for the next decade, excelling in martial arts and acrobatics. He eventually became part of the Seven Little Fortunes, a performance group made up of the school's best students, gaining the stage name Yuen Lo in homage to his master. Chan became close friends with fellow group members Sammo Hung and Yuen Biao, the three of them later to be known as the Three Brothers or Three Dragons. At the age of 17, he worked as a stuntman in the Bruce Lee films Fist of Fury and Enter the Dragon under the stage name Chan Yuen Lung.   He received his first starring role later that year, in Little Tiger of Canton, which had a limited release in Hong Kong in 1973.	Jackie Chan	1954-04-07	No data.	2
44079	http://image.tmdb.org/t/p/w185/iuggCphmBfNoUFaUWfpJCTxX4e6.jpg	Charlotte Rampling, OBE (born Tessa Charlotte Rampling; 5 February 1946) is an English actress. Her career spans four decades in English-language as well as French and Italian cinema.	Charlotte Rampling	1946-02-05	No data.	1
72755	No data.	From Wikipedia, the free encyclopedia.\n\nPlainTalk is the collective name for several speech synthesis (MacInTalk) and speech recognition technologies developed by Apple Inc.\n\nIn 1990, Apple invested a lot of work and money in speech recognition technology, hiring many respected researchers in the field. The result was "PlainTalk", released with the AV Quadras of 1993. It was made a standard system component in System 7.1.2, and has since been shipped on all PowerPC and even some 68K Macintoshes.\n\nDescription above from the Wikipedia article PlainTalk, licensed under CC-BY-SA, full list of contributors on Wikipedia.	MacInTalk	No data.	No data.	0
5529	http://image.tmdb.org/t/p/w185/tlGWAZeDgqJtJ5cz57zS0BW5our.jpg	Anna Katherine Popplewell (born 16 December 1988) is an English film, television and theater actress. She is known for her role as Susan Pevensie in The Chronicles of Narnia film series since 2005, as Chyler Silva in Halo 4: Forward Unto Dawn since 2012 and Lady Lola in Reign since 2013.	Anna Popplewell	1988-12-16	No data.	1
5527	http://image.tmdb.org/t/p/w185/wETrA0yMoM4805gVJsgwOjAZ2om.jpg	From Wikipedia, the free encyclopedia. Skandar Keynes (born Alexander Amin Casper Keynes; 5 September 1991) is a British actor. He is best known for starring as Edmund Pevensie in The Chronicles of Narnia film series. He has appeared in all three installments, The Lion, the Witch and the Wardrobe, Prince Caspian and The Voyage of the Dawn Treader, which was released on December 10, 2010.\n\nDescription above from the Wikipedia article Skandar Keynes, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Skandar Keynes	1991-09-05	No data.	2
5526	http://image.tmdb.org/t/p/w185/wxV0QGGrQLSbErbRn3pgIkl49PL.jpg	Georgina Helen "Georgie" Henley (born 9 July 1995) is an English teen actress. She is known for her portrayal of Lucy Pevensie in The Chronicles of Narnia film series, for which she won the Phoenix Film Critics Society Award for Best Performance by a Youth Female in a Lead or Supporting Role in The Lion, the Witch and the Wardrobe in 2005.\n\nDescription above from the Wikipedia article Georgie Henley, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Georgie Henley	1995-07-09	No data.	1
28847	http://image.tmdb.org/t/p/w185/7ucsDEWvcMU4SpxtZEaYErPpXHh.jpg	Rafe Joseph Spall is an English actor on both stage and screen. He is perhaps best known for his roles in BBC's The Shadow Line, Channel 4's Pete versus Life, One Day, Anonymous, and the Ridley Scott film Prometheus. He played writer Yann Martel in the 2012 film Life of Pi.	Rafe Spall	1983-03-10	No data.	2
1029934	http://image.tmdb.org/t/p/w185/9G8pKfvfbqs5fmRo0VtlHqxdVBQ.jpg	Justice Elio Smith (born August 9, 1995) is an American film and television actor, best known for playing Radar in the film Paper Towns, and Ezekiel in the Netflix series The Get Down.	Justice Smith	1995-08-09	No data.	2
1257819	http://image.tmdb.org/t/p/w185/AdmgjO8pLFqN1H40uo7Ws4h6IyK.jpg	Daniella Pineda (born February 20, 1987) is a Mexican-American actress, writer and comedian from Oakland, California.\n\nIn January 2013 it was announced that she was cast as the witch Sophie for episode 4x20 of the CW's hitseries The Vampire Diaries. This episode serves as a backdoor-pilot for a possible spin-off series, revolving around The Originals and taking place in the French Quarter of New Orleans.\n\nSeason one of The Originals was set to premiere on Tuesday, October 15. However, on July 29, 2013, The CW announced that the series premiere would instead air on October 3, 2013, following the fifth season premiere of The Vampire Diaries in order to attract fans of the series. On October 10, 2013, the CW ordered three additional scripts for the series.\n\nPineda graduated from Mills College.	Daniella Pineda	1987-02-20	No data.	1
1545693	http://image.tmdb.org/t/p/w185/sgxzT54GnvgeMnOZgpQQx9csAdd.jpg	Zazie Beetz is a German born, American actress best known for the role of Vanessa on Atlanta. In 2016 she also appeared in the Netflix anthology series Easy. \n\nPerforming in community theaters and local stages since childhood, Zazie found her joy in grade school and grew up acting as a girl. A German-born New York native, Zazie was raised between Washington Heights and Berlin, speaking both German and English with her family at home. She received training from the Harlem School of the Arts and LaGuardia Arts Highschool, but took time to study French, feel fancy, and live in Paris during her time at Skidmore College. Theater continued to live alongside her love for language and travel, so upon graduating in 2013, she decided to muster up her courage and pursue a career in performing.\n\nLiving in Harlem now, she has since had the opportunity to work on various New York films and is happy to find herself on diverse sets, with all kinds of colorful people- navigating her way as a working actress. She has studied with Will Bond and Gameela Wright, collaborated with director Bart Freundlich, and will be starring in Donald Glover’s upcoming television series! Zazie is proud to be a part of this unconventional but beautiful community of performers, and has her heart open for whatever is to come.	Zazie Beetz	1991-06-01	No data.	1
1173984	http://image.tmdb.org/t/p/w185/54b6TbDmTxrYstaLpXTx2dc5iEi.jpg	Olivia Kate Cooke (born 27 December 1993) is an English actress. From 2013 until 2017, she co-starred as Emma Decody in the drama-thriller series Bates Motel. Cooke is also known for her film roles such as in The Quiet Ones (2014), Ouija (2014), The Signal (2014), Me and Earl and the Dying Girl (2015), The Limehouse Golem (2016), Thoroughbreds (2017) and Ready Player One (2018).	Olivia Cooke	1993-12-27	No data.	1
58395	http://image.tmdb.org/t/p/w185/5e8YyNQjWre2UbExYBlJ7zva934.jpg	Karin Konoval has appeared in guest starring roles in numerous TV series and supporting lead roles in many feature films. Her extensive screen credits include "Maurice the Orangutan" in Rise Of The Planet Of The Apes and Dawn Of The Planet Of The Apes, "Mrs. Peacock" in the infamous X-Files episode Home, and the lead role of "Mary Leonard" in the feature Cable Beach, for which she received a Philip Borsos award. She has received numerous awards for her work in theatre, performing lead roles in contemporary classics and a wide range of musicals.\n\nBorn in Baltimore, Maryland, Karin Konoval moved to Canada with her family as a child and grew up in Edmonton, Alberta where she originally trained as a dancer. After graduating from the University of Alberta with a B.A. in theatre history, she moved to Vancouver, British Columbia to pursue a career in acting. Her writing has been published in various anthologies and literary magazines and broadcast on CBC Radio. As an artist she has had many solo gallery exhibits of her paintings for a growing audience.\n\n- IMDb Mini Biography By: King Talent	Karin Konoval	No data.	No data.	1
236696	http://image.tmdb.org/t/p/w185/hIwDLupV2EOi6EqpHa1DNjrNRZU.jpg	Terry Notary is an American actor, stunt coordinator/double and movement coach. Born in San Rafael, California, Notary was in gymnastics class in school and won many State Championships. Later in his 20's, he was a performer at Cirque du Soleil, shortly after he joined, he met his wfe Rhonda in New York. Notary mainly portrays creatures and animals for the film and television industry. He is also a motion capture performer in films like The Adventures of Tintin: Secrets of the Unichorn, Rise of the Planet of the Apes and Avatar. He now lives with his wife and his two daughters.	Terry Notary	1968-08-14	No data.	2
68470	http://image.tmdb.org/t/p/w185/42KYqP5wAAwbihJSwLRFvCgYVZe.jpg	Minami Takayama (高山 みなみ Takayama Minami, born Izumi Arai (新井 泉 Arai Izumi), May 5, 1964) is a Japanese voice actress and singer. Minami is also a member of the pop group Two-Mix, and a part of DoCo when it was active.\n\nShe is best known for her roles in Kiki's Delivery Service as both Kiki and Ursula, Ranma ½ as Nabiki Tendo, Moomin as Moomin, Yaiba as Yaiba Kurogane, Nintama Rantarō as Rantarō Inadera, Danganronpa series as Hajime Hinata and Izuru Kamukura and Detective Conan as Conan Edogawa.	Minami Takayama	1964-05-05	No data.	1
40327	http://image.tmdb.org/t/p/w185/9fuENGDDd6C30IudobBV8uh2XaK.jpg	From Wikipedia, the free encyclopedia\n\nTōru Furuya (古谷 徹 Furuya Tōru?) is a veteran narrator and seiyū (voice actor) born on July 31, 1953 in Yokohama, Kanagawa Prefecture, Japan. As a child, he was a member of Gekidan Himawari, a children's acting troupe. He is currently employed by the talent management firm Aoni Production.\n\nFuruya is most known for the roles of Amuro Ray (both in the original Mobile Suit Gundam and its following Gundam sequels), Hyouma Hoshi (Kyojin no Hoshi), Pegasus Seiya (Saint Seiya), Yamcha (Dragon Ball Z), Kyosuke Kasuga (Kimagure Orange Road), and Mamoru Chiba/Tuxedo Mask (Sailor Moon). He is also the first and only seiyu who has provided a Japanese voice for Mario.\n\nHe also used a pseudonym Noboru Sōgetsu (蒼月 昇 Sōgetsu Noboru?) in the cast of Mobile Suit Gundam 00 for Ribbons Almark's role (but used his real name in the narration role). Both the narration role and Ribbons mark Furuya's first role in a non-Universal Century Gundam series. Shuichi Ikeda who played Char had his earlier with Gilbert Durandal in Gundam SEED Destiny.\n\nHe was a best friend of the late Hirotaka Suzuoki and is noted to be friends with Ikeda. He was at one time married to fellow seiyuu Mami Koyama but amicably divorced in 1983. He later married seiyuu Satomi Majima, who was the other main character of Stop!! Hibari-kun!.\n\nDescription above from the Wikipedia article Tōru Furuya, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Tōru Furuya	1953-07-31	No data.	0
40325	http://image.tmdb.org/t/p/w185/aYeXdOAsEh2xItISYDefJfvcdA.jpg	From Wikipedia, the free encyclopedia  Megumi Hayashibara (林原 めぐみ Hayashibara Megumi?) (born March 30, 1967) is a Japanese voice actress, singer, radio personality, and lyricist from Tokyo. She is currently affiliated with Aksent. Her nicknames include: Megu-san, Megu-nee, Bara-san, Kakka, and Daijin. She is best known for her roles in Ranma ½ (as Ranma Saotome (female voice)), Neon Genesis Evangelion (as Rei Ayanami), Cowboy Bebop (as Faye Valentine), Slayers (as Lina Inverse), Detective Conan (as Ai Haibara), Pokémon (as Musashi/Jessie of Team Rocket), All Purpose Cultural Catgirl Nuku Nuku (as Atsuko Natsume and her counterpart Atsuko Higuchi from the OVA Nuku Nuku Dash!) and Shaman King (as Anna Kyoyama). She is also a fully qualified and registered nurse.  Description above from the Wikipedia article Megumi Hayashibara, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Megumi Hayashibara	1967-03-30	No data.	1
1017347	http://image.tmdb.org/t/p/w185/dM0m0OxREfW4HxwV2qQeitS8dfO.jpg	Brenton Thwaites is an Australian actor, best known for portraying Luke Gallagher in the Fox8 teen drama series, SLiDE, and Stu Henderson in the soap opera Home and Away. Thwaites starred in The Giver as one of the male leads, Jonas, opposite Jeff Bridges and Meryl Streep.\n\nThwaites was born in Cairns, Queensland, in 1989 to Peter and Fiona Thwaites. He has a sister, Stacey. He underwent secondary education at Cairns State High School in Far North Queensland, with his senior year held in 2006. He studied acting at the Queensland University of Technology and he graduated in 2010. He then relocated to Sydney to join the long-running soap opera Home and Away and to pursue his career in acting.	Brenton Thwaites	1989-08-10	No data.	2
169200	http://image.tmdb.org/t/p/w185/jSheKnNOV5UJq4RNMbpFT3ONniy.jpg	Phyllis Smith (born July 10, 1951) is an American film and television actress who is best known for playing Phyllis Lapin-Vance on The Office.\n\nDescription above from the Wikipedia article Phyllis Smith, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Phyllis Smith	1951-07-10	No data.	1
59258	http://image.tmdb.org/t/p/w185/rtlzszC0uPvHZtrXzwYNT9jYPsU.jpg	From Wikipedia, the free encyclopedia\n\nLewis Niles Black (born August 30, 1948) is an American stand-up comedian, author, playwright, social critic and actor. He is known for his comedy style, which often includes simulating a mental breakdown, or an increasingly angry rant, ridiculing history, politics, religion, trends and cultural phenomena. He hosted the Comedy Central series Lewis Black's Root of All Evil, and makes regular appearances on The Daily Show with Jon Stewart delivering his “Back in Black” commentary segment. When not on the road performing, he resides in Manhattan. He also maintains a residence in Chapel Hill, N.C. He is currently the spokesman for Aruba Tourism, appearing in television ads that aired in late 2009 and 2010. He was voted 51st of the 100 greatest stand-up comedians of all time by Comedy Central in 2004.\n\nDescription above from the Wikipedia article Lewis Black, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Lewis Black	1948-08-30	No data.	2
2178	http://image.tmdb.org/t/p/w185/4pMQkelS5lK661m9Kz3oIxLYiyS.jpg	Forest Steven Whitaker III (born July 15, 1961) is an American actor, producer, and director.\n\nHe has earned a reputation for intensive character study work for films such as Lee Daniels' The Butler, Bird and Ghost Dog: The Way of the Samurai,for his work in direct-to-video films and for his recurring role as LAPD Internal Affairs Lieutenant Jon Kavanaugh on the award-winning television series The Shield.\n\nWhitaker won an Academy Award, a Golden Globe and a BAFTA for his performance as Ugandan dictator Idi Amin in the 2006 film The Last King of Scotland.\n\nHe also starred as Inspector Franck Dotzler in Taken 3 with Liam Neeson.	Forest Whitaker	1961-07-15	No data.	2
1236	http://image.tmdb.org/t/p/w185/meXeaopncCQEw7saya4z0MhkUK2.jpg	From Wikipedia, the free encyclopedia.\n\nMark Ross Pellegrino (born April 9, 1965) is an American actor of film and television. He is best known for his work on Lost as Jacob and for playing Lucifer on Supernatural.	Mark Pellegrino	1965-04-09	No data.	2
19292	http://image.tmdb.org/t/p/w185/tv9V6QsuZ3bcp4ciUJjwjcc4qAg.jpg	Adam Sandler was born on September 9, 1966, in Brooklyn, New York, to Judy and Stanley Sandler. At 17, he took his first step towards becoming a stand-up comedian when he spontaneously took the stage at a Boston comedy club. He found he was a natural comic. He nurtured his talent while at New York University (graduating with a Bachelor of Fine Arts degree in 1991) by performing regularly in clubs and at universities. During his freshman year, he snagged a recurring role as the Huxtable family's friend Smitty on "The Cosby Show" (1984). While working at a comedy club in L.A., he was "discovered" by Dennis Miller, who recommended him to "Saturday Night Live" (1975) producer Lorne Michaels and told him that Sandler had a big talent. This led to his being cast in the show in 1990, which he also wrote for in addition to performing. After "Saturday Night Live" (1975), Sandler went on to the movies, starring in such hit comedies as Airheads (1994), Happy Gilmore (1996), Billy Madison (1995) and Big Daddy (1999/I). He has also starred in Mr. Deeds (2002) alongside Winona Ryder; Eight Crazy Nights (2002), an animated movie about the Jewish festival of Chanukah; and Punch-Drunk Love (2002). He also writes and produces many of his own films and has composed songs for several of them, including The Wedding Singer (1998). Sandler has had several of his songs placed on the "Billboard" charts, including the classic "The Chanukah Song".\n\nDescription above from the Wikipedia article Adam Sandler, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Adam Sandler	1966-09-09	No data.	2
19159	http://image.tmdb.org/t/p/w185/a7a2cG0wtkKZ9NpkVfmcyn0UvOU.jpg	Thomas Haden Church (born Thomas Richard McMillen; June 17, 1960) is an American actor. After co-starring in the 1990s sitcom Wings, Church became well known for his film roles, including his Academy Award-nominated performance in Sideways and his role as the Sandman in Spider-Man 3.\n\nDescription above from the Wikipedia article Thomas Haden Church, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Thomas Haden Church	1960-06-17	No data.	2
17052	http://image.tmdb.org/t/p/w185/nM4H9Uqn2V4shWCxxnDqT6ZaJOu.jpg	Christopher John "Topher" Grace (born July 12, 1978) is an American actor. He is best known for his portrayal of Eric Forman on the FOX sitcom That '70s Show, Eddie Brock/Venom in the Sam Raimi film Spider-Man 3, and Edwin in the 2010 film Predators.	Topher Grace	1978-07-12	No data.	2
5292	http://image.tmdb.org/t/p/w185/semwsON3dN3np6cyzlCw7F2YDGe.jpg	Denzel Hayes Washington, Jr. (born December 28, 1954) is an American actor, screenwriter, director and film producer. He first rose to prominence when he joined the cast of the medical drama St. Elsewhere, playing Dr. Philip Chandler for six years. He has received much critical acclaim for his work in film since the 1990s, including for his portrayals of real-life figures, such as Steve Biko, Malcolm X, Rubin "Hurricane" Carter, Melvin B. Tolson, Frank Lucas, and Herman Boone.\n\nWashington has received two Academy Awards, two Golden Globe awards, and a Tony Award. He is notable for winning the Best Supporting Actor Oscar for his part in Glory in 1989, and the Academy Award for Best Actor in 2001 for his role in the film Training Day.\n\nDescription above from the Wikipedia article Denzel Washington, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Denzel Washington	1954-12-28	No data.	2
56734	http://image.tmdb.org/t/p/w185/26ldL80TM8QOmKs7qZFrdYB9y4R.jpg	Chloë Grace Moretz (born February 10, 1997) is an American actress and model. She had her breakthrough role in 2010, when she starred as Mindy Macready a.k.a. Hit-Girl in Kick-Ass. Some of her other film credits include (500) Days of Summer (2009), Diary of a Wimpy Kid (2010), Let Me In (2010), Hugo (2011), Dark Shadows (2012), Carrie (2013), If I Stay (2014) and The Equalizer (2014).	Chloë Grace Moretz	1997-02-10	No data.	1
1230	http://image.tmdb.org/t/p/w185/eOIx8zj1vYIRhVY2bK5cjIQfua0.jpg	​American actor. Height 6' 2" (1,88 m)\n\nJohn Goodman is most famous for his role on the television series Roseanne. He is also a well known film and stage actor. Goodman comes from Affton, Missouri where he showed an early interest in film. A football scholarship took John to Southwest Missouri State University where he continued his acting education. A college injury ended his football dreams, so Goodman moved to Manhattan in pursuit of an acting career. He eventually performed on Broadway and appeared in several commercials. \n\nBy the early 1980's John started landing small movie roles, including Eddie Macon's Run, and The Survivors (both in 1984). In 1990 Arachnophobia earned John a nomination for a Saturn Award for Best Supporting Actor. John then starred in the hugely popular 1998 film, The Big Lebowski which lead to a repeat nomination for Best Supporting Actor. Despite his moderate film success, Goodman is most widely know for playing Dan Conner on the TV sitcom Roseanne. Between 1988 and 1997, 221 episodes of Roseanne were filmed and John received numerous awards for his performance.\n\nGoodman met his wife, Annabeth Hartzog, while filming Everybody's All-American (1988). The two were married in October 1989, and had daughter Molly in 1990. John admits once having a long-time alcohol problem, but has reportedly been clean since 2007.	John Goodman	1952-06-20	No data.	2
7904	http://image.tmdb.org/t/p/w185/22PBSROMN6GmD7uxHpTNb0Unftt.jpg	From Wikipedia, the free encyclopedia William Edward "Billy" Crystal (born March 14, 1948) is an American actor, writer, producer, comedian and film director. He gained prominence in the 1970s for playing Jodie Dallas on the ABC sitcom Soap and became a Hollywood film star during the late 1980s and 1990s, appearing in the critical and box office successes When Harry Met Sally... and City Slickers. He has hosted the Academy Awards eight times. Description above from the Wikipedia article Billy Crystal, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Billy Crystal	1948-03-14	No data.	2
884	http://image.tmdb.org/t/p/w185/ieDyVKnQHo7eMGu1GOE7YYr2Fk4.jpg	Steven Vincent Buscemi (born December 13, 1957) is an American actor, writer and director. He was born in Brooklyn, New York, the son of Dorothy, who worked as a hostess at Howard Johnson's, and John Buscemi, a sanitation worker and Korean War veteran. Buscemi's father was Sicilian American and his mother Irish American. He has three brothers: Jon, Ken, and Michael. Buscemi was raised Roman Catholic.\n\nBuscemi has starred and supported in successful Hollywood and indie films, including Parting Glances (1986), New York Stories (1989), Mystery Train (1989), Reservoir Dogs (1992), Pulp Fiction (1994), Desperado (1995), Con Air (1997), Armageddon (1998), The Grey Zone (2001), Ghost World (2001), Big Fish (2003), Lean on Pete (2017), and The Death of Stalin (2017). He is also known for his appearances in many films by Coen brothers: Miller's Crossing (1990), Barton Fink (1991), The Hudsucker Proxy (1994), Fargo (1996), and The Big Lebowski (1998). Buscemi provides the voice of Randall Boggs in the Monsters, Inc. franchise.\n\nFrom 2010 to 2014, he portrayed Enoch "Nucky" Thompson in the critically acclaimed series Boardwalk Empire, which earned him two Screen Actors Guild Awards, a Golden Globe, and two nominations for an Emmy Award. He made his directorial debut in 1996, with Trees Lounge, in which he also starred. Other works include Animal Factory (2000), Lonesome Jim (2005), and Interview (2007).\n\nBuscemi has one son, Lucian, with his wife Jo Andres.	Steve Buscemi	1957-12-13	No data.	2
42803	http://image.tmdb.org/t/p/w185/A8i7Qe7vvdyrgLIOal7W0KURZNk.jpg	Ajay Devgan is an Indian film actor, director and producer. He is widely considered as one of the most popular actors of Hindi cinema who has appeared in over a hundred Hindi films. \n\nHe has won numerous awards, including two National Film Awards and four Filmfare Awards. In 2016, he was honoured by the Government of India with the Padma Shri, the fourth highest civilian honour of the country.\n\nDevgan began his professional career with Phool Aur Kaante in 1991 and received a Filmfare Award for Best Male Debut for his performance.  In 1998, he appeared in a critically acclaimed performance in Mahesh Bhatt's drama Zakhm and he received his first National Film Award for Best Actor for his role in the movie. In 1999, his most-talked-about film was Hum Dil De Chuke Sanam in which he played Vanraj, a man who tries to unite his wife with her lover. He has starred in more than hundred Hindi films. Having done so, he established himself as one of the leading actors of Hindi cinema.\n\nIn addition, Devgn owns a production company Ajay Devgn FFilms which was established in 2000. In 2008 he debuted as a film director with U Me Aur Hum. He is married to film actress, Kajol since 1999 and the couple have two children. In August 2009, Devgn changed his surname from Devgan to Devgn on the request of his family.	Ajay Devgn	1969-04-02	No data.	2
1001657	http://image.tmdb.org/t/p/w185/ed4ajSYdv49j9OF7yMeG8Hznrrt.jpg	Sophie Turner (born 21 February 1996) is an English actress. Turner made her professional acting debut as Sansa Stark on the HBO fantasy television series Game of Thrones (2011–present), which brought her international recognition.\n\nTurner has also starred in the television film The Thirteenth Tale (2013) and she made her feature film debut in Another Me (2013). She has also starred in the action comedy Barely Lethal (2015) and portrays a young Jean Grey / Phoenix in the X-Men film series.	Sophie Turner	1996-02-21	No data.	1
1954	http://image.tmdb.org/t/p/w185/lkwvmo7vVL8TpMCDLRoHjZIkJQ4.jpg	From Wikipedia, the free encyclopedia William George "Billy" Zane, Jr. (born February 24, 1966) is an American actor, producer and director. He is probably best known for his roles as Caledon "Cal" Hockley in Titanic, The Phantom from The Phantom, John Wheeler in Twin Peaks and Mr. E in CQ.\n\nDescription above from the Wikipedia article Billy Zane, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Billy Zane	1966-02-24	No data.	2
8534	http://image.tmdb.org/t/p/w185/yik6ccz1O2JelLJn3Fsx3EA8s1o.jpg	Kathleen Doyle "Kathy" Bates (born June 28, 1948) is an American actress and director.\n\nAfter several small roles in film and television, Bates rose to prominence with her performance in Misery (1990), for which she won both the Academy Award for Best Actress and a Golden Globe. She followed this with major roles in Fried Green Tomatoes (1991) and Dolores Claiborne (1995), before playing a featured role as Margaret "Molly" Brown in Titanic (1997). During this time she began her directing career, primarily in television.\n\nBates received a Tony Award nomination for her 1983 performance in the Broadway play 'night, Mother. She won a Screen Actors Guild Award for her performance in Primary Colors (1998), for which she also received an Academy Award nomination for Best Supporting Actress. She was also nominated for an Academy Award for Best Supporting Actress for About Schmidt (2002). Her television work has resulted in eight Emmy Award nominations.\n\nDiagnosed with ovarian cancer in 2003, Bates has stated that she has made a full recovery.\n\nDescription above from the Wikipedia article Kathy Bates, licensed under CC-BY-SA, full list of contributors on Wikipedia​	Kathy Bates	1948-06-28	No data.	1
3713	http://image.tmdb.org/t/p/w185/248IbuAi6RQG5l94a4hClUswbA5.jpg	From Wikipedia, the free encyclopedia\n\nFrances Fisher (born 11 May 1952) is a British-born American actress. She is known for her roles as Strawberry Alice, the madame prostitute in Unforgiven (1992), directed by Clint Eastwood; and Ruth DeWitt Bukater, the mother of Kate Winslet's character in Titanic (1997); directed by James Cameron. Both films won the Academy Award for Best Picture.	Frances Fisher	1952-05-11	No data.	1
9281	http://image.tmdb.org/t/p/w185/t6sfUzvQkMZu3wh4LMNBFxEmiDy.jpg	Elizabeth Maresal Mitchell (born February 10, 1974), known professionally as Elizabeth Banks, is an American actress. Banks had her film debut in the low-budget independent film Surrender Dorothy. Since then, she has been well-known for her roles in Definitely, Maybe, Zack and Miri Make a Porno, W., Role Models, Wet Hot American Summer, The Uninvited and the Spider-Man franchise. Banks has also portrayed roles as guest star in television shows through her career, including the role of Dr. Kim Briggs, Zach Braff's love interest in the television sitcom Scrubs, and her role as Avery Jessup, Jack Donaghy's wife in 30 Rock.\n\nDescription above from the Wikipedia article Elizabeth Banks, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Elizabeth Banks	1974-02-10	No data.	1
37917	http://image.tmdb.org/t/p/w185/1n03M0xG1cdkXLFDL1qP9YrjHxz.jpg	Kristen Jaymes Stewart (born April 9, 1990) is an American actress and film director. Born in Los Angeles to parents who worked in show business, Stewart began her career as a child actor in 1999. She gained notice in 2002 for playing Jodie Foster's daughter in the thriller Panic Room, which garnered her a Young Artist Award nomination for Best Leading Actress in a Feature Film. She subsequently starred in Speak (2004), Catch That Kid (2004), Zathura: A Space Adventure (2005), and Into the Wild (2007), the latter of which earned her a Screen Actors Guild nomination for Outstanding Performance by a Cast in a Motion Picture. She received widespread recognition in 2008 for playing Bella Swan in The Twilight Saga film series (2008–12), which collectively grossed over $3.3 billion worldwide.\n\nStewart has appeared in a wide variety of films throughout her adult career, including Adventureland (2009), The Runaways (2010), Snow White and the Huntsman (2012), On the Road (2012), Camp X-Ray (2014), Still Alice (2014), and Equals (2015). She won the BAFTA Rising Star Award in 2010 and was awarded the Milan International Film Festival Award for Best Actress in 2011 for Welcome to the Rileys (2010). In 2015, she received critical acclaim for her role opposite Juliette Binoche in Clouds of Sils Maria, for which she won a multitude of accolades, including the César Award for Best Supporting Actress, making her the first American actress to win a César Award. She next starred in Personal Shopper (2016), written for her by director Olivier Assayas. In 2018, she was a member of the jury for the official competition of the 71st Cannes Film Festival.\n\nStewart was listed as the highest-earning female actress in the Vanity Fair "Hollywood Top Earners List of 2010", with estimated earnings of $28.5 million. In 2011, she was named number one on Forbes' list of "Hollywood's Best Actors for the Buck". Forbes also named her as the highest-paid actress in 2012, with total earnings of $34.5 million. She is the "face" of Chanel and Balenciaga fashion brands.	Kristen Stewart	1990-04-09	No data.	1
\.


--
-- Data for Name: movienews_app_directormodel; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.movienews_app_directormodel (id, image, bio, name, birthday, deathday, gender) FROM stdin;
227439	http://image.tmdb.org/t/p/w185/jVevHpWoDaepeNmbNpBYHCktdd5.jpg		Don Hall	1969-01-01	No data.	2
45400	http://image.tmdb.org/t/p/w185/3H0xzU12GTNJyQTpGysEuI9KyiQ.jpg	Greta Celeste Gerwig (born August 4, 1983) is an American actress and filmmaker. Gerwig first came to prominence through her association with the mumblecore film movement. She has collaborated with director Joe Swanberg on several projects, including the film Nights and Weekends, which the two co-wrote, co-directed and in which they co-starred. Gerwig made her mainstream debut in 2010, co-starring alongside Ben Stiller in Greenberg, directed by Noah Baumbach.	Greta Gerwig	1983-08-04	No data.	1
1306608	No data.		Adam Robitel	No data.	No data.	0
1024823	No data.		Brian A Miller	No data.	No data.	0
22558	http://image.tmdb.org/t/p/w185/A04LmjnxXHHIoNQctHlZaRzqwEv.jpg	Nils Gaup (born April 12, 1955) is a Sámi film director from Norway.	Nils Gaup	1955-04-12	No data.	2
1043960	No data.		Dean McKendrick	1901-12-06	2018-05-06	2
208664	http://image.tmdb.org/t/p/w185/3d61uWFZjkIt3Xzgsb649DgXQHR.jpg	Kay Cannon is an American television writer and actress who is best known for her work as an Emmy nominated writer and producer for 30 Rock.	Kay Cannon	No data.	No data.	1
1270551	No data.		Dada Kondke	No data.	No data.	0
82511	http://image.tmdb.org/t/p/w185/67A9XvitqSXL4w6PftXkG15L0C.jpg	Will Gluck is an American film director, screenwriter and producer.	Will Gluck	No data.	No data.	2
1145520	http://image.tmdb.org/t/p/w185/4Erwmb2PTBcYJyy9idECymL5s5i.jpg	Ari Aster is a director and writer.	Ari Aster	No data.	No data.	2
76812	No data.		Raymond Yip Wai-Man	No data.	No data.	2
55499	http://image.tmdb.org/t/p/w185/7lh5rL4uMgaNmR6O5794s4b1eB7.jpg	Scott Derrickson is an American screenwriter, producer, and director. He lives in Los Angeles, California.\n\nDescription above from the Wikipedia article Scott Derrickson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Scott Derrickson	1966-07-16	No data.	2
1821549	No data.		Ronald Deronge	No data.	No data.	0
1296522	http://image.tmdb.org/t/p/w185/q3mDokUqPwyObMc51VQqRS27rvJ.jpg	Claire Scanlon directs single cam comedies for both network and cable. She started her career editing documentaries for PBS and the Discovery Channel. After supervising post and producing Last Comic Standing, she joined The Office in its fifth season. After directing The Office, Claire transitioned over to directing full time in 2013.	Claire Scanlon	No data.	No data.	0
76927	http://image.tmdb.org/t/p/w185/90Tq9GYih9viOI825KgeV7PKIKG.jpg	Tommy Wirkola (born 1979 in Alta, Norway) is a Norwegian filmmaker.	Tommy Wirkola	1979-12-06	No data.	2
938894	No data.		Rob W. King	1959-06-05	No data.	2
78160	http://image.tmdb.org/t/p/w185/lO2GD4s6fRloZLEhsZgBlhJQasE.jpg	Luca Guadagnino (born 1971) is an Italian film director. He rose to notability with the 2005 film Melissa P., and he is a frequent collaborator with Tilda Swinton, including the 1999 film The Protagonists, the 2010 film I Am Love and the 2015 film A Bigger Splash.\n\nDescription above from the Wikipedia article Luca Guadagnino, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Luca Guadagnino	1971-08-10	No data.	2
930707	http://image.tmdb.org/t/p/w185/txsIRCos9meRg5dYCsrJ2BNbrsB.jpg	Colin Trevorrow (born September 13, 1976) is an American film director and screenwriter, known as the director of the 2012 indie film Safety Not Guaranteed and the 2015 Jurassic Park sequel, Jurassic World, which he also co-wrote.	Colin Trevorrow	1976-09-13	No data.	2
88967	http://image.tmdb.org/t/p/w185/AbocIYSo4KXx7nT6lz2dj3qMD8H.jpg	Greg Berlanti (born May 24, 1972) is an American television writer and producer.\n\nDescription above from the Wikipedia article Greg Berlanti, licensed under CC-BY-SA, full list of contributors on Wikipedia	Greg Berlanti	1972-05-24	No data.	2
1769763	No data.		Lee Ri-dan	No data.	No data.	0
30058	http://image.tmdb.org/t/p/w185/mh64Ak7waeG1YTKWKbvIcX9VrN6.jpg		Steven C. Miller	1981-03-08	No data.	2
9340	http://image.tmdb.org/t/p/w185/fxZ7SpJCZ9DgJERWEpGmn5a4mdp.jpg	Lana Wachowski (born June 21, 1965) and Lilly Wachowski (born December 29, 1967), siblings collectively known as The Wachowskis, are American film directors, writers and producers, most famous for creating The Matrix series and the Netflix show Sense8.	Lana Wachowski	1965-06-21	No data.	1
240	http://image.tmdb.org/t/p/w185/ywoN9gI2lFOA5EAxxyRbQ1R4GQ6.jpg	Stanley Kubrick (July 26, 1928 – March 7, 1999) was an American film director, writer, producer, and photographer who lived in England during most of the last four decades of his career. Kubrick was noted for the scrupulous care with which he chose his subjects, his slow method of working, the variety of genres he worked in, his technical perfectionism, and his reclusiveness about his films and personal life. He maintained almost complete artistic control, making movies according to his own whims and time constraints, but with the rare advantage of big-studio financial support for all his endeavors. Kubrick's films are characterized by a formal visual style and meticulous attention to detail—his later films often have elements of surrealism and expressionism that eschews structured linear narrative. His films are repeatedly described as slow and methodical, and are often perceived as a reflection of his obsessive and perfectionist nature. A recurring theme in his films is man's inhumanity to man. While often viewed as expressing an ironic pessimism, a few critics feel his films contain a cautious optimism when viewed more carefully.\n\nThe film that first brought him attention to many critics was Paths of Glory, the first of three films of his about the dehumanizing effects of war. Many of his films at first got a lukewarm reception, only to be years later acclaimed as masterpieces that had a seminal influence on many later generations of film-makers. Considered especially groundbreaking was 2001: A Space Odyssey noted for being both one of the most scientifically realistic and visually innovative science-fiction films ever made while maintaining an enigmatic non-linear storyline. He voluntarily withdrew his film A Clockwork Orange from England, after it was accused of inspiring copycat crimes which in turn resulted in threats against Kubrick's family. His films were largely successful at the box-office, although Barry Lyndon performed poorly in the United States. Living authors Anthony Burgess and Stephen King were both unhappy with Kubrick's adaptations of their novels A Clockwork Orange and The Shining respectively, and both authors were engaged with subsequent adaptations. All of Kubrick's films from the mid-1950s to his death except for The Shining were nominated for Oscars, Golden Globes, or BAFTAs. Although he was nominated for an Academy Award as a screenwriter and director on several occasions, his only personal win was for the special effects in 2001: A Space Odyssey.\n\nEven though all of his films, apart from the first two, were adapted from novels or short stories, his works have been described by Jason Ankeny and others as "original and visionary". Although some critics, notably Andrew Sarris and Pauline Kael, frequently disparaged Kubrick's work, Ankeny describes Kubrick as one of the most "universally acclaimed and influential directors of the postwar era" with a "standing unique among the filmmakers of his day."\n\nDescription above from the Wikipedia article Stanley Kubrick, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Stanley Kubrick	1928-07-26	1999-03-07	2
15218	http://image.tmdb.org/t/p/w185/2w2mprJhSucgA8pbM5BRdBKl3p9.jpg	James Gunn is an American writer, filmmaker, actor, musician and cartoonist.	James Gunn	1966-08-05	No data.	2
47005	http://image.tmdb.org/t/p/w185/f8hPlHuaRw1py22wp2qqNRfVDMw.jpg	From Wikipedia, the free encyclopedia.\n\nAlan Taylor (born c. 1965) is an American television and film director, television producer, and screenwriter, known for his work on TV shows such as Lost, The West Wing, Six Feet Under, Sex and the City, The Sopranos, and the films Palookaville, Thor: The Dark World and the upcoming Terminator Genisys.\n\nDescription above from the Wikipedia article Alan Taylor (director), licensed under CC-BY-SA, full list of contributors on Wikipedia​	Alan Taylor	1965-01-01	No data.	2
1179066	http://image.tmdb.org/t/p/w185/zVPXrhuAxYAWlwDEWCaqeUPycFx.jpg		Wes Ball	No data.	No data.	0
40644	http://image.tmdb.org/t/p/w185/hr82USXEc8XWvdnH0TpyddMpi7j.jpg	Chad Stahelski (born September 20, 1968) is an American stuntman and film director. He is known for directing 2014 film John Wick along with David Leitch, and for doubling Brandon Lee after the fatal accident involving Lee at the set of The Crow (1994). He has also worked as a stunt coordinator and second unit director on several films.	Chad Stahelski	1968-09-20	No data.	2
957	http://image.tmdb.org/t/p/w185/Dnbz3B7yy4u0abixuD5LakZgsy.jpg	Matthew Vaughn (born 7 March 1971 in London, England) is an English film producer and director known for producing such films as Lock, Stock and Two Smoking Barrels (1998) and Snatch (2000) and directing the films Layer Cake (2004), Stardust (2007) and Kick-Ass (2010).\n\nDescription above from the Wikipedia article Matthew Vaughn, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Matthew Vaughn	1971-03-07	No data.	2
1704	http://image.tmdb.org/t/p/w185/bV0rGSPrK4AUvODjB3zMAwDdeIf.jpg	From Wikipedia, the free encyclopedia \n\nGregor "Gore" Verbinski is an American film director and writer, best known for directing the first three Pirates of the Caribbean films and The Ring.\n\nVerbinski was born the third of five children to Vic and Laurette Verbinski in Oak Ridge, Tennessee. His siblings are Janine, Claire, Diane and Steven. His father was of Polish descent and worked as a nuclear physicist at Oak Ridge National Laboratory. In 1967 the Verbinski family moved to Southern California, where a young Gregor grew up in the town of La Jolla.\n\nGregor was an active Boy Scout and surfed regularly. He went to Torrey Pines Elementary, Muirlands Junior High, and La Jolla High School before attending UCLA Film School. Verbinski graduated with his BFA in Film from UCLA in 1987.\n\nVerbinski was active in several L.A. rock bands early in his career. His first band was Thelonius Monster, which included drummer Danny Heifetz. He also played in the Daredevils, Bulldozer, The Drivers, and the all-star band The Cylon Boys Choir.\n\nHe was also in a band called The Little Kings, which backed Stiv Bators on his version of "Have Love Will Travel". Along with a cover of the Moody Blues song "The Story in Your Eyes" (by other musicians), the song was released by Bators in the Fall of 1986 as a 12-inch single on Bomp! (catalogue #12136) and was later included in Bators' compilation album L.A. L.A. On the compilation album's liner notes, label owner Greg Shaw described the band as "an adequate but rootless Hollywood glam-damaged band with tattoos".\n\nHis first films were a series of 8 mm films called "The Driver Files" circa 1979, when he was a young teen. Although most associate Verbinski with feature films, he started his career directing music videos for bands like Bad Religion, NOFX, 24-7 Spyz and Monster Magnet working at Palomar Pictures. This was not surprising to his friends in Los Angeles, since he had been in various punk and rock bands; the Daredevils, for instance, included then-departed member of Bad Religion Brett Gurewitz.\n\nVerbinski moved from music videos to commercials, where he worked for many brand names including Nike, Coca-Cola, Canon, Skittles and United Airlines. One of his most famous commercials was for Budweiser, featuring frogs who croak the brand name. For his efforts in commercials, Verbinski won four Clio Awards and one Cannes Advertising Silver Lion.\n\nAfter completing a short film, The Ritual (which he both wrote and directed), Verbinski made his feature film directing debut with his comedy flick, Mouse Hunt. The film was a hit globally and he soon followed up the success with the action/comedy The Mexican, starring Julia Roberts and Brad Pitt. The film received mixed reviews, and performed modestly at the box-office, earning $68 million domestically which was quite meager considering its star power (it was technically successful due to its moderately low $38 million budget). Verbinski followed it up with the horror film remake The Ring (2002), which struck gold globally, grossing well over $200 million worldwide. Verbinski also had a directorial hand in The Time Machine that year, temporarily taking over for an exhausted Simon Wells. Verbinski directed some of the underground Morlock sequences and is given a Thanks to credit in the film.\n\nHe then directed the very successful Pirates of the Caribbean: The Curse of the Black Pearl which earned over $600 million at the international box office.\n\nHis next film was The Weather Man which starred Nicolas Cage. The film received mixed to positive reviews but was a box office failure.\n\nIn March 2005 he started filming the sequels Pirates of the Caribbean: Dead Man's Chest and Pirates of the Caribbean: At World's End. The former then became his biggest success so far, becoming the third film ever to gross over $1 billion at the international box office.\n\nHis future project will be an adaption of William Monahan's novel Light House: A Trifle, which is a story about an artist running away from the Mafia who hides in a lighthouse, in which kooky characters live. He will also direct Butterfly, about a man trying to drive his wife insane.\n\nVerbinski was also set to direct a film for Universal based on the video game, BioShock.  However he has since been replaced by Juan Carlos Fresnadillo as director, but he will still produce. Verbinski announced in July the film had an R-rating, formerly was planned with an PG-13 rating. It has also been announced that he direct a remake of the film Clue, based on the board game.\n\nDescription above from the Wikipedia article Gore Verbinski, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Gore Verbinski	1964-03-16	No data.	2
53120	No data.		James DeMonaco	1969-10-12	No data.	2
10965	http://image.tmdb.org/t/p/w185/2fHN78oumrJRM84UydgfVzj0YEl.jpg	Christopher Joseph Columbus (born September 10, 1958) is an American film director, producer and screenwriter. Columbus had most success with the first film in the Harry Potter series, Harry Potter and the Sorcerer's Stone, along with Home Alone, winning a British Comedy Award for Best Comedy Film.  Description above from the Wikipedia article Chris Columbus (filmmaker), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Chris Columbus	1958-09-10	No data.	2
77357	http://image.tmdb.org/t/p/w185/v3ws9iAETreGVuoHXKGFPkZszgy.jpg	From Wikipedia, the free encyclopedia.  Rupert Wyatt (born 26 October 1972 in Exeter) is a British writer and film director.  Description above from the Wikipedia article Rupert Wyatt, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rupert Wyatt	1972-10-26	No data.	0
1702035	No data.		Lee Dol	No data.	No data.	2
87877	http://image.tmdb.org/t/p/w185/92PL9gKDnVN67e6Q25spP2UNi1y.jpg	Roar Uthaug (born August 25, 1973) is a Norwegian film director. He graduated from The Norwegian Filmschool in 2002.	Roar Uthaug	1973-08-25	No data.	2
1213074	http://image.tmdb.org/t/p/w185/zB5y8qPvfIcTPWjM7iVsyxB552G.jpg	Steven S. DeKnight was born in Millville, New Jersey, USA. He is a producer and writer, known for Spartacus: War of the Damned (2010), Daredevil (2015) and Angel (1999). He is married to Jaime Slater	Steven S. DeKnight	1964-04-08	No data.	2
54868	http://image.tmdb.org/t/p/w185/36PHfwA6XsnAVrJ6aXC1xDEipVE.jpg		Christian Gudegast	No data.	No data.	2
23964	http://image.tmdb.org/t/p/w185/dMoUDOJHsGrQcxKpFgbuMWRwiyI.jpg	Gary Ross (born November 3, 1956) is an American writer, director, and actor. He is best known for directing Pleasantville and Seabiscuit, both of which featured Tobey Maguire in the lead role.	Gary Ross	1956-11-03	No data.	2
6884	http://image.tmdb.org/t/p/w185/za4JYxjctECHLJJel3lEFPsbeht.jpg	Patricia Lea "Patty" Jenkins (born July 24, 1971) is an American film director and screenwriter. She is best known for directing Monster (2003) and Wonder Woman (2017).	Patty Jenkins	1971-07-24	No data.	1
2045287	No data.		Marie-Grete Heinemann	No data.	No data.	0
55252	http://image.tmdb.org/t/p/w185/dCyBYwhO76j5wA96HPb6k5xk2Le.jpg	Tim Miller (born September 22, 1958 in Pasadena, California) is an American performance artist and writer, whose pieces frequently involve gay identity, marriage equality and immigration issues. He was one of the NEA Four, four performance artists whose National Endowment for the Arts grants were vetoed in 1990 by NEA chair John Frohnmayer.\n\nDescription above from the Wikipedia article Tim Miller, licensed under CC-BY-SA, full list of contributors on Wikipedia .	Tim Miller	1958-09-22	No data.	2
19769	http://image.tmdb.org/t/p/w185/2oBT2jQbsV8IWPMr3Cm87YBJxGu.jpg	David Ayer (born January 18, 1968) is an American film director, producer and screenwriter. He is best known for being the writer of Training Day (2001) and the director of Harsh Times (2005), Street Kings (2008), End of Watch (2012), Sabotage (2014), Fury (2014), Suicide Squad (2016) and Bright (2017).\n\nDescription above from the Wikipedia article  David Ayer, licensed under CC-BY-SA, full list of contributors on Wikipedia.	David Ayer	1968-01-18	No data.	2
20629	http://image.tmdb.org/t/p/w185/4FyQESSzuu1VkPup9CmMjdnUyhv.jpg	George Miller (born 3 March 1945) is an Australian film director, screenwriter, producer, and former medical doctor. He is probably most well known for his work on the Mad Max movies, but has been involved in a wide range of projects, including the Oscar-winning Happy Feet.\n\nMiller is the older brother of producer Bill Miller.\n\nHe is a also co-founder of the Production House Dr.D Studios and Kennedy-Miller Mitchell Films formerly known as Kennedy-Miller Productions.\n\nDescription above from the Wikipedia article George Miller, licensed under CC-BY-SA, full list of contributors on Wikipedia	George Miller	1945-03-03	No data.	2
1979671	No data.		Tak Seung-oh	No data.	No data.	0
57617	http://image.tmdb.org/t/p/w185/uyHSy9QyXb9pwZPG2Rd4jI7fPIV.jpg		Jeffrey Lau	1952-08-01	No data.	0
77965	http://image.tmdb.org/t/p/w185/rE1zmcXoqtJl5fIa3fKoqnzteyw.jpg	Morten Tyldum (born 19 May 1967) is a Norwegian film director. He is best known for directing internationally successful films such as Headhunters (2011), a thriller based on a novel by Jo Nesbø and The Imitation Game (2014), a historical drama for which he was nominated for the Academy Award for Best Director.\n\nDescription above from the Wikipedia article Morten Tyldum, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Morten Tyldum	1967-05-19	No data.	2
932088	http://image.tmdb.org/t/p/w185/ecEC3qcC5B9wEdDzobAZBQVaWKb.jpg		Scott Speer	No data.	No data.	2
1862367	No data.		Napat jidwerapat	No data.	No data.	0
1862370	No data.		Artwanun klinaiem	No data.	No data.	0
932533	http://image.tmdb.org/t/p/w185/vBv41EnEGVSD6EgSj2mD9dPSdJW.jpg	Stefano Sollima (born 4 May 1966) is an Italian film and television director. He is best known for his crime-drama works such as Romanzo criminale – La serie (2006–2008), ACAB – All Cops Are Bastards (2012), the Gomorrah TV series (2014–2016), and Suburra (2015). As well as his 2018 follow-up to Sicario, titled Sicario: Day of the Soldado.\n\nDescription above from the Wikipedia article Stefano Sollima, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Stefano Sollima	1966-05-04	No data.	2
1485406	No data.		J.D. Dillard	No data.	No data.	0
66739	http://image.tmdb.org/t/p/w185/9oDaNDxU1nI6t2J6ldOYhiq2Qkf.jpg	From Wikipedia, the free encyclopedia.\n\nJonathan Liebesman (born September 15, 1976) is a South African film director.\n\nDescription above from the Wikipedia article Jonathan Liebesman, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jonathan Liebesman	1976-09-15	No data.	0
1137903	http://image.tmdb.org/t/p/w185/dwX7Tgg5VSAsx5CfCy0eEj98sFn.jpg	Sam Taylor-Johnson was born on March 4, 1967 in London, England as Samantha Louise Taylor-Wood. She is a director and producer, known for Nowhere Boy (2009), Fifty Shades of Grey (2015) and Love You More (2008).	Sam Taylor-Johnson	1967-03-04	No data.	1
177532	http://image.tmdb.org/t/p/w185/jsfhlwElHS9no8fSCtNcw5yccV9.jpg		Marielle Heller	1979-10-01	No data.	1
87772	http://image.tmdb.org/t/p/w185/tPSho6OTkFrqL5ay9RGX6shPENF.jpg		Rajkumar Santoshi	No data.	No data.	0
2127	http://image.tmdb.org/t/p/w185/9AlAMoHVDUX8GVOTw6JOyKil8k9.jpg	James Wan is a Malaysian-born Australian producer, screenwriter, and film director of Chinese heritage. He is widely known for directing the horror film Saw and creating Billy the puppet. He also directed Dead Silence, Death Sentence and Insidious.  Description above from the Wikipedia article James Wan, licensed under CC-BY-SA, full list of contributors on Wikipedia.	James Wan	1977-02-27	No data.	2
7	http://image.tmdb.org/t/p/w185/pvQWsu0qc8JFQhMVJkTHuexUAa1.jpg	Andrew Stanton (born December 3, 1965) is an American film director, screenwriter, producer, and occasional voice actor based at Pixar Animation Studios. His film work includes writing and directing Finding Nemo and WALL-E; both films earned him the Academy Award for Best Animated Feature.\n\nDescription above from the Wikipedia article Andrew Stanton, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Andrew Stanton	1965-12-03	No data.	2
10943	http://image.tmdb.org/t/p/w185/pyGWo5mAwZ2Koe6leB2RjKd7vmc.jpg	Francis Lawrence (born March 26, 1970) is an American music video director and film director.	Francis Lawrence	1970-03-26	No data.	2
132876	http://image.tmdb.org/t/p/w185/7F7dM4A6QbA67xOxTJyv3aqinrA.jpg		Brad Peyton	No data.	No data.	2
4027	http://image.tmdb.org/t/p/w185/9KVvZtDyy8DXacw2TTsjC9VLxQi.jpg	Frank Darabont (born January 28, 1959) is a Hungarian-American film director, screenwriter and producer who has been nominated for three Academy Awards and a Golden Globe. He was born in France by Hungarian parents who fled Budapest during the 1956 uprising, but the family moved to Los Angeles while he was still an infant. He has directed the films The Shawshank Redemption, The Green Mile, and The Mist, all based on stories by Stephen King. In 2010 he developed and executive produced the first season of the AMC network television series The Walking Dead. Description above from the Wikipedia article Frank Darabont, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Frank Darabont	1959-01-28	No data.	2
59611	http://image.tmdb.org/t/p/w185/jfRV2BRpKfHo0ff9nxrhIT03iUv.jpg		Pascal Laugier	1971-10-16	No data.	0
82194	http://image.tmdb.org/t/p/w185/wM1ACz7B2km2KGkxA1sg3QyHrtL.jpg	Neill Blomkamp (born 17 September 1979) is a South African–Canadian film director, film producer, screenwriter, and animator. Blomkamp employs a documentary-style, hand-held, cinéma vérité technique, blending naturalistic and photo-realistic computer-generated effects. He is best known as the co-writer and director of the critically acclaimed and financially successful science fiction film District 9 and the dystopian science fiction film Elysium, which garnered moderately positive reviews and a good box office return. He is also known for his collaborations with South African actor Sharlto Copley. He is based in Vancouver, British Columbia.\n\nTime named Blomkamp as one of the 100 Most Influential People of 2009. Forbes magazine named him as the 21st most powerful celebrity from Africa.\n\nDescription above from the Wikipedia article Neill Blomkamp, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Neill Blomkamp	1979-09-17	No data.	2
1324390	No data.		Justin Barber	No data.	No data.	0
19850	http://image.tmdb.org/t/p/w185/x8qMlCXpXlM66hOZ7dSMMWnojNo.jpg	​From Wikipedia, the free encyclopedia.  \n\nCatherine Hardwicke (born Helen Catherine Hardwicke; October 21, 1955) is an American production designer and film director. Her works include the independent film Thirteen, which she co-wrote with Nikki Reed, the film's co-star, the Biblically-themed The Nativity Story, the vampire film Twilight, and the werewolf film Red Riding Hood. The opening weekend of Twilight was the biggest opening ever for a female director.	Catherine Hardwicke	1955-10-21	No data.	1
1276373	http://image.tmdb.org/t/p/w185/aPfUH7DbWh7wxzylql5yD34S9g2.jpg		Michael Gracey	No data.	No data.	0
1120694	http://image.tmdb.org/t/p/w185/9BkQnsppXFWcNSRGo4GJ6QNq313.jpg		Jennifer Lee	1971-01-01	No data.	1
12995	http://image.tmdb.org/t/p/w185/mYpqFeHOKTPXLbZRKQjW1xECycl.jpg	Marc Forster (Illertissen, November 30, 1969) is a German-Swiss filmmaker and screenwriter, known for films such as Monster's Ball, Finding Neverland, Stranger than Fiction, The Kite Runner, and the James Bond film Quantum of Solace.\n\nDescription above from the Wikipedia article Marc Forster, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Marc Forster	1969-11-30	No data.	2
37948	http://image.tmdb.org/t/p/w185/qjEl3MLqL4MDZFMWO4ukQbBBal0.jpg	Brad Anderson is an American film director. A prolific director of thriller and horror films and television projects, he is best known for having directed The Machinist (2004), starring Christian Bale.	Brad Anderson	1964-01-01	No data.	2
3289	http://image.tmdb.org/t/p/w185/u6VYkIxricoJ31MkmljXs2ZCSFQ.jpg	​From Wikipedia, the free encyclopedia\n\nPaul John Weitz (born 1965) is an American film producer, screenwriter, actor, and film director.\n\nDescription above from the Wikipedia article Paul Weitz (filmmaker), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Paul Weitz	1965-11-19	No data.	2
578	http://image.tmdb.org/t/p/w185/fB1ypzkwJKXEOVVAd4ymYRpBkdC.jpg	Scott was born in South Shields, Tyne and Wear, England, the son of Elizabeth and Colonel Francis Percy Scott. He was raised in an Army family, meaning that for most of his early life, his father — an officer in the Royal Engineers — was absent. Ridley's older brother, Frank, joined the Merchant Navy when he was still young and the pair had little contact. During this time the family moved around, living in (among other areas) Cumbria, Wales and Germany. He has a younger brother, Tony, also a film director. After the Second World War, the Scott family moved back to their native north-east England, eventually settling in Teesside (whose industrial landscape would later inspire similar scenes in Blade Runner). He enjoyed watching films, and his favourites include Lawrence of Arabia, Citizen Kane and Seven Samurai. Scott studied in Teesside from 1954 to 1958, at Grangefield Grammar School and later in West Hartlepool College of Art, graduating with a Diploma in Design. He progressed to an M.A. in graphic design at the Royal College of Art from 1960 to 1962.\n\nAt the RCA he contributed to the college magazine, ARK and helped to establish its film department. For his final show, he made a black and white short film, Boy and Bicycle, starring his younger brother, Tony Scott, and his father. The film's main visual elements would become features of Scott's later work; it was issued on the 'Extras' section of The Duellists DVD. After graduation in 1963, he secured a job as a trainee set designer with the BBC, leading to work on the popular television police series Z-Cars and the science fiction series Out of the Unknown. Scott was an admirer of Stanley Kubrick early in his development as a director. For his entry to the BBC traineeship, Scott remade Paths of Glory as a short film.\n\nHe was assigned to design the second Doctor Who serial, The Daleks, which would have entailed realising the famous alien creatures. However, shortly before Scott was due to start work, a schedule conflict meant that he was replaced on the serial by Raymond Cusick.\n\nAt the BBC, Scott was placed into a director training programme and, before he left the corporation, had directed episodes of Z-Cars, its spin-off, Softly, Softly, and adventure series Adam Adamant Lives!\n\nIn 1968, Ridley and Tony Scott founded Ridley Scott Associates (RSA), a film and commercial production company.Five members of the Scott family are directors, all working for RSA. Brother Tony has been a successful film director for more than two decades; sons, Jake and Luke are both acclaimed commercials directors as is his daughter, Jordan Scott. Jake and Jordan both work from Los Angeles and Luke is based in London.\n\nIn 1995, Shepperton Studios was purchased by a consortium headed by Ridley and Tony Scott, which extensively renovated the studios while also expanding and improving its grounds.  	Ridley Scott	1937-11-30	No data.	2
1236679	http://image.tmdb.org/t/p/w185/s1fwSaxlYvw3KdmRvT1ZSYhsEkJ.jpg	Jonathan M. Goldstein was born in 1969 in. He is a producer and writer.	Jonathan M. Goldstein	1969-01-01	No data.	2
12058	http://image.tmdb.org/t/p/w185/z9GhYY3huqa0t1nJNo0FIBBgngZ.jpg		Vicky Jenson	No data.	No data.	1
27571	http://image.tmdb.org/t/p/w185/yAJGgmJlKdBzIKk9ovRpeWXDblf.jpg	David A. Slade (born 26 September 1969) is a British film director who began his career making music videos. His work includes videos for artists such as Aphex Twin, Rob Dougan, System of a Down, Stone Temple Pilots, Tori Amos, and Muse.	David Slade	1969-09-26	No data.	2
3288	http://image.tmdb.org/t/p/w185/xlnVbsnoP3PZCjEa2d99ETVLAFB.jpg	From Wikipedia, the free encyclopedia\n\nChristopher John "Chris" Weitz (born November 30, 1969) is an American producer, writer, director and actor. He is best known for his work with his brother, Paul Weitz, on the comedy films American Pie and About a Boy, as well as directing the film adaptation of the novel The Golden Compass and the film adaptation of New Moon from the series of Twilight books.\n\nDescription above from the Wikipedia article Chris Weitz, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Chris Weitz	1969-11-30	No data.	2
130372	No data.		Fernando Lebrija	No data.	No data.	2
70238	http://image.tmdb.org/t/p/w185/eE2NDdeKN1DC3XuV6L4xuEbVaS.jpg	Chris Williams is an American film director, screenwriter and animator at Walt Disney Animation Studios. He is well known for have directing Glago's Guest and Bolt.\n\nWilliams previously worked in the story department for Mulan, The Emperor's New Groove, Brother Bear and Bolt in which he later directed replacing Chris Sanders as director.\n\nHe is set to direct the upcoming animated feature film, King of the Elves based on the story by Philip K. Dick.  Description above from the Wikipedia article Chris Williams( director ), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Chris Williams	1967-11-02	No data.	2
17825	http://image.tmdb.org/t/p/w185/bgu9dR2Xlt6xNgcNRgNWhySvFwV.jpg	From Wikipedia, the free encyclopedia.\n\nShawn Adam Levy (born 1968) is a Canadian-American director, producer and actor who directed the comedy films Big Fat Liar, Just Married, Cheaper by the Dozen, The Pink Panther, Night at the Museum, and Date Night. He has also directed many television shows, including Cousin Skeeter, The Famous Jett Jackson and Pepper Dennis.\n\nDescription above from the Wikipedia article Shawn Levy, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Shawn Levy	1968-01-01	No data.	2
67367	http://image.tmdb.org/t/p/w185/qWWRFkeMjTjQKoyEXhsV0QQp4qd.jpg	Rian Craig Johnson  (born December 17, 1973) is an American writer and director, who won the Special Jury Prize for Originality of Vision at the 2005 Sundance Film Festival with his debut feature, Brick.\n\nDescription above from the Wikipedia article Rian Johnson, licensed under CC-BY-SA, full list of contributors on Wikipedia	Rian Johnson	1973-12-17	No data.	2
40684	http://image.tmdb.org/t/p/w185/eVSgvAIsP6mwuVbbhVb4HkVvmsu.jpg	David Leitch is actor, stuntman, writer, producer, stunt coordinator and film director. He has had roles in Confessions of an Action Star, Tron: Legacy, and The Matrix Trilogy.	David Leitch	1969-12-31	No data.	2
1032	http://image.tmdb.org/t/p/w185/4Xwx5XL1RJj0JQmEo8Fhr6nkpOg.jpg	​American film director, screenwriter, producer, actor, and film historian Martin Marcantonio Luciano Scorsese made the short films while he attended New York University's film school; these include “What's a Nice Girl Like You Doing in a Place Like This?” (1963), “It's Not Just You, Murray!” (1964), and his most famous short of the period “The Big Shave” (1967). This came shortly after seriously considering entering into priesthood. He entered a seminary in 1956 then opted to direct his focus toward film; he graduated from NYU as a film major in 1964.\n\nScorsese made his first feature-length film in 1967, “Call First”, which was later retitled “Who's That Knocking at My Door”, which was followed by “Boxcar Bertha” (1972). The Film “Taxi Driver” (1976) won the Palme d'Or at the 1976 Cannes Film Festival, and received four Oscar nominations, including Best Picture, establishing Scorsese as an accomplished filmmaker operating on a highly skilled level. \n\nScorsese has been married five times. His first wife was Laraine Marie Brennan; they have a daughter, Catherine. He married the writer Julia Cameron in 1976; they have a daughter, Domenica Cameron-Scorsese, who is an actress and appeared in The Age of Innocence, but the marriage lasted only a year. He was married to actress Isabella Rossellini from 1979 to their divorce in 1983. He then married producer Barbara De Fina in 1985; their marriage ended in divorce as well, in 1991. He has been married to Helen Morris since 1999; they have a daughter, Francesca, who appeared in The Departed and The Aviator. He is primarily based in New York City.	Martin Scorsese	1942-11-17	No data.	2
608	http://image.tmdb.org/t/p/w185/1OBQPIwR88n49oAEzk47k0fhhOV.jpg	Hayao Miyazaki (Miyazaki Hayao, born January 5, 1941) is a Japanese manga artist and prominent film director and animator of many popular anime feature films. Through a career that has spanned nearly five decades, Miyazaki has attained international acclaim as a maker of animated feature films and, along with Isao Takahata, co-founded Studio Ghibli, an animation studio and production company. The success of Miyazaki's films has invited comparisons with American animator Walt Disney, British animator Nick Park as well as Robert Zemeckis, who pioneered Motion Capture animation, and he has been named one of the most influential people by Time Magazine.\n\nMiyazaki began his career at Toei Animation as an in-between artist for Gulliver's Travels Beyond the Moon where he pitched his own ideas that eventually became the movie's ending. He continued to work in various roles in the animation industry over the decade until he was able to direct his first feature film Lupin III: The Castle of Cagliostro which was published in 1979. After the success of his next film, Nausicaä of the Valley of the Wind, he co-founded Studio Ghibli where he continued to produce many feature films until Princess Mononoke whereafter he temporarily retired.\n\nWhile Miyazaki's films have long enjoyed both commercial and critical success in Japan, he remained largely unknown to the West until Miramax released his 1997 film, Princess Mononoke. Princess Mononoke was the highest-grossing film in Japan—until it was eclipsed by another 1997 film, Titanic—and the first animated film to win Picture of the Year at the Japanese Academy Awards. Miyazaki returned to animation with Spirited Away. The film topped Titanic's sales at the Japanese box office, also won Picture of the Year at the Japanese Academy Awards and was the first anime film to win an American Academy Award.\n\nMiyazaki's films often incorporate recurrent themes, such as humanity's relationship to nature and technology, and the difficulty of maintaining a pacifist ethic. Reflecting Miyazaki's feminism, the protagonists of his films are often strong, independent girls or young women. Miyazaki is a vocal critic of capitalism and globalization.[3] While two of his films, The Castle of Cagliostro and Castle in the Sky, involve traditional villains, his other films such as Nausicaa or Princess Mononoke present morally ambiguous antagonists with redeeming qualities.	Hayao Miyazaki	1941-01-05	No data.	2
607	http://image.tmdb.org/t/p/w185/uU5vECl94jDQYjiRk4eOpVRMEi9.jpg	Zhang Yimou (born November 14, 1950 or 1951)  is a Chinese film director, producer, writer and actor, and former cinematographer. He is counted amongst the Fifth Generation of Chinese filmmakers, having made his directorial debut in 1987 with Red Sorghum. Zhang has won numerous awards and recognitions, with Best Foreign Film nominations for Ju Dou in 1990 and Raise the Red Lantern in 1991, Silver Lion and Golden Lion prizes at the Venice Film Festival, Grand Jury Prize at the Cannes Film Festival, and the Golden Bear at the Berlin International Film Festival. One of Zhang's recurrent themes is the resilience of Chinese people in the face of hardship and adversity, a theme which has been explored in such films as, for example, To Live (1994) and Not One Less (1999). His films are particularly noted for their rich use of colour, as can be seen in some of his early films, like Raise the Red Lantern, and in his wuxia films like Hero and House of Flying Daggers.\n\nDescription above from the Wikipedia article Zhang Yimou, licensed under CC-BY-SA, full list of contributors on Wikipedia.    	Zhang Yimou	1951-11-14	No data.	2
1341472	No data.		Jeff Tomsic	No data.	No data.	0
57741	http://image.tmdb.org/t/p/w185/uX4TukmZ2bqo164mtE1TEKnQSu1.jpg	​From Wikipedia, the free encyclopedia.  \n\nMark Randolph Osborne (September 17, 1970) is an American film director, writer, producer, animator and Guggenheim Fellow (2004).\n\nDescription above from the Wikipedia article Mark Osborne (filmmaker), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Mark Osborne	1970-09-17	No data.	2
71729	http://image.tmdb.org/t/p/w185/rrzPXZh0fj0QBkfWGOZdtb9Ppy1.jpg		Steve Martino	No data.	No data.	2
229962	http://image.tmdb.org/t/p/w185/zrnMfWbX5rrmZSmTPZZDD6RqdOE.jpg		Mike Thurmeier	No data.	No data.	2
51894	http://image.tmdb.org/t/p/w185/cnbbnS7K8Uu6yohAfSRHv5Kxc7r.jpg	J.A. Bayona was born on May 9, 1975 in Barcelona, Catalonia, Spain as Juan Antonio García Bayona. He is a director, known for The Impossible (2012), The Orphanage (2007) and A Monster Calls (2016).	Juan Antonio Bayona	1975-05-09	No data.	2
1144885	No data.		Yuzuru Tachikawa	No data.	No data.	0
7623	http://image.tmdb.org/t/p/w185/uEAaCUJzyMI8N5mOVyLtaOPKoEf.jpg	Samuel Marshall "Sam" Raimi (October 23, 1959) is an American film director, producer, actor and writer. He is best known for directing cult horror films like the Evil Dead series, Darkman and Drag Me to Hell, as well as the blockbuster Spider-Man films and the producer of the successful TV series Hercules: The Legendary Journeys, Xena: Warrior Princess, Legend of the Seeker and Spartacus: Blood and Sand.\n\nDescription above from the Wikipedia article Sam Raimi, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Sam Raimi	1959-10-23	No data.	2
8676	http://image.tmdb.org/t/p/w185/zPeGiLiogQe3udUk7g6tlpERtW9.jpg	​From Wikipedia, the free encyclopedia  Dean Devlin (born August 27, 1962) is an American screenwriter, producer, television director and former actor. He is the founder of the production company Electric Entertainment.  Description above from the Wikipedia article Dean Devlin, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Dean Devlin	1962-08-27	No data.	2
9339	http://image.tmdb.org/t/p/w185/qofqjT1drfmB5VNstWqSSfEJOLD.jpg	Lana Wachowski (born June 21, 1965) and Lilly Wachowski (born December 29, 1967), siblings collectively known as The Wachowskis, are American film directors, writers and producers, most famous for creating The Matrix series and the Netflix show Sense8.	Lilly Wachowski	1967-12-29	No data.	1
15890	http://image.tmdb.org/t/p/w185/ujAhQvNNnBqa6ZP2C46DMdAp09w.jpg	James Foley (born December 28, 1953) is an American film director and screenwriter. He was born in Bay Ridge, Brooklyn, New York, the son of a lawyer.His 1986 film At Close Range was entered into the 36th Berlin International Film Festival.\n\nDescription above from the Wikipedia article  James Foley, licensed under CC-BY-SA, full list of contributors on Wikipedia.	James Foley	1953-12-28	No data.	2
510	http://image.tmdb.org/t/p/w185/yHEHAHQpN9PfSEQx1UxZPczhcAi.jpg	Timothy Walter "Tim" Burton (born August 25, 1958) is an American film director, film producer, writer and artist. He is famous for dark, quirky-themed movies such as Beetlejuice, Edward Scissorhands, The Nightmare Before Christmas, Sleepy Hollow, Corpse Bride and Sweeney Todd: The Demon Barber of Fleet Street, and for blockbusters such as Pee-wee's Big Adventure, Batman, Batman Returns, Planet of the Apes, Charlie and the Chocolate Factory and Alice in Wonderland, his most recent film, that was the second highest-grossing film of 2010 as well as the sixth highest-grossing film of all time. Among Burton's many collaborators are Johnny Depp, who became a close friend since their film together, musician Danny Elfman (who has composed for all but five of the films Burton has directed and/or produced) and domestic partner Helena Bonham Carter. He also wrote and illustrated the poetry book The Melancholy Death of Oyster Boy &amp; Other Stories, published in 1997, and a compilation of his drawings, entitled The Art of Tim Burton, was released in 2009. Burton has directed 14 films as of 2010, and has produced 10 as of 2009. His next films are a film adaptation of soap opera Dark Shadows, which is slated to begin production in January 2011 and a remake of his short Frankenweenie, which will be released on October 5, 2012. Description above from the Wikipedia article Tim Burton, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Tim Burton	1958-08-25	No data.	2
11694	http://image.tmdb.org/t/p/w185/cWpE3dSbskWOea4kAGzQpNIkfxM.jpg	Douglas Eric "Doug" Liman (born July 24, 1965) is an American film director and producer best known for Swingers (1996), The Bourne Identity (2002), Mr. &amp; Mrs. Smith (2005), Jumper (2008), and Fair Game (2010).  Description above from the Wikipedia article Doug Liman, licensed under CC-BY-SA, full list of contributors on Wikipedia	Doug Liman	1965-07-24	No data.	2
38692	http://image.tmdb.org/t/p/w185/bAf7mBti0hlEUeovaamit4XrVe.jpg	From Wikipedia, the free encyclopedia\n\nPaul Hoen is an American director and producer.\n\nHoen has directed and produced projects such as Cheetah Girls 3 and Dadnapped.\n\nHoen studied drama, film and television at the University of Santa Clara. He was admitted to the Directors Guild of America in 1987. Since then he has directed several television films such as Camp Rock 2: The Final Jam, Jump In, Read It and Weep, Eddie's Million Dollar Cook-Off, You Wish!, Tru Confessions starring Shia LaBeouf and the comedy The Luck of the Irish starring Ryan Merriman. Both Jump In and Luck of the Irish on first airing were the Disney Channel's highest rated programs.\n\nIn January 2008, Paul Hoen won the DGA award for the film Jump In and in January 2009 he won for The Cheetah Girls One World. He has also been nominated for two other DGA awards for Take My Sister Please an episode from the series Even Stevens, and Searching for David's Heart, the ABC Family Movie starring Danielle Panabaker. The film was also nominated for a Young Artist Award for Best Family Television Movie or Special and Danielle Panabaker won the Young Artist Award for Best Young Actress in a TV Movie. The film was also the 2005 recipient of The Humanitas Prize. You Wish! and Jump In were also nominated for Humanitas Prizes.\n\nPopular series directed by Hoen include Roundhouse, The Secret World of Alex Mack, Sabrina, the Teenage Witch, Cousin Skeeter, The Jersey, where he is also credited as Producer, Just for Kicks, Ned's Declassified School Survival Guide, Just Jordan, the N series Beyond the Break, and South of Nowhere, which was nominated for a GLADD Award for Best Teen Drama. Paul Hoen has also directed two successful pilots for Nickelodeon, The Journey of Allen Strange and 100 Deeds for Eddie McDowd. He was also the director and executive producer of the Disney Channel series starring the Jonas Brothers, Jonas L.A..\n\nDescription above from the Wikipedia article Paul Hoen, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Paul Hoen	No data.	No data.	2
57113	http://image.tmdb.org/t/p/w185/aVUOK0drciJpy3vKI2XgjvoUvAM.jpg	Dan Gilroy was born in Santa Monica, California, the son of Pulitzer Prize winning playwright Frank D. Gilroy, and sculptor and writer Ruth Dorothy. His brother Tony Gilroy is a screenwriter and director; and his fraternal twin brother, John Gilroy, is a film editor. Through his father, he is of Italian, Irish and German descent.	Dan Gilroy	1959-06-24	No data.	2
17697	http://image.tmdb.org/t/p/w185/nOWwdZURikW22qo6OUSGFCTukgc.jpg	John Burke Krasinski (born October 20, 1979) is an American actor, film director and writer. He is widely known for playing Jim Halpert on the NBC sitcom The Office from 2005 to 2013. He has also appeared in several films including License to Wed (2007), Leatherheads (2008), Away We Go (2009), It's Complicated (2009), Something Borrowed (2011), Aloha (2015), 13 Hours: The Secret Soldiers of Benghazi (2016), Detroit (2017), and A Quiet Place (2018), which he also directed and co-wrote.	John Krasinski	1979-10-20	No data.	2
55075	http://image.tmdb.org/t/p/w185/cOTfT6Jmg5aG86UJpgqVM5pY9Wv.jpg	Jeff Wadlow is a director who recently directed the 2005 film Cry Wolf with the money he won in the 2002 Chrysler Million Dollar Film Competition for his short film, Living the Lie. He recently finished his last movie, Never Back Down, which was released on 14 March 2008, and stars Djimon Hounsou and Sean Faris.\n\nHe is the nephew of CBS Evening News Anchor Katie Couric and is the son of the late Emily Couric, Katie Couric's older sister, who served as a Virginia State Senator before she died in 2001 due to pancreatic cancer.	Jeff Wadlow	1976-03-02	No data.	2
136495	http://image.tmdb.org/t/p/w185/8LBuD2byosS7jcYakm8JmBXC0N9.jpg	Damien Chazelle (born January 19, 1985) is an American film director, producer and screenwriter from Providence, Rhode Island, USA. He is known for Whiplash (2014) and La La Land (2016). The latter earned him the Academy Award for Best Director, making him the youngest director in history to receive the award. Both films received critical acclaim and earned an Academy Award nomination for Best Picture.	Damien Chazelle	1985-01-19	No data.	2
1108	http://image.tmdb.org/t/p/w185/lEyKmYizNVNLsOEgeaPFwX9MZoA.jpg	Shane Black (born December 16, 1961) is an American actor, screenwriter and film director. He contributed to some of the biggest blockbuster action films of the late 1980s and early 1990s, including work on Lethal Weapon and The Last Boy Scout.\n\nDescription above from the Wikipedia article Shane Black, licensed under CC-BY-SA, full list of contributors on Wikipedia	Shane Black	1961-12-16	No data.	2
929825	http://image.tmdb.org/t/p/w185/aPqljM4HgoqAAK4xNw5mxbF0dRp.jpg	Ava Marie DuVernay (born August 24, 1972) is an American director, screenwriter, film marketer, and film distributor. At the 2012 Sundance Film Festival, DuVernay won the Best Director Prize for her second feature film Middle of Nowhere, becoming the first African-American woman to win the award. For her work in Selma (2014), DuVernay was the first black female director to be nominated for a Golden Globe Award. With Selma, she was also the first black female director to have her film nominated for the Academy Award for Best Picture, though she was not nominated for Best Director. In 2017, she was nominated for the Academy Award for Best Documentary Feature for her film 13th (2016).	Ava DuVernay	1972-08-24	No data.	1
12786	http://image.tmdb.org/t/p/w185/dgg76ebEa1KMdclIL0UrYQTOK7H.jpg	​From Wikipedia, the free encyclopedia\n\nSimon West (born 1961) is an English-born film director. West started as a film editor with the BBC, then directed documentaries and commercials including many for Budweiser. His film directing career started when he directed Con Air in 1997.\n\nDescription above from the Wikipedia Simon West, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Simon West	No data.	No data.	2
1	http://image.tmdb.org/t/p/w185/8qxin8urtFE0NqaZNFWOuV537bH.jpg	Arguably the most important film innovator in the history of the medium, George Lucas continually "pushed the envelope" of filmmaking technology since his early days as a student at U.S.C. Considered a wunderkind by his contemporaries, he had a much harder time communicating his vision to studio executives, whose meddling managed to compromise each of his first three feature directing efforts in some way. The monumental success of "Star Wars" (1977) ushered in the era of the "summer blockbuster," which, despite the later popularity of low budget independent films, was still the prevailing mentality powering the Hollywood engine.\n\nThough he set the tone and established the expectations which influenced studios to devote the bulk of their resources to films designed to blast off into hyperspace for spectacular profits, it was doubtful that a film as revolutionary as "Star Wars" was in its day could get made in the later blockbuster assembly line climate of the new millennium.	George Lucas	1944-05-14	No data.	2
8	http://image.tmdb.org/t/p/w185/bdTCCXjgOV3YyaNmLGYGOxFQMOc.jpg	Lee Unkrich (born August 8, 1967) is an American director and film editor. He is a longtime member of the creative team at Pixar, where he started in 1994 as a film editor. He later began directing, first as co-director of Toy Story 2. After co-directing Monsters, Inc., and Finding Nemo, Unkrich made his solo directorial debut with Toy Story 3, for which he won the Academy Award for Best Animated Feature in 2011. Unkrich is the 2011 recipient of University of Southern California's Mary Pickford Distinguished Alumni Award recognizing alumni contributions to the cinematic arts. With the award, Unkrich joins a list of distinguished USC alumni including Robert Zemeckis, Walter Murch, Jon Landau, Gary Rydstrom and Jay Roach.\n\nA native of Chagrin Falls, Ohio, Unkrich spent his youth acting at the Cleveland Playhouse. Unkrich graduated from the University of Southern California School of Cinematic Arts in 1990. Before joining Pixar in 1994, Unkrich worked for several years in television as an editor and director.\n\nDescription above from the Wikipedia article Lee Unkrich, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Lee Unkrich	1967-08-08	No data.	2
1293994	http://image.tmdb.org/t/p/w185/5CKKBhuScdsHs2KPBBx5pveMOQQ.jpg	Jon Watts is an American film director, producer and screenwriter. He directed the films Clown and Cop Car and episodes of the Onion News Network.\n\nWatts is directing and co-wrote the upcoming Marvel Studios and Sony Pictures produced Spider-Man: Homecoming, slated for a July 7, 2017 release.\n\nWatts was born and raised in Fountain, Colorado. He studied film at New York University.\n\nBefore directing movies, Watts directed commercials for production company Park Pictures. When trying to get the job directing Spider-Man: Homecoming, Watts got a tattoo of Spider-Man on his chest to make himself "stand out in the field".	Jon Watts	1981-06-28	No data.	2
15217	http://image.tmdb.org/t/p/w185/iD0GDqkvJXDXiNEZej198hjt3Tt.jpg	Zachary Edward "Zack" Snyder (born March 1, 1966) is an American film director, screenwriter, and producer. After making his feature film debut with the 2004 remake Dawn of the Dead, he gained wide recognition with the 2007 box office hit 300, adapted from writer-artist Frank Miller's Dark Horse Comics miniseries of the same name, and later went on to direct the 2009 superhero film Watchmen, an adaptation of the comic book of the same name. He is the co-founder of Cruel and Unusual Films, a production company he established in 2004, alongside his wife Deborah Snyder and producing partner Wesley Coller. His first family film was the 2010 animated family adventure film Legend of the Guardians: The Owls of Ga'Hoole, based on the first three books of the series by Kathryn Lasky.\n\nDescription above from the Wikipedia article Zack Snyder, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Zack Snyder	1966-03-01	No data.	2
108	http://image.tmdb.org/t/p/w185/kSrfI3TbMdIMmPVOflLQ56OfscB.jpg	Sir Peter Robert Jackson, (born 31 October 1961) is a New Zealand film director, producer, actor, and screenwriter, known for his Lord of the Rings film trilogy, adapted from the novel by J. R. R. Tolkien. He is also known for his 2005 remake of King Kong and as the producer of District 9. He won international attention early in his career with his "splatstick" horror comedies, before coming to mainstream prominence with Heavenly Creatures, for which he shared an Academy Award Best Screenplay nomination with his wife, Fran Walsh. Jackson has been awarded three Academy Awards in his career, including the award for Best Director in 2003.\n\nDescription above from the Wikipedia article Peter Jackson, licensed under CC-BY-SA, full list of contributors on Wikipedia	Peter Jackson	1961-10-31	No data.	2
39	http://image.tmdb.org/t/p/w185/5z89X9rB76JDblqMQ52fviwXxAN.jpg	Samuel Alexander "Sam" Mendes, CBE (born 1 August 1965) is an English stage and film director. He has won two Laurence Olivier Awards for his London stage productions The Glass Menagerie and Company in 1996, and Twelfth Night and Uncle Vanya in 2003. He also received a Tony Award nomination for Best Direction of a Musical for the Broadway revival of Cabaret in 1998. His debut film American Beauty (1999) earned him an Academy Award for Best Director.\n\nDescription above from the Wikipedia article Sam Mendes, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Sam Mendes	1965-08-01	No data.	2
32278	http://image.tmdb.org/t/p/w185/2HMfA6PoON9BaoCMTQnlkpBZCsC.jpg	Matthew George "Matt" Reeves (born April 27, 1966) is an American screenwriter, director, and producer. Reeves began his career as a screenwriter for the films Under Siege 2: Dark Territory (1995) and The Pallbearer (1996), the latter of which marked his feature-length directorial debut. He then transitioned into television as a director and co-creator of the drama series Felicity (1998–2002) alongside J.J. Abrams. Reeves has since directed the found-footage horror film Cloverfield (2008), the romantic horror film Let Me In (2010), and the science fiction sequels Dawn of the Planet of the Apes (2014) and War for the Planet of the Apes (2017). In February 2017, Warner Bros. announced that Reeves would direct The Batman, to be set in the DC Extended Universe starring Ben Affleck as the titular character.\n\n(Wikipedia)	Matt Reeves	1966-04-27	No data.	2
59	http://image.tmdb.org/t/p/w185/2TzRsqSx0xb1DK3HsEQKSXhRGcu.jpg	Luc Besson is a French film director, writer, and producer known for making highly visual thriller and action films.  Besson has been nominated for, and won, numerous awards and honors from the foreign press, and is often credited as inventing the so-called "Cinema du look" movement in French film.  \n\nBorn in Paris, Besson spent his childhood traveling Europe with his parents and developing an enthusiasm for ocean diving, before an accident would push him toward the world of cinema.  After taking odd jobs in the Parisian film scene of the time, Besson began writing stories which would eventually evolve into some of his greatest film successes: The Fifth Element and Le Grand Bleu.  \n\nIn 1980 he founded his own production company, Les Films du Loup later Les Films du Dauphin,and later still EuropaCorp film company with his longtime collaborator, Pierre-Ange Le Poga. Besson's work stretches over twenty-six years and encompasses at least fifty-films.  .	Luc Besson	1959-03-18	No data.	2
11181	http://image.tmdb.org/t/p/w185/bmpGjbqvAVNOK3ggiuET2Jl96tZ.jpg	Kenneth Charles Branagh ( born 10 December 1960) is a Northern Irish-born English actor and film director. He is best known for directing and starring in several film adaptations of William Shakespeare's plays, but has also appeared in a number of films and television series.\n\nDescription above from the Wikipedia article Kenneth Branagh, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Kenneth Branagh	1960-12-10	No data.	2
525	http://image.tmdb.org/t/p/w185/7OGmfDF4VHLLgbjxuEwTj3ga0uQ.jpg	Christopher Jonathan James Nolan (born July 30, 1970) is a British/American film director, screenwriter and producer. He is known for writing and directing such critically acclaimed films as Memento (2000), Insomnia (2002), The Prestige (2006), Inception (2010), and rebooting the Batman film franchise. Nolan is the founder of the production company Syncopy Films. He often collaborates with his wife, producer Emma Thomas, and his brother, screenwriter Jonathan Nolan, as well as cinematographer Wally Pfister, film editor Lee Smith, composers David Julyan and Hans Zimmer, special effects coordinator Chris Corbould, and actors Christian Bale and Michael Caine. Nolan's most critically and commercially successful film is The Dark Knight.\n\nDescription above from the Wikipedia article Christopher Nolan, licensed under CC-BY-SA, full list of contributors on Wikipedia	Christopher Nolan	1970-07-30	No data.	2
2036	http://image.tmdb.org/t/p/w185/mijr9lMVIIc5Ts4rnc9tJNbQOux.jpg	Alexander "Alex" Medawar Garland (born May 26, 1970) is an English novelist, screenwriter, film producer and director, known for his work as the screenwriter of 28 Days Later (2002) and as the writer and director of Ex Machina (2014) and Annihilation (2018).	Alex Garland	1970-05-26	No data.	2
7467	http://image.tmdb.org/t/p/w185/dcBHejOsKvzVZVozWJAPzYthb8X.jpg	David Andrew Leo Fincher (born August 28, 1962) is an American film director and music video director. Known for his dark and stylish thrillers, such as Seven (1995), The Game (1997), Fight Club (1999), Panic Room (2002), and Zodiac (2007), Fincher received Academy Award nominations for Best Director for his 2008 film The Curious Case of Benjamin Button and his 2010 film The Social Network, which also won him the Golden Globe and the BAFTA for best director.	David Fincher	1962-08-28	No data.	2
488	http://image.tmdb.org/t/p/w185/pOK15UNaw75Bzj7BQO1ulehbPPm.jpg	Steven Allan Spielberg (born December 18, 1946) is an American film director, screenwriter, producer, and studio entrepreneur.\n\nIn a career of more than four decades, Spielberg's films have covered many themes and genres. Spielberg's early science-fiction and adventure films were seen as archetypes of modern Hollywood blockbuster filmmaking. In later years, his films began addressing issues such as the Holocaust, the Transatlantic slave trade, war, and terrorism. He is considered one of the most popular and influential filmmakers in the history of cinema. He is also one of the co-founders of DreamWorks movie studio.\n\nSpielberg won the Academy Award for Best Director for Schindler's List (1993) and Saving Private Ryan (1998). Three of Spielberg's films—Jaws (1975), E.T. the Extra-Terrestrial (1982), and Jurassic Park (1993)—achieved box office records, each becoming the highest-grossing film made at the time. To date, the unadjusted gross of all Spielberg-directed films exceeds $8.5 billion worldwide. Forbes puts Spielberg's wealth at $3.2 billion.	Steven Spielberg	1946-12-18	No data.	2
7087	http://image.tmdb.org/t/p/w185/2XwJyYs6XNLaQuC1O2gbEHT3jxx.jpg	Phillip Bradley "Brad" Bird (born September 15, 1957) is an American director, voice actor, animator and screenwriter. He is best known for writing and directing Disney/Pixar's The Incredibles (2004) and Ratatouille (2007). He also adapted and directed the critically acclaimed 2D animated 1999 Warner Brothers film The Iron Giant. Reviewing the Ratatouille DVD, Eye Weekly offered this characterization of Bird's work: "It's very hard to think of another mainstream American director with a comparably fluid visual style or such a vise-grip on storytelling mechanics." He also directed The Simpsons ' episodes "Krusty Gets Busted" and "Like Father, Like Clown".\n\nDescription above from the Wikipedia article Brad Bird, licensed under CC-BY-SA, full list of contributors on Wikipedia	Brad Bird	1957-09-11	No data.	2
366	http://image.tmdb.org/t/p/w185/1gt0VmCyBHhQLKhaBDCEIwvRWe.jpg	James ppppokschoub3rvgfbco4iupn jbefqhvpui2do1angold (born 16 December 1963) is an American film director and screenwriter. He is perhaps best known for Walk the Line (2005) which he co-wrote and directed.\n\nDescription above from the Wikipedia article James Mangold, licensed under CC-BY-SA, full list of contributors on Wikipedia.	James Mangold	1963-12-16	No data.	2
59026	http://image.tmdb.org/t/p/w185/oSIfCq3alHGQnrutnwDzEcFmGgu.jpg	From Wikipedia, the free encyclopedia.  Peyton Reed (born 3 July 1964) is an American television and film director.\n\nReed was born in Raleigh, North Carolina and attended the University of North Carolina at Chapel Hill. Reed directed the motion pictures Bring It On, Down with Love, and The Break-Up; all comedy films. He has also acted in small roles in some films including his own and has written a few original songs for his soundtracks. He has also produced a few music videos.\n\nMost recently Reed directed Yes Man, starring Jim Carrey. Yes Man is an adaptation of Danny Wallace's autobiography about his decision to say "yes" to whatever offer, invitation, challenge, and opportunity that are presented to him.\n\nReed is divorced and lives in the Los Angeles area.  Description above from the Wikipedia article Peyton Reed, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Peyton Reed	1964-07-03	No data.	2
11090	http://image.tmdb.org/t/p/w185/912vB9enhaErCSMpJpyWAB4yOOH.jpg	Edgar Howard Wright (born 18 April 1974) is an English film and television director and writer. He is most famous for his work with Simon Pegg and Nick Frost on the films Shaun of the Dead and Hot Fuzz, the TV series Spaced, and for directing the film Scott Pilgrim vs. the World. He is also an executive producer on his friend Joe Cornish's Attack the Block and co-writer of the upcoming Steven Spielberg film The Adventures of Tintin: Secret of the Unicorn with Cornish and Doctor Who and Sherlock writer, Steven Moffat.\n\nDescription above from the Wikipedia article Edgar Wright, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Edgar Wright	1974-04-18	No data.	2
19272	http://image.tmdb.org/t/p/w185/679Os4tbY1YsU01KdLhM1NPXNWu.jpg	From Wikipedia, the free encyclopedia\n\nAnthony and Joe Russo, known together professionally as the Russo brothers, are Emmy Award-winning American film and television directors. The brothers direct most of their work jointly, and they also occasionally work as producers, actors, and editors. The Russos are from Cleveland, Ohio, and were born a year apart. They are alumni of Case Western Reserve University.	Joe Russo	1971-07-08	No data.	2
170820	http://image.tmdb.org/t/p/w185/abhsMUOZKyAGPK3uZPdf3UQ5MuZ.jpg	Benjamin Scott "Ben" Falcone is an American actor, comedian, director, producer and screenwriter. He is married to actress Melissa McCarthy, and the couple have two children. He appeared in supporting roles of McCarthy's films Bridesmaids, Identity Thief and The Heat, and co-starred in What to Expect When You're Expecting and Enough Said. Tammy, his directorial debut starring McCarthy, was released on July 2, 2014.	Ben Falcone	1973-08-25	No data.	2
1056121	http://image.tmdb.org/t/p/w185/ddGaRFrlDdyR0OBTd1hAMWnfvim.jpg	Ryan Kyle Coogler is an African-American screenwriter-director born on May 23, 1986, in Oakland, California. In his earlier years, he played football -- a vocation that stayed with him into his college career. While he was at Saint Mary's College of California, his English professor, Rosemary Graham, suggested that Coogler consider a screenwriting career. Coogler then attended Sacramento State, and later, USC School of Cinematic Arts, eventually directing four short films while there: Locks (2009), Fig (2011), The Sculptor (2011), and Gap (2011). Three of these shorts either won or were nominated for different awards.  Coogler's first feature film was titled Fruitvale, and later Fruitvale Station (2013). It is based on the final 24 hours of Oscar Grant's life, before he was shot and killed by one of Oakland's Fruitvale BART station's police officers, on the first day of 2009. Produced by actor-director Forest Whitaker, the feature starring Michael B. Jordan won many awards. Coogler then directed Creed (2015), a sequel/spin-off of the Rocky movies. It won critical accolades for both him and actor Jordan, who had collaborated with Coogler again.  In early 2016, Coogler was slated to direct and jointly write the script for Marvel Studios' feature film, Black Panther. The film's comic book-based protagonist will be played by Chadwick Boseman and it's set for release in 2018.	Ryan Coogler	1986-05-23	No data.	2
6159	http://image.tmdb.org/t/p/w185/qdtdnNLSsaXZmpwOqXuQB3xU2uL.jpg	Ronald William "Ron" Howard (born March 1, 1954) is an American actor, director and producer.\n\nHe came to prominence as a child actor, playing Opie Taylor in the sitcom The Andy Griffith Show for eight years, and later as the teenaged Richie Cunningham in the sitcom Happy Days for six years. He made film appearances such as in American Graffiti in 1973 and while starring in Happy Days he also made The Shootist in 1976, as well as making his directorial debut with the 1977 comedy film Grand Theft Auto. He left Happy Days in 1980 to focus on directing, and has since gone on to direct several films, including the Oscar winning Cocoon, Apollo 13, Frost/Nixon, A Beautiful Mind and How the Grinch Stole Christmas. In 2003, he was awarded the National Medal of Arts.	Ron Howard	1954-03-01	No data.	2
6431	http://image.tmdb.org/t/p/w185/AtBEqPkWw5txAuMJ5vk4dFhmMrR.jpg	Darren Aronofsky (born February 12, 1969) is an American film director, screenwriter and film producer. He attended Harvard University and AFI to study both live-action and animation. He won several film awards after completing his senior thesis film, "Supermarket Sweep", which went on to become a National Student Academy Award finalist. Aronofsky's feature debut, π, was shot in November 1997. The low-budget, $60,000 production, starring Sean Gullette, was sold to Artisan Entertainment for $1 million, and grossed over $3 million; Aronofsky won the Directing Award at the 1998 Sundance Film Festival and an Independent Spirit Award for best first screenplay. Aronofsky's followup, Requiem for a Dream, was based on the novel of the same name written by Hubert Selby, Jr. The film received an Academy Award nomination for Ellen Burstyn's performance. After turning down an opportunity to direct Batman Begins, Aronofsky began production on his third film, The Fountain. With his fourth film, The Wrestler, both of the film's stars, Mickey Rourke and Marisa Tomei, received Academy Award nominations. Rourke also won a Golden Globe for Best Actor and Bruce Springsteen won for Best Original Song for his title song. Aronofsky's latest film, Black Swan, received further critical acclaim and many accolades, being nominated for five Academy Awards including Best Picture and Best Director, four Golden Globes including Best Motion Picture – Drama and Best Director, three Screen Actors Guild Awards, a record 12 BFCA nominations and a DGA nomination.   Description above from the Wikipedia article Darren Aronofsky, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Darren Aronofsky	1969-02-12	No data.	2
54507	http://image.tmdb.org/t/p/w185/erDqr90tvAgme8Q9wSlneqiJ4MG.jpg	From Wikipedia, the free encyclopedia\n\nJonathan Murray "Jon" Chu (born November 2, 1979) is an American film director and screenwriter best known for directing the movies Step Up 2: The Streets, Step Up 3D and Justin Bieber: Never Say Never. Chu is an alumnus of the University of Southern California School of Cinema-Television. There, he won the Princess Grace Award, the Dore Schary Award presented by the Anti-Defamation League, the Jack Nicholson directing award, and was recognized as an honoree for the IFP/West program Project: Involve.\n\nAfter making his student short, "When the Kids Are Away", Chu was signed to William Morris Agency and attached to several high profile projects. Chu was hired by Sony Pictures to direct their feature Bye Bye Birdie but Sony never green lit the film due to budget concerns. Sony recently got back into business with Chu to direct their updated version of The Great Gatsby. He also is in a dance crew called AC/DC or Adam/Chu Dance crew. His father, Lawrence Chu, is a well-known chef and his parents own Chef Chu's, a popular restaurant in Los Altos, California. He also attended Pinewood School from kindergarten through 12th grade. Chu is currently directing the online series The Legion of Extraordinary Dancers.\n\nIn an interview, Chu addressed a question he is often asked, "Why do all of your films have dance?" He responded, "I don’t know why. It seems so obvious. But there’s something about the dancers that motivate me the most. I don’t know if it’s just dance, but I do think that the dancers are amazing artists, and every time I meet a new dancer, that triggers something in my brain, and I’m more creative than I could ever be. When I feel that creativity burst, I go with it."\n\nDescription above from the Wikipedia article Eric Jon Chu, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jon M. Chu	1979-11-02	No data.	2
1150	http://image.tmdb.org/t/p/w185/we5RrXKmOzNweC3OvGSSsQoFcDg.jpg	Brian Russell De Palma (born September 11, 1940) is an American film director and writer. In a career spanning over 40 years, he is probably best known for his suspense and crime thriller films, including such box office successes as Carrie, Dressed to Kill, Scarface, The Untouchables, and Mission: Impossible.\n\nThroughout the 1970s and early 1980s, De Palma worked repeatedly with actors Jennifer Salt, Amy Irving, Nancy Allen (his wife from 1979 to 1983), Gary Sinise, John Lithgow, William Finley, Charles Durning, Gerrit Graham, cinematographers Stephen H. Burum and Vilmos Zsigmond (see List of noted film director and cinematographer collaborations), set designer Jack Fisk, and composers Bernard Herrmann and Pino Donaggio. De Palma is credited with fostering the careers of or outright discovering Robert De Niro, Jill Clayburgh, John C. Reilly, John Leguizamo, Andy Garcia and Margot Kidder.\n\nDescription above from the Wikipedia article Brian De Palma, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Brian De Palma	1940-09-11	No data.	2
19271	http://image.tmdb.org/t/p/w185/fIa5wXK7MHAquhefTr3TcnZiYy8.jpg	From Wikipedia, the free encyclopedia\n\nAnthony and Joe Russo, known together professionally as the Russo brothers, are Emmy Award-winning American film and television directors. The brothers direct most of their work jointly, and they also occasionally work as producers, actors, and editors. The Russos are from Cleveland, Ohio, and were born a year apart. They are alumni of Case Western Reserve University.	Anthony Russo	1970-02-03	No data.	2
52139	http://image.tmdb.org/t/p/w185/v4c6JhGYpjMRBwf95gtPxBnElNu.jpg	Seth Woodbury MacFarlane (born October 26, 1973) is an American animator, writer, comedian, producer, actor, singer, voice actor, and director best known for creating the animated sitcoms Family Guy, American Dad! and The Cleveland Show, for which he also voices many of the shows' various characters.\n\nA native of Kent, Connecticut, MacFarlane is a graduate of the Rhode Island School of Design, where he studied animation, earning a Bachelor of Fine Arts Degree. He was an animator and writer for Hanna-Barbera for several television shows, including Johnny Bravo, Cow and Chicken and Dexter's Laboratory, before creating his own series for 20th Century Fox entitled Family Guy in 1999. MacFarlane would go on to co-create American Dad! in 2005, The Winner in 2007 and The Cleveland Show in 2009 for 20th Century Fox.\n\nAs an actor, he has made guest appearances on shows such as Gilmore Girls, The War at Home and FlashForward. MacFarlane's interest in science fiction and fantasy has led to cameo and guest appearances on Star Trek: Enterprise and voicing the character of Johann Kraus in Guillermo del Toro's Hellboy II: The Golden Army. In 2008, he created his own YouTube series entitled Seth MacFarlane's Cavalcade of Cartoon Comedy. As a performer, MacFarlane has sung at several venues, including Carnegie and Royal Albert Hall.\n\nMacFarlane has won several awards for his work on Family Guy, including two Primetime Emmy Awards, and an Annie Award. In 2009, he won the Webby Award for Film & Video Person of the Year. He has been a subject of criticism from television watchdog groups, such as the Parents Television Council, who regularly condemn Family Guy for its indecency. He occasionally speaks at universities and colleges throughout the United States, and is a supporter of gay rights.\n\nOn the February 10, 2011 episode of the TBS variety nighttime talk-show series Conan, MacFarlane announced he is directing his first feature-length film, Ted. The film stars Mark Wahlberg as an adult, who as a child, wished his teddy bear would come to life. MacFarlane will be the voice and motion capture for the bear.	Seth MacFarlane	1973-10-26	No data.	2
37932	http://image.tmdb.org/t/p/w185/hjMfkAyz5ECn0svAzrkG3YsEaEW.jpg	Felix Gary Gray (born July 17, 1969) is an American filmmaker, music video director, and actor. Gray directed Friday, Set It Off, The Negotiator, and Straight Outta Compton, as well as the remake of The Italian Job.\n\nGray was born in New York. He began his career in 1989 when he appeared uncredited in the satire comedy film Major League. Three years later, he directed the music video for Ice Cube's "It Was a Good Day." The video is a literal adaptation of the lyrics. He would go on to direct subsequent videos for Ice Cube, as well as artists such as Cypress Hill, Outkast, Dr. Dre, and Queen Latifah.\n\nAt 24, Gray directed his first film, the urban comedy Friday with rapper-producer Ice Cube and Chris Tucker. Next he directed the film, Set It Off, with Jada Pinkett and Queen Latifah. He then went on to direct The Negotiator. The film starred Academy Award winner Kevin Spacey and Oscar nominee Samuel L. Jackson, and earned Gray both Best Film and Best Director awards at the 1998 Acapulco Film Festival.\n\nGray is also known for The Italian Job, an action-thriller starring Academy Award winner Charlize Theron and Oscar nominee Mark Wahlberg. Gray garnered the Best Director award at the 2004 Black American Film Festival for his work on the film, which surpassed the $100 million mark in the domestic box office.\n\nHis next film was A Man Apart, a violent action thriller starring Vin Diesel. He would later direct Be Cool, an adaptation of Elmore Leonard's novel of the same name. The John Travolta vehicle was a critical flop, but made $95.2 million worldwide.\n\nHis next film was the thriller Law Abiding Citizen, starring Academy Award winner Jamie Foxx and Gerard Butler. Scripted by Kurt Wimmer, it grossed over $100 million worldwide.\n\nGary is also responsible for directing many music videos. He has worked with artists like TLC, Dr. Dre, Tupac Shakur, Mary J. Blige, Stevie Wonder, Babyface, and Jay-Z, among others.\n\nGray received The Ivan Dixon Award of Achievement from the Black Hollywood Education and Resource Center and was named one of the “50 Best and Brightest African Americans Under 40” by Black Enterprise magazine. He was honored by the African American Film Critics Association with their 2004 Special Achievement Award and was recognized by the Artist Empowerment Coalition with the Artist Empowerment Award that same year. He also received the Pioneer Director award from the Pan-African Film and Arts Festival in 2010.\n\nDescription above from the Wikipedia article  F. Gary Gray, licensed under CC-BY-SA, full list of contributors on Wikipedia.	F. Gary Gray	1969-07-17	No data.	2
17633	http://image.tmdb.org/t/p/w185/4UUUna5fohwTxnEbuLOD0ZubWds.jpg	From Wikipedia, the free encyclopedia\n\nRob Marshall (born October 17, 1960) is an American theater director, film director and choreographer. He is a six-time Tony Award nominee, Academy Award nominee, Golden Globe nominee and four-time Emmy winner whose most noted work is the 2002 Academy Award Best Picture winner Chicago.\n\nMarshall was born in Madison, Wisconsin and raised in Pittsburgh, Pennsylvania. He debuted in the film industry with the Emmy Award-wining TV adaptation of the musical Annie by Charles Strouse and Martin Charnin. After that he went on to direct the much anticipated adaptation of the Kander and Ebb musical Chicago in 2002 for which he was nominated for an Academy Award for Best Director. His next feature film was the drama Memoirs of a Geisha based on the best-selling book of the same name by Arthur Golden starring Zhang Ziyi, Gong Li, Michelle Yeoh and Ken Watanabe. The film went on to win three Academy Awards and gross $162,242,962 at the worldwide box office. In 2009, Marshall directed Nine, an adaptation of the hit Broadway production with the same name starring Daniel Day-Lewis, Marion Cotillard, Nicole Kidman, Sophia Loren and Penélope Cruz, who was nominated for an Academy Award for Best Supporting Actress. Marshall then went on to direct Pirates of the Caribbean: On Stranger Tides, the fourth chapter of Disney's Pirates of the Caribbean film series starring Johnny Depp, Ian McShane, Penélope Cruz and Geoffrey Rush, which is set to open on May 20, 2011.\n\nDescription above from the Wikipedia article Rob Marshall, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rob Marshall	1960-10-17	No data.	2
137427	http://image.tmdb.org/t/p/w185/433lXlkdMGXzrpwnKM4Ul1sln15.jpg	Denis Villeneuve (born October 3, 1967 in Gentilly, Quebec) is a Canadian film director and writer. In his early career he won Radio-Canada's youth film competition "La Course Europe-Asie" in 1990-91. He is a three-time winner of the Genie Award for Best Director, for Maelström in 2001, Polytechnique in 2010 and Incendies in 2011. All three films also won the Best Picture award.\n\nHis 2010 film Incendies represented Canada at the 83rd Academy Awards in the category of Best Foreign Language Film and made the list of nominees. In January 2011 he was selected as one of the top ten film makers to watch.	Denis Villeneuve	1967-10-03	No data.	2
57270	http://image.tmdb.org/t/p/w185/gSJ6HF0fgqT3rbr2Mb2d2OemBaD.jpg	​From Wikipedia, the free encyclopedia\n\nRobert Schwentke (born 1968) is a German film director best known for the films Tattoo and Flightplan.\n\nHe was a graduate of Columbia College Hollywood in 1992.\n\nSchwentke directed 2009's The Time Traveler's Wife, based on the best-selling novel, and starring Eric Bana and Rachel McAdams.\n\nOn June 12, 2008, it was announced on the front page of The Hollywood Reporter that Summit Entertainment had optioned Red, the 2003 graphic novel thriller by writer Warren Ellis and artist Cully Hamner, as a feature film. Schwentke directed the film from a script by Whiteout screenwriters Erich and Jon Hoeber, and the adaptation was produced by Lorenzo di Bonaventura and Mark Vahradian of Transformers. Principal photography began in January 2010 in Toronto and Louisiana with stars Bruce Willis and Morgan Freeman.\n\nDescription above from the Wikipedia article Robert Schwentke, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Robert Schwentke	No data.	No data.	2
12891	http://image.tmdb.org/t/p/w185/dTiVsuaTVTeGmvkhcyJvKp2A5kr.jpg	Joseph Hill "Joss" Whedon (born June 23, 1964) is an American screenwriter, executive producer, director, occasional composer and actor, and founder of Mutant Enemy Productions. He is best known as the creator and showrunner of the television series Buffy the Vampire Slayer (1997–2003), Angel (1999–2004), Firefly (2002) and Dollhouse (2009–2010), as well as the short film Dr. Horrible's Sing-Along Blog (2008). He is also notable for his work in film, comic books, and online media. Many of Whedon's projects, as well as Whedon himself, enjoy a cult status.\n\nDescription above from the Wikipedia article Joss Whedon, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Joss Whedon	1964-06-23	No data.	2
1776	http://image.tmdb.org/t/p/w185/mDNBl1DUkC1BkkMsbtaNEFQQaHu.jpg	Francis Ford Coppola  (born April 7, 1939) is an American film director, producer and screenwriter. He is widely acclaimed as one of Hollywood's most celebrated and influential film directors. He epitomized the group of filmmakers known as the New Hollywood, which included George Lucas, Martin Scorsese, Robert Altman, Woody Allen and William Friedkin, who emerged in the early 1970s with unconventional ideas that challenged contemporary filmmaking.\n\nHe co-authored the script for Patton, winning the Academy Award in 1970. His directorial fame escalated with the release of The Godfather in 1972. The film revolutionized movie-making in the gangster genre, garnering universal laurels from critics and public alike. It went on to win three Academy Awards, including his second, which he won for Best Adapted Screenplay, and it was instrumental in cementing his position as one of the prominent American film directors. Coppola followed it with an equally successful sequel The Godfather Part II, which became the first ever sequel to win the Academy Award for Best Picture. The film received yet higher praises than its predecessor, and gave him three Academy Awards—for Best Adapted Screenplay, Best Director and Best Picture. In the same year was released The Conversation, which he directed, produced and wrote. The film went on to win the Palme d'Or at the 1974 Cannes Film Festival. His next directorial venture was Apocalypse Now in 1979, and it was as notorious for its lengthy and troubled production as it was critically acclaimed for its vivid and stark depiction of the Vietnam War. It won his second Palme d'Or at the 1979 Cannes Film Festival.\n\nAlthough some of Coppola's ventures in the 1980s and early 1990s were critically lauded, Coppola's later work has not met the same level of critical and commercial success as his '70s films. Description above from the Wikipedia article Francis Ford Coppola, licensed under CC-BY-SA, full list of contributors on Wikipedia	Francis Ford Coppola	1939-04-07	No data.	2
124747	http://image.tmdb.org/t/p/w185/enSQNAwRSDPq9M9VZ1yjDwKWbev.jpg	From Wikipedia, the free encyclopedia.  \n\nPierre Coffin, born in 1967, is a French animator and director. He was trained at the Gobelins in Paris and started to work at Amblimation, the 2D London based facility, where he worked on the Steven Spielberg-executive-produced We're Back! A Dinosaur's Story. He then started as a freelance animator in the French CGI studio Ex Machina where he worked as animator, animation supervisor, and eventually director. Afterwards, he started to collaborate with Passion Pictures Paris and Mac Guff where in 2010 he completed, with Chris Renaud, the feature CGI animated movie Despicable Me for Universal. He also provided voices for a few of the minor characters. Peter Coffin has created animations named Pings ( animations of penguins being hurt or killed).\n\nDescription above from the Wikipedia article Pierre Coffin, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Pierre Coffin	1967-03-16	No data.	2
124748	http://image.tmdb.org/t/p/w185/mJGkOnJ8NrLt11p9qdaXsBF63BC.jpg	From Wikipedia, the free encyclopedia.  \n\nChris Renaud is an American illustrator and film-maker. He was nominated for an Academy Award for the 2006 animated short No Time for Nuts, which featured the character Scrat from the computer animated Ice Age films. Most recently, he directed Despicable Me, starring the voice of Steve Carell, which debuted #1 at the U.S. box office on July 9th, 2010.\n\nAfter graduating from Syracuse University with an illustration degree, Renaud began work as a graphic designer in the sports entertainment industry. He has created logo designs and mascot characters for NFL Properties, the NBA, and Foot Locker, among others. After working as a designer and illustrator for a variety of publications and agencies, Chris began drawing and writing comic books. Working for both Marvel Comics and DC Comics, his notable projects include illustrating Marvel's Starfleet Academy and pitching the original story concept that evolved into Batman: Cataclysm. This yearlong tale across all Batman-related comics resulted in increased sales and visibility for the renowned character.\n\nAs the production designer on the Disney Channels’ The Book of Pooh, Renaud transitioned into the world of children’s television. Since that groundbreaking project, he has been able to design virtual sets and puppet characters for Bear in the Big Blue House, Lazy Town, Curious Pictures, Sony Animation, and many more. With the new show It's a Big Big World, currently airing on PBS, he took the lead role in the visual development and design of every aspect of this Emmy-nominated children’s program.\n\nRenaud worked for Blue Sky Studios as a story artist on such films as Robots, Ice Age: The Meltdown, and the Dr. Seuss classic Horton Hears A Who!. He also wrote and co-directed the animated short No Time for Nuts, which received an Annie Award and a 2007 Oscar nomination within the animated short films category. It was also included in the Animation Show of Shows in 2006.\n\nRenaud works for Illumination Entertainment and lives in Paris, France. He directed Despicable Me, starring Steve Carell, which was released in the U.S. on July 9, 2010.\n\nDescription above from the Wikipedia article Chris Renaud(animator), licensed under CC-BY-SA, full list of contributors on Wikipedia.	Chris Renaud	No data.	No data.	0
59521	http://image.tmdb.org/t/p/w185/z7jv5RF9RVZnv32QuMn8YxFgdIg.jpg	Jaume Collet-Serra (born March 23, 1974 in Sant Iscle de Vallalta, Spain) is a Spanish film director and producer.\n\nCollet-Serra is most famous for the 2005 remake House of Wax, and 2009's Orphan. In 2010 he directed the Dark Castle drama-thriller Unknown which stars Frank Langella, Liam Neeson, January Jones and Diane Kruger.\n\nDescription above from the Wikipedia article Jaume Collet-Serra, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jaume Collet-Serra	1974-03-23	No data.	2
76595	http://image.tmdb.org/t/p/w185/fFV0pdhOWSxUnAsQDVkzEzhXCfy.jpg	From Wikipedia, the free encyclopedia.\n\nByron P. Howard (born 1968) is an American motion picture director and story artist at Walt Disney Feature Animation, and is best known as the lead character animator on Lilo & Stitch and Brother Bear and the director on Bolt and Tangled.\n\nByron Howard is one of the most notable animators working for Walt Disney and has had the chance to work several famous figures within the industry such as John Lasseter. However, the critically acclaimed and Oscar-nominated Bolt marked the young directors step into wide recognition.\n\nDescription above from the Wikipedia article Byron Howard, licensed under CC-BY-SA, full list of contributors on Wikipedia	Byron Howard	1968-12-26	No data.	2
165787	http://image.tmdb.org/t/p/w185/9KfA5vZiSk3dBvXHlKAjDTnwlxc.jpg	From Wikipedia, the free encyclopedia.\n\nRich Moore is an American animation director and a business partner in Rough Draft Studios, best known for his work on The Simpsons and Wreck-It Ralph.\n\nHis animation directing credits include the television series The Simpsons, Futurama, The Critic, Drawn Together and Baby Blues, and the segment "Spy vs. Spy" for MADtv. He was also sequence director on The Simpsons Movie, and served as a supervising director on the Fox television series Sit Down, Shut Up, which debuted in 2009. In Futurama, he served as supervising director for the entire original series, though the post was shared by Gregg Vanzo in the first production season and with Bret Haaland for the second production season.\n\nDescription above from the Wikipedia article Rich Moore, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rich Moore	1963-05-10	No data.	2
5713	http://image.tmdb.org/t/p/w185/iFT7oH4LdkByqwPgAs2XfNVJCXO.jpg	From Wikipedia, the free encyclopedia.\n\nJohn Christopher "Chris" Wedge (born March 20, 1957) is an American film director, best known for the films Ice Age and Robots.\n\nDescription above from the Wikipedia article Chris Wedge, licensed under CC-BY-SA, full list of contributors on Wikipedia.​	Chris Wedge	1957-03-20	No data.	2
9032	http://image.tmdb.org/t/p/w185/to8mWJabPoWkphkbYKoutCVSj06.jpg	Bryan Singer (born September 17, 1965) is an American film director and film producer. Singer won critical acclaim for his work on The Usual Suspects, and is especially well-known among fans of the science fiction and comic book genres for his work on the first two X-Men films and Superman Returns.\n\nDescription above from the Wikipedia article Bryan Singer, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Bryan Singer	1965-09-17	No data.	2
84335	http://image.tmdb.org/t/p/w185/maeIOyMqToTT0XuWxO0Fy40lNzR.jpg	Joe Lynch is an American film director, producer, and actor.\n\nLynch began his career as a child actor, however he soon became obsessed in filmmaking. His first two student shorts, mAHARBA & hiBeams, were selected to screen at many film festivals. He was named "Filmmaker of the Year" in 1999 by the Long Island Voice.\n\nLynch has directed music videos for such groups as DVDA, Pete Yorn, Strapping Young Lad, 311 and Godhead.He was also one of the creators of the television show Uranium for Fuse TV.\n\nHis directorial debut in feature film was 2007's Wrong Turn 2: Dead End,which starred Henry Rollins, Erica Leerhsen, and Texas Battle.\n\nDescription above from the Wikipedia article Joe Lynch, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Joe Lynch	No data.	No data.	2
9033	http://image.tmdb.org/t/p/w185/b2zCcMMd0cawVhYjmSwICu2eTRu.jpg	Christopher McQuarrie is an American screenwriter, producer and director. His screenplays include The Usual Suspects, for which he won the 1996 Academy Award, The Way of the Gun and Valkyrie. He is the creator of NBC television series Persons Unknown.\n\nDescription above from the Wikipedia article Christopher McQuarrie, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Christopher McQuarrie	1968-01-01	No data.	2
40256	http://image.tmdb.org/t/p/w185/dLSaCHhZ4zfimzCz11JdcTZC4SA.jpg	Daniel John "D.J." Caruso (born January 17, 1965) is an American director and producer. Caruso has directed the films Disturbia, Two for the Money, Taking Lives, The Salton Sea, and Eagle Eye. He has also directed television episodes for shows such as The Shield, Over There, Smallville, and Dark Angel. He directed his first music video in 2007 for the song "Don't Make Me Wait" by This World Fair. He was also a guest judge on the FOX reality show On the Lot for the episode of May 28/29. In 2009 he directed the music video for Airborne Toxic Event, Sometime Around Midnight.\n\nDescription above from the Wikipedia article D.J. Caruso, licensed under CC-BY-SA, full list of contributors on Wikipedia.	D.J. Caruso	1965-01-17	No data.	2
15344	http://image.tmdb.org/t/p/w185/uiEVOx3QclxnN76t8PU6v5IcUUP.jpg	J.J. Abrams (born as Jeffrey Jacob Abrams) is an American film and television producer, screenwriter, director, actor and composer best known for his work in science fiction and action genres. In 2001 he founded the production company Bad Robot with fellow producer Bryan Burk.\n\nAbrams (co-)created multiple award winning television series, including Felicity, Alias, Lost, Fringe, Undercovers, Person of Interest and Revolution. His film work includes the late 2000s reboots of film series such as Star Trek, Star Wars, and Mission: Impossible.	J.J. Abrams	1966-06-27	No data.	2
15277	http://image.tmdb.org/t/p/w185/sJSGJwGa3hjMlJNUCxF7wQwo7fb.jpg	Jonathan Kolia "Jon" Favreau (born October 19, 1966) is an American actor, screenwriter, film director and comedian. He is best known for appearing in films including Rudy, I Love You, Man, Swingers and Couples Retreat, as well as directing such films as Elf, Iron Man, and Iron Man 2. He is also known for playing the role of Pete Becker, Monica Geller's boyfriend during season three of the television sitcom Friends.\n\nDescription above from the Wikipedia article Jon Favreau, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Jon Favreau	1966-10-19	No data.	2
16847	http://image.tmdb.org/t/p/w185/lV7xjR2fUXX3u8Ixg8nhKFbuqm3.jpg	Eli Raphael Roth is an American film director, producer, writer and actor. He is part of the group of filmmakers dubbed the Splat Pack, because of their association and their focus on the horror genre.\n\nRoth is known for making violent, low-budget horror films that are box office hits worldwide, and for bringing back the R-rating to horror at a time when studios believed only PG-13 horror would work. Roth is also an award-winning actor, most known for his role as Donny Donowitz in Quentin Tarantino's Inglourious Basterds, for which he won both a SAG Award (Best Ensemble) and a BFCA Critic's Choice Award (Best Acting Ensemble).\n\nRoth was born in Newton, Massachusetts, to Dr. Sheldon Roth, a psychiatrist/psychoanalyst and professor at Harvard University, and Cora Roth, a painter. His grandparents immigrated from Austria, Russia and Poland, and Roth was raised Jewish.	Eli Roth	1972-04-18	No data.	2
138	http://image.tmdb.org/t/p/w185/9ci4NBvHXJktxjALdJsrtasqgtV.jpg	Quentin Jerome Tarantino (born March 27, 1963) is an American film director, screenwriter, producer, cinematographer and actor. In the early 1990s he was an independent filmmaker whose films used nonlinear storylines and aestheticization of violence. His films have earned him a variety of Academy Award, Golden Globe, BAFTA and Palme d'Or Awards and he has been nominated for Emmy and Grammy Awards. In 2007, Total Film named him the 12th-greatest director of all time.\n\nTarantino was born in Knoxville, Tennessee, the son of Connie McHugh Tarantino Zastoupil, a health care executive and nurse born in Knoxville, and Tony Tarantino, an actor and amateur musician born in Queens, New York.\n\nTarantino's mother allowed him to quit school at age 17, to attend an acting class full time. Tarantino gave up acting while attending the acting school, saying that he admired directors more than actors. Tarantino also worked in a video rental store before becoming a filmmaker, paid close attention to the types of films people liked to rent, and has cited that experience as inspiration for his directorial career.\n\nTarantino has been romantically linked with numerous entertainers, including actress Mira Sorvino, directors Allison Anders and Sofia Coppola, actresses Julie Dreyfus and Shar Jackson and comedians Kathy Griffin and Margaret Cho. He has never married and has no children.\n\nDescription above from the Wikipedia article Quentin Tarantino, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Quentin Tarantino	1963-03-27	No data.	2
10828	http://image.tmdb.org/t/p/w185/aBPPwt3jcFw2ridEkKTgchfPaic.jpg	Guillermo del Toro (born October 9, 1964) is a Mexican director, producer, screenwriter, novelist and designer. He is mostly known for his acclaimed films, Pan's Labyrinth and the Hellboy film franchise. He is a frequent collaborator with Ron Perlman, Federico Luppi and Doug Jones. His films draw heavily on sources as diverse as weird fiction, fantasy and war.	Guillermo del Toro	1964-10-09	No data.	2
15557	http://image.tmdb.org/t/p/w185/wYS9OCX85SJQWdjQokWVgmX7PQX.jpg	William "Bill" Condon (born October 22, 1955) is an American screenwriter and director. Condon is best known for directing and writing the critically acclaimed films Gods and Monsters, Chicago, Kinsey, and Dreamgirls. In 1998, Condon debuted as a screenwriter in Gods and Monsters, which won him his first Academy Award. He was also nominated for Chicago and Kinsey. In 2006, Condon won a Golden Globe for his film Dreamgirls, which he wrote and directed. Condon's films have been both commercial and critical successes.\n\nDescription above from the Wikipedia article Bill Condon, licensed under CC-BY-SA,full list of contributors on Wikipedia. \n\n 	Bill Condon	1955-10-22	No data.	2
11614	http://image.tmdb.org/t/p/w185/shV9dGXMj7zt7myRFkR6FR51LYu.jpg	Manoj Nelliyattu Shyamalan (born 6 August 1970), known professionally as M. Night Shyamalan, is an Indian-born American film director, screenwriter, and producer known for making movies with contemporary supernatural plots that climax with a twist ending. He is also known for filming his movies (and staging his plots) in and around Philadelphia, Pennsylvania, where he was raised. Shyamalan released his first film, Praying with Anger, in 1992 while he was a New York University student. His second movie, the major feature film Wide Awake, made in 1995 but not released until three years later, did not succeed financially.\n\nShyamalan gained international recognition when he wrote and directed 1999's The Sixth Sense, which was a commercial success and nominated for six Academy Awards, including: Best Picture, Best Director and Best Original Screenplay. He followed The Sixth Sense by writing and directing Unbreakable, released in 2000, which received positive reviews. His 2002 film Signs, where he also played Ray Reddy, gained both critical and financial success. His next movie The Village (2004) received mixed reviews from the critics, but turned out to be a financial success. His later fantasy film Lady in the Water (2006) performed worse critically and financially. The film The Happening (2008) was a financial success but also received negative reviews. The Last Airbender (2010) received extremely negative reviews in the United States and won 5 Razzie Awards, but has gone on to make nearly $320 million internationally at the box office. His latest film, Devil (2010), which he produced and wrote the story for, but did not direct, was not screened by critics before its release but eventually received mixed reviews. Devil was not a blockbuster hit but has become a commercial success relative to its low budget and was named as one of the top 5 horror films of 2010 by ShockTillYouDrop.com.\n\nDescription above from the Wikipedia article M. Night Shyamalan, licensed under CC-BY-SA, full list of contributors on Wikipedia.	M. Night Shyamalan	1970-08-06	No data.	2
5655	http://image.tmdb.org/t/p/w185/s03CeUeC5yAXyB1acqP0zGNo2SC.jpg	Wesley Wales Anderson (born May 1, 1969) is an American film director, screenwriter, actor, and producer of features, short films and commercials.\n\nHe was nominated for a 2001 Academy Award for Best Original Screenplay for The Royal Tenenbaums. Anderson has been called an auteur, as he is involved in every aspect of his films' production. His films employ a similar aesthetic, employing a deliberate, methodical cinematography, with mostly primary colors. His soundtracks feature early folk and rock music, in particular classic British rock. Anderson's films combine dry humor with poignant portrayals of flawed characters – often a mix of the wealthy and the working class. He is also known for working with many of the same actors and crew on varying projects. He also works with Indian Paintbrush, Steven M. Rales's production company.	Wes Anderson	1969-05-01	No data.	2
2710	http://image.tmdb.org/t/p/w185/zy2foCd8PEtvCcsX48cROdQdDLB.jpg	James Cameron was born in Kapuskasing, Ontario, Canada, on August 16, 1954. He moved to the USA in 1971. The son of an engineer, he majored in physics at California State University but, after graduating, drove a truck to support his screen-writing ambition. He landed his first professional film job as art director, miniature-set builder, and process-projection supervisor on Roger Corman's Battle Beyond the Stars (1980) and debuted as a director with Piranha Part Two: The Spawning (1981) the following year. In 1984, he wrote and directed The Terminator (1984), a futuristic action-thriller starring Arnold Schwarzenegger, Michael Biehn, and Linda Hamilton. It was a huge success. After this came a string of successful science-fiction action films such as Aliens (1986) and Terminator 2: Judgment Day (1991). Cameron is now one of the most sought-after directors in Hollywood. He was formerly married to producer Gale Anne Hurd, who produced several of his films. He married Kathryn Bigelow in 1989.	James Cameron	1954-08-16	No data.	2
12890	http://image.tmdb.org/t/p/w185/r6ngPgnReA3RHmKjmSoVsc6Awjp.jpg	Peter Hans "Pete" Docter (born October 9, 1968) is an American film director, animator, and screenwriter from Bloomington, Minnesota. He is best known for directing the films Monsters, Inc. and Up, and as a key figure and collaborator in Pixar Animation Studios. The A. V. Club has called him "almost universally successful". He has been nominated for six Oscars (one win thus far for Up -- Best Animated Feature), three Annie Awards (winning two), a BAFTA Children's Film Award (which he won), and a Hochi Film Award (which he won). He has described himself as a "geeky kid from Minnesota who likes to draw cartoons." He is now working on a top-secret project, that will be released in 2013 or 2014. He will not direct Monsters, Inc. 2. Description above from the Wikipedia article Pete Docter, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Pete Docter	1968-10-09	No data.	2
223	http://image.tmdb.org/t/p/w185/qWrltG9e0ssM3Y9pF86EAgteKHu.jpg	Alejandro González Iñárritu (American Spanish: [aleˈxandɾo gonˈsales iˈɲaritu]; credited since 2014 as Alejandro G. Iñárritu; born August 15, 1963) is a Mexican film director, producer and screenwriter. He is the first Mexican director to be nominated for the Academy Award for Best Director and the Directors Guild of America Award for Outstanding Directing, for Babel (2007).\n\nIñárritu's six feature films—Amores perros (2000), 21 Grams (2003), Babel (2006) (comprising the "Death Trilogy"), Biutiful (2010), Birdman or (The Unexpected Virtue of Ignorance) (2014), and The Revenant (2015)—have garnered critical acclaim and numerous accolades, including Academy Award nominations and wins. In 2015, Iñárritu won the Academy Award for Best Director, Best Original Screenplay, and Best Picture for Birdman. The following year, he won the Academy Award for Best Director for The Revenant, making him the third director to win back to back Academy Awards, and the first since 1950.\n\nHe is friends with fellow Mexican directors Guillermo del Toro and Alfonso Cuarón, collectively known as "The Three Amigos of Cinema."\n\nDescription above from the Wikipedia article Alejandro González Iñárritu, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Alejandro González Iñárritu	1963-08-15	No data.	2
15812	http://image.tmdb.org/t/p/w185/mhtEhbLfUWZZeHAFZY4Espf3mUr.jpg	From Wikipedia, the free encyclopedia.\n\nRoger Allers (born c. 1949 in Rye, New York) is an American Film director and Screenwriter, storyboard artist and animator. He is well known for directing The Lion King for Disney.\n\nDescription above from the Wikipedia article Roger Allers, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Roger Allers	No data.	No data.	2
18898	http://image.tmdb.org/t/p/w185/e7oHC3qavuzmH8HzOCkpOLaecKz.jpg	From Wikipedia, the free encyclopedia. Robert R. "Rob" Minkoff (born August 11, 1962) is an American filmmaker. He is known for directing the Academy Award-winning animated feature The Lion King. Minkoff was born in Palo Alto, California. He studied at California Institute of the Arts in the early 1980s in the Character Animation department. He has directed several films for Walt Disney Feature Animation, including The Lion King (1994) and two of the Roger Rabbit shorts: Tummy Trouble (1989) and Roller Coaster Rabbit (1990). While working at Disney he wrote the song "Good Company" for Oliver &amp; Company. He also made the films Stuart Little (1999), Stuart Little 2 (2002), The Haunted Mansion (2003) and The Forbidden Kingdom (2008). Minkoff also participates as a member of the jury for the NYICFF, a local New York City Film Festival dedicated to screening films for children between the ages of 3 and 18. He is currently[when?] working on two films: Flypaper, which is set to release in 2011 and the announced Chinese Odyssey. He married Crystal Kung on September 29, 2007. Minkoff is the brother-in-law of Jeffrey Kung, a Chinese singer and radio VJ. Description above from the Wikipedia article Rob Minkoff, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Rob Minkoff	1962-08-11	No data.	2
7879	http://image.tmdb.org/t/p/w185/7EdqiNbr4FRjIhKHyPPdFfEEEFG.jpg	John Alan Lasseter (born January 12, 1957) is an American animator, director and the chief creative officer at Pixar and Walt Disney Animation Studios. He is also currently the Principal Creative Advisor for Walt Disney Imagineering.\n\nLasseter's first job was with The Walt Disney Company, where he became an animator. Next, he joined Lucasfilm, where he worked on the then-groundbreaking use of CGI animation. After Lucasfilm became Pixar in 1986, Lasseter oversaw all of Pixar's films and associated projects as executive producer and he directed Toy Story, A Bug's Life, Toy Story 2, Cars, "Toy Story 3" and "Cars 2"\n\nHe has won two Academy Awards, for Animated Short Film (Tin Toy), as well as a Special Achievement Award (Toy Story).\n\nDescription above from the Wikipedia article John Lasseter, licensed under CC-BY-SA, full list of contributors on Wikipedia.	John Lasseter	1957-01-12	No data.	2
54472	http://image.tmdb.org/t/p/w185/miHZuiz7dyzT0SgLXNopIPwy34P.jpg	Martin McDonagh (born 26 March 1970) is an Irish playwright, filmmaker, and screenwriter. Although he has lived in London his entire life, he is considered one of the most important living Irish playwrights.\n\nMcDonagh prefers writing films to plays, claiming to hold a "respect for the whole history of films and a slight disrespect for theater." In a conversation with Irish drama critic Fintan O'Toole in BOMB Magazine, McDonagh said, "It's not that I don't respect theater. I'm intelligent enough to know that a play can completely inspire a person as much as a film...[but] theater isn't something that's connected to me, from a personal point of view, I can't appreciate what I'm doing."\n\nMcDonagh won an Oscar for Best Original Screenplay for his first film, In Bruges.  His second film, Seven Psychopaths, will be released in September 2012.\n\nDescription above from the Wikipedia article Martin McDonagh, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Martin McDonagh	1970-03-26	No data.	2
24	http://image.tmdb.org/t/p/w185/isCuZ9PWIOyXzdf3ihodXzjIumL.jpg	From Wikipedia, the free encyclopedia.\n\nRobert Lee Zemeckis (born May 14, 1952) is an American film director, producer and screenwriter. Zemeckis first came to public attention in the 1980s as the director of the comedic time-travel Back to the Future film series, as well as the Academy Award-winning live-action/animation epic Who Framed Roger Rabbit (1988), though in the 1990s he diversified into more dramatic fare, including 1994's Forrest Gump, for which he won an Academy Award for Best Director.\n\nHis films are characterized by an interest in state-of-the-art special effects, including the early use of match moving in Back to the Future Part II (1989) and the pioneering performance capture techniques seen in The Polar Express (2004), Beowulf (2007) and A Christmas Carol (2009). Though Zemeckis has often been pigeonholed as a director interested only in effects, his work has been defended by several critics, including David Thomson, who wrote that "No other contemporary director has used special effects to more dramatic and narrative purpose."\n\nDescription above from the Wikipedia article Robert Zemeckis, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Robert Zemeckis	1951-05-14	No data.	2
11401	http://image.tmdb.org/t/p/w185/d1ovGZj05qWU1MjVKAePVj7ZMRh.jpg	From Wikipedia, the free encyclopedia.\n\nJohn Woo Yu-Sen SBS (born 22 September 1946) is a Hong Kong film director and producer. \n\nRecognized for his stylised films of highly choreographed action sequences, Mexican standoffs, and use of slow-motion, Woo has directed several notable Hong Kong action films, among them, A Better Tomorrow, The Killer, Hard Boiled and Red Cliff. \n\nHis Hollywood films include Hard Target, Broken Arrow, Face/Off and Mission: Impossible 2. He also created the comic series Seven Brothers, published by Virgin Comics. \n\nWoo was described by Dave Kehr in The Observer in 2002 as "arguably the most influential director making movies today". Woo cites his three favorite films as David Lean's Lawrence of Arabia, Akira Kurosawa's Seven Samurai and Jean-Pierre Melville's Le Samouraï.\n\nDescription above from the Wikipedia article John Woo, licensed under CC-BY-SA, full list of contributors on Wikipedia.	John Woo	1946-09-22	No data.	2
16483	http://image.tmdb.org/t/p/w185/gnmwOa46C2TP35N7ARSzboTdx2u.jpg	Michael Sylvester Gardenzio Stallone is an American actor and filmmaker. He is well known for his Hollywood action roles, including boxer Rocky Balboa in the Rocky series' seven films from 1976 to 2015; soldier John Rambo from the four Rambo films, released between 1982 and 2008; and Barney Ross in the three The Expendables films from 2010 to 2014. He wrote or co-wrote most of the 14 films in all three franchises, and directed many of the films.\n\nStallone's film Rocky was inducted into the National Film Registry as well as having its film props placed in the Smithsonian Museum. Stallone's use of the front entrance to the Philadelphia Museum of Art in the Rocky series led the area to be nicknamed the Rocky Steps. Philadelphia has a statue of his Rocky character placed permanently near the museum. It was announced on December 7, 2010 that Stallone was voted into the International Boxing Hall of Fame in the non-participant category.\n\nIn 1977, Stallone was nominated for two Academy Awards for Rocky, Best Original Screenplay and Best Actor. He became the third man in history to receive these two nominations for the same film, after Charlie Chaplin and Orson Welles. He received positive reviews, as well as his first Golden Globe Award win and a third Academy Award nomination, for reprising the role of Rocky Balboa in Ryan Coogler's 2015 film Creed.	Sylvester Stallone	1946-07-06	No data.	2
20308	http://image.tmdb.org/t/p/w185/meoiaU4mxGVHFHLIedATpqROEnz.jpg	Espen Sandberg is a Norwegian film director and advertising producer, well known to work with his childhood friend Joachim Rønning on several projects such as Bandidas (2006), Max Manus (2008), Kon-Tiki (2012) and Pirates of the Caribbean: Dead Men Tell No Tales (2017).	Espen Sandberg	1971-06-17	No data.	2
69797	http://image.tmdb.org/t/p/w185/vofzPcdNUzUD1xqaMUwMAJRgFiy.jpg	Dean DeBlois (born June 7, 1970) is a Canadian film director, film producer, screenwriter, animator, camera operator, and editor. He is best known for co-writing and co-directing The Oscar-nominated animated films Lilo & Stitch (Walt Disney Feature Animation) and How to Train Your Dragon (Dreamworks Animation), and for directing the acclaimed Sigur Rós documentary/music film Heima.	Dean DeBlois	1970-06-07	No data.	2
7314	http://image.tmdb.org/t/p/w185/f7MzwTzd2Wu2JjL74R8t7ixVBLN.jpg	From Wikipedia, the free encyclopedia\n\nNicholas Wulstan "Nick" Park, CBE (born 6 December 1958) is an English filmmaker of stop motion animation best known as the creator of Wallace and Gromit and Shaun the Sheep.\n\nPark has been nominated for an Academy Award a total of six times, and won four with; Creature Comforts (1989), The Wrong Trousers (1993), A Close Shave (1995), and Wallace &amp; Gromit: The Curse of the Were-Rabbit (2005).\n\nDescription above from the Wikipedia article Nick Park, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Nick Park	1958-12-06	No data.	2
10702	http://image.tmdb.org/t/p/w185/qhx0AySf8yH3kiHrinWknUJbr1y.jpg	Martin Campbell (born 24 October 1944) is a New Zealand TV and film director.\n\nDescription above from the Wikipedia article Martin Campbell, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Martin Campbell	1943-10-24	No data.	2
865	http://image.tmdb.org/t/p/w185/cBJX9TOcJk1RQDaKrgYJRvYNUq1.jpg	Michael Benjamin Bay (born February 17, 1965) is an American film director and producer. He is best known for directing high-budget action films characterized by fast edits, polished visuals and substantial use of practical effects. His films, which include The Rock, Armageddon, Pearl Harbor and the Bad Boys and Transformers series, have grossed over three billion dollars world-wide. He is co-founder of commercial production house The Institute , a.k.a. The Institute for the Development of Enhanced Perceptual Awareness.He is co-chair and part-owner of the special effects house Digital Domain. He co-owns Platinum Dunes, a production house which has remade horror movies including Friday the 13th, The Texas Chainsaw Massacre and A Nightmare on Elm Street.	Michael Bay	1965-02-17	No data.	2
15774	http://image.tmdb.org/t/p/w185/aFzDfJIIOC0tkGgqpwsZoDHzqu0.jpg	​From Wikipedia, the free encyclopedia.    Chris Buck is a film director known for directing Tarzan and Surf's Up. He also worked as supervising animator on Home on the Range and Chicken Little.\n\nBuck's other credits at Disney include the 1995 animated feature Pocahontas, where he oversaw the animation of three central characters: Percy, Grandmother Willow and Wiggins. Buck also helped design characters for the 1989 animated blockbuster The Little Mermaid, performed experimental animation for The Rescuers Down Under and Who Framed Roger Rabbit?, and was an animator on The Fox and the Hound.\n\nBuck helped develop several films at Hyperion Pictures and served as a directing animator on the feature Bebe's Kids. He storyboarded director Tim Burton's live-action featurette Frankenweenie and worked with Burton again as directing animator on the Brad Bird-directed "Family Dog" episode of Steven Spielberg's Amazing Stories and as director of the subsequent primetime animated series.\n\nBuck's credits include a number of animated commercials (including some with the Keebler Elves) for such Los Angeles-based production entities as FilmFair, Kurtz &amp; Friends, and Duck Soup.\n\nA native of Wichita, Kansas, Buck studied character animation for two years at CalArts, where he also taught from 1988–1993.\n\nIt was announced in 2010 that Buck would direct the 2013 animated feature The Snow Queen, but it's unknown if he'll direct it.  Description above from the Wikipedia article Chris Buck, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Chris Buck	1960-10-25	No data.	0
29605	http://image.tmdb.org/t/p/w185/gt4zyyOH6Zxz1icHy8RvMqpNTx2.jpg	Jan Mikael Håfstrom, born 1 July 1960 in Lund, is a\n\nSwedish director and screenwriter. Håfstrom studied film in Stockholm and New\n\nYork. After graduation, he worked as an assistant director on the Swedish\n\nchannel, SVT 1 and as a screenwriter. He was awarded a Guldbaggegatan 2002\n\nscreenplay "Leva Livet".  Description above from the Wikipedia article Mikael\n\nHåfström, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Mikael Håfström	1960-07-01	No data.	0
11092	http://image.tmdb.org/t/p/w185/yXlDADc2rLEMLTFZAw9irqXMq2J.jpg	Simon David Kinberg (born August 2, 1973) is a British-born American screenwriter and film producer. He is best known for his work on the X-Men film franchise, and has also written such films as Mr. &amp; Mrs. Smith and Sherlock Holmes. He has served as a producer on others including Cinderella, and The Martian, for which he was nominated for an Academy Award for Best Picture. His production company is Genre Films (usually credited as Kinberg Genre),[citation needed] which has a first-look deal with 20th Century Fox.	Simon Kinberg	1973-08-02	No data.	2
11343	http://image.tmdb.org/t/p/w185/sCjOa6Yt5o4YeyB7t8LZwNVvtSw.jpg	David Yates (born 30 November 1963) is an English director of film and television, best known for directing the final four films in the Harry Potter franchise.\n\nHis first two Potter films (Order of the Phoenix and Half-Blood Prince) became the highest-grossing entries in the series after the first instalment, which was later surpassed by Yates' Deathly Hallows, making him the most commercially successful British director in recent years. He is the only director in the series to be honoured with a Best Director accolade for his work on Harry Potter. He achieved international attention for his award-winning short films early in his career, which led to him becoming a prolific television director with credits including the BBC costume drama The Way We Live Now, the acclaimed political thriller State of Play and the BAFTA-lauded two-part drama Sex Traffic. Due to the success of these dramas and subsequent projects, Yates is considered as one of Britain's most celebrated directors of film and television.\n\nThroughout his works, Yates uses hand-held cameras to visually provoke the subject matter; the technique is noted as one of his directorial trademarks. Yates is married to Yvonne Walcott, who is the aunt of Arsenal football player Theo Walcott.\n\nDescription above from the Wikipedia article David Yates, licensed under CC-BY-SA, full list of contributors on Wikipedia.	David Yates	1963-11-30	No data.	2
52935	http://image.tmdb.org/t/p/w185/xg5gaLLmB0d79ge91fUCnjBCjwk.jpg	From Wikipedia, the free encyclopedia\n\nJohn Francis Daley (born July 20, 1985) is an American television and film actor, singer, and director, sometimes credited as John Daley or John Francis Daly. He is best known for playing Sam Weir on the NBC comedy-drama Freaks and Geeks and his current role as Lance Sweets on the series Bones. He plays keyboards and vocals for the band Dayplayer.	John Francis Daley	1985-07-20	No data.	2
62047	http://image.tmdb.org/t/p/w185/naRhdLVuw6a8KtDPM2aJWPhPjsp.jpg	From Wikipedia, the free encyclopedia.\n\nGary A. Trousdale (born June 8, 1960) is an American film director known for directing movies such as Beauty and the Beast, The Hunchback of Notre Dame and Atlantis: The Lost Empire. He frequently directs films with Kirk Wise.\n\nTrousdale planned to become an architect, but decided instead to study animation at CalArts, where he studied for three years. He was hired in 1982 to design storyboards and do other animation. He then went to work designing restaurant menus and t-shirts.\n\nTrousdale was hired by Walt Disney Feature Animation in 1985 as an effects animator on The Black Cauldron. He gained true prominence in his field with the success of his animated film directorial debut Beauty and the Beast, which was nominated for an Academy Award for Best Picture and won a LAFCA Award. He later directed The Hunchback of Notre Dame in 1996. In 2001 he directed Atlantis: The Lost Empire.\n\nHe moved to DreamWorks Animation in 2003, where he worked on projects such as The Madagascar Penguins in a Christmas Caper, Shrek the Halls and more recently Scared Shrekless.\n\nDescription above from the Wikipedia article Gary Trousdale, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Gary Trousdale	1960-06-08	No data.	2
62048	http://image.tmdb.org/t/p/w185/aoh7wnHk3F1HdOUBLI5Yfwd8rnN.jpg	From Wikipedia, the free encyclopedia.\n\nKirk Wise is an American animator, director and producer known for his work at Disney\n\nWise graduated from Palo Alto High School and went on to study character animation at California Institute of the Arts. Wise worked as an animator on The Brave Little Toaster, and Steven Spielberg's Amazing Stories episode "Family Dog". At Disney, he began as an assistant animator on The Great Mouse Detective and Oliver &amp; Company before eventually landing in the story department, where he was reunited with former CalArts classmate Gary Trousdale. After working as storyboard artists on The Rescuers Down Under and The Prince and the Pauper, Wise and Trousdale were responsible for helming the celebrated Beauty and the Beast (1991), the first animated feature to be nominated for an Academy Award for Best Picture. They collaborated on two more features for Disney, The Hunchback of Notre Dame, and Atlantis: The Lost Empire.\n\nWise also directed the English dubb of Hayo Miyazaki's Spirited Away.\n\nDescription above from the Wikipedia article Kirk Wise, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Kirk Wise	1958-11-09	No data.	2
9622	http://image.tmdb.org/t/p/w185/mhZIBHaVpQPhbY38aQTxW1W9BIC.jpg	​From Wikipedia, the free encyclopedia\n\nEric Brevig (born 1957) is a film director and visual effects supervisor known for his work in several major theatrical films and television shows. He was Visual Effects Supervisor and Second Unit Director on the 2001 Jerry Bruckheimer/Michael Bay action drama Pearl Harbor.\n\nSince his film school days at UCLA Brevig had been fascinated with the potential of 3D for live-action movie production, and he learned everything he could about it. During the production of 1986's Captain EO short for the Disney theme parks he was substantially responsible for supervising the technical aspects of the 3D photography. After several second unit director's assignments in special effects-heavy films like Men in Black and Michael Bay's Pearl Harbor, Brevig's previous 3D experience and expertise turned out to be the factor that helped him get his first full-blown director's job when he was offered the chance to direct the 2008 film Journey to the Center of the Earth 3-D (a New Line Cinema release), the first narrative feature shot entirely in digital 3-D. He next directed Yogi Bear, another 3-D movie, for Warner Bros., and he is attached to direct a 3-D Korean War drama, 17 Days of Winter, about the 1950 Battle of Chosin Reservoir. 17 Days of Winter, expected to cost $80–100 million, is scheduled to shoot in Korea and New Zealand over the winter of 2010-2011 for 2012 release.\n\nDescription above from the Wikipedia article Eric Brevig, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Eric Brevig	No data.	No data.	2
1090	http://image.tmdb.org/t/p/w185/tknmquMIO2oAVUZ0vVX78ALHyaT.jpg	From Wikipedia, the free encyclopedia.\n\nJohn Campbell McTiernan, Jr. (born January 8, 1951) is an American film director and producer, best known for his action films and most identifiable with the three films he directed back-to-back: Predator, Die Hard, and The Hunt for Red October, along with later movies such as Last Action Hero, Die Hard With A Vengeance, and The Thomas Crown Affair. More recently, McTiernan was in the news for his criminal conviction in the Anthony Pellicano wiretapping scandal.\n\nDescription above from the Wikipedia article John McTiernan, licensed under CC-BY-SA, full list of contributors on Wikipedia.	John McTiernan	1951-01-08	No data.	2
58189	http://image.tmdb.org/t/p/w185/68zKal0ffNlJPR7OtRN59kY1cWl.jpg	From Wikipedia, the free encyclopedia\n\nJustin Lin (born 1971) is an Taiwanese American film director, best known for his work on The Fast and the Furious franchise and the television show, Community.\n\nDescription above from the Wikipedia article Justin Lin, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Justin Lin	1971-10-01	No data.	2
54734	http://image.tmdb.org/t/p/w185/gtTTJrNtgCHHyjgLlmb9NWlZav1.jpg	Evan Goldberg (born 1982) is a Canadian film screenwriter and producer. Goldberg attended Point Grey Secondary School and McGill University before joining the staff of Da Ali G Show along with his childhood friend and comedy partner Seth Rogen. Rogen and Goldberg collaborated the films Knocked Up, Superbad, Pineapple Express, Funny People, and The Green Hornet. In a strategy to garner interest and funding, Goldberg created a pre-production trailer for Jay and Seth vs. The Apocalypse, a film he is now working on with Rogen. Goldberg and Rogen are both "obsessed" fans of The Simpsons. After learning that The Simpsons executive producer James L. Brooks was a fan of Superbad, they decided to ask the producers of the show if they could write an episode.  They were invited to The Simpsons writers room, where they pitched several episode ideas. One was accepted, and they wrote an outline with the help of some feedback from the regular writers.  It became the episode "Homer the Whopper", which was the season premiere of Season twenty-one.\n\nDescription above from the Wikipedia article Evan Goldberg, licensed under CC-BY-SA, full list of contributors on Wikipedia	Evan Goldberg	No data.	No data.	2
19274	http://image.tmdb.org/t/p/w185/aQc8O52P4vWDRfuxCLsz9rvnwf3.jpg	Seth Rogen (born April 15, 1982) is a Canadian actor, comedian, voice artist, screenwriter, and film producer. Rogen began his career doing stand-up comedy for four years during his teens, coming in second place in the Vancouver Amateur Comedy Contest in 1998. While still living in his native Vancouver, he landed a supporting role in Freaks and Geeks. Shortly after Rogen moved to Los Angeles for his role, Freaks and Geeks was canceled after one season due to poor ratings. He then got a part on the equally short-lived Undeclared, which also hired him as a staff writer. After landing a job as a staff writer on the final season of Da Ali G Show, for which Rogen and the other writers received an Emmy nomination, he was guided by film producer Judd Apatow toward a film career. Rogen was cast in a major supporting role and credited as a co-producer in Apatow's directorial debut, The 40-Year-Old Virgin. \n\nAfter receiving critical praise for that performance, Universal Pictures agreed to cast him as the lead in Apatow's next directorial feature, Knocked Up.\n\nRogen has appeared in the films Donnie Darko, You, Me and Dupree, Zack and Miri Make a Porno, Observe and Report, and The Green Hornet, and also in the Apatow-produced comedies The 40-Year-Old Virgin, Knocked Up, Superbad, Pineapple Express, and Funny People. He and his comedy partner Evan Goldberg co-wrote the comedy films Superbad and Pineapple Express, for which he originally intended to headline while in high school. Rogen has provided voice talents in the animated films Horton Hears a Who!, Kung Fu Panda, and Monsters vs. Aliens. He also supports Crowdrise, a charitable networking site.	Seth Rogen	1982-04-15	No data.	2
57742	http://image.tmdb.org/t/p/w185/fWrTUGH0BkT3zfdfB80JqFtsZ2I.jpg	​From Wikipedia, the free encyclopedia.  \n\nJohn Stevenson is a British animation filmmaker and puppeteer known for directing the 2008 animated feature film, Kung Fu Panda with Mark Osborne. Stevenson has over 30 years of experence with animation, a veteran of DreamWorks PDI who got his start in the entertainment industry via Jim Henson's The Muppet Show.\n\nHe worked on shows like The Dreamstone, Count Duckula, and FernGully 2: The Magical Rescue. He also worked as puppeteer on James &amp; the Giant Peach and Motion Capture Performer on The Moxy Pirate Show. Stevenson worked for many years in the art department on many films at DreamWorks Animation before helming a number of episodes of their animated primetime show Father of the Pride. For five years worked on bringing Kung Fu Panda to the screen.\n\nHe was originally set to work as director for an upcoming film based on the character created by Mattel, He-Man and the Masters of the Universe.\n\nHe is currently working on projects like The Minotaur Takes a Cigarette Break and We3.\n\nHe also directed the 3-D CGI film version of Popeye for Sony Pictures Animation.\n\nHe is the concept design of the Trans Studio Indoor Theme Park, the biggest indoor theme park in South East Asia. It's located in Makassar Indonesia.\n\nDescription above from the Wikipedia article John Wayne Stevenson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	John Stevenson	No data.	No data.	2
5524	http://image.tmdb.org/t/p/w185/sI8oEKKzvQmrNzV5kFakrKcNcvB.jpg	From Wikipedia, the free encyclopedia.  Andrew Ralph Adamson, MNZM (born 1 December 1966) is a New Zealand film director, producer and screenwriter based mainly in Los Angeles, California, U.S., where he made the blockbuster animation films, Shrek and Shrek 2 for which he received an Academy Award nomination. He was director, executive producer, and scriptwriter for C. S. Lewis' The Lion, the Witch, and the Wardrobe. Shooting took place in New Zealand, primarily in and around Auckland, but also in South Island where much of Peter Jackson's The Lord of the Rings trilogy was filmed. He also worked on the movies Batman Forever and Batman &amp; Robin as a visual effects supervisor.\n\nHe was made a Member of the New Zealand Order of Merit in the 2006 Queen's Birthday Honours List.\n\nDescription above from the Wikipedia article Andrew Adamson, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Andrew Adamson	1966-12-01	No data.	2
55934	http://image.tmdb.org/t/p/w185/8JBRfEb6mz7GdLwpoKDUOG6B5gy.jpg	Taika David Waititi (born 16 August 1975), also known as Taika Cohen, is a New Zealand-born film director, writer, painter, comedian and actor named as one of "ten new directors to watch" in influential United States entertainment magazine Variety.\n\nHis 2010 film Boy has done very well in New Zealand, eclipsing several records, and he was nominated for an Academy Award for his 2003 short film Two Cars, One Night.\n\nDescription above from the Wikipedia article Taika Waititi, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Taika Waititi	1975-08-16	No data.	2
20307	http://image.tmdb.org/t/p/w185/6Ngvvc3WIPgg7L0vvMUYs4uHYjR.jpg	Joachim Rønning is a Norwegian film director who usually works in a team with Espen Sandberg - both natives of Sandefjord, Norway. As a directing team, they go under the name of Roenberg (their last names put together). They co-own one of Scandinavia's largest production companies for commercials called Motion Blur. In 2006 their feature film debut, Bandidas, starring Penelope Cruz and Salma Hayek, was released worldwide through EuropaCorp and Twentieth Century Fox. The movie was written and produced by legendary French filmmaker Luc Besson. Joachim Rønning has two daughters with his wife Kristin. They live in Oslo, Norway.\n\nDescription above from the Wikipedia article Joachim Rønning, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Joachim Rønning	1972-05-30	No data.	2
20907	http://image.tmdb.org/t/p/w185/z8BLZcMQxE4GqUiEc2gsoAzc8xS.jpg	From Wikipedia, the free encyclopedia.\n\nAntoine Fuqua (born January 19, 1966) is an American film director. He directed the award-winning film Training Day alongside Tears of the Sun, King Arthur, Shooter and Brooklyn's Finest. He is currently slated to direct Tupac Shakur's official biopic.\n\nDescription above from the Wikipedia article Antoine Fuqua, licensed under CC-BY-SA, full list of contributors on Wikipedia.	Antoine Fuqua	1966-01-19	No data.	2
\.


--
-- Data for Name: movienews_app_genremodel; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.movienews_app_genremodel (id, title) FROM stdin;
12	
10749	
35	
9648	
28	
10752	
10770	
53	
10751	
36	
27	
37	
80	
14	
16	
18	
878	
99	
10402	
\.


--
-- Data for Name: movienews_app_moviemodel; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.movienews_app_moviemodel (id, title, image, date, country, rating, summary, duration) FROM stdin;
177572	Big Hero 6		2014-10-24	United States of America	7.79999999999999982	The special bond that develops between plus-sized inflatable robot Baymax, and prodigy Hiro Hamada, who team up with a group of friends to form a band of high-tech heroes.	102
58	Pirates of the Caribbean: Dead Man's Chest		2006-06-20	United States of America	7.09999999999999964	Captain Jack Sparrow works his way out of a blood debt with the ghostly Davey Jones, he also attempts to avoid eternal damnation.	151
106646	The Wolf of Wall Street		2013-12-25	United States of America	7.90000000000000036	A New York stockbroker refuses to cooperate in a large securities fraud case involving corruption on Wall Street, corporate banking world and mob infiltration. Based on Jordan Belfort's autobiography.	180
129	Spirited Away		2001-07-20	Japan	8.5	A young girl, Chihiro, becomes trapped in a strange new world of spirits. When her parents undergo a mysterious transformation, she must call upon the courage she never knew she had to free her family.	125
207703	Kingsman: The Secret Service		2015-01-24	United Kingdom	7.59999999999999964	The story of a super-secret spy organization that recruits an unrefined but promising street kid into the agency's ultra-competitive training program just as a global threat emerges from a twisted tech genius.	129
406563	Insidious: The Last Key		2018-01-03	United States of America	6	Parapsychologist Elise Rainier and her team travel to Five Keys, N.M., to investigate a man's claim of a haunting. Terror soon strikes when Rainier realizes that the house he lives in was her family's old home.	118
391713	Lady Bird		2017-09-08	United States of America	7.40000000000000036	A California high school student plans to escape from her family and small town by going to college in New York.	94
283366	Miss Peregrine's Home for Peculiar Children		2016-09-28	Belgium	6.59999999999999964	A teenager finds himself transported to an island where he must help protect a group of orphans with special powers from creatures intent on destroying them.	127
14	American Beauty		1999-09-15	United States of America	8	Lester Burnham, a depressed suburban father in a mid-life crisis, decides to turn his hectic life around after developing an infatuation with his daughter's attractive friend.	122
672	Harry Potter and the Chamber of Secrets		2002-11-13	Germany	7.5	Ignoring threats to his life, Harry returns to Hogwarts to investigate – aided by Ron and Hermione – a mysterious series of attacks.	161
307663	Vice		2015-01-16	United States of America	4.20000000000000018	Julian Michaels has designed the ultimate resort: VICE, where anything goes and the customers can play out their wildest fantasies with artificial inhabitants who look, think and feel like humans. When an artificial becomes self-aware and escapes, she finds herself caught in the crossfire between Julian's mercenaries and a cop who is hell-bent on shutting down Vice, and stopping the violence once and for all.	96
240832	Lucy		2014-07-25	France	6.29999999999999982	A woman, accidentally caught in a dark deal, turns the tables on her captors and transforms into a merciless warrior evolved beyond human logic.	89
337170	American Made		2017-08-17	United States of America	6.59999999999999964	The true story of pilot Barry Seal, who transported contraband for the CIA and the Medellin cartel in the 1980s.	115
458355	Bedroom Eyes		2017-04-04	United States of America	5.70000000000000018	As police investigate a series of murders, all signs point to the lead detective's girlfriend: a gorgeous webcam girl who goes by the name "Bedroom Eyes."	81
71805	Shipwrecked		1990-10-03	United States of America	6.09999999999999964	A young Norwegian boy in 1850s England goes to work as a cabin boy and discovers some of his shipmates are actually pirates.	92
119450	Dawn of the Planet of the Apes		2014-06-26	United States of America	7.29999999999999982	A group of scientists in San Francisco struggle to stay alive in the aftermath of a plague that is wiping out humanity, while Caesar tries to maintain dominance over his community of intelligent apes.	130
118340	Guardians of the Galaxy		2014-07-30	United States of America	7.90000000000000036	Light years from Earth, 26 years after being abducted, Peter Quill finds himself the prime target of a manhunt after discovering an orb wanted by Ronan the Accuser.	121
437557	Blockers		2018-03-30	United States of America	6.29999999999999982	When three parents discover their daughters’ pact to lose their virginity at prom, they launch a covert one-night operation to stop the teens from sealing the deal.	102
483980	Zombies		2018-02-16	United States of America	7.20000000000000018	Students from Zombietown are transferred to a high school in a suburban town preoccupied with uniformity, traditions and pep rallies.	94
158015	The Purge		2013-05-31	France	6.09999999999999964	Given the country's overcrowded prisons, the U.S. government begins to allow 12-hour periods of time in which all illegal activity is legal. During one of these free-for-alls, a family must protect themselves from a home invasion.	86
300668	Annihilation		2018-02-22	United Kingdom	6.29999999999999982	A biologist signs up for a dangerous, secret expedition into a mysterious zone where the laws of nature don't apply.	115
242582	Nightcrawler		2014-10-23	United States of America	7.70000000000000018	When Lou Bloom, desperate for work, muscles into the world of L.A. crime journalism, he blurs the line between observer and participant to become the star of his own story. Aiding him in his effort is Nina, a TV-news veteran.	117
343111	Aage Ki Soch		1988-01-01	\N	2.79999999999999982	Aage Ki Soch is 1988 Hindi language movie directed by Dada Kondke and starring Shakti Kapoor, Dada Kondke, Swapna, Raza Murad, and Satish Shah	137
447332	A Quiet Place		2018-04-04	United States of America	7.20000000000000018	A family is forced to live in silence while hiding from creatures that hunt by sound.	95
381719	Peter Rabbit		2018-02-07	United States of America	6.40000000000000036	Peter Rabbit's feud with Mr. McGregor escalates to greater heights than ever before as they rival for the affections of the warm-hearted animal lover who lives next door.	93
490214	Iceman 2		2018-05-18	\N	3.79999999999999982	The imperial guard and his three traitorous childhood friends ordered to hunt him down get accidentally buried and kept frozen in time. 400 years later pass and they are defrosted continuing the battle they left behind	95
460019	Truth or Dare		2018-04-12	United States of America	6	A harmless game of "Truth or Dare" among friends turns deadly when someone—or something—begins to punish those who tell a lie—or refuse the dare.	100
493922	Hereditary		2018-06-04	United States of America	6.90000000000000036	After their reclusive grandmother passes away, the Graham family tries to escape the dark fate they've inherited.	127
458663	Puberty: Sexual Education For Boys And Girls		1991-01-01	\N	0	This sex education movie explore themes of body development, sexual hygiene, masturbation, menstruation, puberty, sex and giving birth.	28
284052	Doctor Strange		2016-10-25	United States of America	7.20000000000000018	After his career is destroyed, a brilliant but arrogant surgeon gets a new lease on life when a sorcerer takes him under her wing and trains him to defend the world against evil.	115
550	Fight Club		1999-10-15	Germany	8.40000000000000036	A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground "fight clubs" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.	139
384677	Set It Up		2018-06-12	United States of America	6.90000000000000036	Two overworked assistants with nasty bosses try to get their supervisors out of their hair.	105
244786	Whiplash		2014-10-10	United States of America	8.40000000000000036	Under the direction of a ruthless instructor, a talented young drummer begins to pursue perfection at any cost, even his humanity.	105
68721	Iron Man 3		2013-04-18	United States of America	6.79999999999999982	When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.	130
406990	What Happened to Monday		2017-08-18	Belgium	7.20000000000000018	In a world where families are limited to one child due to overpopulation, a set of identical septuplets must avoid being put to a long sleep by the government and dangerous infighting while investigating the disappearance of one of their own.	123
459258	Distorted		2018-06-22	Canada	5.29999999999999982	A married couple suspect that the 'smart apartments' in their high tech residence are being used by its owner for sinister reasons.	90
157336	Interstellar		2014-11-05	Canada	8.19999999999999929	Interstellar chronicles the adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.	169
407451	A Wrinkle in Time		2018-03-08	United States of America	5.09999999999999964	After the disappearance of her scientist father, three peculiar beings send Meg, her brother, and her friend to space in order to find him.	109
311324	The Great Wall		2016-12-16	Australia	5.79999999999999982	European mercenaries searching for black powder become embroiled in the defense of the Great Wall of China against a horde of monstrous creatures.	103
265208	Wild Card		2015-01-14	United States of America	5.40000000000000036	When a Las Vegas bodyguard with lethal skills and a gambling problem gets in trouble with the mob, he has one last play… and it's all or nothing.	92
603	The Matrix		1999-03-30	Australia	8	Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.	136
398818	Call Me by Your Name		2017-09-01	Italy	8.30000000000000071	Elio Perlman is spending the summer with his family at their vacation home in Lombardy, Italy. When his father hires a handsome doctoral student, the curious 17-year-old finds himself developing a growing attraction to the young man.	132
76338	Thor: The Dark World		2013-10-29	United States of America	6.70000000000000018	Thor fights to restore order across the cosmos… but an ancient race led by the vengeful Malekith returns to plunge the universe back into darkness. Faced with an enemy that even Odin and Asgard cannot withstand, Thor must embark on his most perilous and personal journey yet, one that will reunite him with Jane Foster and force him to sacrifice everything to save us all.	112
57158	The Hobbit: The Desolation of Smaug		2013-12-11	New Zealand	7.59999999999999964	The Dwarves, Bilbo and Gandalf have successfully escaped the Misty Mountains, and Bilbo has gained the One Ring. They all continue their journey to get their gold back from the Dragon, Smaug.	161
260513	Incredibles 2		2018-06-14	United States of America	7.70000000000000018	Elastigirl springs into action to save the day, while Mr. Incredible faces his greatest challenge yet – taking care of the problems of his three children.	118
135397	Jurassic World		2015-06-06	United States of America	6.5	Twenty-two years after the events of Jurassic Park, Isla Nublar now features a fully functioning dinosaur theme park, Jurassic World, as originally envisioned by John Hammond.	124
181533	Night at the Museum: Secret of the Tomb		2014-12-17	United Kingdom	6.09999999999999964	When the magic powers of The Tablet of Ahkmenrah begin to die out, Larry Daley (Ben Stiller) spans the globe, uniting favorite and new characters while embarking on an epic quest to save the magic before it is gone forever.	97
198663	The Maze Runner		2014-09-10	United States of America	7	Set in a post-apocalyptic world, young Thomas is deposited in a community of boys after his memory is erased, soon learning they're all trapped in a maze that will require him to join forces with fellow “runners” for a shot at escape.	113
449176	Love, Simon		2018-03-16	United States of America	8.30000000000000071	Everyone deserves a great love story. But for seventeen-year old Simon Spier it's a little more complicated: he's yet to tell his family or friends he's gay and he doesn't know the identity of the anonymous classmate he's fallen for online.	110
181808	Star Wars: The Last Jedi		2017-12-13	United States of America	7.09999999999999964	Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares to do battle with the First Order.	152
22	Pirates of the Caribbean: The Curse of the Black Pearl		2003-07-09	United States of America	7.59999999999999964	Jack Sparrow, a freewheeling 17th-century pirate, quarrels with a rival pirate bent on pillaging Port Royal. When the governor's daughter is kidnapped, Sparrow decides to help the girl's love save her.	143
10195	Thor		2011-04-21	United States of America	6.70000000000000018	Against his father Odin's will, The Mighty Thor - a powerful but arrogant warrior god - recklessly reignites an ancient war. Thor is cast down to Earth and forced to live among humans as punishment. Once here, Thor learns what it takes to be a true hero when the most dangerous villain of his world sends the darkest forces of Asgard to invade Earth.	115
245891	John Wick		2014-10-22	Canada	7	Ex-hitman John Wick comes out of retirement to track down the gangsters that took everything from him.	101
274855	Geostorm		2017-10-13	United States of America	5.70000000000000018	After an unprecedented series of natural disasters threatened the planet, the world's leaders came together to create an intricate network of satellites to control the global climate and keep everyone safe. But now, something has gone wrong: the system built to protect Earth is attacking it, and it becomes a race against the clock to uncover the real threat before a worldwide geostorm wipes out everything and everyone along with it.	109
440471	Escape Plan 2: Hades		2018-06-05	China	5.09999999999999964	Ray Breslin manages an elite team of security specialists trained in the art of breaking people out of the world's most impenetrable prisons. When his most trusted operative, Shu Ren, is kidnapped and disappears inside the most elaborate prison ever built, Ray must track him down with the help of some of his former friends.	93
11	Star Wars		1977-05-25	United States of America	8.19999999999999929	Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.	121
329	Jurassic Park		1993-06-11	United States of America	7.79999999999999982	A wealthy entrepreneur secretly creates a theme park featuring living dinosaurs drawn from prehistoric DNA. Before opening day, he invites a team of experts and his two eager grandchildren to experience the park and help calm anxious investors. However, the park is anything but amusing as the security systems go off-line and the dinosaurs escape.	127
354912	Coco		2017-10-27	United States of America	7.79999999999999982	Despite his family’s baffling generations-old ban on music, Miguel dreams of becoming an accomplished musician like his idol, Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead following a mysterious chain of events. Along the way, he meets charming trickster Hector, and together, they set off on an extraordinary journey to unlock the real story behind Miguel's family history.	105
120	The Lord of the Rings: The Fellowship of the Ring		2001-12-18	New Zealand	8.19999999999999929	Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.	178
62	2001: A Space Odyssey		1968-04-09	United Kingdom	8	Humanity finds a mysterious object buried beneath the lunar surface and sets off to find its origins with the help of HAL 9000, the world's most advanced super computer.	149
315635	Spider-Man: Homecoming		2017-07-05	United States of America	7.29999999999999982	Following the events of Captain America: Civil War, Peter Parker, with the help of his mentor Tony Stark, tries to balance his life as an ordinary high school student in Queens, New York City, with fighting crime as his superhero alter ego Spider-Man as a new threat, the Vulture, emerges.	133
283995	Guardians of the Galaxy Vol. 2		2017-04-19	United States of America	7.59999999999999964	The Guardians must fight to keep their newfound family together as they unravel the mysteries of Peter Quill's true parentage.	137
102899	Ant-Man		2015-07-14	United States of America	7	Armed with the astonishing ability to shrink in scale but increase in strength, master thief Scott Lang must embrace his inner-hero and help his mentor, Doctor Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.	117
399174	Isle of Dogs		2018-03-23	Germany	7.79999999999999982	In the future, an outbreak of canine flu leads the mayor of a Japanese city to banish all dogs to an island that's a garbage dump. The outcasts must soon embark on an epic journey when a 12-year-old boy arrives on the island to find his beloved pet.	101
335984	Blade Runner 2049		2017-10-04	United States of America	7.29999999999999982	Thirty years after the events of the first film, a new blade runner, LAPD Officer K, unearths a long-buried secret that has the potential to plunge what's left of society into chaos. K's discovery leads him on a quest to find Rick Deckard, a former LAPD blade runner who has been missing for 30 years.	163
24428	The Avengers		2012-04-25	United States of America	7.5	When an unexpected enemy emerges and threatens global safety and security, Nick Fury, director of the international peacekeeping agency known as S.H.I.E.L.D., finds himself in need of a team to pull the world back from the brink of disaster. Spanning the globe, a daring recruitment effort begins!	143
131631	The Hunger Games: Mockingjay - Part 1		2014-11-18	United States of America	6.70000000000000018	Katniss Everdeen reluctantly becomes the symbol of a mass rebellion against the autocratic Capitol.	123
61791	Rise of the Planet of the Apes		2011-08-03	United States of America	7.20000000000000018	Scientist Will Rodman is determined to find a cure for Alzheimer's, the disease which has slowly consumed his father. Will feels certain he is close to a breakthrough and tests his latest serum on apes, noticing dramatic increases in intelligence and brain activity in the primate subjects – especially Caesar, his pet chimpanzee.	105
339403	Baby Driver		2017-06-28	United Kingdom	7.40000000000000036	After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.	113
453213	My Brother's Wife 3 - The Woman Downstairs		2017-01-14	\N	4.70000000000000018	My sister and I moved into a new house. We didn't do much but the woman downstairs came up to ask us to keep it down.  She said she was sensitive so we decided to keep it down.\r Her gangster husband would beat her when he came home drunk.  Every time I heard her suffer from the beatings, I couldn't stand it and would stomp the floor to create a distraction.  She would come up telling us to be quiet.  I told her I did it intentionally. I also decided to do something about the woman who showed interest in me by memorizing my number.	90
299536	Avengers: Infinity War		2018-04-25	United States of America	8.40000000000000036	As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.	149
348350	Solo: A Star Wars Story		2018-05-23	United States of America	6.79999999999999982	Through a series of daring escapades deep within a dark and dangerous criminal underworld, Han Solo meets his mighty future copilot Chewbacca and encounters the notorious gambler Lando Calrissian.	135
284054	Black Panther		2018-02-13	United States of America	7.29999999999999982	King T'Challa returns home from America to the reclusive, technologically advanced African nation of Wakanda to serve as his country's new leader. However, T'Challa soon finds that he is challenged for the throne by factions within his own country as well as without. Using powers reserved to Wakandan kings, T'Challa assumes the Black Panther mantel to join with girlfriend Nakia, the queen-mother, his princess-kid sister, members of the Dora Milaje (the Wakandan 'special forces') and an American secret agent, to prevent Wakanda from being dragged into a world war.	134
338970	Tomb Raider		2018-03-08	United Kingdom	6.20000000000000018	Lara Croft, the fiercely independent daughter of a missing adventurer, must push herself beyond her limits when she finds herself on the island where her father disappeared.	118
268896	Pacific Rim: Uprising		2018-03-21	China	5.90000000000000036	It has been ten years since The Battle of the Breach and the oceans are still, but restless. Vindicated by the victory at the Breach, the Jaeger program has evolved into the most powerful global defense force in human history. The PPDC now calls upon the best and brightest to rise up and become the next generation of heroes when the Kaiju threat returns.	111
449443	Den of Thieves		2018-01-18	United States of America	6.40000000000000036	A gritty crime saga which follows the lives of an elite unit of the LA County Sheriff's Dept. and the state's most successful bank robbery crew as the outlaws plan a seemingly impossible heist on the Federal Reserve Bank.	140
381283	mother!		2017-09-13	United States of America	6.90000000000000036	A couple's relationship is tested when uninvited guests arrive at their home, disrupting their tranquil existence.	121
297762	Wonder Woman		2017-05-30	United States of America	7.20000000000000018	An Amazon princess comes to the world of Man in the grips of the First World War to confront the forces of evil and bring an end to human conflict.	141
337167	Fifty Shades Freed		2018-01-17	United States of America	6	Believing they have left behind shadowy figures from their past, newlyweds Christian and Ana fully embrace an inextricable connection and shared life of luxury. But just as she steps into her role as Mrs. Grey and he relaxes into an unfamiliar stability, new threats could jeopardize their happy ending before it even begins.	105
402900	Ocean's 8		2018-06-07	United States of America	6.79999999999999982	Debbie Ocean, a criminal mastermind, gathers a crew of seven other female thieves to pull off the heist of the century at New York's annual Met Gala.	110
263115	Logan		2017-02-28	United States of America	7.70000000000000018	In the near future, a weary Logan cares for an ailing Professor X in a hideout on the Mexican border. But Logan's attempts to hide from the world and his legacy are upended when a young mutant arrives, pursued by dark forces.	137
291805	Now You See Me 2		2016-06-02	Canada	6.70000000000000018	One year after outwitting the FBI and winning the public’s adulation with their mind-bending spectacles, the Four Horsemen resurface only to find themselves face to face with a new enemy who enlists them to pull off their most dangerous heist yet.	129
510819	Dirty Dead Con Men		2018-03-30	United States of America	4.20000000000000018	A cool and dangerous neo-noir crime film that revolves around the disturbed lives of two unlikely partners: Mickey Rady, a rogue undercover cop and Kook Packard, a smooth and charismatic con man. Together they rip off those operating outside of the law...for their own personal gain. But things go awry when one heist suck them deep into a city-wide conspiracy...	85
293660	Deadpool		2016-02-09	United States of America	7.5	Deadpool tells the origin story of former Special Forces operative turned mercenary Wade Wilson, who after being subjected to a rogue experiment that leaves him with accelerated healing powers, adopts the alter ego Deadpool. Armed with his new abilities and a dark, twisted sense of humor, Deadpool hunts down the man who nearly destroyed his life.	108
954	Mission: Impossible		1996-05-22	United States of America	6.79999999999999982	When Ethan Hunt, the leader of a crack espionage team whose perilous operation has gone awry with no explanation, discovers that a mole has penetrated the CIA, he's surprised to learn that he's the No. 1 suspect. To clear his name, Hunt now must ferret out the real double agent and, in the process, even the score.	110
399055	The Shape of Water		2017-12-01	United States of America	7.29999999999999982	An other-worldly story, set against the backdrop of Cold War era America circa 1962, where a mute janitor working at a lab falls in love with an amphibious man being held captive there and devises a plan to help him escape.	123
56292	Mission: Impossible - Ghost Protocol		2011-12-07	Czech Republic	6.90000000000000036	Ethan Hunt and his team are racing against time to track down a dangerous terrorist named Hendricks, who has gained access to Russian nuclear launch codes and is planning a strike on the United States. An attempt to stop him ends in an explosion causing severe destruction to the Kremlin and the IMF to be implicated in the bombing, forcing the President to disavow them. No longer being aided by the government, Ethan and his team chase Hendricks around the globe, although they might still be too late to stop a disaster.	133
271110	Captain America: Civil War		2016-04-27	United States of America	7.20000000000000018	Following the events of Age of Ultron, the collective governments of the world pass an act designed to regulate all superhuman activity. This polarizes opinion amongst the Avengers, causing two factions to side with Iron Man or Captain America, which causes an epic battle between former allies.	147
210577	Gone Girl		2014-10-01	United States of America	7.90000000000000036	With his wife's disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it's suspected that he may not be innocent.	145
214756	Ted 2		2015-06-25	United States of America	6.09999999999999964	Newlywed couple Ted and Tami-Lynn want to have a baby, but in order to qualify to be a parent, Ted will have to prove he's a person in a court of law.	115
177677	Mission: Impossible - Rogue Nation		2015-07-23	United States of America	7.09999999999999964	Ethan and team take on their most impossible mission yet, eradicating the Syndicate - an International rogue organization as highly skilled as they are, committed to destroying the IMF.	131
337339	The Fate of the Furious		2017-04-12	United States of America	6.79999999999999982	When a mysterious woman seduces Dom into the world of crime and a betrayal of those closest to him, the crew face trials that will test them as never before.	136
228150	Fury		2014-10-15	United Kingdom	7.40000000000000036	Last months of World War II in April 1945. As the Allies make their final push in the European Theater, a battle-hardened U.S. Army sergeant in the 2nd Armored Division named Wardaddy commands a Sherman tank called "Fury" and its five-man crew on a deadly mission behind enemy lines. Outnumbered and outgunned, Wardaddy and his men face overwhelming odds in their heroic attempts to strike at the heart of Nazi Germany.	135
85	Raiders of the Lost Ark		1981-06-12	United States of America	7.79999999999999982	When Dr. Indiana Jones – the tweed-suited professor who just happens to be a celebrated archaeologist – is hired by the government to locate the legendary Ark of the Covenant, he finds himself up against the entire Nazi regime.	115
1865	Pirates of the Caribbean: On Stranger Tides		2011-05-14	United States of America	6.40000000000000036	Captain Jack Sparrow crosses paths with a woman from his past, and he's not sure if it's love -- or if she's a ruthless con artist who's using him to find the fabled Fountain of Youth. When she forces him aboard the Queen Anne's Revenge, the ship of the formidable pirate Blackbeard, Jack finds himself on an unexpected adventure in which he doesn't know who to fear more: Blackbeard or the woman from his past.	136
19995	Avatar		2009-12-10	United States of America	7.29999999999999982	In the 22nd century, a paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting an alien civilization.	162
1726	Iron Man		2008-04-30	United States of America	7.5	After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.	126
273481	Sicario		2015-09-17	United States of America	7.20000000000000018	A young female FBI agent joins a secret CIA operation to take down a Mexican cartel boss, a job that ends up pushing her ethical and moral values to the limit.	121
321612	Beauty and the Beast		2017-03-16	United States of America	6.79999999999999982	A live-action adaptation of Disney's version of the classic tale of a cursed prince and a beautiful young woman who helps him break the spell.	129
76341	Mad Max: Fury Road		2015-05-13	Australia	7.29999999999999982	An apocalyptic story set in the furthest reaches of our planet, in a stark desert landscape where humanity is broken, and most everyone is crazed fighting for the necessities of life. Within this world exist two rebels on the run who just might be able to restore order. There's Max, a man of action and a man of few words, who seeks peace of mind following the loss of his wife and child in the aftermath of the chaos. And Furiosa, a woman of action and a woman who believes her path to survival may be achieved if she can make it across the desert back to her childhood homeland.	120
671	Harry Potter and the Philosopher's Stone		2001-11-16	United Kingdom	7.70000000000000018	Harry Potter has lived under the stairs at his aunt and uncle's house his whole life. But on his 11th birthday, he learns he's a powerful wizard -- with a place waiting for him at the Hogwarts School of Witchcraft and Wizardry. As he learns to harness his newfound powers with the help of the school's kindly headmaster, Harry uncovers the truth about his parents' deaths -- and about the villain who's to blame.	152
99861	Avengers: Age of Ultron		2015-04-22	United States of America	7.29999999999999982	When Tony Stark tries to jumpstart a dormant peacekeeping program, things go awry and Earth’s Mightiest Heroes are put to the ultimate test as the fate of the planet hangs in the balance. As the villainous Ultron emerges, it is up to The Avengers to stop him from enacting his terrible plans, and soon uneasy alliances and unexpected action pave the way for an epic and unique global adventure.	141
386877	My Friend's Wife		2015-12-03	South Korea	0	I want to spend all night with my friend's wife who is extremely sexy. Jeong-woo is a husband who can't get an erection while his marriage is going down the drain.  A friend and his wife from the States suggest a couples trip and Jeong-woo meets his friend's wife Hye-sook who is extremely sexy. His 'package' keeps getting stimlated every time he sees her. He tries to ignore it but every time he sees her, he gets sexual fantasies. Finally, he suggests to his friend, to 'switch' partners...	80
262500	Insurgent		2015-03-18	United States of America	6.29999999999999982	Beatrice Prior must confront her inner demons and continue her fight against a powerful alliance which threatens to tear her society apart.	119
336843	Maze Runner: The Death Cure		2018-01-10	United States of America	7.09999999999999964	Thomas leads his group of escaped Gladers on their final and most dangerous mission yet. To save their friends, they must break into the legendary Last City, a WCKD-controlled labyrinth that may turn out to be the deadliest maze of all. Anyone who makes it out alive will get answers to the questions the Gladers have been asking since they first arrived in the maze.	142
680	Pulp Fiction		1994-09-10	United States of America	8.40000000000000036	A burger-loving hit man, his philosophical partner, a drug-addled gangster's moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.	154
238636	The Purge: Anarchy		2014-07-17	France	6.59999999999999964	Three groups of people are trying to survive Purge Night, when their stories intertwine and are left stranded in The Purge trying to survive the chaos and violence that occurs.	104
20352	Despicable Me		2010-07-08	United States of America	7.20000000000000018	Villainous Gru lives up to his reputation as a despicable, deplorable and downright unlikable guy when he hatches a plan to steal the moon from the sky. But he has a tough time staying on task after three orphans land in his care.	95
238	The Godfather		1972-03-14	United States of America	8.59999999999999964	Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.	175
155	The Dark Knight		2008-07-16	United Kingdom	8.40000000000000036	Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.	152
343668	Kingsman: The Golden Circle		2017-09-20	United Kingdom	7	When an attack on the Kingsman headquarters takes place and a new villain rises, Eggsy and Merlin are forced to work together with the American agency known as the Statesman to save the world.	141
205596	The Imitation Game		2014-11-14	United Kingdom	8	Based on the real life story of legendary cryptanalyst Alan Turing, the film portrays the nail-biting race against time by Turing and his brilliant team of code-breakers at Britain's top-secret Government Code and Cypher School at Bletchley Park, during the darkest days of World War II.	113
419478	Midnight Sun		2018-03-22	United States of America	7.70000000000000018	Katie, a 17-year-old, has been sheltered since childhood and confined to her house during the day by a rare disease that makes even the smallest amount of sunlight deadly. Fate intervenes when she meets Charlie and they embark on a summer romance.	91
483877	15+ IQ Krachoot		2017-08-03	Thailand	4	A teenage comedy film about a young Yorkie. "Rising" opened the first movie on screen.  The story of fun gangs of teenage age 15+ hormones gurgling at the curiosity to try on their love and sex has spread out.	104
27205	Inception		2010-07-14	United Kingdom	8.19999999999999929	Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: "inception", the implantation of another person's idea into a target's subconscious.	148
399035	The Commuter		2018-01-11	France	6	A businessman, on his daily commute home, gets unwittingly caught up in a criminal conspiracy that threatens not only his life but the lives of those around him.	104
285	Pirates of the Caribbean: At World's End		2007-05-19	United States of America	7	Captain Barbossa, long believed to be dead, has come back to life and is headed to the edge of the Earth with Will Turner and Elizabeth Swann. But nothing is quite as it seems.	169
269149	Zootopia		2016-02-11	United States of America	7.70000000000000018	Determined to prove herself, Officer Judy Hopps, the first bunny on Zootopia's police force, jumps at the chance to crack her first case - even if it means partnering with scam-artist fox Nick Wilde to solve the mystery.	108
400535	Sicario: Day of the Soldado		2018-06-27	Italy	6.59999999999999964	FBI agent Matt Graver teams up with operative Alejandro Gillick to prevent Mexican drug cartels from smuggling terrorists across the U.S. border.	122
127585	X-Men: Days of Future Past		2014-05-15	United Kingdom	7.5	The ultimate X-Men ensemble fights a war for the survival of the species across two time periods as they join forces with their younger selves in an epic battle that must change the past – to save our future.	131
347882	Sleight		2017-04-28	United States of America	5.20000000000000018	A young street magician is left to take care of his little sister after his mother's passing and turns to drug dealing in the Los Angeles party scene to keep a roof over their heads. When he gets into trouble with his supplier, his sister is kidnapped and he is forced to rely on both his sleight of hand and brilliant mind to save her.	89
374720	Dunkirk		2017-07-19	France	7.40000000000000036	The story of the miraculous evacuation of Allied soldiers from Belgium, Britain, Canada and France, who were cut off and surrounded by the German army from the beaches and harbour of Dunkirk between May 26th and June 4th 1940 during World War II.	107
98566	Teenage Mutant Ninja Turtles		2014-08-07	United States of America	5.79999999999999982	The city needs heroes. Darkness has settled over New York City as Shredder and his evil Foot Clan have an iron grip on everything from the police to the politicians. The future is grim until four unlikely outcast brothers rise from the sewers and discover their destiny as Teenage Mutant Ninja Turtles. The Turtles must work with fearless reporter April and her wise-cracking cameraman Vern Fenwick to save the city and unravel Shredder's diabolical plan.	101
122	The Lord of the Rings: The Return of the King		2003-12-01	New Zealand	8.30000000000000071	Aragorn is revealed as the heir to the ancient kings as he, Gandalf and the other members of the broken fellowship struggle to save Gondor from Sauron's forces. Meanwhile, Frodo and Sam bring the ring closer to the heart of Mordor, the dark lord's realm.	201
176	Saw		2004-10-01	United States of America	7.29999999999999982	Obsessed with teaching his victims the value of life, a deranged, sadistic serial killer abducts the morally wayward. Once captured, they must face impossible choices in a horrific game of survival. The victims must fight to win their lives back, or die trying...	103
425	Ice Age		2002-03-10	United States of America	7.20000000000000018	With the impending ice age almost upon them, a mismatched trio of prehistoric critters – Manny the woolly mammoth, Diego the saber-toothed tiger and Sid the giant sloth – find an orphaned infant and decide to return it to its human parents. Along the way, the unlikely allies become friends but, when enemies attack, their quest takes on far nobler aims.	81
246655	X-Men: Apocalypse		2016-05-18	United States of America	6.5	After the re-emergence of the world's first mutant, world-destroyer Apocalypse, the X-Men must unite to defeat his extinction level plan.	144
294254	Maze Runner: The Scorch Trials		2015-09-09	United States of America	6.5	Thomas and his fellow Gladers face their greatest challenge yet: searching for clues about the mysterious and powerful organization known as WCKD. Their journey takes them to the Scorch, a desolate landscape filled with unimaginable obstacles. Teaming up with resistance fighters, the Gladers take on WCKD’s vastly superior forces and uncover its shocking plans for them all.	132
250124	The Diary of a Teenage Girl		2015-08-07	United States of America	6.70000000000000018	Minnie Goetze is a 15-year-old aspiring comic-book artist, coming of age in the haze of the 1970s in San Francisco. Insatiably curious about the world around her, Minnie is a pretty typical teenage girl. Oh, except that she’s sleeping with her mother’s boyfriend.	98
341174	Fifty Shades Darker		2017-02-08	United States of America	6	When a wounded Christian Grey tries to entice a cautious Ana Steele back into his life, she demands a new arrangement before she will give him another chance. As the two begin to build trust and find stability, shadowy figures from Christian’s past start to circle the couple, determined to destroy their hopes for a future together.	118
353081	Mission: Impossible - Fallout		2018-07-26	United States of America	0	The sixth installment in the "Mission: Impossible". When an IMF mission ends badly, the world is faced with dire consequences. As Ethan Hunt takes it upon himself to fulfil his original briefing, the CIA begin to question his loyalty and his motives. The IMF team find themselves in a race against time, hunted by assassins while trying to prevent a global catastrophe.	147
381288	Split		2017-01-19	United States of America	7.09999999999999964	Though Kevin has evidenced 23 personalities to his trusted psychiatrist, Dr. Fletcher, there remains one still submerged who is set to materialize and dominate all the others. Compelled to abduct three teenage girls led by the willful, observant Casey, Kevin reaches a war for survival among all of those contained within him — as well as everyone around him — as the walls between his compartments shatter apart.	117
12	Finding Nemo		2003-05-30	United States of America	7.70000000000000018	Nemo, an adventurous young clownfish, is unexpectedly taken from his Great Barrier Reef home to a dentist's office aquarium. It's up to his worrisome father Marlin and a friendly but forgetful fish Dory to bring Nemo home -- meeting vegetarian sharks, surfer dude turtles, hypnotic jellyfish, hungry seagulls, and more along the way.	100
13186	Wrong Turn 2: Dead End		2007-08-25	Canada	5.59999999999999964	Retired military commander Colonel Dale Murphy hosts the simulated post-apocalyptic reality show where participants are challenged to survive a remote West Virginia wasteland. But the show turns into a nightmarish showdown when each realizes they are being hunted by an inbred family of cannibals determined to make them all dinner!	96
956	Mission: Impossible III		2006-05-03	China	6.5	Retired from active duty to train new IMF agents, Ethan Hunt is called back into action to confront sadistic arms dealer, Owen Davian. Hunt must try to protect his girlfriend while working with his new team to complete the mission.	126
47971	xXx: Return of Xander Cage		2017-01-13	United States of America	5.59999999999999964	Extreme athlete turned government operative Xander Cage comes out of self-imposed exile, thought to be long dead, and is set on a collision course with deadly alpha warrior Xiang and his team in a race to recover a sinister and seemingly unstoppable weapon known as Pandora's Box. Recruiting an all-new group of thrill-seeking cohorts, Xander finds himself enmeshed in a deadly conspiracy that points to collusion at the highest levels of world governments.	107
259316	Fantastic Beasts and Where to Find Them		2016-11-16	United Kingdom	7.29999999999999982	In 1926, Newt Scamander arrives at the Magical Congress of the United States of America with a magically expanded briefcase, which houses a number of dangerous creatures and their habitats. When the creatures escape from the briefcase, it sends the American wizarding authorities after Newt, and threatens to strain even further the state of magical and non-magical relations.	133
46375	Barsaat		1995-09-29	\N	4.59999999999999964	Badal (Bobby Deol) is a naive but intelligent young man who comes from a small village to the big city. He is introduced to city life by Damru (Harish Patel) who now calls himself Danny. When Badal attends college, he meets with pretty and percocious, Tina Oberoi (Twinkle Khanna), and after a few misunderstanding and misadventures...	\N
446354	The Post		2018-01-11	United States of America	7	A cover-up that spanned four U.S. Presidents pushed the country's first female newspaper publisher and a hard-driving editor to join an unprecedented battle between journalist and government. Inspired by true events.	116
76757	Jupiter Ascending		2015-02-04	United States of America	5.29999999999999982	In a universe where human genetic material is the most precious commodity, an impoverished young Earth woman becomes the key to strategic maneuvers and internal strife within a powerful dynasty…	124
395990	Death Wish		2018-03-02	United States of America	5.5	A mild-mannered father is transformed into a killing machine after his family is torn apart by a violent act.	107
150689	Cinderella		2015-03-12	United Kingdom	6.59999999999999964	When her father unexpectedly passes away, young Ella finds herself at the mercy of her cruel stepmother and her daughters. Never one to give up hope, Ella's fortunes begin to change after meeting a dashing stranger in the woods.	105
254128	San Andreas		2015-05-27	Canada	6	In the aftermath of a massive earthquake in California, a rescue-chopper pilot makes a dangerous journey across the state in order to rescue his estranged daughter.	114
121	The Lord of the Rings: The Two Towers		2002-12-18	New Zealand	8.19999999999999929	Frodo and Sam are trekking to Mordor to destroy the One Ring of Power while Gimli, Legolas and Aragorn search for the orc-captured Merry and Pippin. All along, nefarious wizard Saruman awaits the Fellowship members at the Orthanc Tower in Isengard.	179
140607	Star Wars: The Force Awakens		2015-12-15	United States of America	7.40000000000000036	Thirty years after defeating the Galactic Empire, Han Solo and his allies face a new threat from the evil Kylo Ren and his army of Stormtroopers.	136
278	The Shawshank Redemption		1994-09-23	United States of America	8.59999999999999964	Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.	142
10138	Iron Man 2		2010-04-28	United States of America	6.70000000000000018	With the world now aware of his dual life as the armored superhero Iron Man, billionaire inventor Tony Stark faces pressure from the government, the press and the public to share his technology with the military. Unwilling to let go of his invention, Stark, with Pepper Potts and James 'Rhodey' Rhodes at his side, must forge new alliances – and confront powerful enemies.	124
194662	Birdman		2014-08-27	United States of America	7.40000000000000036	A fading actor best known for his portrayal of a popular superhero attempts to mount a comeback by appearing in a Broadway play. As opening night approaches, his attempts to become more altruistic, rebuild his career, and reconnect with friends and family prove more difficult than expected.	119
446791	All the Money in the World		2017-12-13	United States of America	6.29999999999999982	The story of the kidnapping of 16-year-old John Paul Getty III and the desperate attempt by his devoted mother to convince his billionaire grandfather Jean Paul Getty to pay the ransom.	132
8587	The Lion King		1994-06-23	United States of America	8.09999999999999964	A young lion cub named Simba can't wait to be king. But his uncle craves the title for himself and will stop at nothing to get it.	89
272	Batman Begins		2005-06-10	United Kingdom	7.59999999999999964	Driven by tragedy, billionaire Bruce Wayne dedicates his life to uncovering and defeating the corruption that plagues his home, Gotham City.  Unable to work within the system, he instead creates a new identity, a symbol of fear for the criminal underworld - The Batman.	140
862	Toy Story		1995-10-30	United States of America	7.90000000000000036	Led by Woody, Andy's toys live happily in his room until Andy's birthday brings Buzz Lightyear onto the scene. Afraid of losing his place in Andy's heart, Woody plots against Buzz. But when circumstances separate Buzz and Woody from their owner, the duo eventually learns to put aside their differences.	81
476299	Ghostland		2018-03-15	Canada	7.59999999999999964	A mother of two inherits a home from her aunt. On the first night in the new home she is confronted with murderous intruders and fights for her daughters' lives. Sixteen years later the daughters reunite at the house, and that is when things get strange...	91
16869	Inglourious Basterds		2009-08-18	Germany	8	In Nazi-occupied France during World War II, a group of Jewish-American soldiers known as "The Basterds" are chosen specifically to spread fear throughout the Third Reich by scalping and brutally killing Nazis. The Basterds, lead by Lt. Aldo Raine soon cross paths with a French-Jewish teenage girl who runs a movie theater in Paris which is targeted by the soldiers.	153
13	Forrest Gump		1994-07-06	United States of America	8.30000000000000071	A man with a low IQ has accomplished great things in his life and been present during significant historic events - in each case, far exceeding what anyone imagined he could do. Yet, despite all the things he has attained, his one true love eludes him. 'Forrest Gump' is the story of a man who rose above his challenges, and who proved that determination, courage, and love are more important than ability.	142
359940	Three Billboards Outside Ebbing, Missouri		2017-11-10	United Kingdom	8.19999999999999929	After seven months have passed without a culprit in her daughter's murder case, Mildred Hayes makes a bold move, painting three signs leading into her town with a controversial message directed at Bill Willoughby, the town's revered chief of police. When his second-in-command Officer Jason Dixon, an immature mother's boy with a penchant for violence, gets involved, the battle between Mildred and Ebbing's law enforcement is only exacerbated.	115
27578	The Expendables		2010-08-03	United States of America	6	Barney Ross leads a band of highly skilled mercenaries including knife enthusiast Lee Christmas, a martial arts expert, heavy weapons specialist, demolitionist, and a loose-cannon sniper. When the group is commissioned by the mysterious Mr. Church to assassinate the dictator of a small South American island, Barney and Lee visit the remote locale to scout out their opposition and discover the true nature of the conflict engulfing the city.	103
198184	Chappie		2015-03-04	Mexico	6.70000000000000018	Every child comes into the world full of promise, and none more so than Chappie: he is gifted, special, a prodigy. Like any child, Chappie will come under the influence of his surroundings—some good, some bad—and he will rely on his heart and soul to find his way in the world and become his own man. But there's one thing that makes Chappie different from any one else: he is a robot.	120
443319	Phoenix Forgotten		2017-04-21	United States of America	5.40000000000000036	20 years after three teenagers disappeared in the wake of mysterious lights appearing above Phoenix, Arizona, unseen footage from that night has been discovered, chronicling the final hours of their fateful expedition.	80
264660	Ex Machina		2015-01-21	United Kingdom	7.59999999999999964	Caleb, a 26 year old coder at the world's largest internet company, wins a competition to spend a week at a private mountain retreat belonging to Nathan, the reclusive CEO of the company. But when Caleb arrives at the remote location he finds that he will have to participate in a strange and fascinating experiment in which he must interact with the world's first true artificial intelligence, housed in the body of a beautiful robot girl.	108
168259	Furious 7		2015-04-01	Japan	7.29999999999999982	Deckard Shaw seeks revenge against Dominic Toretto and his family for his comatose brother.	137
807	Se7en		1995-09-22	United States of America	8.19999999999999929	Two homicide detectives are on a desperate hunt for a serial killer whose crimes are based on the "seven deadly sins" in this dark and haunting film that takes viewers from the tortured remains of one victim to the next. The seasoned Det. Sommerset researches each sin in an effort to get inside the killer's mind, while his novice partner, Mills, scoffs at his efforts to unravel the case.	127
78	Blade Runner		1982-06-25	United States of America	7.90000000000000036	In the smog-choked dystopian Los Angeles of 2019, blade runner Rick Deckard is called out of retirement to terminate a quartet of replicants who have escaped to Earth seeking their creator for a way to extend their short life spans.	117
286217	The Martian		2015-09-30	United Kingdom	7.59999999999999964	During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive.	141
82702	How to Train Your Dragon 2		2014-06-12	United States of America	7.59999999999999964	The thrilling second chapter of the epic How To Train Your Dragon trilogy brings back the fantastical world of Hiccup and Toothless five years later. While Astrid, Snotlout and the rest of the gang are challenging each other to dragon races (the island's new favorite contact sport), the now inseparable pair journey through the skies, charting unmapped territories and exploring new worlds. When one of their adventures leads to the discovery of a secret ice cave that is home to hundreds of new wild dragons and the mysterious Dragon Rider, the two friends find themselves at the center of a battle to protect the peace.	102
36557	Casino Royale		2006-11-14	Italy	7.40000000000000036	Le Chiffre, a banker to the world's terrorists, is scheduled to participate in a high-stakes poker game in Montenegro, where he intends to use his winnings to establish his financial grip on the terrorist market. M sends Bond – on his maiden mission as a 00 Agent – to attend this game and prevent Le Chiffre from winning. With the help of Vesper Lynd and Felix Leiter, Bond enters the most important poker game in his already dangerous career.	144
387592	Early Man		2018-01-26	France	5.79999999999999982	Dug, along with his sidekick Hognob, unite a cavemen tribe to save their hidden valley from being spoiled and, all together as a team, to face the menace of a mysterious and mighty enemy, on the turf of an ancient and sacred sport.	89
316029	The Greatest Showman		2017-12-20	United States of America	8	The story of American showman P.T. Barnum, founder of the circus that became the famous traveling Ringling Bros. and Barnum & Bailey Circus.	105
399796	Life of the Party		2018-05-11	United States of America	6	Dumped by her husband, longtime housewife Deanna turns regret into reset by going back to college. Winding up at the same school as her daughter, Deanna plunges headlong into the campus experience -- embracing the fun, the freedom and the frat boys.	105
91314	Transformers: Age of Extinction		2014-06-25	United States of America	5.79999999999999982	As humanity picks up the pieces, following the conclusion of "Transformers: Dark of the Moon," Autobots and Decepticons have all but vanished from the face of the planet. However, a group of powerful, ingenious businessman and scientists attempt to learn from past Transformer incursions and push the boundaries of technology beyond what they can control - all while an ancient, powerful Transformer menace sets Earth in his cross-hairs.	165
126889	Alien: Covenant		2017-05-09	Australia	5.79999999999999982	Bound for a remote planet on the far side of the galaxy, the crew of the colony ship 'Covenant' discovers what is thought to be an uncharted paradise, but is actually a dark, dangerous world – which has its sole inhabitant the 'synthetic', David, survivor of the doomed Prometheus expedition.	122
109445	Frozen		2013-11-27	United States of America	7.29999999999999982	Young princess Anna of Arendelle dreams about finding true love at her sister Elsa’s coronation. Fate takes her on a dangerous journey in an attempt to end the eternal winter that has fallen over the kingdom. She's accompanied by ice delivery man Kristoff, his reindeer Sven, and snowman Olaf. On an adventure where she will find out what friendship, courage, family, and true love really means.	102
49051	The Hobbit: An Unexpected Journey		2012-11-26	New Zealand	7.09999999999999964	Bilbo Baggins, a hobbit enjoying his quiet life, is swept into an epic quest by Gandalf the Grey and thirteen dwarves who seek to reclaim their mountain home from Smaug, the dragon.	169
10764	Quantum of Solace		2008-10-30	United Kingdom	6.20000000000000018	Quantum of Solace continues the adventures of James Bond after Casino Royale. Betrayed by Vesper, the woman he loved, 007 fights the urge to make his latest mission personal. Pursuing his determination to uncover the truth, Bond and M interrogate Mr. White, who reveals that the organization that blackmailed Vesper is far more complex and dangerous than anyone had imagined.	106
557	Spider-Man		2002-05-01	United States of America	6.90000000000000036	After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers.	121
218	The Terminator		1984-10-26	United Kingdom	7.5	In the post-apocalyptic future, reigning tyrannical supercomputers teleport a cyborg assassin known as the "Terminator" back to 1984 to kill Sarah Connor, whose unborn son is destined to lead insurgents against 21st century mechanical hegemony. Meanwhile, the human-resistance movement dispatches a lone warrior to safeguard Sarah. Can he stop the virtually indestructible killing machine?	108
348	Alien		1979-05-25	United States of America	8	During its return to the earth, commercial spaceship Nostromo intercepts a distress signal from a distant planet. When a three-member team of the crew discovers a chamber containing thousands of eggs on the planet, a creature inside one of the eggs attacks an explorer. The entire crew is unaware of the impending nightmare set to descend upon them when the alien parasite planted inside its unfortunate host is birthed.	117
107846	Escape Plan		2013-10-09	United States of America	6.70000000000000018	Ray Breslin is the world's foremost authority on structural security. After analyzing every high security prison and learning a vast array of survival skills so he can design escape-proof prisons, his skills are put to the test. He's framed and incarcerated in a master prison he designed himself. He needs to escape and find the person who put him behind bars.	115
2105	American Pie		1999-07-09	United States of America	6.40000000000000036	At a high-school party, four friends find that losing their collective virginity isn't as easy as they had thought. But they still believe that they need to do so before college. To motivate themselves, they enter a pact to all "score." by their senior prom.	95
955	Mission: Impossible II		2000-05-24	Germany	6	With computer genius Luther Stickell at his side and a beautiful thief on his mind, agent Ethan Hunt races across Australia and Spain to stop a former IMF agent from unleashing a genetically engineered biological weapon called Chimera. This mission, should Hunt choose to accept it, plunges him into the center of an international crisis of terrifying magnitude.	123
12444	Harry Potter and the Deathly Hallows: Part 1		2010-10-17	United Kingdom	7.59999999999999964	Harry, Ron and Hermione walk away from their last year at Hogwarts to find and destroy the remaining Horcruxes, putting an end to Voldemort's bid for immortality. But with Harry's beloved Dumbledore dead and Voldemort's unscrupulous Death Eaters on the loose, the world is more dangerous than ever.	146
316727	The Purge: Election Year		2016-06-29	France	6.20000000000000018	Two years after choosing not to kill the man who killed his son, former police sergeant Leo Barnes has become head of security for Senator Charlene Roan, the front runner in the next Presidential election due to her vow to eliminate the Purge. On the night of what should be the final Purge, a betrayal from within the government forces Barnes and Roan out onto the street where they must fight to survive the night.	105
745	The Sixth Sense		1999-08-06	United States of America	7.79999999999999982	A psychological thriller about an eight year old boy named Cole Sear who believes he can see into the world of the dead. A child psychologist named Malcolm Crowe comes to Cole to help him deal with his problem, learning that he really can see ghosts of dead people.	107
808	Shrek		2001-05-16	United States of America	7.5	It ain't easy bein' green -- especially if you're a likable (albeit smelly) ogre named Shrek. On a mission to retrieve a gorgeous princess from the clutches of a fire-breathing dragon, Shrek teams up with an unlikely compatriot -- a wisecracking donkey.	90
10020	Beauty and the Beast		1991-11-13	United States of America	7.70000000000000018	Follow the adventures of Belle, a bright young woman who finds herself in the castle of a prince who's been turned into a mysterious beast. With the help of the castle's enchanted staff, Belle soon learns the most important lesson of all -- that true beauty comes from within.	84
88751	Journey to the Center of the Earth		2008-07-10	United States of America	5.79999999999999982	On a quest to find out what happened to his missing brother, a scientist, his nephew and their mountain guide discover a fantastic and dangerous lost world in the center of the earth.	93
101	Leon: The Professional		1994-09-14	France	8.19999999999999929	Leon, the top hit man in New York, has earned a rep as an effective "cleaner". But when his next-door neighbors are wiped out by a loose-cannon DEA agent, he becomes the unwilling custodian of 12-year-old Mathilda. Before long, Mathilda's thoughts turn to revenge, and she considers following in Leon's footsteps.	110
120467	The Grand Budapest Hotel		2014-02-26	United Kingdom	8	The Grand Budapest Hotel tells of a legendary concierge at a famous European hotel between the wars and his friendship with a young employee who becomes his trusted protégé. The story involves the theft and recovery of a priceless Renaissance painting, the battle for an enormous family fortune and the slow and then sudden upheavals that transformed Europe during the first half of the 20th century.	99
24021	The Twilight Saga: Eclipse		2010-06-23	United States of America	5.90000000000000036	Bella once again finds herself surrounded by danger as Seattle is ravaged by a string of mysterious killings and a malicious vampire continues her quest for revenge. In the midst of it all, she is forced to choose between her love for Edward and her friendship with Jacob, knowing that her decision has the potential to ignite the ageless struggle between vampire and werewolf. With her graduation quickly approaching, Bella is confronted with the most important decision of her life.	124
18239	The Twilight Saga: New Moon		2009-03-15	United States of America	5.70000000000000018	Forks, Washington resident Bella Swan is reeling from the departure of her vampire love, Edward Cullen, and finds comfort in her friendship with Jacob Black, a werewolf. But before she knows it, she's thrust into a centuries-old conflict, and her desire to be with Edward at any cost leads her to take greater and greater risks.	130
455980	Tag		2018-06-14	United States of America	6.90000000000000036	For one month every year, five highly competitive friends hit the ground running in a no-holds-barred game of tag they’ve been playing since the first grade. This year, the game coincides with the wedding of their only undefeated player, which should finally make him an easy target. But he knows they’re coming...and he’s ready.	100
562	Die Hard		1988-07-15	United States of America	7.59999999999999964	NYPD cop, John McClane's plan to reconcile with his estranged wife is thrown for a serious loop when minutes after he arrives at her office, the entire building is overtaken by a group of terrorists. With little help from the LAPD, wisecracking McClane sets out to single-handedly rescue the hostages and bring the bad guys down.	131
188927	Star Trek Beyond		2016-07-07	United States of America	6.59999999999999964	The USS Enterprise crew explores the furthest reaches of uncharted space, where they encounter a mysterious new enemy who puts them and everything the Federation stands for to the test.	122
228967	The Interview		2014-12-25	United States of America	6.09999999999999964	Dave Skylark and his producer Aaron Rapoport run the celebrity tabloid show "Skylark Tonight". When they land an interview with a surprise fan, North Korean dictator Kim Jong-un, they are recruited by the CIA to turn their trip to Pyongyang into an assassination mission.	112
9502	Kung Fu Panda		2008-06-04	United States of America	7	When the Valley of Peace is threatened, lazy Po the panda discovers his destiny as the "chosen one" and trains to become a kung fu hero, but transforming the unsleek slacker into a brave warrior won't be easy. It's up to Master Shifu and the Furious Five -- Tigress, Crane, Mantis, Viper and Monkey -- to give it a try.	90
57800	Ice Age: Continental Drift		2012-06-26	United States of America	6.20000000000000018	Manny, Diego, and Sid embark upon another adventure after their continent is set adrift. Using an iceberg as a ship, they encounter sea creatures and battle pirates as they explore a new world.	88
10681	WALL·E		2008-06-22	United States of America	7.90000000000000036	WALL·E is the last robot left on an Earth that has been overrun with garbage and all humans have fled to outer space. For 700 years he has continued to try and clean up the mess, but has developed some rather interesting human-like qualities. When a ship arrives with a sleek new type of robot, WALL·E thinks he's finally found a friend and stows away on the ship when it leaves.	98
482702	Beauty Salon Special Services		2016-12-29	South Korea	1	A legendary beauty salon that is sure to become a regular once you go!”Sir, would you like to have a very hot service?”In order to overcome the financial difficulties of the beauty parlor,It begins to attract the male guests with the special technique that makes it from head to toe.Kurt, Firm, and ‘it’ to open the hair salon is good!	231
383498	Deadpool 2		2018-05-15	Canada	7.59999999999999964	Wisecracking mercenary Deadpool battles the evil and powerful Cable and other bad guys to save a boy's life.	119
333339	Ready Player One		2018-03-28	United States of America	7.79999999999999982	When the creator of a popular video game system dies, a virtual contest is created to compete for his fortune.	140
284053	Thor: Ragnarok		2017-10-25	United States of America	7.40000000000000036	Thor is on the other side of the universe and finds himself in a race against time to get back to Asgard to stop Ragnarok, the prophecy of destruction to his homeworld and the end of Asgardian civilization, at the hands of an all-powerful new threat, the ruthless Hela.	130
493006	Detective Conan: Zero the Enforcer		2018-04-13	Japan	4.29999999999999982	There is a sudden explosion at Tokyo Summit's giant Edge of Ocean facility. The shadow of Tōru Amuro, who works for the National Police Agency Security Bureau as Zero, appears at the site. In addition, the "triple-face" character is known as Rei Furuya as a detective and Kogorō Mōri's apprentice, and he is also known as Bourbon as a Black Organization member. Kogorō is arrested as a suspect in the case of the explosion. Conan conducts an investigation to prove Kogorō's innocence, but Amuro gets in his way.	115
281338	War for the Planet of the Apes		2017-07-11	Canada	6.90000000000000036	Caesar and his apes are forced into a deadly conflict with an army of humans led by a ruthless Colonel. After the apes suffer unimaginable losses, Caesar wrestles with his darker instincts and begins his own mythic quest to avenge his kind. As the journey finally brings them face to face, Caesar and the Colonel are pitted against each other in an epic battle that will determine the fate of both their species and the future of the planet.	140
401981	Red Sparrow		2018-02-28	United States of America	6.40000000000000036	Prima ballerina, Dominika Egorova faces a bleak and uncertain future after she suffers an injury that ends her career. She soon turns to Sparrow School, a secret intelligence service that trains exceptional young people to use their minds and bodies as weapons. Dominika emerges as the most dangerous Sparrow after completing the sadistic training process. As she comes to terms with her new abilities, she meets a CIA agent who tries to convince her that he is the only person she can trust.	140
9806	The Incredibles		2004-11-05	United States of America	7.5	Bob Parr has given up his superhero days to log in time as an insurance adjuster and raise his three children with his formerly heroic wife in suburbia. But when he receives a mysterious assignment, it's time to get back into costume.	115
209112	Batman v Superman: Dawn of Justice		2016-03-23	United States of America	5.79999999999999982	Fearing the actions of a god-like Super Hero left unchecked, Gotham City’s own formidable, forceful vigilante takes on Metropolis’s most revered, modern-day savior, while the world wrestles with what sort of hero it really needs. And with Batman and Superman at war with one another, a new threat quickly arises, putting mankind in greater danger than it’s ever known before.	151
8966	Twilight		2008-11-20	United States of America	5.79999999999999982	When Bella Swan moves to a small town in the Pacific Northwest to live with her father, she starts school and meets the reclusive Edward Cullen, a mysterious classmate who reveals himself to be a 108-year-old vampire. Despite Edward's repeated cautions, Bella can't help but fall in love with him, a fatal move that endangers her own life when a coven of bloodsuckers try to challenge the Cullen clan.	122
166426	Pirates of the Caribbean: Dead Men Tell No Tales		2017-05-23	United States of America	6.5	Thrust into an all-new adventure, a down-on-his-luck Capt. Jack Sparrow feels the winds of ill-fortune blowing even more strongly when deadly ghost sailors led by his old nemesis, the evil Capt. Salazar, escape from the Devil's Triangle. Jack's only hope of survival lies in seeking out the legendary Trident of Poseidon, but to find it, he must forge an uneasy alliance with a brilliant and beautiful astronomer and a headstrong young man in the British navy.	129
399248	Beirut		2018-04-11	United States of America	6.5	A former U. S. diplomat returns to service in order to save a former colleague in Beirut.	110
150540	Inside Out		2015-06-09	United States of America	8	Growing up can be a bumpy road, and it's no exception for Riley, who is uprooted from her Midwest life when her father starts a new job in San Francisco. Like all of us, Riley is guided by her emotions - Joy, Fear, Anger, Disgust and Sadness. The emotions live in Headquarters, the control center inside Riley's mind, where they help advise her through everyday life. As Riley and her emotions struggle to adjust to a new life in San Francisco, turmoil ensues in Headquarters. Although Joy, Riley's main and most important emotion, tries to keep things positive, the emotions conflict on how best to navigate a new city, house and school.	94
307081	Southpaw		2015-06-15	United States of America	7.29999999999999982	Billy "The Great" Hope, the reigning junior middleweight boxing champion, has an impressive career, a loving wife and daughter, and a lavish lifestyle. However, when tragedy strikes, Billy hits rock bottom, losing his family, his house and his manager. He soon finds an unlikely savior in Tick Willis, a former fighter who trains the city's toughest amateur boxers. With his future on the line, Hope fights to reclaim the trust of those he loves the most.	123
559	Spider-Man 3		2007-05-01	United States of America	6	The seemingly invincible Spider-Man goes up against an all-new crop of villains – including the shape-shifting Sandman. While Spider-Man’s superpowers are altered by an alien organism, his alter ego, Peter Parker, deals with nemesis Eddie Brock and also gets caught up in a love triangle.	139
257344	Pixels		2015-07-16	United States of America	5.59999999999999964	Video game experts are recruited by the military to fight 1980s-era video game characters who've attacked New York.	105
363088	Ant-Man and the Wasp		2018-07-04	United States of America	0	As Scott Lang balances being both a superhero and a father, Hope van Dyne and Dr. Hank Pym present an urgent new mission that finds the Ant-Man fighting alongside the Wasp to uncover secrets from their past.	118
206647	Spectre		2015-10-26	United Kingdom	6.40000000000000036	A cryptic message from Bond’s past sends him on a trail to uncover a sinister organization. While M battles political forces to keep the secret service alive, Bond peels back the layers of deceit to reveal the terrible truth behind SPECTRE.	148
141052	Justice League		2017-11-15	United States of America	6.29999999999999982	Fuelled by his restored faith in humanity and inspired by Superman's selfless act, Bruce Wayne and Diana Prince assemble a team of metahumans consisting of Barry Allen, Arthur Curry and Victor Stone to face the catastrophic threat of Steppenwolf and the Parademons who are on the hunt for three Mother Boxes on Earth.	120
585	Monsters, Inc.		2001-11-01	United States of America	7.70000000000000018	James Sullivan and Mike Wazowski are monsters, they earn their living scaring children and are the best in the business... even though they're more afraid of the children than they are of them. When a child accidentally enters their world, James and Mike suddenly find that kids are not to be afraid of and they uncover a conspiracy that could threaten all children across the world.	92
37724	Skyfall		2012-10-25	United Kingdom	7	When Bond's latest assignment goes gravely wrong and agents around the world are exposed, MI6 is attacked forcing M to relocate the agency. These events cause her authority and position to be challenged by Gareth Mallory, the new Chairman of the Intelligence and Security Committee. With MI6 now compromised from both inside and out, M is left with one ally she can trust: Bond. 007 takes to the shadows - aided only by field agent, Eve - following a trail to the mysterious Silva, whose lethal and hidden motives have yet to reveal themselves.	143
318484	Qayamat: City Under Threat		2003-07-11	\N	5.70000000000000018	CBI Officer Akram Sheikh (Sunil Shetty) is on the verge of nabbing three dreaded Pakistan-backed arms dealers , the brothers Ali (Arbaaz Khan) and Abbas (Sanjay Kapoor) and their common moll Laila (Isha Koppikar) . When Sheikh busts an important arms deal conducted by his three targets , Ali-Abbas join forces with Gopal (Chunky Pandey) , a corrupt scientist to get hold of a deadly virus and take the tourists at the Elphinstone Jail resort as hostage . Akram Sheikh is now compelled to get help from Rachit (Ajay Devgan) , a criminal serving jail time who was a former associate of Ali-Abbas and the only person in history to have successfully escaped the Elphinstone jail . Along with a commando team , they try to pull off a rescue attempt by breaking in the jail and rescuing the hostages .	157
320288	X-Men: Dark Phoenix		2019-02-05	United States of America	0	Gathered together by Professor Charles Xavier to protect a world that fears and hates them, the X-Men had fought many battles, been on adventures that spanned galaxies, grappled enemies of limitless might, but none of this could prepare them for the most shocking struggle they would ever face. One of their own members, Jean Grey, has gained power beyond all comprehension, and that power has corrupted her absolutely! Now, they must decide if the life of the woman they cherish is worth the existence of the entire universe!	\N
131634	The Hunger Games: Mockingjay - Part 2		2015-11-18	Germany	6.70000000000000018	With the nation of Panem in a full scale war, Katniss confronts President Snow in the final showdown. Teamed with a group of her closest friends – including Gale, Finnick, and Peeta – Katniss goes off on a mission with the unit from District 13 as they risk their lives to stage an assassination attempt on President Snow who has become increasingly obsessed with destroying her. The mortal traps, enemies, and moral choices that await Katniss will challenge her more than any arena she faced in The Hunger Games.	137
597	Titanic		1997-11-18	United States of America	7.70000000000000018	84 years later, a 101-year-old woman named Rose DeWitt Bukater tells the story to her granddaughter Lizzy Calvert, Brock Lovett, Lewis Bodine, Bobby Buell and Anatoly Mikailavich on the Keldysh about her life set in April 10th 1912, on a ship called Titanic when young Rose boards the departing ship with the upper-class passengers and her mother, Ruth DeWitt Bukater, and her fiancé, Caledon Hockley. Meanwhile, a drifter and artist named Jack Dawson and his best friend Fabrizio De Rossi win third-class tickets to the ship in a game. And she explains the whole story from departure until the death of Titanic on its first and last voyage April 15th, 1912 at 2:20 in the morning.	194
50619	The Twilight Saga: Breaking Dawn - Part 1		2011-03-15	United States of America	5.79999999999999982	The new found married bliss of Bella Swan and vampire Edward Cullen is cut short when a series of betrayals and misfortunes threatens to destroy their world. Bella soon discovers she is pregnant, and during a nearly fatal childbirth, Edward finally fulfills her wish to become immortal. But the arrival of their remarkable daughter, Renesmee, sets in motion a perilous chain of events that pits the Cullens and their allies against the Volturi, the fearsome council of vampire leaders, setting the stage for an all-out battle.	117
101299	The Hunger Games: Catching Fire		2013-11-15	United States of America	7.40000000000000036	Katniss Everdeen has returned home safe after winning the 74th Annual Hunger Games along with fellow tribute Peeta Mellark. Winning means that they must turn around and leave their family and close friends, embarking on a "Victor's Tour" of the districts. Along the way Katniss senses that a rebellion is simmering, but the Capitol is still very much in control as President Snow prepares the 75th Annual Hunger Games (The Quarter Quell) - a competition that could change Panem forever.	146
455656	#realityhigh		2017-07-17	United States of America	6.40000000000000036	When nerdy high schooler Dani finally attracts the interest of her longtime crush, she lands in the cross hairs of his ex, a social media celebrity.	99
216015	Fifty Shades of Grey		2015-02-11	Brazil	5.29999999999999982	When college senior Anastasia Steele steps in for her sick roommate to interview prominent businessman Christian Grey for their campus paper, little does she realize the path her life will take. Christian, as enigmatic as he is rich and powerful, finds himself strangely drawn to Ana, and she to him. Though sexually inexperienced, Ana plunges headlong into an affair -- and learns that Christian's true sexual proclivities push the boundaries of pain and pleasure.	125
427641	Rampage		2018-04-12	United States of America	5.90000000000000036	Primatologist Davis Okoye shares an unshakable bond with George, the extraordinarily intelligent, silverback gorilla who has been in his care since birth.  But a rogue genetic experiment gone awry mutates this gentle ape into a raging creature of enormous size.  To make matters worse, it’s soon discovered there are other similarly altered animals.  As these newly created alpha predators tear across North America, destroying everything in their path, Okoye teams with a discredited genetic engineer to secure an antidote, fighting his way through an ever-changing battlefield, not only to halt a global catastrophe but to save the fearsome creature that was once his friend.	107
14160	Up		2009-05-28	United States of America	7.79999999999999982	Carl Fredricksen spent his entire life dreaming of exploring the globe and experiencing life to its fullest. But at age 78, life seems to have passed him by, until a twist of fate (and a persistent 8-year old Wilderness Explorer named Russell) gives him a new lease on life.	96
87101	Terminator Genisys		2015-06-23	United States of America	5.90000000000000036	The year is 2029. John Connor, leader of the resistance continues the war against the machines. At the Los Angeles offensive, John's fears of the unknown future begin to emerge when TECOM spies reveal a new plot by SkyNet that will attack him from both fronts; past and future, and will ultimately change warfare forever.	126
122917	The Hobbit: The Battle of the Five Armies		2014-12-10	New Zealand	7.20000000000000018	Immediately after the events of The Desolation of Smaug, Bilbo and the dwarves try to defend Erebor's mountain of treasure from others who claim it: the men of the ruined Laketown and the elves of Mirkwood. Meanwhile an army of Orcs led by Azog the Defiler is marching on Erebor, fueled by the rise of the dark lord Sauron. Dwarves, elves and men must unite, and the hope for Middle-Earth falls into Bilbo's hands.	144
523873	The Unity Of Heroes		2018-05-18	\N	0	When a demented, doped up stranger finds his way into Wong Fei Hung’s clinic, Po Chi Lam, with Captain Lu (Wei Xiaohuan) hot on his trail, the doctor and grandmaster begins to unveil – with the help of 13th Aunt (Wei Ni) – a conspiracy that involves an evil Gweilo experimenting on human beings to create a super-fighter serum. And that serum might be of use to Master Wu (Michael Tong), a newly-arrived martial arts master who has just opened a school and wants to supersede Wong Fei Hung as the best fighter in Canton province. While The Unity of Heroes is obviously nowhere near the epic sweep of Tsui Hark’s first two film in the franchise, it nevertheless surprises with the solidity of it production values, which are not much below Once Upon A Time in China 4 & 5, the two installments in which Zhao starred in 1993 and 1994	100
324552	John Wick: Chapter 2		2017-02-08	United States of America	6.79999999999999982	John Wick is forced out of retirement by a former associate looking to seize control of a shadowy international assassins’ guild. Bound by a blood oath to aid him, Wick travels to Rome and does battle against some of the world’s most dangerous killers.	122
49026	The Dark Knight Rises		2012-07-16	United States of America	7.70000000000000018	Following the death of District Attorney Harvey Dent, Batman assumes responsibility for Dent's crimes to protect the late attorney's reputation and is subsequently hunted by the Gotham City Police Department. Eight years later, Batman encounters the mysterious Selina Kyle and the villainous Bane, a new terrorist leader who overwhelms Gotham's finest. The Dark Knight resurfaces to protect a city that has branded him an enemy.	165
68726	Pacific Rim		2013-07-11	Canada	6.70000000000000018	When legions of monstrous creatures, known as Kaiju, started rising from the sea, a war began that would take millions of lives and consume humanity's resources for years on end. To combat the giant Kaiju, a special type of weapon was devised: massive robots, called Jaegers, which are controlled simultaneously by two pilots whose minds are locked in a neural bridge. But even the Jaegers are proving nearly defenseless in the face of the relentless Kaiju. On the verge of defeat, the forces defending mankind have no choice but to turn to two unlikely heroes—a washed-up former pilot (Charlie Hunnam) and an untested trainee (Rinko Kikuchi)—who are teamed to drive a legendary but seemingly obsolete Jaeger from the past. Together, they stand as mankind's last hope against the mounting apocalypse.	131
339964	Valerian and the City of a Thousand Planets		2017-07-20	Belgium	6.59999999999999964	In the 28th century, Valerian and Laureline are special operatives charged with keeping order throughout the human territories. On assignment from the Minister of Defense, the two undertake a mission to Alpha, an ever-expanding metropolis where species from across the universe have converged over centuries to share knowledge, intelligence, and cultures. At the center of Alpha is a mysterious dark force which threatens the peaceful existence of the City of a Thousand Planets, and Valerian and Laureline must race to identify the menace and safeguard not just Alpha, but the future of the universe.	136
98	Gladiator		2000-05-01	United Kingdom	8	In the year 180, the death of emperor Marcus Aurelius throws the Roman Empire into chaos.  Maximus is one of the Roman army's most capable and trusted generals and a key advisor to the emperor.  As Marcus' devious son Commodus ascends to the throne, Maximus is set to be executed.  He escapes, but is captured by slave traders.  Renamed Spaniard and forced to become a gladiator, Maximus must battle to the death with other men for the amusement of paying audiences.	155
445571	Game Night		2018-02-22	United States of America	7	Max and Annie's weekly game night gets kicked up a notch when Max's brother Brooks arranges a murder mystery party -- complete with fake thugs and federal agents. So when Brooks gets kidnapped, it's all supposed to be part of the game. As the competitors set out to solve the case, they start to learn that neither the game nor Brooks are what they seem to be. The friends soon find themselves in over their heads as each twist leads to another unexpected turn over the course of one chaotic night.	101
411	The Chronicles of Narnia: The Lion, the Witch and the Wardrobe		2005-12-07	United Kingdom	6.90000000000000036	Siblings Lucy, Edmund, Susan and Peter step through a magical wardrobe and find the land of Narnia. There, the they discover a charming, once peaceful kingdom that has been plunged into eternal winter by the evil White Witch, Jadis. Aided by the wise and magnificent lion, Aslan, the children lead Narnia into a spectacular, climactic battle to be free of the Witch's glacial powers forever.	143
351286	Jurassic World: Fallen Kingdom		2018-06-06	United States of America	6.70000000000000018	A volcanic eruption threatens the remaining dinosaurs on the island of Isla Nublar, where the creatures have freely roamed for several years after the demise of an animal theme park known as Jurassic World. Claire Dearing, the former park manager, has now founded the Dinosaur Protection Group, an organization dedicated to protecting the dinosaurs. To help with her cause, Claire has recruited Owen Grady, a former dinosaur trainer who worked at the park, to prevent the extinction of the dinosaurs once again.	128
156022	The Equalizer		2014-09-24	United States of America	7.09999999999999964	In The Equalizer, Denzel Washington plays McCall, a man who believes he has put his mysterious past behind him and dedicated himself to beginning a new, quiet life. But when McCall meets Teri (Chloë Grace Moretz), a young girl under the control of ultra-violent Russian gangsters, he can’t stand idly by – he has to help her. Armed with hidden skills that allow him to serve vengeance against anyone who would brutalize the helpless, McCall comes out of his self-imposed retirement and finds his desire for justice reawakened. If someone has a problem, if the odds are stacked against them, if they have nowhere else to turn, McCall will help. He is The Equalizer.	132
\.


--
-- Data for Name: movienews_app_moviemodel_actors; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.movienews_app_moviemodel_actors (id, moviemodel_id, actormodel_id) FROM stdin;
1	455656	1498026
2	455656	1442955
3	455656	1155085
4	455656	1450286
5	455656	1080862
6	177572	66580
7	177572	515510
8	177572	82093
9	177572	51990
10	177572	78324
11	58	85
12	58	114
13	58	116
14	58	1640
15	58	2440
16	363088	22226
17	363088	19034
18	363088	1408809
19	363088	3392
20	363088	454
21	106646	6193
22	106646	21007
23	106646	234352
24	106646	3497
25	106646	3026
26	207703	5472
27	207703	2231
28	207703	2983
29	207703	1303037
30	207703	3895
31	129	19587
32	129	19588
33	129	19589
34	129	119243
35	129	19594
36	391713	36592
37	391713	12133
38	391713	72638
39	391713	1105079
40	391713	1190668
41	283366	10912
42	283366	77996
43	283366	2231
44	283366	5309
45	283366	4757
46	406563	7401
47	406563	59117
48	406563	2128
49	406563	40039
50	406563	1069630
51	14	1979
52	14	516
53	14	2155
54	14	8210
55	14	8211
56	307663	75330
57	307663	11155
58	307663	23821
59	307663	62
60	307663	51670
61	240832	1245
62	240832	192
63	240832	64880
64	240832	2960
65	240832	7031
66	672	10980
67	672	10989
68	672	10990
69	672	194
70	672	4566
71	337170	500
72	337170	131723
73	337170	93210
74	337170	1809025
75	337170	1255927
76	71805	563838
77	71805	5168
78	71805	137748
79	71805	71186
80	71805	135121
81	119450	1333
82	119450	76512
83	119450	64
84	119450	41292
85	119450	20286
86	458355	1625737
87	458355	1820009
88	458355	1348123
89	458355	1820010
90	458355	1343960
91	118340	73457
92	118340	8691
93	118340	543530
94	118340	12835
95	118340	51329
96	437557	41087
97	437557	198150
98	437557	56446
99	437557	221192
100	437557	1803287
101	483980	1692795
102	483980	1361975
103	483980	1397603
104	483980	1728254
105	483980	210688
106	300668	524
107	300668	10431
108	300668	62561
109	300668	180486
110	300668	67737
111	158015	17286
112	158015	569
113	158015	81083
114	158015	131781
115	158015	55899
116	242582	131
117	242582	14343
118	242582	53240
119	242582	2053
120	242582	20582
121	447332	5081
122	447332	17697
123	447332	1815539
124	447332	1590759
125	447332	1924769
126	343111	1270551
127	343111	86017
128	343111	35759
129	343111	1332813
130	343111	565160
131	381719	55466
132	381719	9827
133	381719	234352
134	381719	4783
135	381719	93210
136	460019	205307
137	460019	53280
138	460019	1515230
139	460019	1163789
140	460019	82819
141	493922	3051
142	493922	934281
143	493922	1945702
144	493922	5168
145	493922	43366
146	490214	1341
147	490214	71051
148	490214	83635
149	490214	20519
150	490214	26756
151	206647	8784
152	206647	27319
153	206647	121529
154	206647	5469
155	206647	28782
156	284052	71580
157	284052	5294
158	284052	53714
159	284052	1019
160	284052	3063
161	384677	1059597
162	384677	83271
163	384677	140
164	384677	17637
165	384677	1400744
166	550	819
167	550	287
168	550	1283
169	550	7470
170	550	7499
171	244786	996701
172	244786	18999
173	244786	129104
174	244786	970216
175	244786	223012
176	68721	3223
177	68721	12052
178	68721	1896
179	68721	529
180	68721	2282
181	406990	87722
182	406990	935235
183	406990	47647
184	406990	5293
185	406990	515
186	459258	6886
187	459258	3036
188	459258	32205
189	459258	1366865
190	459258	1911829
191	407451	1344344
192	407451	1704256
193	407451	1313583
194	407451	368
195	407451	125167
196	157336	10297
197	157336	83002
198	157336	1813
199	157336	3895
200	157336	1893
201	311324	1892
202	311324	1151657
203	311324	5293
204	311324	25246
205	311324	1253360
206	603	6384
207	603	2975
208	603	530
209	603	1331
210	603	532
211	398818	1190668
212	398818	53807
213	398818	72873
214	398818	20577
215	398818	935096
216	265208	976
217	265208	11665
218	265208	16501
219	265208	58635
220	265208	8256
221	57158	7060
222	57158	1327
223	57158	30315
224	57158	71580
225	57158	112
226	260513	8977
227	260513	18686
228	260513	59361
229	260513	1852182
230	260513	2231
231	135397	73457
232	135397	18997
233	135397	76793
234	135397	7132
235	135397	1108907
236	181533	7399
237	181533	17838
238	181533	221581
239	181533	2157
240	181533	887
241	141052	880
242	141052	73968
243	141052	90633
244	141052	132157
245	141052	117642
246	198663	527393
247	198663	115150
248	198663	1310760
249	198663	78062
250	198663	1389339
251	76338	74568
252	76338	524
253	76338	91606
254	76338	4173
255	76338	1640
256	449176	1108907
257	449176	19536
258	449176	9278
259	449176	1636738
260	449176	148096
261	181808	2
262	181808	4
263	181808	1023139
264	181808	1315036
265	181808	236695
266	22	85
267	22	118
268	22	114
269	22	116
270	22	1709
271	245891	6384
272	245891	6283
273	245891	71586
274	245891	5293
275	245891	68763
276	10195	74568
277	10195	524
278	10195	91606
279	10195	4173
280	10195	1640
281	482702	141873
282	482702	1910027
283	482702	1907998
284	482702	1910028
285	274855	17276
286	274855	5644
287	274855	38941
288	274855	37260
289	274855	228
290	440471	16483
291	440471	543530
292	440471	109434
293	440471	57171
294	440471	62644
295	329	4783
296	329	4784
297	329	4785
298	329	4786
299	329	4789
300	11	2
301	11	3
302	11	4
303	11	24343
304	11	6
305	354912	1193391
306	354912	258
307	354912	4589
308	354912	10402
309	354912	154004
310	120	109
311	120	1327
312	120	110
313	120	1328
314	120	882
315	62	245
316	62	246
317	62	253
318	62	247
319	62	251
320	283995	73457
321	283995	8691
322	283995	543530
323	283995	12835
324	283995	51329
325	315635	1136406
326	315635	2232
327	315635	3223
328	315635	3141
329	315635	15277
330	102899	22226
331	102899	3392
332	102899	19034
333	102899	74541
334	102899	21127
335	399174	17419
336	399174	819
337	399174	1532
338	399174	4785
339	399174	12438
340	335984	30614
341	335984	224513
342	335984	32
343	335984	104632
344	335984	3
345	24428	3223
346	24428	16828
347	24428	103
348	24428	74568
349	24428	1245
350	61791	17051
351	61791	76792
352	61791	12074
353	61791	1248
354	61791	10993
355	339403	1159982
356	339403	1016168
357	339403	1979
358	339403	65717
359	339403	134
360	453213	1708576
361	453213	1647345
362	453213	1254391
363	299536	16851
364	299536	3223
365	299536	74568
366	299536	71580
367	299536	1136406
368	427641	18918
369	427641	2038
370	427641	50463
371	427641	47296
372	427641	496470
373	284054	172069
374	284054	135651
375	284054	1267329
376	284054	82104
377	284054	7060
378	338970	227454
379	338970	27740
380	338970	17287
381	338970	64436
382	338970	5470
383	268896	236695
384	268896	928572
385	268896	1683343
386	268896	1151657
387	268896	18054
388	348350	71375
389	348350	1223786
390	348350	57755
391	348350	119589
392	348350	6162
393	449443	17276
394	449443	59254
395	449443	92614
396	449443	1371398
397	449443	62644
398	381283	72129
399	381283	3810
400	381283	228
401	381283	1160
402	381283	93210
403	337167	118545
404	337167	1254583
405	337167	33337
406	337167	20373
407	337167	1211093
408	402900	18277
409	402900	112
410	402900	1813
411	402900	125167
412	402900	34490
413	297762	90633
414	297762	62064
415	297762	935
416	297762	32
417	297762	6413
418	291805	44735
419	291805	57755
420	291805	103
421	291805	54697
422	291805	192
423	263115	6968
424	263115	2387
425	263115	1464650
426	263115	467645
427	263115	39189
428	510819	37822
429	510819	112532
430	510819	2045259
431	510819	54649
432	510819	1184094
433	293660	10859
434	293660	54882
435	293660	1047649
436	293660	51990
437	293660	78452
438	954	500
439	954	10127
440	954	4885
441	954	15319
442	954	1003
443	399055	39658
444	399055	17005
445	399055	335
446	399055	28633
447	399055	6944
448	56292	500
449	56292	17604
450	56292	11108
451	56292	52851
452	56292	72118
453	271110	16828
454	271110	3223
455	271110	60898
456	271110	1245
457	271110	17604
458	210577	880
459	210577	10882
460	210577	1308445
461	210577	41686
462	210577	80602
463	214756	13240
464	214756	52139
465	214756	71070
466	214756	207150
467	214756	1771
468	177677	500
469	177677	933238
470	177677	11108
471	177677	17604
472	177677	10182
473	131631	72129
474	131631	27972
475	131631	96066
476	131631	57755
477	131631	55636
478	87101	1100
479	87101	76512
480	87101	1223786
481	87101	224181
482	87101	18999
483	337339	12835
484	337339	976
485	337339	18918
486	337339	17647
487	337339	8169
488	122917	7060
489	122917	1327
490	122917	30315
491	122917	71580
492	122917	112
493	85	3
494	85	650
495	85	652
496	85	655
497	85	653
498	228150	287
499	228150	10959
500	228150	33235
501	228150	454
502	228150	19498
503	19995	65731
504	19995	8691
505	19995	10205
506	19995	32747
507	19995	17647
508	1865	85
509	1865	955
510	1865	6972
511	1865	2449
512	1865	118
513	1726	3223
514	1726	18288
515	1726	1229
516	1726	12052
517	1726	17857
518	273481	5081
519	273481	1121
520	273481	16851
521	273481	8536
522	273481	19498
523	76341	2524
524	76341	6885
525	76341	3292
526	76341	26060
527	76341	1056053
528	321612	10990
529	321612	221018
530	321612	114019
531	321612	8945
532	321612	54415
533	671	10980
534	671	10989
535	671	10990
536	671	194
537	671	10993
538	386877	1702027
539	386877	1702028
540	386877	1979672
541	386877	1979674
542	386877	1979678
543	262500	94185
544	262500	587020
545	262500	204
546	262500	1159982
547	262500	996701
548	336843	527393
549	336843	115150
550	336843	25663
551	336843	1310760
552	336843	973667
553	680	8891
554	680	2231
555	680	139
556	680	62
557	680	10182
558	238636	81685
559	238636	37158
560	238636	70303
561	238636	31168
562	238636	1208406
563	99861	3223
564	99861	74568
565	99861	103
566	99861	16828
567	99861	1245
568	523873	82400
569	523873	130597
570	523873	63585
571	523873	1173223
572	523873	576408
573	14160	68812
574	14160	290
575	14160	80676
576	14160	10
577	14160	18792
578	238	3084
579	238	1158
580	238	3085
581	238	3086
582	238	3087
583	155	3894
584	155	3895
585	155	1810
586	155	6383
587	155	64
588	20352	4495
589	20352	41088
590	20352	59919
591	20352	5823
592	20352	21200
593	205596	71580
594	205596	116
595	205596	1247
596	205596	139549
597	205596	85718
598	419478	98285
599	419478	1053422
600	419478	71403
601	419478	429728
602	419478	158396
603	343668	5472
604	343668	1231
605	343668	1303037
606	343668	2983
607	343668	1229
608	483877	1862365
609	483877	1650340
610	483877	1913348
611	483877	1913350
612	483877	1913352
613	27205	6193
614	27205	24045
615	27205	27578
616	27205	2524
617	27205	3899
618	399035	3896
619	399035	21657
620	399035	17178
621	399035	783
622	399035	4783
623	269149	417
624	269149	23532
625	269149	446511
626	269149	17605
627	269149	6944
628	400535	1121
629	400535	16851
630	400535	1428070
631	400535	2229
632	400535	8654
633	127585	6968
634	127585	5530
635	127585	17288
636	127585	72129
637	127585	4587
638	347882	512316
639	347882	559643
640	347882	1395348
641	347882	1344344
642	347882	1492327
643	49026	3894
644	49026	3895
645	49026	64
646	49026	1813
647	49026	2524
648	285	85
649	285	114
650	285	116
651	285	1640
652	285	1619
653	374720	1687041
654	374720	1765227
655	374720	1334638
656	374720	1052109
657	374720	145143
658	98566	19537
659	98566	21200
660	98566	886
661	98566	64295
662	98566	80352
663	122	109
664	122	1327
665	122	110
666	122	1328
667	122	882
668	425	15757
669	425	5723
670	425	5724
671	425	5725
672	425	70851
673	246655	5530
674	246655	17288
675	246655	72129
676	246655	3292
677	246655	25072
678	176	2130
679	176	2047
680	176	2140
681	176	2136
682	176	2131
683	216015	118545
684	216015	1254583
685	216015	49971
686	216015	222130
687	216015	59251
688	250124	1201716
689	250124	41091
690	250124	28846
691	250124	22227
692	250124	1336393
693	341174	118545
694	341174	1254583
695	341174	33337
696	341174	222130
697	341174	234982
698	294254	527393
699	294254	115150
700	294254	25663
701	294254	4808
702	294254	49735
703	381288	5530
704	381288	1397778
705	381288	52462
706	381288	1286328
707	381288	1221085
708	12	13
709	12	14
710	12	12
711	12	5293
712	12	18
713	13186	9290
714	13186	57514
715	13186	53185
716	13186	59296
717	13186	10867
718	353081	500
719	353081	933238
720	353081	556356
721	353081	73968
722	353081	11705
723	956	500
724	956	1233
725	956	10182
726	956	8289
727	956	11705
728	47971	12835
729	47971	9778
730	47971	2231
731	47971	3051
732	47971	1246972
733	46375	77235
734	46375	131347
735	46375	71090
736	46375	86421
737	46375	14596
738	446354	5064
739	446354	31
740	446354	34490
741	446354	59410
742	446354	72638
743	76757	18973
744	76757	38673
745	76757	48
746	76757	37632
747	76757	230680
748	395990	62
749	395990	7132
750	395990	14329
751	395990	1951
752	395990	1932304
753	150689	1016168
754	150689	112
755	150689	512991
756	150689	1283
757	150689	937
758	259316	37632
759	259316	72466
760	259316	77795
761	259316	58873
762	259316	998225
763	254128	18918
764	254128	109513
765	254128	17832
766	254128	65524
767	254128	128645
768	140607	3
769	140607	4
770	140607	1315036
771	140607	1023139
772	140607	236695
773	121	109
774	121	1327
775	121	110
776	121	1328
777	121	882
778	278	504
779	278	192
780	278	4029
781	278	6574
782	278	6576
783	324552	6384
784	324552	4238
785	324552	2975
786	324552	59270
787	324552	5723
788	194662	2232
789	194662	58225
790	194662	819
791	194662	127558
792	194662	39388
793	446791	1812
794	446791	290
795	446791	13240
796	446791	17497
797	446791	1440574
798	10138	3223
799	10138	12052
800	10138	1896
801	10138	1245
802	10138	2295
803	8587	4756
804	8587	53283
805	8587	15152
806	8587	16940
807	8587	20005
808	272	3894
809	272	3895
810	272	3896
811	272	3897
812	272	64
813	476299	128629
814	476299	145755
815	476299	1245422
816	476299	1331023
817	476299	1493223
818	16869	287
819	16869	19119
820	16869	27319
821	16869	16847
822	16869	17288
823	862	31
824	862	12898
825	862	7167
826	862	12899
827	862	12900
828	359940	3910
829	359940	57755
830	359940	6807
831	359940	16861
832	359940	22970
833	13	31
834	13	32
835	13	33
836	13	34
837	13	35
838	27578	16483
839	27578	976
840	27578	16644
841	27578	62
842	27578	1100
843	198184	82191
844	198184	76788
845	198184	985041
846	198184	985040
847	198184	20191
848	339964	122889
849	339964	1289968
850	339964	2296
851	339964	131519
852	339964	569
853	264660	93210
854	264660	227454
855	264660	25072
856	264660	1457238
857	264660	17199
858	443319	932425
859	443319	152355
860	443319	1376581
861	443319	1524501
862	443319	1367129
863	78	3
864	78	585
865	78	586
866	78	587
867	78	588
868	168259	12835
869	168259	8167
870	168259	18918
871	168259	17647
872	168259	8169
873	807	287
874	807	192
875	807	12052
876	807	11885
877	807	1979
878	68726	17605
879	68726	56365
880	68726	18054
881	68726	5365
882	68726	94864
883	82702	449
884	82702	112
885	82702	17276
886	82702	24264
887	82702	59174
888	286217	1892
889	286217	83002
890	286217	41091
891	286217	8447
892	286217	454
893	387592	37632
894	387592	91606
895	387592	1181313
896	387592	9191
897	387592	98103
898	316029	6968
899	316029	1812
900	316029	29222
901	316029	505710
902	316029	933238
903	36557	8784
904	36557	10912
905	36557	1019
906	36557	5309
907	36557	2954
908	399796	55536
909	399796	1782117
910	399796	94098
911	399796	84482
912	399796	52792
913	91314	13240
914	91314	2283
915	91314	7090
916	91314	61186
917	91314	1007683
918	126889	17288
919	126889	77795
920	126889	8289
921	126889	62862
922	126889	76961
923	109445	40462
924	109445	19394
925	109445	221611
926	109445	54415
927	109445	1188241
928	10764	8784
929	10764	18182
930	10764	8789
931	10764	5309
932	10764	3753
933	557	2219
934	557	5293
935	557	205
936	557	17051
937	557	19153
938	49051	7060
939	49051	1327
940	49051	30315
941	49051	1333
942	49051	112
943	348	4139
944	348	10205
945	348	5047
946	348	5048
947	348	5049
948	107846	16483
949	107846	1100
950	107846	8767
951	107846	980
952	107846	7132
953	2105	21593
954	2105	21594
955	2105	21403
956	2105	21595
957	2105	21596
958	218	1100
959	218	2712
960	218	2713
961	218	1818
962	218	2714
963	955	500
964	955	15336
965	955	9030
966	955	10182
967	955	12206
968	98	934
969	98	73421
970	98	935
971	98	936
972	98	194
973	12444	10980
974	12444	10990
975	12444	10989
976	12444	5469
977	12444	1283
978	316727	31167
979	316727	81685
980	316727	34
981	316727	56679
982	316727	10361
983	745	62
984	745	3051
985	745	11616
986	745	9640
987	745	2680
988	445571	23532
989	445571	53714
990	445571	3497
991	445571	21676
992	445571	141034
993	808	12073
994	808	776
995	808	6941
996	808	12074
997	808	1925
998	10020	62050
999	10020	15048
1000	10020	108055
1001	10020	725
1002	10020	28010
1003	88751	18269
1004	88751	27972
1005	88751	70785
1006	88751	62856
1007	88751	70786
1008	120467	5469
1009	120467	1291350
1010	120467	1164
1011	120467	8789
1012	120467	3490
1013	24021	37917
1014	24021	11288
1015	24021	84214
1016	24021	45827
1017	24021	56857
1018	18239	37917
1019	18239	11288
1020	18239	84214
1021	18239	21029
1022	18239	45827
1023	101	1003
1024	101	524
1025	101	64
1026	101	1004
1027	101	1005
1028	562	62
1029	562	4566
1030	562	7674
1031	562	7673
1032	562	7672
1033	455980	27105
1034	455980	17604
1035	455980	65717
1036	455980	543505
1037	455980	500427
1038	188927	62064
1039	188927	17306
1040	188927	1372
1041	188927	8691
1042	188927	11108
1043	228967	17051
1044	228967	19274
1045	228967	51988
1046	228967	79082
1047	228967	583051
1048	9502	70851
1049	9502	4483
1050	9502	11701
1051	9502	18897
1052	9502	140
1053	57800	5723
1054	57800	15757
1055	57800	5713
1056	57800	5724
1057	57800	57599
1058	10681	670
1059	10681	72754
1060	10681	60074
1061	10681	20753
1062	10681	72755
1063	411	5528
1064	411	5529
1065	411	5527
1066	411	5526
1067	411	3896
1068	351286	73457
1069	351286	18997
1070	351286	28847
1071	351286	1029934
1072	351286	1257819
1073	383498	10859
1074	383498	16851
1075	383498	54882
1076	383498	1139349
1077	383498	1545693
1078	284053	74568
1079	284053	91606
1080	284053	103
1081	284053	112
1082	284053	62561
1083	333339	1034681
1084	333339	1173984
1085	333339	1059572
1086	333339	51990
1087	333339	11108
1088	281338	1333
1089	281338	57755
1090	281338	18324
1091	281338	58395
1092	281338	236696
1093	9806	8977
1094	9806	18686
1095	9806	59361
1096	9806	59360
1097	9806	11662
1098	401981	72129
1099	401981	33192
1100	401981	73381
1101	401981	44079
1102	401981	16940
1103	493006	68470
1104	493006	87582
1105	493006	237076
1106	493006	40327
1107	493006	40325
1108	209112	880
1109	209112	73968
1110	209112	90633
1111	209112	9273
1112	209112	44735
1113	166426	85
1114	166426	3810
1115	166426	118
1116	166426	1017347
1117	166426	115150
1118	8966	37917
1119	8966	11288
1120	8966	21029
1121	8966	84214
1122	8966	56857
1123	150540	56322
1124	150540	169200
1125	150540	21125
1126	150540	19278
1127	150540	59258
1128	307081	131
1129	307081	53714
1130	307081	2178
1131	307081	1423519
1132	307081	62644
1133	399248	65717
1134	399248	10882
1135	399248	74242
1136	399248	14329
1137	399248	1236
1138	257344	19292
1139	257344	11705
1140	257344	22970
1141	257344	54415
1142	257344	32895
1143	559	2219
1144	559	205
1145	559	17051
1146	559	19159
1147	559	17052
1148	156022	5292
1149	156022	20982
1150	156022	56734
1151	156022	35029
1152	156022	58754
1153	585	1230
1154	585	7904
1155	585	884
1156	585	5563
1157	585	7906
1158	318484	42803
1159	318484	85730
1160	318484	35763
1161	318484	86013
1162	318484	81983
1163	37724	8784
1164	37724	5309
1165	37724	3810
1166	37724	5469
1167	37724	2038
1168	320288	1001657
1169	320288	5530
1170	320288	17288
1171	320288	83002
1172	320288	72129
1173	597	204
1174	597	6193
1175	597	1954
1176	597	8534
1177	597	3713
1178	131634	72129
1179	131634	27972
1180	131634	96066
1181	131634	57755
1182	131634	9281
1183	101299	72129
1184	101299	27972
1185	101299	96066
1186	101299	57755
1187	101299	9281
1188	50619	37917
1189	50619	11288
1190	50619	84214
1191	50619	45827
1192	50619	56857
\.


--
-- Data for Name: movienews_app_moviemodel_directors; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.movienews_app_moviemodel_directors (id, moviemodel_id, directormodel_id) FROM stdin;
1	455656	130372
2	177572	227439
3	177572	70238
4	58	1704
5	363088	59026
6	106646	1032
7	207703	957
8	129	608
9	391713	45400
10	283366	510
11	406563	1306608
12	14	39
13	307663	1024823
14	240832	59
15	672	10965
16	337170	11694
17	71805	22558
18	119450	32278
19	458355	1043960
20	118340	15218
21	437557	208664
22	483980	38692
23	300668	2036
24	158015	53120
25	242582	57113
26	447332	17697
27	343111	1270551
28	381719	82511
29	460019	55075
30	493922	1145520
31	490214	76812
32	206647	39
33	284052	55499
34	458663	1821549
35	384677	1296522
36	550	7467
37	244786	136495
38	68721	1108
39	406990	76927
40	459258	938894
41	407451	929825
42	157336	525
43	311324	607
44	603	9340
45	603	9339
46	398818	78160
47	265208	12786
48	57158	108
49	260513	7087
50	135397	930707
51	181533	17825
52	141052	15217
53	198663	1179066
54	76338	47005
55	449176	88967
56	181808	67367
57	22	1704
58	245891	40644
59	245891	40684
60	10195	11181
61	482702	1769763
62	274855	8676
63	440471	30058
64	329	488
65	11	1
66	354912	8
67	120	108
68	62	240
69	283995	15218
70	315635	1293994
71	102899	59026
72	399174	5655
73	335984	137427
74	24428	12891
75	61791	77357
76	339403	11090
77	453213	1702035
78	299536	19272
79	299536	19271
80	427641	132876
81	284054	1056121
82	338970	87877
83	268896	1213074
84	348350	6159
85	449443	54868
86	381283	6431
87	337167	15890
88	402900	23964
89	297762	6884
90	291805	54507
91	263115	366
92	510819	2045287
93	293660	55252
94	954	1150
95	399055	10828
96	56292	7087
97	271110	19271
98	271110	19272
99	210577	7467
100	214756	52139
101	177677	9033
102	131631	10943
103	87101	47005
104	337339	37932
105	122917	108
106	85	488
107	228150	19769
108	19995	2710
109	1865	17633
110	1726	15277
111	273481	137427
112	76341	20629
113	321612	15557
114	671	10965
115	386877	1979671
116	262500	57270
117	336843	1179066
118	680	138
119	238636	53120
120	99861	12891
121	523873	57617
122	14160	12890
123	238	1776
124	155	525
125	20352	124747
126	20352	124748
127	205596	77965
128	419478	932088
129	343668	957
130	483877	1862367
131	483877	1862370
132	27205	525
133	399035	59521
134	269149	76595
135	269149	165787
136	400535	932533
137	127585	9032
138	347882	1485406
139	49026	525
140	285	1704
141	374720	525
142	98566	66739
143	122	108
144	425	5713
145	246655	9032
146	176	2127
147	216015	1137903
148	250124	177532
149	341174	15890
150	294254	1179066
151	381288	11614
152	12	7
153	13186	84335
154	353081	9033
155	956	15344
156	47971	40256
157	46375	87772
158	446354	488
159	76757	9340
160	76757	9339
161	395990	16847
162	150689	11181
163	259316	11343
164	254128	132876
165	140607	15344
166	121	108
167	278	4027
168	324552	40644
169	194662	223
170	446791	578
171	10138	15277
172	8587	15812
173	8587	18898
174	272	525
175	476299	59611
176	16869	138
177	862	7879
178	359940	54472
179	13	24
180	27578	16483
181	198184	82194
182	339964	59
183	264660	2036
184	443319	1324390
185	78	578
186	168259	2127
187	807	7467
188	68726	10828
189	82702	69797
190	286217	578
191	387592	7314
192	316029	1276373
193	36557	10702
194	399796	170820
195	91314	865
196	126889	578
197	109445	15774
198	109445	1120694
199	10764	12995
200	557	7623
201	49051	108
202	348	578
203	107846	29605
204	2105	3289
205	2105	3288
206	218	2710
207	955	11401
208	98	578
209	12444	11343
210	316727	53120
211	745	11614
212	445571	52935
213	445571	1236679
214	808	5524
215	808	12058
216	10020	62047
217	10020	62048
218	88751	9622
219	120467	5655
220	24021	27571
221	18239	3288
222	101	59
223	562	1090
224	455980	1341472
225	188927	58189
226	228967	54734
227	228967	19274
228	9502	57741
229	9502	57742
230	57800	71729
231	57800	229962
232	10681	7
233	411	5524
234	351286	51894
235	383498	40684
236	284053	55934
237	333339	488
238	281338	32278
239	9806	7087
240	401981	10943
241	493006	1144885
242	209112	15217
243	166426	20307
244	166426	20308
245	8966	19850
246	150540	12890
247	307081	20907
248	399248	37948
249	257344	10965
250	559	7623
251	156022	20907
252	585	12890
253	37724	39
254	320288	11092
255	597	2710
256	131634	10943
257	101299	10943
258	50619	15557
\.


--
-- Data for Name: movienews_app_moviemodel_genres; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.movienews_app_moviemodel_genres (id, moviemodel_id, genremodel_id) FROM stdin;
1	177572	12
2	177572	10751
3	177572	16
4	177572	28
5	177572	35
6	58	12
7	58	14
8	58	28
9	363088	28
10	363088	12
11	363088	14
12	363088	35
13	363088	878
14	106646	80
15	106646	18
16	106646	35
17	207703	80
18	207703	35
19	207703	28
20	207703	12
21	129	16
22	129	10751
23	129	14
24	391713	35
25	391713	18
26	283366	18
27	283366	14
28	283366	12
29	283366	10751
30	406563	9648
31	406563	27
32	406563	53
33	14	18
34	307663	53
35	307663	878
36	307663	28
37	307663	12
38	240832	28
39	240832	878
40	672	12
41	672	14
42	672	10751
43	337170	28
44	337170	35
45	337170	80
46	337170	36
47	337170	18
48	71805	12
49	71805	10751
50	119450	878
51	119450	28
52	119450	18
53	119450	53
54	458355	53
55	118340	28
56	118340	878
57	118340	12
58	437557	35
59	483980	35
60	483980	10749
61	483980	10770
62	300668	9648
63	300668	878
64	300668	53
65	300668	27
66	158015	878
67	158015	27
68	158015	53
69	242582	80
70	242582	18
71	242582	53
72	447332	18
73	447332	27
74	447332	53
75	447332	878
76	343111	35
77	381719	16
78	381719	12
79	381719	10751
80	460019	53
81	460019	27
82	493922	27
83	493922	18
84	493922	9648
85	493922	53
86	490214	28
87	490214	35
88	490214	36
89	206647	28
90	206647	12
91	206647	80
92	284052	28
93	284052	12
94	284052	14
95	284052	878
96	458663	99
97	384677	10749
98	384677	35
99	550	18
100	244786	18
101	68721	28
102	68721	12
103	68721	878
104	406990	878
105	406990	53
106	406990	18
107	459258	28
108	459258	9648
109	459258	53
110	407451	12
111	407451	878
112	407451	10751
113	407451	14
114	157336	12
115	157336	18
116	157336	878
117	311324	28
118	311324	12
119	311324	14
120	603	28
121	603	878
122	398818	10749
123	398818	18
124	265208	53
125	265208	80
126	265208	18
127	57158	12
128	57158	14
129	260513	28
130	260513	12
131	260513	16
132	260513	10751
133	135397	28
134	135397	12
135	135397	878
136	135397	53
137	181533	12
138	181533	35
139	181533	14
140	181533	10751
141	141052	28
142	141052	12
143	141052	14
144	141052	878
145	198663	28
146	198663	9648
147	198663	878
148	198663	53
149	76338	28
150	76338	12
151	76338	14
152	449176	35
153	449176	18
154	449176	10749
155	181808	14
156	181808	12
157	181808	878
158	22	12
159	22	14
160	22	28
161	245891	28
162	245891	53
163	10195	12
164	10195	14
165	10195	28
166	482702	18
167	482702	10749
168	274855	28
169	274855	878
170	274855	53
171	440471	80
172	440471	28
173	440471	53
174	329	12
175	329	878
176	11	12
177	11	28
178	11	878
179	354912	16
180	120	12
181	120	14
182	120	28
183	62	878
184	62	9648
185	62	12
186	283995	28
187	283995	12
188	283995	35
189	283995	878
190	315635	28
191	315635	12
192	315635	35
193	315635	878
194	315635	18
195	102899	878
196	102899	28
197	102899	12
198	399174	12
199	399174	35
200	399174	16
201	335984	9648
202	335984	878
203	335984	53
204	24428	878
205	24428	28
206	24428	12
207	61791	53
208	61791	28
209	61791	18
210	61791	878
211	339403	28
212	339403	80
213	453213	10749
214	453213	18
215	299536	12
216	299536	878
217	299536	14
218	299536	28
219	131631	878
220	131631	12
221	131631	53
222	427641	28
223	427641	12
224	427641	878
225	427641	14
226	284054	28
227	284054	12
228	284054	14
229	284054	878
230	338970	28
231	338970	12
232	338970	14
233	338970	18
234	338970	9648
235	338970	53
236	268896	28
237	268896	14
238	268896	878
239	268896	12
240	348350	28
241	348350	12
242	348350	878
243	449443	28
244	449443	53
245	449443	80
246	381283	18
247	381283	27
248	381283	9648
249	337167	18
250	337167	10749
251	402900	80
252	402900	35
253	402900	28
254	402900	53
255	297762	28
256	297762	12
257	297762	14
258	297762	10752
259	297762	878
260	291805	28
261	291805	12
262	291805	35
263	291805	80
264	291805	9648
265	291805	53
266	263115	28
267	263115	18
268	263115	878
269	510819	28
270	510819	80
271	510819	18
272	293660	28
273	293660	12
274	293660	35
275	954	12
276	954	28
277	954	53
278	399055	18
279	399055	14
280	399055	10749
281	56292	28
282	56292	53
283	56292	12
284	271110	12
285	271110	28
286	271110	878
287	210577	9648
288	210577	53
289	210577	18
290	214756	35
291	177677	28
292	177677	12
293	177677	53
294	87101	878
295	87101	28
296	87101	53
297	87101	12
298	337339	12
299	337339	28
300	337339	80
301	337339	53
302	337339	9648
303	122917	28
304	122917	12
305	122917	14
306	85	12
307	85	28
308	228150	10752
309	228150	18
310	228150	28
311	19995	28
312	19995	12
313	19995	14
314	19995	878
315	1865	12
316	1865	28
317	1865	14
318	1726	28
319	1726	878
320	1726	12
321	273481	28
322	273481	80
323	273481	18
324	273481	9648
325	273481	53
326	76341	28
327	76341	12
328	76341	878
329	76341	53
330	321612	10751
331	321612	14
332	321612	10749
333	671	12
334	671	14
335	671	10751
336	386877	18
337	386877	10749
338	262500	28
339	262500	12
340	262500	878
341	262500	53
342	336843	28
343	336843	9648
344	336843	878
345	336843	53
346	336843	12
347	336843	14
348	680	53
349	680	80
350	238636	27
351	238636	53
352	99861	28
353	99861	12
354	99861	878
355	523873	28
356	14160	16
357	14160	35
358	14160	10751
359	14160	12
360	238	18
361	238	80
362	155	18
363	155	28
364	155	80
365	155	53
366	20352	16
367	20352	10751
368	20352	35
369	205596	36
370	205596	18
371	205596	53
372	205596	10752
373	419478	10749
374	419478	18
375	343668	28
376	343668	12
377	343668	35
378	483877	35
379	27205	28
380	27205	53
381	27205	878
382	27205	9648
383	27205	12
384	399035	28
385	399035	80
386	399035	18
387	399035	9648
388	399035	53
389	269149	16
390	269149	12
391	269149	10751
392	269149	35
393	400535	28
394	400535	80
395	400535	18
396	400535	53
397	127585	28
398	127585	12
399	127585	14
400	127585	878
401	347882	18
402	347882	53
403	347882	28
404	347882	878
405	49026	28
406	49026	80
407	49026	18
408	49026	53
409	285	12
410	285	14
411	285	28
412	374720	28
413	374720	18
414	374720	36
415	374720	53
416	374720	10752
417	98566	878
418	98566	28
419	98566	12
420	98566	14
421	98566	35
422	122	12
423	122	14
424	122	28
425	425	16
426	425	35
427	425	10751
428	425	12
429	246655	28
430	246655	12
431	246655	878
432	246655	14
433	176	27
434	176	9648
435	176	80
436	216015	18
437	216015	10749
438	216015	53
439	250124	18
440	250124	10749
441	341174	18
442	341174	10749
443	294254	28
444	294254	878
445	294254	53
446	381288	27
447	381288	53
448	12	16
449	12	10751
450	13186	27
451	13186	53
452	353081	12
453	353081	28
454	353081	53
455	956	12
456	956	28
457	956	53
458	47971	28
459	47971	12
460	47971	80
461	46375	18
462	46375	10749
463	446354	18
464	446354	36
465	76757	878
466	76757	14
467	76757	28
468	76757	12
469	395990	28
470	395990	80
471	395990	18
472	395990	53
473	150689	10749
474	150689	14
475	150689	10751
476	150689	18
477	259316	12
478	259316	10751
479	259316	14
480	254128	28
481	254128	18
482	254128	53
483	140607	28
484	140607	12
485	140607	878
486	140607	14
487	121	12
488	121	14
489	121	28
490	278	18
491	278	80
492	324552	53
493	324552	28
494	324552	80
495	194662	18
496	194662	35
497	446791	53
498	446791	18
499	446791	80
500	446791	9648
501	10138	12
502	10138	28
503	10138	878
504	8587	10751
505	8587	16
506	8587	18
507	272	28
508	272	80
509	272	18
510	476299	27
511	476299	9648
512	476299	53
513	476299	18
514	16869	18
515	16869	28
516	16869	53
517	16869	10752
518	862	16
519	862	35
520	862	10751
521	359940	80
522	359940	18
523	13	35
524	13	18
525	13	10749
526	27578	53
527	27578	12
528	27578	28
529	198184	80
530	198184	28
531	198184	878
532	339964	12
533	339964	878
534	339964	28
535	264660	18
536	264660	878
537	443319	27
538	443319	9648
539	443319	878
540	78	878
541	78	18
542	78	53
543	168259	28
544	168259	80
545	168259	53
546	168259	18
547	807	80
548	807	9648
549	807	53
550	68726	28
551	68726	878
552	68726	12
553	82702	14
554	82702	28
555	82702	12
556	82702	16
557	82702	35
558	82702	10751
559	286217	18
560	286217	12
561	286217	878
562	387592	10751
563	387592	35
564	387592	16
565	387592	12
566	316029	18
567	316029	10402
568	36557	12
569	36557	28
570	36557	53
571	399796	35
572	91314	878
573	91314	28
574	91314	12
575	126889	27
576	126889	878
577	126889	53
578	109445	16
579	109445	12
580	109445	10751
581	10764	12
582	10764	28
583	10764	53
584	10764	80
585	557	14
586	557	28
587	49051	12
588	49051	14
589	49051	28
590	348	27
591	348	878
592	107846	28
593	107846	53
594	2105	35
595	2105	10749
596	218	28
597	218	53
598	218	878
599	955	12
600	955	28
601	955	53
602	98	28
603	98	18
604	98	12
605	12444	12
606	12444	14
607	12444	10751
608	316727	28
609	316727	27
610	316727	53
611	745	9648
612	745	53
613	745	18
614	445571	9648
615	445571	35
616	445571	80
617	445571	53
618	808	12
619	808	16
620	808	35
621	808	10751
622	808	14
623	10020	10749
624	10020	10751
625	10020	16
626	10020	14
627	10020	10402
628	88751	28
629	88751	878
630	88751	12
631	88751	35
632	88751	10751
633	120467	35
634	120467	18
635	24021	12
636	24021	14
637	24021	18
638	24021	10749
639	18239	12
640	18239	14
641	18239	18
642	18239	10749
643	101	53
644	101	80
645	101	18
646	562	28
647	562	53
648	455980	35
649	188927	28
650	188927	12
651	188927	878
652	228967	28
653	228967	35
654	9502	12
655	9502	16
656	9502	10751
657	9502	35
658	57800	16
659	57800	35
660	57800	12
661	57800	10751
662	10681	16
663	10681	10751
664	411	12
665	411	10751
666	411	14
667	351286	28
668	351286	12
669	351286	878
670	383498	28
671	383498	35
672	383498	878
673	284053	28
674	284053	12
675	284053	14
676	284053	878
677	284053	35
678	333339	12
679	333339	878
680	333339	28
681	281338	18
682	281338	878
683	281338	10752
684	9806	28
685	9806	12
686	9806	16
687	9806	10751
688	401981	9648
689	401981	53
690	493006	16
691	493006	80
692	493006	9648
693	493006	28
694	493006	18
695	209112	28
696	209112	12
697	209112	14
698	166426	12
699	166426	28
700	166426	14
701	166426	35
702	8966	14
703	8966	18
704	8966	10749
705	150540	18
706	150540	35
707	150540	16
708	150540	10751
709	307081	28
710	307081	18
711	399248	28
712	399248	53
713	399248	18
714	257344	28
715	257344	35
716	257344	878
717	559	14
718	559	28
719	559	12
720	156022	53
721	156022	28
722	156022	80
723	585	16
724	585	35
725	585	10751
726	318484	28
727	318484	18
728	318484	80
729	37724	28
730	37724	12
731	37724	53
732	320288	28
733	320288	878
734	597	18
735	597	10749
736	597	53
737	131634	28
738	131634	12
739	131634	878
740	101299	12
741	101299	28
742	101299	878
743	50619	12
744	50619	14
745	50619	10749
746	455656	35
\.


--
-- Data for Name: movienews_app_usermodel; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.movienews_app_usermodel (id, login, password, bio) FROM stdin;
1	varya	password	My first account.
2	eugen	password	My second account.
3	natali	password	My third account.
4	anya	password	My fourth account.
5	stanislav	password	My fifth  account.
\.


--
-- Data for Name: movienews_app_usermodel_genres; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.movienews_app_usermodel_genres (id, usermodel_id, genremodel_id) FROM stdin;
4	1	9648
5	1	35
6	1	14
7	2	10770
8	2	28
9	2	53
10	3	27
11	3	36
12	3	10751
13	4	80
14	4	37
15	4	14
16	5	16
17	5	18
18	5	878
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);


--
-- Name: movienews_app_actormodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.movienews_app_actormodel_id_seq', 1, false);


--
-- Name: movienews_app_directormodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.movienews_app_directormodel_id_seq', 1, false);


--
-- Name: movienews_app_genremodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.movienews_app_genremodel_id_seq', 1, false);


--
-- Name: movienews_app_moviemodel_actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.movienews_app_moviemodel_actors_id_seq', 1192, true);


--
-- Name: movienews_app_moviemodel_directors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.movienews_app_moviemodel_directors_id_seq', 258, true);


--
-- Name: movienews_app_moviemodel_genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.movienews_app_moviemodel_genres_id_seq', 746, true);


--
-- Name: movienews_app_moviemodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.movienews_app_moviemodel_id_seq', 1, false);


--
-- Name: movienews_app_usermodel_genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.movienews_app_usermodel_genres_id_seq', 18, true);


--
-- Name: movienews_app_usermodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.movienews_app_usermodel_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: movienews_app_actormodel movienews_app_actormodel_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_actormodel
    ADD CONSTRAINT movienews_app_actormodel_pkey PRIMARY KEY (id);


--
-- Name: movienews_app_directormodel movienews_app_directormodel_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_directormodel
    ADD CONSTRAINT movienews_app_directormodel_pkey PRIMARY KEY (id);


--
-- Name: movienews_app_genremodel movienews_app_genremodel_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_genremodel
    ADD CONSTRAINT movienews_app_genremodel_pkey PRIMARY KEY (id);


--
-- Name: movienews_app_moviemodel_actors movienews_app_moviemodel_actors_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_actors
    ADD CONSTRAINT movienews_app_moviemodel_actors_pkey PRIMARY KEY (id);


--
-- Name: movienews_app_moviemodel_directors movienews_app_moviemodel_directors_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_directors
    ADD CONSTRAINT movienews_app_moviemodel_directors_pkey PRIMARY KEY (id);


--
-- Name: movienews_app_moviemodel_genres movienews_app_moviemodel_genres_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_genres
    ADD CONSTRAINT movienews_app_moviemodel_genres_pkey PRIMARY KEY (id);


--
-- Name: movienews_app_moviemodel_actors movienews_app_moviemodel_moviemodel_id_actormodel_4075441d_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_actors
    ADD CONSTRAINT movienews_app_moviemodel_moviemodel_id_actormodel_4075441d_uniq UNIQUE (moviemodel_id, actormodel_id);


--
-- Name: movienews_app_moviemodel_directors movienews_app_moviemodel_moviemodel_id_directormo_0aca77ce_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_directors
    ADD CONSTRAINT movienews_app_moviemodel_moviemodel_id_directormo_0aca77ce_uniq UNIQUE (moviemodel_id, directormodel_id);


--
-- Name: movienews_app_moviemodel_genres movienews_app_moviemodel_moviemodel_id_genremodel_256dfc3c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_genres
    ADD CONSTRAINT movienews_app_moviemodel_moviemodel_id_genremodel_256dfc3c_uniq UNIQUE (moviemodel_id, genremodel_id);


--
-- Name: movienews_app_moviemodel movienews_app_moviemodel_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel
    ADD CONSTRAINT movienews_app_moviemodel_pkey PRIMARY KEY (id);


--
-- Name: movienews_app_usermodel_genres movienews_app_usermodel__usermodel_id_genremodel__24543fd2_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_usermodel_genres
    ADD CONSTRAINT movienews_app_usermodel__usermodel_id_genremodel__24543fd2_uniq UNIQUE (usermodel_id, genremodel_id);


--
-- Name: movienews_app_usermodel_genres movienews_app_usermodel_genres_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_usermodel_genres
    ADD CONSTRAINT movienews_app_usermodel_genres_pkey PRIMARY KEY (id);


--
-- Name: movienews_app_usermodel movienews_app_usermodel_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_usermodel
    ADD CONSTRAINT movienews_app_usermodel_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: movienews_app_moviemodel_actors_actormodel_id_681b8b94; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX movienews_app_moviemodel_actors_actormodel_id_681b8b94 ON public.movienews_app_moviemodel_actors USING btree (actormodel_id);


--
-- Name: movienews_app_moviemodel_actors_moviemodel_id_21765195; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX movienews_app_moviemodel_actors_moviemodel_id_21765195 ON public.movienews_app_moviemodel_actors USING btree (moviemodel_id);


--
-- Name: movienews_app_moviemodel_directors_directormodel_id_d5c8b634; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX movienews_app_moviemodel_directors_directormodel_id_d5c8b634 ON public.movienews_app_moviemodel_directors USING btree (directormodel_id);


--
-- Name: movienews_app_moviemodel_directors_moviemodel_id_5b5e1197; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX movienews_app_moviemodel_directors_moviemodel_id_5b5e1197 ON public.movienews_app_moviemodel_directors USING btree (moviemodel_id);


--
-- Name: movienews_app_moviemodel_genres_genremodel_id_478fcf26; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX movienews_app_moviemodel_genres_genremodel_id_478fcf26 ON public.movienews_app_moviemodel_genres USING btree (genremodel_id);


--
-- Name: movienews_app_moviemodel_genres_moviemodel_id_4c86b528; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX movienews_app_moviemodel_genres_moviemodel_id_4c86b528 ON public.movienews_app_moviemodel_genres USING btree (moviemodel_id);


--
-- Name: movienews_app_usermodel_genres_genremodel_id_5ed6a7b8; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX movienews_app_usermodel_genres_genremodel_id_5ed6a7b8 ON public.movienews_app_usermodel_genres USING btree (genremodel_id);


--
-- Name: movienews_app_usermodel_genres_usermodel_id_a2b63afd; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX movienews_app_usermodel_genres_usermodel_id_a2b63afd ON public.movienews_app_usermodel_genres USING btree (usermodel_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movienews_app_moviemodel_actors movienews_app_moviem_actormodel_id_681b8b94_fk_movienews; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_actors
    ADD CONSTRAINT movienews_app_moviem_actormodel_id_681b8b94_fk_movienews FOREIGN KEY (actormodel_id) REFERENCES public.movienews_app_actormodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movienews_app_moviemodel_directors movienews_app_moviem_directormodel_id_d5c8b634_fk_movienews; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_directors
    ADD CONSTRAINT movienews_app_moviem_directormodel_id_d5c8b634_fk_movienews FOREIGN KEY (directormodel_id) REFERENCES public.movienews_app_directormodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movienews_app_moviemodel_genres movienews_app_moviem_genremodel_id_478fcf26_fk_movienews; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_genres
    ADD CONSTRAINT movienews_app_moviem_genremodel_id_478fcf26_fk_movienews FOREIGN KEY (genremodel_id) REFERENCES public.movienews_app_genremodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movienews_app_moviemodel_actors movienews_app_moviem_moviemodel_id_21765195_fk_movienews; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_actors
    ADD CONSTRAINT movienews_app_moviem_moviemodel_id_21765195_fk_movienews FOREIGN KEY (moviemodel_id) REFERENCES public.movienews_app_moviemodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movienews_app_moviemodel_genres movienews_app_moviem_moviemodel_id_4c86b528_fk_movienews; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_genres
    ADD CONSTRAINT movienews_app_moviem_moviemodel_id_4c86b528_fk_movienews FOREIGN KEY (moviemodel_id) REFERENCES public.movienews_app_moviemodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movienews_app_moviemodel_directors movienews_app_moviem_moviemodel_id_5b5e1197_fk_movienews; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_moviemodel_directors
    ADD CONSTRAINT movienews_app_moviem_moviemodel_id_5b5e1197_fk_movienews FOREIGN KEY (moviemodel_id) REFERENCES public.movienews_app_moviemodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movienews_app_usermodel_genres movienews_app_usermo_genremodel_id_5ed6a7b8_fk_movienews; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_usermodel_genres
    ADD CONSTRAINT movienews_app_usermo_genremodel_id_5ed6a7b8_fk_movienews FOREIGN KEY (genremodel_id) REFERENCES public.movienews_app_genremodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movienews_app_usermodel_genres movienews_app_usermo_usermodel_id_a2b63afd_fk_movienews; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.movienews_app_usermodel_genres
    ADD CONSTRAINT movienews_app_usermo_usermodel_id_a2b63afd_fk_movienews FOREIGN KEY (usermodel_id) REFERENCES public.movienews_app_usermodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

