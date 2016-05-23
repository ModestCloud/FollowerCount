--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: api_keys; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE api_keys (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    key character(20) NOT NULL
);


ALTER TABLE api_keys OWNER TO postgres;

--
-- Name: api_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE api_keys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api_keys_id_seq OWNER TO postgres;

--
-- Name: api_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE api_keys_id_seq OWNED BY api_keys.id;


--
-- Name: backfill_requests; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE backfill_requests (
    id integer NOT NULL,
    type text,
    external_id text,
    since timestamp without time zone,
    until timestamp without time zone,
    name text,
    reason text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE backfill_requests OWNER TO postgres;

--
-- Name: backfill_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE backfill_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE backfill_requests_id_seq OWNER TO postgres;

--
-- Name: backfill_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE backfill_requests_id_seq OWNED BY backfill_requests.id;


--
-- Name: googleplus_circle_metadata; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_circle_metadata (
    id integer NOT NULL,
    page_id character varying(255),
    circle_id character varying(255),
    display_name character varying(255),
    description text,
    self_link text
);


ALTER TABLE googleplus_circle_metadata OWNER TO postgres;

--
-- Name: googleplus_circle_metadata_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_circle_metadata_archive (
    id integer NOT NULL,
    page_id character varying(255),
    circle_id character varying(255),
    display_name character varying(255),
    description text,
    self_link text
);


ALTER TABLE googleplus_circle_metadata_archive OWNER TO postgres;

--
-- Name: googleplus_circle_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE googleplus_circle_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE googleplus_circle_metadata_id_seq OWNER TO postgres;

--
-- Name: googleplus_circle_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE googleplus_circle_metadata_id_seq OWNED BY googleplus_circle_metadata.id;


--
-- Name: googleplus_circle_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_circle_metrics_days (
    id integer NOT NULL,
    page_id character varying(255),
    circle_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint
);


ALTER TABLE googleplus_circle_metrics_days OWNER TO postgres;

--
-- Name: googleplus_circle_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_circle_metrics_days_archive (
    id integer NOT NULL,
    page_id character varying(255),
    circle_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint
);


ALTER TABLE googleplus_circle_metrics_days_archive OWNER TO postgres;

--
-- Name: googleplus_circle_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE googleplus_circle_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE googleplus_circle_metrics_days_id_seq OWNER TO postgres;

--
-- Name: googleplus_circle_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE googleplus_circle_metrics_days_id_seq OWNED BY googleplus_circle_metrics_days.id;


--
-- Name: googleplus_circle_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_circle_metrics_months (
    id integer NOT NULL,
    page_id character varying(255),
    circle_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint
);


ALTER TABLE googleplus_circle_metrics_months OWNER TO postgres;

--
-- Name: googleplus_circle_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE googleplus_circle_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE googleplus_circle_metrics_months_id_seq OWNER TO postgres;

--
-- Name: googleplus_circle_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE googleplus_circle_metrics_months_id_seq OWNED BY googleplus_circle_metrics_months.id;


--
-- Name: googleplus_circle_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_circle_metrics_weeks (
    id integer NOT NULL,
    page_id character varying(255),
    circle_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint
);


ALTER TABLE googleplus_circle_metrics_weeks OWNER TO postgres;

--
-- Name: googleplus_circle_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE googleplus_circle_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE googleplus_circle_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: googleplus_circle_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE googleplus_circle_metrics_weeks_id_seq OWNED BY googleplus_circle_metrics_weeks.id;


--
-- Name: googleplus_page_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_page_metrics_days (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint,
    likes bigint,
    comments bigint,
    shares bigint
);


ALTER TABLE googleplus_page_metrics_days OWNER TO postgres;

--
-- Name: googleplus_page_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_page_metrics_days_archive (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint,
    likes bigint,
    comments bigint,
    shares bigint
);


ALTER TABLE googleplus_page_metrics_days_archive OWNER TO postgres;

--
-- Name: googleplus_page_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE googleplus_page_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE googleplus_page_metrics_days_id_seq OWNER TO postgres;

--
-- Name: googleplus_page_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE googleplus_page_metrics_days_id_seq OWNED BY googleplus_page_metrics_days.id;


--
-- Name: googleplus_page_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_page_metrics_months (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint,
    likes bigint,
    comments bigint,
    shares bigint
);


ALTER TABLE googleplus_page_metrics_months OWNER TO postgres;

--
-- Name: googleplus_page_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE googleplus_page_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE googleplus_page_metrics_months_id_seq OWNER TO postgres;

--
-- Name: googleplus_page_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE googleplus_page_metrics_months_id_seq OWNED BY googleplus_page_metrics_months.id;


--
-- Name: googleplus_page_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_page_metrics_weeks (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint,
    likes bigint,
    comments bigint,
    shares bigint
);


ALTER TABLE googleplus_page_metrics_weeks OWNER TO postgres;

--
-- Name: googleplus_page_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE googleplus_page_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE googleplus_page_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: googleplus_page_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE googleplus_page_metrics_weeks_id_seq OWNED BY googleplus_page_metrics_weeks.id;


--
-- Name: googleplus_post_metadata; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_post_metadata (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    posted_at timestamp without time zone,
    post_type character varying(255),
    text text,
    picture text,
    permalink text,
    visibility character varying(32),
    circle_ids text
);


ALTER TABLE googleplus_post_metadata OWNER TO postgres;

--
-- Name: googleplus_post_metadata_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_post_metadata_archive (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    posted_at timestamp without time zone,
    post_type character varying(255),
    text text,
    picture text,
    permalink text,
    visibility character varying(32),
    circle_ids text
);


ALTER TABLE googleplus_post_metadata_archive OWNER TO postgres;

--
-- Name: googleplus_post_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE googleplus_post_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE googleplus_post_metadata_id_seq OWNER TO postgres;

--
-- Name: googleplus_post_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE googleplus_post_metadata_id_seq OWNED BY googleplus_post_metadata.id;


--
-- Name: googleplus_post_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_post_metrics_days (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    comments bigint,
    shares bigint
);


ALTER TABLE googleplus_post_metrics_days OWNER TO postgres;

--
-- Name: googleplus_post_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_post_metrics_days_archive (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    comments bigint,
    shares bigint
);


ALTER TABLE googleplus_post_metrics_days_archive OWNER TO postgres;

--
-- Name: googleplus_post_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE googleplus_post_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE googleplus_post_metrics_days_id_seq OWNER TO postgres;

--
-- Name: googleplus_post_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE googleplus_post_metrics_days_id_seq OWNED BY googleplus_post_metrics_days.id;


--
-- Name: googleplus_post_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_post_metrics_months (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    comments bigint,
    shares bigint
);


ALTER TABLE googleplus_post_metrics_months OWNER TO postgres;

--
-- Name: googleplus_post_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE googleplus_post_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE googleplus_post_metrics_months_id_seq OWNER TO postgres;

--
-- Name: googleplus_post_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE googleplus_post_metrics_months_id_seq OWNED BY googleplus_post_metrics_months.id;


--
-- Name: googleplus_post_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE googleplus_post_metrics_weeks (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    comments bigint,
    shares bigint
);


ALTER TABLE googleplus_post_metrics_weeks OWNER TO postgres;

--
-- Name: googleplus_post_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE googleplus_post_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE googleplus_post_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: googleplus_post_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE googleplus_post_metrics_weeks_id_seq OWNED BY googleplus_post_metrics_weeks.id;


--
-- Name: instagram_page_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instagram_page_metrics_days (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    daily_followers bigint,
    total_posts bigint,
    daily_posts bigint,
    total_likes bigint,
    daily_likes bigint,
    total_comments bigint,
    daily_comments bigint
);


ALTER TABLE instagram_page_metrics_days OWNER TO postgres;

--
-- Name: instagram_page_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instagram_page_metrics_days_archive (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    daily_followers bigint,
    total_posts bigint,
    daily_posts bigint,
    total_likes bigint,
    daily_likes bigint,
    total_comments bigint,
    daily_comments bigint
);


ALTER TABLE instagram_page_metrics_days_archive OWNER TO postgres;

--
-- Name: instagram_page_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE instagram_page_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE instagram_page_metrics_days_id_seq OWNER TO postgres;

--
-- Name: instagram_page_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE instagram_page_metrics_days_id_seq OWNED BY instagram_page_metrics_days.id;


--
-- Name: instagram_page_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instagram_page_metrics_months (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    daily_followers bigint,
    total_posts bigint,
    daily_posts bigint,
    total_likes bigint,
    daily_likes bigint,
    total_comments bigint,
    daily_comments bigint
);


ALTER TABLE instagram_page_metrics_months OWNER TO postgres;

--
-- Name: instagram_page_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE instagram_page_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE instagram_page_metrics_months_id_seq OWNER TO postgres;

--
-- Name: instagram_page_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE instagram_page_metrics_months_id_seq OWNED BY instagram_page_metrics_months.id;


--
-- Name: instagram_page_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instagram_page_metrics_weeks (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    daily_followers bigint,
    total_posts bigint,
    daily_posts bigint,
    total_likes bigint,
    daily_likes bigint,
    total_comments bigint,
    daily_comments bigint
);


ALTER TABLE instagram_page_metrics_weeks OWNER TO postgres;

--
-- Name: instagram_page_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE instagram_page_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE instagram_page_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: instagram_page_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE instagram_page_metrics_weeks_id_seq OWNED BY instagram_page_metrics_weeks.id;


--
-- Name: instagram_post_metadata; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instagram_post_metadata (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    posted_at timestamp without time zone,
    author text,
    author_id character varying(255),
    body text,
    url text,
    image_url text,
    thumbnail_pic_url text,
    original_post_id character varying(255)
);


ALTER TABLE instagram_post_metadata OWNER TO postgres;

--
-- Name: instagram_post_metadata_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instagram_post_metadata_archive (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    posted_at timestamp without time zone,
    author text,
    author_id character varying(255),
    body text,
    url text,
    image_url text,
    thumbnail_pic_url text,
    original_post_id character varying(255)
);


ALTER TABLE instagram_post_metadata_archive OWNER TO postgres;

--
-- Name: instagram_post_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE instagram_post_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE instagram_post_metadata_id_seq OWNER TO postgres;

--
-- Name: instagram_post_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE instagram_post_metadata_id_seq OWNED BY instagram_post_metadata.id;


--
-- Name: instagram_post_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instagram_post_metrics_days (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_likes bigint,
    daily_likes bigint,
    total_comments bigint,
    daily_comments bigint
);


ALTER TABLE instagram_post_metrics_days OWNER TO postgres;

--
-- Name: instagram_post_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instagram_post_metrics_days_archive (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_likes bigint,
    daily_likes bigint,
    total_comments bigint,
    daily_comments bigint
);


ALTER TABLE instagram_post_metrics_days_archive OWNER TO postgres;

--
-- Name: instagram_post_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE instagram_post_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE instagram_post_metrics_days_id_seq OWNER TO postgres;

--
-- Name: instagram_post_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE instagram_post_metrics_days_id_seq OWNED BY instagram_post_metrics_days.id;


--
-- Name: instagram_post_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instagram_post_metrics_months (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_likes bigint,
    daily_likes bigint,
    total_comments bigint,
    daily_comments bigint
);


ALTER TABLE instagram_post_metrics_months OWNER TO postgres;

--
-- Name: instagram_post_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE instagram_post_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE instagram_post_metrics_months_id_seq OWNER TO postgres;

--
-- Name: instagram_post_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE instagram_post_metrics_months_id_seq OWNED BY instagram_post_metrics_months.id;


--
-- Name: instagram_post_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instagram_post_metrics_weeks (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_likes bigint,
    daily_likes bigint,
    total_comments bigint,
    daily_comments bigint
);


ALTER TABLE instagram_post_metrics_weeks OWNER TO postgres;

--
-- Name: instagram_post_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE instagram_post_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE instagram_post_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: instagram_post_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE instagram_post_metrics_weeks_id_seq OWNED BY instagram_post_metrics_weeks.id;


--
-- Name: linkedin_page_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE linkedin_page_metrics_days (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    organic_followers bigint,
    paid_followers bigint,
    likes bigint,
    shares bigint,
    comments bigint,
    clicks bigint,
    impressions bigint,
    engagement double precision,
    followers bigint,
    daily_organic_followers bigint,
    daily_paid_followers bigint,
    total_likes bigint,
    total_shares bigint,
    total_comments bigint,
    total_clicks bigint,
    total_impressions bigint
);


ALTER TABLE linkedin_page_metrics_days OWNER TO postgres;

--
-- Name: linkedin_page_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE linkedin_page_metrics_days_archive (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    organic_followers bigint,
    paid_followers bigint,
    likes bigint,
    shares bigint,
    comments bigint,
    clicks bigint,
    impressions bigint,
    engagement double precision,
    followers bigint,
    daily_organic_followers bigint,
    daily_paid_followers bigint,
    total_likes bigint,
    total_shares bigint,
    total_comments bigint,
    total_clicks bigint,
    total_impressions bigint
);


ALTER TABLE linkedin_page_metrics_days_archive OWNER TO postgres;

--
-- Name: linkedin_page_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE linkedin_page_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linkedin_page_metrics_days_id_seq OWNER TO postgres;

--
-- Name: linkedin_page_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE linkedin_page_metrics_days_id_seq OWNED BY linkedin_page_metrics_days.id;


--
-- Name: linkedin_page_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE linkedin_page_metrics_months (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    organic_followers bigint,
    paid_followers bigint,
    likes bigint,
    shares bigint,
    comments bigint,
    clicks bigint,
    impressions bigint,
    engagement double precision,
    followers bigint,
    daily_organic_followers bigint,
    daily_paid_followers bigint,
    total_likes bigint,
    total_shares bigint,
    total_comments bigint,
    total_clicks bigint,
    total_impressions bigint
);


ALTER TABLE linkedin_page_metrics_months OWNER TO postgres;

--
-- Name: linkedin_page_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE linkedin_page_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linkedin_page_metrics_months_id_seq OWNER TO postgres;

--
-- Name: linkedin_page_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE linkedin_page_metrics_months_id_seq OWNED BY linkedin_page_metrics_months.id;


--
-- Name: linkedin_page_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE linkedin_page_metrics_weeks (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    organic_followers bigint,
    paid_followers bigint,
    likes bigint,
    shares bigint,
    comments bigint,
    clicks bigint,
    impressions bigint,
    engagement double precision,
    followers bigint,
    daily_organic_followers bigint,
    daily_paid_followers bigint,
    total_likes bigint,
    total_shares bigint,
    total_comments bigint,
    total_clicks bigint,
    total_impressions bigint
);


ALTER TABLE linkedin_page_metrics_weeks OWNER TO postgres;

--
-- Name: linkedin_page_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE linkedin_page_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linkedin_page_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: linkedin_page_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE linkedin_page_metrics_weeks_id_seq OWNED BY linkedin_page_metrics_weeks.id;


--
-- Name: linkedin_post_metadata; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE linkedin_post_metadata (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    posted_at timestamp without time zone,
    author text,
    body text,
    permalink text,
    title text,
    description text,
    url text,
    image_url text,
    thumbnail_pic_url text,
    shortened_url text,
    eyebrow_url text,
    original_pic_url text,
    visibility character varying(255),
    original_post_id character varying(255)
);


ALTER TABLE linkedin_post_metadata OWNER TO postgres;

--
-- Name: linkedin_post_metadata_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE linkedin_post_metadata_archive (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    posted_at timestamp without time zone,
    author text,
    body text,
    permalink text,
    title text,
    description text,
    url text,
    image_url text,
    thumbnail_pic_url text,
    shortened_url text,
    eyebrow_url text,
    original_pic_url text,
    visibility character varying(255),
    original_post_id character varying(255)
);


ALTER TABLE linkedin_post_metadata_archive OWNER TO postgres;

--
-- Name: linkedin_post_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE linkedin_post_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linkedin_post_metadata_id_seq OWNER TO postgres;

--
-- Name: linkedin_post_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE linkedin_post_metadata_id_seq OWNED BY linkedin_post_metadata.id;


--
-- Name: linkedin_post_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE linkedin_post_metrics_days (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    comments bigint,
    shares bigint,
    clicks bigint,
    impressions bigint,
    engagement double precision,
    total_likes bigint,
    total_comments bigint,
    total_impressions bigint,
    total_shares bigint,
    total_clicks bigint
);


ALTER TABLE linkedin_post_metrics_days OWNER TO postgres;

--
-- Name: linkedin_post_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE linkedin_post_metrics_days_archive (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    comments bigint,
    shares bigint,
    clicks bigint,
    impressions bigint,
    engagement double precision,
    total_likes bigint,
    total_comments bigint,
    total_impressions bigint,
    total_shares bigint,
    total_clicks bigint
);


ALTER TABLE linkedin_post_metrics_days_archive OWNER TO postgres;

--
-- Name: linkedin_post_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE linkedin_post_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linkedin_post_metrics_days_id_seq OWNER TO postgres;

--
-- Name: linkedin_post_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE linkedin_post_metrics_days_id_seq OWNED BY linkedin_post_metrics_days.id;


--
-- Name: linkedin_post_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE linkedin_post_metrics_months (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    comments bigint,
    shares bigint,
    clicks bigint,
    impressions bigint,
    engagement double precision,
    total_likes bigint,
    total_comments bigint,
    total_impressions bigint,
    total_shares bigint,
    total_clicks bigint
);


ALTER TABLE linkedin_post_metrics_months OWNER TO postgres;

--
-- Name: linkedin_post_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE linkedin_post_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linkedin_post_metrics_months_id_seq OWNER TO postgres;

--
-- Name: linkedin_post_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE linkedin_post_metrics_months_id_seq OWNED BY linkedin_post_metrics_months.id;


--
-- Name: linkedin_post_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE linkedin_post_metrics_weeks (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    comments bigint,
    shares bigint,
    clicks bigint,
    impressions bigint,
    engagement double precision,
    total_likes bigint,
    total_comments bigint,
    total_impressions bigint,
    total_shares bigint,
    total_clicks bigint
);


ALTER TABLE linkedin_post_metrics_weeks OWNER TO postgres;

--
-- Name: linkedin_post_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE linkedin_post_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linkedin_post_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: linkedin_post_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE linkedin_post_metrics_weeks_id_seq OWNED BY linkedin_post_metrics_weeks.id;


--
-- Name: names; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE names (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE names OWNER TO postgres;

--
-- Name: names_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE names_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE names_id_seq OWNER TO postgres;

--
-- Name: names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE names_id_seq OWNED BY names.id;


--
-- Name: page_consumptions_by_consumption_type_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_consumptions_by_consumption_type_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_consumptions_by_consumption_type_days OWNER TO postgres;

--
-- Name: page_consumptions_by_consumption_type_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_consumptions_by_consumption_type_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_consumptions_by_consumption_type_days_archive OWNER TO postgres;

--
-- Name: page_consumptions_by_consumption_type_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_consumptions_by_consumption_type_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_consumptions_by_consumption_type_days_id_seq OWNER TO postgres;

--
-- Name: page_consumptions_by_consumption_type_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_consumptions_by_consumption_type_days_id_seq OWNED BY page_consumptions_by_consumption_type_days.id;


--
-- Name: page_consumptions_by_consumption_type_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_consumptions_by_consumption_type_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_consumptions_by_consumption_type_months OWNER TO postgres;

--
-- Name: page_consumptions_by_consumption_type_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_consumptions_by_consumption_type_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_consumptions_by_consumption_type_months_id_seq OWNER TO postgres;

--
-- Name: page_consumptions_by_consumption_type_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_consumptions_by_consumption_type_months_id_seq OWNED BY page_consumptions_by_consumption_type_months.id;


--
-- Name: page_consumptions_by_consumption_type_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_consumptions_by_consumption_type_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_consumptions_by_consumption_type_weeks OWNER TO postgres;

--
-- Name: page_consumptions_by_consumption_type_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_consumptions_by_consumption_type_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_consumptions_by_consumption_type_weeks_id_seq OWNER TO postgres;

--
-- Name: page_consumptions_by_consumption_type_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_consumptions_by_consumption_type_weeks_id_seq OWNED BY page_consumptions_by_consumption_type_weeks.id;


--
-- Name: page_fans_by_like_source_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_by_like_source_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_by_like_source_days OWNER TO postgres;

--
-- Name: page_fans_by_like_source_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_by_like_source_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_by_like_source_days_archive OWNER TO postgres;

--
-- Name: page_fans_by_like_source_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_by_like_source_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_by_like_source_days_id_seq OWNER TO postgres;

--
-- Name: page_fans_by_like_source_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_by_like_source_days_id_seq OWNED BY page_fans_by_like_source_days.id;


--
-- Name: page_fans_by_like_source_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_by_like_source_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_by_like_source_months OWNER TO postgres;

--
-- Name: page_fans_by_like_source_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_by_like_source_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_by_like_source_months_id_seq OWNER TO postgres;

--
-- Name: page_fans_by_like_source_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_by_like_source_months_id_seq OWNED BY page_fans_by_like_source_months.id;


--
-- Name: page_fans_by_like_source_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_by_like_source_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_by_like_source_weeks OWNER TO postgres;

--
-- Name: page_fans_by_like_source_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_by_like_source_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_by_like_source_weeks_id_seq OWNER TO postgres;

--
-- Name: page_fans_by_like_source_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_by_like_source_weeks_id_seq OWNED BY page_fans_by_like_source_weeks.id;


--
-- Name: page_fans_city_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_city_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_city_days OWNER TO postgres;

--
-- Name: page_fans_city_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_city_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_city_days_archive OWNER TO postgres;

--
-- Name: page_fans_city_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_city_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_city_days_id_seq OWNER TO postgres;

--
-- Name: page_fans_city_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_city_days_id_seq OWNED BY page_fans_city_days.id;


--
-- Name: page_fans_city_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_city_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_city_months OWNER TO postgres;

--
-- Name: page_fans_city_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_city_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_city_months_id_seq OWNER TO postgres;

--
-- Name: page_fans_city_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_city_months_id_seq OWNED BY page_fans_city_months.id;


--
-- Name: page_fans_city_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_city_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_city_weeks OWNER TO postgres;

--
-- Name: page_fans_city_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_city_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_city_weeks_id_seq OWNER TO postgres;

--
-- Name: page_fans_city_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_city_weeks_id_seq OWNED BY page_fans_city_weeks.id;


--
-- Name: page_fans_country_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_country_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_country_days OWNER TO postgres;

--
-- Name: page_fans_country_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_country_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_country_days_archive OWNER TO postgres;

--
-- Name: page_fans_country_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_country_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_country_days_id_seq OWNER TO postgres;

--
-- Name: page_fans_country_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_country_days_id_seq OWNED BY page_fans_country_days.id;


--
-- Name: page_fans_country_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_country_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_country_months OWNER TO postgres;

--
-- Name: page_fans_country_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_country_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_country_months_id_seq OWNER TO postgres;

--
-- Name: page_fans_country_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_country_months_id_seq OWNED BY page_fans_country_months.id;


--
-- Name: page_fans_country_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_country_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_country_weeks OWNER TO postgres;

--
-- Name: page_fans_country_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_country_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_country_weeks_id_seq OWNER TO postgres;

--
-- Name: page_fans_country_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_country_weeks_id_seq OWNED BY page_fans_country_weeks.id;


--
-- Name: page_fans_gender_age_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_gender_age_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_gender_age_days OWNER TO postgres;

--
-- Name: page_fans_gender_age_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_gender_age_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_gender_age_days_archive OWNER TO postgres;

--
-- Name: page_fans_gender_age_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_gender_age_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_gender_age_days_id_seq OWNER TO postgres;

--
-- Name: page_fans_gender_age_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_gender_age_days_id_seq OWNED BY page_fans_gender_age_days.id;


--
-- Name: page_fans_gender_age_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_gender_age_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_gender_age_months OWNER TO postgres;

--
-- Name: page_fans_gender_age_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_gender_age_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_gender_age_months_id_seq OWNER TO postgres;

--
-- Name: page_fans_gender_age_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_gender_age_months_id_seq OWNED BY page_fans_gender_age_months.id;


--
-- Name: page_fans_gender_age_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_gender_age_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_gender_age_weeks OWNER TO postgres;

--
-- Name: page_fans_gender_age_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_gender_age_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_gender_age_weeks_id_seq OWNER TO postgres;

--
-- Name: page_fans_gender_age_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_gender_age_weeks_id_seq OWNED BY page_fans_gender_age_weeks.id;


--
-- Name: page_fans_locale_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_locale_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_locale_days OWNER TO postgres;

--
-- Name: page_fans_locale_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_locale_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_locale_days_archive OWNER TO postgres;

--
-- Name: page_fans_locale_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_locale_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_locale_days_id_seq OWNER TO postgres;

--
-- Name: page_fans_locale_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_locale_days_id_seq OWNED BY page_fans_locale_days.id;


--
-- Name: page_fans_locale_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_locale_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_locale_months OWNER TO postgres;

--
-- Name: page_fans_locale_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_locale_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_locale_months_id_seq OWNER TO postgres;

--
-- Name: page_fans_locale_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_locale_months_id_seq OWNED BY page_fans_locale_months.id;


--
-- Name: page_fans_locale_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_fans_locale_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_fans_locale_weeks OWNER TO postgres;

--
-- Name: page_fans_locale_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_fans_locale_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_fans_locale_weeks_id_seq OWNER TO postgres;

--
-- Name: page_fans_locale_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_fans_locale_weeks_id_seq OWNED BY page_fans_locale_weeks.id;


--
-- Name: page_impressions_by_age_gender_unique_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_age_gender_unique_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_age_gender_unique_days OWNER TO postgres;

--
-- Name: page_impressions_by_age_gender_unique_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_age_gender_unique_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_age_gender_unique_days_archive OWNER TO postgres;

--
-- Name: page_impressions_by_age_gender_unique_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_age_gender_unique_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_age_gender_unique_days_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_age_gender_unique_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_age_gender_unique_days_id_seq OWNED BY page_impressions_by_age_gender_unique_days.id;


--
-- Name: page_impressions_by_age_gender_unique_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_age_gender_unique_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_age_gender_unique_months OWNER TO postgres;

--
-- Name: page_impressions_by_age_gender_unique_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_age_gender_unique_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_age_gender_unique_months_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_age_gender_unique_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_age_gender_unique_months_id_seq OWNED BY page_impressions_by_age_gender_unique_months.id;


--
-- Name: page_impressions_by_age_gender_unique_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_age_gender_unique_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_age_gender_unique_weeks OWNER TO postgres;

--
-- Name: page_impressions_by_age_gender_unique_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_age_gender_unique_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_age_gender_unique_weeks_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_age_gender_unique_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_age_gender_unique_weeks_id_seq OWNED BY page_impressions_by_age_gender_unique_weeks.id;


--
-- Name: page_impressions_by_city_unique_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_city_unique_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_city_unique_days OWNER TO postgres;

--
-- Name: page_impressions_by_city_unique_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_city_unique_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_city_unique_days_archive OWNER TO postgres;

--
-- Name: page_impressions_by_city_unique_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_city_unique_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_city_unique_days_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_city_unique_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_city_unique_days_id_seq OWNED BY page_impressions_by_city_unique_days.id;


--
-- Name: page_impressions_by_city_unique_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_city_unique_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_city_unique_months OWNER TO postgres;

--
-- Name: page_impressions_by_city_unique_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_city_unique_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_city_unique_months_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_city_unique_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_city_unique_months_id_seq OWNED BY page_impressions_by_city_unique_months.id;


--
-- Name: page_impressions_by_city_unique_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_city_unique_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_city_unique_weeks OWNER TO postgres;

--
-- Name: page_impressions_by_city_unique_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_city_unique_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_city_unique_weeks_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_city_unique_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_city_unique_weeks_id_seq OWNED BY page_impressions_by_city_unique_weeks.id;


--
-- Name: page_impressions_by_country_unique_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_country_unique_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_country_unique_days OWNER TO postgres;

--
-- Name: page_impressions_by_country_unique_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_country_unique_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_country_unique_days_archive OWNER TO postgres;

--
-- Name: page_impressions_by_country_unique_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_country_unique_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_country_unique_days_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_country_unique_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_country_unique_days_id_seq OWNED BY page_impressions_by_country_unique_days.id;


--
-- Name: page_impressions_by_country_unique_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_country_unique_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_country_unique_months OWNER TO postgres;

--
-- Name: page_impressions_by_country_unique_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_country_unique_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_country_unique_months_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_country_unique_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_country_unique_months_id_seq OWNED BY page_impressions_by_country_unique_months.id;


--
-- Name: page_impressions_by_country_unique_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_country_unique_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_country_unique_weeks OWNER TO postgres;

--
-- Name: page_impressions_by_country_unique_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_country_unique_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_country_unique_weeks_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_country_unique_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_country_unique_weeks_id_seq OWNED BY page_impressions_by_country_unique_weeks.id;


--
-- Name: page_impressions_by_locale_unique_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_locale_unique_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_locale_unique_days OWNER TO postgres;

--
-- Name: page_impressions_by_locale_unique_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_locale_unique_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_locale_unique_days_archive OWNER TO postgres;

--
-- Name: page_impressions_by_locale_unique_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_locale_unique_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_locale_unique_days_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_locale_unique_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_locale_unique_days_id_seq OWNED BY page_impressions_by_locale_unique_days.id;


--
-- Name: page_impressions_by_locale_unique_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_locale_unique_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_locale_unique_months OWNER TO postgres;

--
-- Name: page_impressions_by_locale_unique_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_locale_unique_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_locale_unique_months_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_locale_unique_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_locale_unique_months_id_seq OWNED BY page_impressions_by_locale_unique_months.id;


--
-- Name: page_impressions_by_locale_unique_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_locale_unique_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_locale_unique_weeks OWNER TO postgres;

--
-- Name: page_impressions_by_locale_unique_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_locale_unique_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_locale_unique_weeks_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_locale_unique_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_locale_unique_weeks_id_seq OWNED BY page_impressions_by_locale_unique_weeks.id;


--
-- Name: page_impressions_by_story_type_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_story_type_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_story_type_days OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_story_type_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_story_type_days_archive OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_story_type_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_story_type_days_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_story_type_days_id_seq OWNED BY page_impressions_by_story_type_days.id;


--
-- Name: page_impressions_by_story_type_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_story_type_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_story_type_months OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_story_type_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_story_type_months_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_story_type_months_id_seq OWNED BY page_impressions_by_story_type_months.id;


--
-- Name: page_impressions_by_story_type_unique_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_story_type_unique_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_story_type_unique_days OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_unique_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_story_type_unique_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_story_type_unique_days_archive OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_unique_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_story_type_unique_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_story_type_unique_days_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_unique_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_story_type_unique_days_id_seq OWNED BY page_impressions_by_story_type_unique_days.id;


--
-- Name: page_impressions_by_story_type_unique_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_story_type_unique_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_story_type_unique_months OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_unique_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_story_type_unique_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_story_type_unique_months_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_unique_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_story_type_unique_months_id_seq OWNED BY page_impressions_by_story_type_unique_months.id;


--
-- Name: page_impressions_by_story_type_unique_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_story_type_unique_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_story_type_unique_weeks OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_unique_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_story_type_unique_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_story_type_unique_weeks_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_unique_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_story_type_unique_weeks_id_seq OWNED BY page_impressions_by_story_type_unique_weeks.id;


--
-- Name: page_impressions_by_story_type_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_impressions_by_story_type_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_impressions_by_story_type_weeks OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_impressions_by_story_type_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_impressions_by_story_type_weeks_id_seq OWNER TO postgres;

--
-- Name: page_impressions_by_story_type_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_impressions_by_story_type_weeks_id_seq OWNED BY page_impressions_by_story_type_weeks.id;


--
-- Name: page_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_metrics_days (
    id integer NOT NULL,
    page_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    page_consumptions bigint,
    page_engaged_users bigint,
    page_fan_adds bigint,
    page_fan_removes bigint,
    page_fans bigint,
    page_impressions bigint,
    page_impressions_organic bigint,
    page_impressions_organic_unique bigint,
    page_impressions_paid bigint,
    page_impressions_paid_unique bigint,
    page_impressions_unique bigint,
    page_impressions_viral bigint,
    page_impressions_viral_unique bigint,
    page_posts_impressions bigint,
    page_stories bigint,
    page_storytellers bigint,
    page_views bigint,
    page_fan_adds_unique bigint,
    page_fan_removes_unique bigint
);


ALTER TABLE page_metrics_days OWNER TO postgres;

--
-- Name: page_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_metrics_days_archive (
    id integer NOT NULL,
    page_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    page_consumptions bigint,
    page_engaged_users bigint,
    page_fan_adds bigint,
    page_fan_removes bigint,
    page_fans bigint,
    page_impressions bigint,
    page_impressions_organic bigint,
    page_impressions_organic_unique bigint,
    page_impressions_paid bigint,
    page_impressions_paid_unique bigint,
    page_impressions_unique bigint,
    page_impressions_viral bigint,
    page_impressions_viral_unique bigint,
    page_posts_impressions bigint,
    page_stories bigint,
    page_storytellers bigint,
    page_views bigint,
    page_fan_adds_unique bigint,
    page_fan_removes_unique bigint
);


ALTER TABLE page_metrics_days_archive OWNER TO postgres;

--
-- Name: page_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_metrics_days_id_seq OWNER TO postgres;

--
-- Name: page_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_metrics_days_id_seq OWNED BY page_metrics_days.id;


--
-- Name: page_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_metrics_months (
    id integer NOT NULL,
    page_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    page_consumptions bigint,
    page_engaged_users bigint,
    page_fan_adds bigint,
    page_fan_removes bigint,
    page_fans bigint,
    page_impressions bigint,
    page_impressions_organic bigint,
    page_impressions_organic_unique bigint,
    page_impressions_paid bigint,
    page_impressions_paid_unique bigint,
    page_impressions_unique bigint,
    page_impressions_viral bigint,
    page_impressions_viral_unique bigint,
    page_posts_impressions bigint,
    page_stories bigint,
    page_storytellers bigint,
    page_views bigint,
    page_fan_adds_unique bigint,
    page_fan_removes_unique bigint
);


ALTER TABLE page_metrics_months OWNER TO postgres;

--
-- Name: page_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_metrics_months_id_seq OWNER TO postgres;

--
-- Name: page_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_metrics_months_id_seq OWNED BY page_metrics_months.id;


--
-- Name: page_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_metrics_weeks (
    id integer NOT NULL,
    page_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    page_consumptions bigint,
    page_engaged_users bigint,
    page_fan_adds bigint,
    page_fan_removes bigint,
    page_fans bigint,
    page_impressions bigint,
    page_impressions_organic bigint,
    page_impressions_organic_unique bigint,
    page_impressions_paid bigint,
    page_impressions_paid_unique bigint,
    page_impressions_unique bigint,
    page_impressions_viral bigint,
    page_impressions_viral_unique bigint,
    page_posts_impressions bigint,
    page_stories bigint,
    page_storytellers bigint,
    page_views bigint,
    page_fan_adds_unique bigint,
    page_fan_removes_unique bigint
);


ALTER TABLE page_metrics_weeks OWNER TO postgres;

--
-- Name: page_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: page_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_metrics_weeks_id_seq OWNED BY page_metrics_weeks.id;


--
-- Name: page_negative_feedback_by_type_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_negative_feedback_by_type_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_negative_feedback_by_type_days OWNER TO postgres;

--
-- Name: page_negative_feedback_by_type_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_negative_feedback_by_type_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_negative_feedback_by_type_days_archive OWNER TO postgres;

--
-- Name: page_negative_feedback_by_type_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_negative_feedback_by_type_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_negative_feedback_by_type_days_id_seq OWNER TO postgres;

--
-- Name: page_negative_feedback_by_type_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_negative_feedback_by_type_days_id_seq OWNED BY page_negative_feedback_by_type_days.id;


--
-- Name: page_negative_feedback_by_type_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_negative_feedback_by_type_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_negative_feedback_by_type_months OWNER TO postgres;

--
-- Name: page_negative_feedback_by_type_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_negative_feedback_by_type_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_negative_feedback_by_type_months_id_seq OWNER TO postgres;

--
-- Name: page_negative_feedback_by_type_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_negative_feedback_by_type_months_id_seq OWNED BY page_negative_feedback_by_type_months.id;


--
-- Name: page_negative_feedback_by_type_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_negative_feedback_by_type_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_negative_feedback_by_type_weeks OWNER TO postgres;

--
-- Name: page_negative_feedback_by_type_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_negative_feedback_by_type_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_negative_feedback_by_type_weeks_id_seq OWNER TO postgres;

--
-- Name: page_negative_feedback_by_type_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_negative_feedback_by_type_weeks_id_seq OWNED BY page_negative_feedback_by_type_weeks.id;


--
-- Name: page_stories_by_story_type_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_stories_by_story_type_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_stories_by_story_type_days OWNER TO postgres;

--
-- Name: page_stories_by_story_type_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_stories_by_story_type_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_stories_by_story_type_days_archive OWNER TO postgres;

--
-- Name: page_stories_by_story_type_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_stories_by_story_type_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_stories_by_story_type_days_id_seq OWNER TO postgres;

--
-- Name: page_stories_by_story_type_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_stories_by_story_type_days_id_seq OWNED BY page_stories_by_story_type_days.id;


--
-- Name: page_stories_by_story_type_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_stories_by_story_type_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_stories_by_story_type_months OWNER TO postgres;

--
-- Name: page_stories_by_story_type_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_stories_by_story_type_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_stories_by_story_type_months_id_seq OWNER TO postgres;

--
-- Name: page_stories_by_story_type_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_stories_by_story_type_months_id_seq OWNED BY page_stories_by_story_type_months.id;


--
-- Name: page_stories_by_story_type_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_stories_by_story_type_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_stories_by_story_type_weeks OWNER TO postgres;

--
-- Name: page_stories_by_story_type_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_stories_by_story_type_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_stories_by_story_type_weeks_id_seq OWNER TO postgres;

--
-- Name: page_stories_by_story_type_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_stories_by_story_type_weeks_id_seq OWNED BY page_stories_by_story_type_weeks.id;


--
-- Name: page_storytellers_by_age_gender_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_age_gender_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_age_gender_days OWNER TO postgres;

--
-- Name: page_storytellers_by_age_gender_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_age_gender_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_age_gender_days_archive OWNER TO postgres;

--
-- Name: page_storytellers_by_age_gender_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_age_gender_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_age_gender_days_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_age_gender_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_age_gender_days_id_seq OWNED BY page_storytellers_by_age_gender_days.id;


--
-- Name: page_storytellers_by_age_gender_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_age_gender_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_age_gender_months OWNER TO postgres;

--
-- Name: page_storytellers_by_age_gender_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_age_gender_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_age_gender_months_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_age_gender_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_age_gender_months_id_seq OWNED BY page_storytellers_by_age_gender_months.id;


--
-- Name: page_storytellers_by_age_gender_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_age_gender_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_age_gender_weeks OWNER TO postgres;

--
-- Name: page_storytellers_by_age_gender_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_age_gender_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_age_gender_weeks_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_age_gender_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_age_gender_weeks_id_seq OWNED BY page_storytellers_by_age_gender_weeks.id;


--
-- Name: page_storytellers_by_city_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_city_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_city_days OWNER TO postgres;

--
-- Name: page_storytellers_by_city_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_city_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_city_days_archive OWNER TO postgres;

--
-- Name: page_storytellers_by_city_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_city_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_city_days_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_city_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_city_days_id_seq OWNED BY page_storytellers_by_city_days.id;


--
-- Name: page_storytellers_by_city_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_city_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_city_months OWNER TO postgres;

--
-- Name: page_storytellers_by_city_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_city_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_city_months_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_city_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_city_months_id_seq OWNED BY page_storytellers_by_city_months.id;


--
-- Name: page_storytellers_by_city_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_city_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_city_weeks OWNER TO postgres;

--
-- Name: page_storytellers_by_city_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_city_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_city_weeks_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_city_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_city_weeks_id_seq OWNED BY page_storytellers_by_city_weeks.id;


--
-- Name: page_storytellers_by_country_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_country_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_country_days OWNER TO postgres;

--
-- Name: page_storytellers_by_country_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_country_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_country_days_archive OWNER TO postgres;

--
-- Name: page_storytellers_by_country_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_country_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_country_days_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_country_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_country_days_id_seq OWNED BY page_storytellers_by_country_days.id;


--
-- Name: page_storytellers_by_country_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_country_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_country_months OWNER TO postgres;

--
-- Name: page_storytellers_by_country_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_country_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_country_months_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_country_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_country_months_id_seq OWNED BY page_storytellers_by_country_months.id;


--
-- Name: page_storytellers_by_country_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_country_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_country_weeks OWNER TO postgres;

--
-- Name: page_storytellers_by_country_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_country_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_country_weeks_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_country_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_country_weeks_id_seq OWNED BY page_storytellers_by_country_weeks.id;


--
-- Name: page_storytellers_by_locale_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_locale_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_locale_days OWNER TO postgres;

--
-- Name: page_storytellers_by_locale_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_locale_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_locale_days_archive OWNER TO postgres;

--
-- Name: page_storytellers_by_locale_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_locale_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_locale_days_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_locale_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_locale_days_id_seq OWNED BY page_storytellers_by_locale_days.id;


--
-- Name: page_storytellers_by_locale_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_locale_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_locale_months OWNER TO postgres;

--
-- Name: page_storytellers_by_locale_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_locale_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_locale_months_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_locale_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_locale_months_id_seq OWNED BY page_storytellers_by_locale_months.id;


--
-- Name: page_storytellers_by_locale_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_locale_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_locale_weeks OWNER TO postgres;

--
-- Name: page_storytellers_by_locale_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_locale_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_locale_weeks_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_locale_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_locale_weeks_id_seq OWNED BY page_storytellers_by_locale_weeks.id;


--
-- Name: page_storytellers_by_story_type_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_story_type_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_story_type_days OWNER TO postgres;

--
-- Name: page_storytellers_by_story_type_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_story_type_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_story_type_days_archive OWNER TO postgres;

--
-- Name: page_storytellers_by_story_type_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_story_type_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_story_type_days_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_story_type_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_story_type_days_id_seq OWNED BY page_storytellers_by_story_type_days.id;


--
-- Name: page_storytellers_by_story_type_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_story_type_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_story_type_months OWNER TO postgres;

--
-- Name: page_storytellers_by_story_type_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_story_type_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_story_type_months_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_story_type_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_story_type_months_id_seq OWNED BY page_storytellers_by_story_type_months.id;


--
-- Name: page_storytellers_by_story_type_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_storytellers_by_story_type_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_storytellers_by_story_type_weeks OWNER TO postgres;

--
-- Name: page_storytellers_by_story_type_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_storytellers_by_story_type_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_storytellers_by_story_type_weeks_id_seq OWNER TO postgres;

--
-- Name: page_storytellers_by_story_type_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_storytellers_by_story_type_weeks_id_seq OWNED BY page_storytellers_by_story_type_weeks.id;


--
-- Name: page_views_external_referrals_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_views_external_referrals_days (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_views_external_referrals_days OWNER TO postgres;

--
-- Name: page_views_external_referrals_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_views_external_referrals_days_archive (
    id integer NOT NULL,
    page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_views_external_referrals_days_archive OWNER TO postgres;

--
-- Name: page_views_external_referrals_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_views_external_referrals_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_views_external_referrals_days_id_seq OWNER TO postgres;

--
-- Name: page_views_external_referrals_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_views_external_referrals_days_id_seq OWNED BY page_views_external_referrals_days.id;


--
-- Name: page_views_external_referrals_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_views_external_referrals_months (
    id integer NOT NULL,
    page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_views_external_referrals_months OWNER TO postgres;

--
-- Name: page_views_external_referrals_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_views_external_referrals_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_views_external_referrals_months_id_seq OWNER TO postgres;

--
-- Name: page_views_external_referrals_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_views_external_referrals_months_id_seq OWNED BY page_views_external_referrals_months.id;


--
-- Name: page_views_external_referrals_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page_views_external_referrals_weeks (
    id integer NOT NULL,
    page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE page_views_external_referrals_weeks OWNER TO postgres;

--
-- Name: page_views_external_referrals_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_views_external_referrals_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_views_external_referrals_weeks_id_seq OWNER TO postgres;

--
-- Name: page_views_external_referrals_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_views_external_referrals_weeks_id_seq OWNED BY page_views_external_referrals_weeks.id;


--
-- Name: post_consumptions_by_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_consumptions_by_type (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_consumptions_by_type OWNER TO postgres;

--
-- Name: post_consumptions_by_type_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_consumptions_by_type_archive (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_consumptions_by_type_archive OWNER TO postgres;

--
-- Name: post_consumptions_by_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_consumptions_by_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_consumptions_by_type_id_seq OWNER TO postgres;

--
-- Name: post_consumptions_by_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_consumptions_by_type_id_seq OWNED BY post_consumptions_by_type.id;


--
-- Name: post_consumptions_by_type_unique; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_consumptions_by_type_unique (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_consumptions_by_type_unique OWNER TO postgres;

--
-- Name: post_consumptions_by_type_unique_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_consumptions_by_type_unique_archive (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_consumptions_by_type_unique_archive OWNER TO postgres;

--
-- Name: post_consumptions_by_type_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_consumptions_by_type_unique_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_consumptions_by_type_unique_id_seq OWNER TO postgres;

--
-- Name: post_consumptions_by_type_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_consumptions_by_type_unique_id_seq OWNED BY post_consumptions_by_type_unique.id;


--
-- Name: post_metrics; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_metrics (
    id integer NOT NULL,
    post_id character varying(64),
    page_id character varying(32),
    created_time timestamp without time zone,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    post_consumptions bigint,
    post_consumptions_unique bigint,
    post_impressions bigint,
    post_impressions_unique bigint,
    post_impressions_organic bigint,
    post_impressions_organic_unique bigint,
    post_impressions_paid bigint,
    post_impressions_paid_unique bigint,
    post_impressions_viral bigint,
    post_impressions_viral_unique bigint,
    post_negative_feedback bigint,
    post_negative_feedback_unique bigint,
    post_storytellers bigint,
    post_engaged_users bigint,
    post_stories bigint,
    post_story_adds bigint,
    post_story_adds_unique bigint,
    likes bigint,
    comments bigint,
    shares bigint,
    type character varying(32),
    updated_time timestamp without time zone,
    message text,
    caption text,
    story text,
    picture text,
    link text
);


ALTER TABLE post_metrics OWNER TO postgres;

--
-- Name: post_metrics_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_metrics_archive (
    id integer NOT NULL,
    post_id character varying(64),
    page_id character varying(32),
    created_time timestamp without time zone,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    post_consumptions bigint,
    post_consumptions_unique bigint,
    post_impressions bigint,
    post_impressions_unique bigint,
    post_impressions_organic bigint,
    post_impressions_organic_unique bigint,
    post_impressions_paid bigint,
    post_impressions_paid_unique bigint,
    post_impressions_viral bigint,
    post_impressions_viral_unique bigint,
    post_negative_feedback bigint,
    post_negative_feedback_unique bigint,
    post_storytellers bigint,
    post_engaged_users bigint,
    post_stories bigint,
    post_story_adds bigint,
    post_story_adds_unique bigint,
    likes bigint,
    comments bigint,
    shares bigint,
    type character varying(32),
    updated_time timestamp without time zone,
    message text,
    caption text,
    story text,
    picture text,
    link text
);


ALTER TABLE post_metrics_archive OWNER TO postgres;

--
-- Name: post_metrics_geotargets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_metrics_geotargets (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value integer
);


ALTER TABLE post_metrics_geotargets OWNER TO postgres;

--
-- Name: post_metrics_geotargets_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_metrics_geotargets_archive (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value integer
);


ALTER TABLE post_metrics_geotargets_archive OWNER TO postgres;

--
-- Name: post_metrics_geotargets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_metrics_geotargets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_metrics_geotargets_id_seq OWNER TO postgres;

--
-- Name: post_metrics_geotargets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_metrics_geotargets_id_seq OWNED BY post_metrics_geotargets.id;


--
-- Name: post_metrics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_metrics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_metrics_id_seq OWNER TO postgres;

--
-- Name: post_metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_metrics_id_seq OWNED BY post_metrics.id;


--
-- Name: post_negative_feedback_by_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_negative_feedback_by_type (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_negative_feedback_by_type OWNER TO postgres;

--
-- Name: post_negative_feedback_by_type_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_negative_feedback_by_type_archive (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_negative_feedback_by_type_archive OWNER TO postgres;

--
-- Name: post_negative_feedback_by_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_negative_feedback_by_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_negative_feedback_by_type_id_seq OWNER TO postgres;

--
-- Name: post_negative_feedback_by_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_negative_feedback_by_type_id_seq OWNED BY post_negative_feedback_by_type.id;


--
-- Name: post_negative_feedback_by_type_unique; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_negative_feedback_by_type_unique (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_negative_feedback_by_type_unique OWNER TO postgres;

--
-- Name: post_negative_feedback_by_type_unique_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_negative_feedback_by_type_unique_archive (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_negative_feedback_by_type_unique_archive OWNER TO postgres;

--
-- Name: post_negative_feedback_by_type_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_negative_feedback_by_type_unique_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_negative_feedback_by_type_unique_id_seq OWNER TO postgres;

--
-- Name: post_negative_feedback_by_type_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_negative_feedback_by_type_unique_id_seq OWNED BY post_negative_feedback_by_type_unique.id;


--
-- Name: post_stories_by_action_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_stories_by_action_type (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_stories_by_action_type OWNER TO postgres;

--
-- Name: post_stories_by_action_type_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_stories_by_action_type_archive (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_stories_by_action_type_archive OWNER TO postgres;

--
-- Name: post_stories_by_action_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_stories_by_action_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_stories_by_action_type_id_seq OWNER TO postgres;

--
-- Name: post_stories_by_action_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_stories_by_action_type_id_seq OWNED BY post_stories_by_action_type.id;


--
-- Name: post_story_adds_by_action_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_story_adds_by_action_type (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_story_adds_by_action_type OWNER TO postgres;

--
-- Name: post_story_adds_by_action_type_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_story_adds_by_action_type_archive (
    id integer NOT NULL,
    post_metrics_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE post_story_adds_by_action_type_archive OWNER TO postgres;

--
-- Name: post_story_adds_by_action_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_story_adds_by_action_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_story_adds_by_action_type_id_seq OWNER TO postgres;

--
-- Name: post_story_adds_by_action_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_story_adds_by_action_type_id_seq OWNED BY post_story_adds_by_action_type.id;


--
-- Name: rerollup_requests; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE rerollup_requests (
    id integer NOT NULL,
    metrics text,
    name text,
    reason text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE rerollup_requests OWNER TO postgres;

--
-- Name: rerollup_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rerollup_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rerollup_requests_id_seq OWNER TO postgres;

--
-- Name: rerollup_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE rerollup_requests_id_seq OWNED BY rerollup_requests.id;


--
-- Name: tumblr_page_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tumblr_page_metrics_days (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    followers bigint
);


ALTER TABLE tumblr_page_metrics_days OWNER TO postgres;

--
-- Name: tumblr_page_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tumblr_page_metrics_days_archive (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    followers bigint
);


ALTER TABLE tumblr_page_metrics_days_archive OWNER TO postgres;

--
-- Name: tumblr_page_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tumblr_page_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tumblr_page_metrics_days_id_seq OWNER TO postgres;

--
-- Name: tumblr_page_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tumblr_page_metrics_days_id_seq OWNED BY tumblr_page_metrics_days.id;


--
-- Name: tumblr_page_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tumblr_page_metrics_months (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    followers bigint
);


ALTER TABLE tumblr_page_metrics_months OWNER TO postgres;

--
-- Name: tumblr_page_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tumblr_page_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tumblr_page_metrics_months_id_seq OWNER TO postgres;

--
-- Name: tumblr_page_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tumblr_page_metrics_months_id_seq OWNED BY tumblr_page_metrics_months.id;


--
-- Name: tumblr_page_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tumblr_page_metrics_weeks (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    followers bigint
);


ALTER TABLE tumblr_page_metrics_weeks OWNER TO postgres;

--
-- Name: tumblr_page_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tumblr_page_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tumblr_page_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: tumblr_page_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tumblr_page_metrics_weeks_id_seq OWNED BY tumblr_page_metrics_weeks.id;


--
-- Name: tumblr_post_metadata; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tumblr_post_metadata (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    posted_at timestamp without time zone,
    author text,
    body text,
    permalink text,
    title text,
    description text,
    url text,
    image_url text,
    visibility character varying(255)
);


ALTER TABLE tumblr_post_metadata OWNER TO postgres;

--
-- Name: tumblr_post_metadata_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tumblr_post_metadata_archive (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    posted_at timestamp without time zone,
    author text,
    body text,
    permalink text,
    title text,
    description text,
    url text,
    image_url text,
    visibility character varying(255)
);


ALTER TABLE tumblr_post_metadata_archive OWNER TO postgres;

--
-- Name: tumblr_post_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tumblr_post_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tumblr_post_metadata_id_seq OWNER TO postgres;

--
-- Name: tumblr_post_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tumblr_post_metadata_id_seq OWNED BY tumblr_post_metadata.id;


--
-- Name: tumblr_post_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tumblr_post_metrics_days (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    shares bigint,
    comments bigint,
    total_likes bigint,
    total_shares bigint,
    total_comments bigint
);


ALTER TABLE tumblr_post_metrics_days OWNER TO postgres;

--
-- Name: tumblr_post_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tumblr_post_metrics_days_archive (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    shares bigint,
    comments bigint,
    total_likes bigint,
    total_shares bigint,
    total_comments bigint
);


ALTER TABLE tumblr_post_metrics_days_archive OWNER TO postgres;

--
-- Name: tumblr_post_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tumblr_post_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tumblr_post_metrics_days_id_seq OWNER TO postgres;

--
-- Name: tumblr_post_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tumblr_post_metrics_days_id_seq OWNED BY tumblr_post_metrics_days.id;


--
-- Name: tumblr_post_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tumblr_post_metrics_months (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    shares bigint,
    comments bigint,
    total_likes bigint,
    total_shares bigint,
    total_comments bigint
);


ALTER TABLE tumblr_post_metrics_months OWNER TO postgres;

--
-- Name: tumblr_post_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tumblr_post_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tumblr_post_metrics_months_id_seq OWNER TO postgres;

--
-- Name: tumblr_post_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tumblr_post_metrics_months_id_seq OWNED BY tumblr_post_metrics_months.id;


--
-- Name: tumblr_post_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tumblr_post_metrics_weeks (
    id integer NOT NULL,
    page_id character varying(255),
    post_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    likes bigint,
    shares bigint,
    comments bigint,
    total_likes bigint,
    total_shares bigint,
    total_comments bigint
);


ALTER TABLE tumblr_post_metrics_weeks OWNER TO postgres;

--
-- Name: tumblr_post_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tumblr_post_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tumblr_post_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: tumblr_post_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tumblr_post_metrics_weeks_id_seq OWNED BY tumblr_post_metrics_weeks.id;


--
-- Name: tweet_urls; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tweet_urls (
    id integer NOT NULL,
    tweets_id integer,
    url character varying(255),
    expanded_url text
);


ALTER TABLE tweet_urls OWNER TO postgres;

--
-- Name: tweet_urls_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tweet_urls_archive (
    id integer NOT NULL,
    tweets_id integer,
    url character varying(255),
    expanded_url text
);


ALTER TABLE tweet_urls_archive OWNER TO postgres;

--
-- Name: tweet_urls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tweet_urls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tweet_urls_id_seq OWNER TO postgres;

--
-- Name: tweet_urls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tweet_urls_id_seq OWNED BY tweet_urls.id;


--
-- Name: tweets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tweets (
    id integer NOT NULL,
    twitter_id character varying(255),
    stream_id character varying(255),
    tweeted_at timestamp without time zone,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    retweet_count bigint,
    favorite_count bigint,
    text character varying(255)
);


ALTER TABLE tweets OWNER TO postgres;

--
-- Name: tweets_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tweets_archive (
    id integer NOT NULL,
    twitter_id character varying(255),
    stream_id character varying(255),
    tweeted_at timestamp without time zone,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    retweet_count bigint,
    favorite_count bigint,
    text character varying(255)
);


ALTER TABLE tweets_archive OWNER TO postgres;

--
-- Name: tweets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tweets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tweets_id_seq OWNER TO postgres;

--
-- Name: tweets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tweets_id_seq OWNED BY tweets.id;


--
-- Name: twitter_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE twitter_metrics_days (
    id integer NOT NULL,
    stream_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint,
    listed_count bigint,
    mention_count bigint,
    reply_count bigint,
    retweet_count bigint,
    favorite_count bigint
);


ALTER TABLE twitter_metrics_days OWNER TO postgres;

--
-- Name: twitter_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE twitter_metrics_days_archive (
    id integer NOT NULL,
    stream_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint,
    listed_count bigint,
    mention_count bigint,
    reply_count bigint,
    retweet_count bigint,
    favorite_count bigint
);


ALTER TABLE twitter_metrics_days_archive OWNER TO postgres;

--
-- Name: twitter_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE twitter_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE twitter_metrics_days_id_seq OWNER TO postgres;

--
-- Name: twitter_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE twitter_metrics_days_id_seq OWNED BY twitter_metrics_days.id;


--
-- Name: twitter_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE twitter_metrics_months (
    id integer NOT NULL,
    stream_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint,
    listed_count bigint,
    mention_count bigint,
    reply_count bigint,
    retweet_count bigint,
    favorite_count bigint
);


ALTER TABLE twitter_metrics_months OWNER TO postgres;

--
-- Name: twitter_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE twitter_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE twitter_metrics_months_id_seq OWNER TO postgres;

--
-- Name: twitter_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE twitter_metrics_months_id_seq OWNED BY twitter_metrics_months.id;


--
-- Name: twitter_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE twitter_metrics_weeks (
    id integer NOT NULL,
    stream_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    follower_count bigint,
    listed_count bigint,
    mention_count bigint,
    reply_count bigint,
    retweet_count bigint,
    favorite_count bigint
);


ALTER TABLE twitter_metrics_weeks OWNER TO postgres;

--
-- Name: twitter_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE twitter_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE twitter_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: twitter_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE twitter_metrics_weeks_id_seq OWNED BY twitter_metrics_weeks.id;


--
-- Name: wechat_daily_article_read_source_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_article_read_source_days (
    id integer NOT NULL,
    wechat_page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_article_read_source_days OWNER TO postgres;

--
-- Name: wechat_daily_article_read_source_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_article_read_source_days_archive (
    id integer NOT NULL,
    wechat_page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_article_read_source_days_archive OWNER TO postgres;

--
-- Name: wechat_daily_article_read_source_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_article_read_source_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_article_read_source_days_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_article_read_source_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_article_read_source_days_id_seq OWNED BY wechat_daily_article_read_source_days.id;


--
-- Name: wechat_daily_article_read_source_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_article_read_source_months (
    id integer NOT NULL,
    wechat_page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_article_read_source_months OWNER TO postgres;

--
-- Name: wechat_daily_article_read_source_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_article_read_source_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_article_read_source_months_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_article_read_source_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_article_read_source_months_id_seq OWNED BY wechat_daily_article_read_source_months.id;


--
-- Name: wechat_daily_article_read_source_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_article_read_source_weeks (
    id integer NOT NULL,
    wechat_page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_article_read_source_weeks OWNER TO postgres;

--
-- Name: wechat_daily_article_read_source_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_article_read_source_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_article_read_source_weeks_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_article_read_source_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_article_read_source_weeks_id_seq OWNED BY wechat_daily_article_read_source_weeks.id;


--
-- Name: wechat_daily_article_shared_scene_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_article_shared_scene_days (
    id integer NOT NULL,
    wechat_page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_article_shared_scene_days OWNER TO postgres;

--
-- Name: wechat_daily_article_shared_scene_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_article_shared_scene_days_archive (
    id integer NOT NULL,
    wechat_page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_article_shared_scene_days_archive OWNER TO postgres;

--
-- Name: wechat_daily_article_shared_scene_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_article_shared_scene_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_article_shared_scene_days_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_article_shared_scene_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_article_shared_scene_days_id_seq OWNED BY wechat_daily_article_shared_scene_days.id;


--
-- Name: wechat_daily_article_shared_scene_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_article_shared_scene_months (
    id integer NOT NULL,
    wechat_page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_article_shared_scene_months OWNER TO postgres;

--
-- Name: wechat_daily_article_shared_scene_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_article_shared_scene_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_article_shared_scene_months_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_article_shared_scene_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_article_shared_scene_months_id_seq OWNED BY wechat_daily_article_shared_scene_months.id;


--
-- Name: wechat_daily_article_shared_scene_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_article_shared_scene_weeks (
    id integer NOT NULL,
    wechat_page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_article_shared_scene_weeks OWNER TO postgres;

--
-- Name: wechat_daily_article_shared_scene_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_article_shared_scene_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_article_shared_scene_weeks_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_article_shared_scene_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_article_shared_scene_weeks_id_seq OWNED BY wechat_daily_article_shared_scene_weeks.id;


--
-- Name: wechat_daily_msg_count_type_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_msg_count_type_days (
    id integer NOT NULL,
    wechat_page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_msg_count_type_days OWNER TO postgres;

--
-- Name: wechat_daily_msg_count_type_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_msg_count_type_days_archive (
    id integer NOT NULL,
    wechat_page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_msg_count_type_days_archive OWNER TO postgres;

--
-- Name: wechat_daily_msg_count_type_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_msg_count_type_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_msg_count_type_days_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_msg_count_type_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_msg_count_type_days_id_seq OWNED BY wechat_daily_msg_count_type_days.id;


--
-- Name: wechat_daily_msg_count_type_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_msg_count_type_months (
    id integer NOT NULL,
    wechat_page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_msg_count_type_months OWNER TO postgres;

--
-- Name: wechat_daily_msg_count_type_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_msg_count_type_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_msg_count_type_months_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_msg_count_type_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_msg_count_type_months_id_seq OWNED BY wechat_daily_msg_count_type_months.id;


--
-- Name: wechat_daily_msg_count_type_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_msg_count_type_weeks (
    id integer NOT NULL,
    wechat_page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_msg_count_type_weeks OWNER TO postgres;

--
-- Name: wechat_daily_msg_count_type_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_msg_count_type_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_msg_count_type_weeks_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_msg_count_type_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_msg_count_type_weeks_id_seq OWNED BY wechat_daily_msg_count_type_weeks.id;


--
-- Name: wechat_daily_msg_user_type_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_msg_user_type_days (
    id integer NOT NULL,
    wechat_page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_msg_user_type_days OWNER TO postgres;

--
-- Name: wechat_daily_msg_user_type_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_msg_user_type_days_archive (
    id integer NOT NULL,
    wechat_page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_msg_user_type_days_archive OWNER TO postgres;

--
-- Name: wechat_daily_msg_user_type_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_msg_user_type_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_msg_user_type_days_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_msg_user_type_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_msg_user_type_days_id_seq OWNED BY wechat_daily_msg_user_type_days.id;


--
-- Name: wechat_daily_msg_user_type_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_msg_user_type_months (
    id integer NOT NULL,
    wechat_page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_msg_user_type_months OWNER TO postgres;

--
-- Name: wechat_daily_msg_user_type_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_msg_user_type_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_msg_user_type_months_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_msg_user_type_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_msg_user_type_months_id_seq OWNED BY wechat_daily_msg_user_type_months.id;


--
-- Name: wechat_daily_msg_user_type_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_msg_user_type_weeks (
    id integer NOT NULL,
    wechat_page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_msg_user_type_weeks OWNER TO postgres;

--
-- Name: wechat_daily_msg_user_type_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_msg_user_type_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_msg_user_type_weeks_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_msg_user_type_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_msg_user_type_weeks_id_seq OWNED BY wechat_daily_msg_user_type_weeks.id;


--
-- Name: wechat_daily_user_followed_source_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_user_followed_source_days (
    id integer NOT NULL,
    wechat_page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_user_followed_source_days OWNER TO postgres;

--
-- Name: wechat_daily_user_followed_source_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_user_followed_source_days_archive (
    id integer NOT NULL,
    wechat_page_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_user_followed_source_days_archive OWNER TO postgres;

--
-- Name: wechat_daily_user_followed_source_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_user_followed_source_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_user_followed_source_days_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_user_followed_source_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_user_followed_source_days_id_seq OWNED BY wechat_daily_user_followed_source_days.id;


--
-- Name: wechat_daily_user_followed_source_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_user_followed_source_months (
    id integer NOT NULL,
    wechat_page_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_user_followed_source_months OWNER TO postgres;

--
-- Name: wechat_daily_user_followed_source_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_user_followed_source_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_user_followed_source_months_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_user_followed_source_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_user_followed_source_months_id_seq OWNED BY wechat_daily_user_followed_source_months.id;


--
-- Name: wechat_daily_user_followed_source_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_daily_user_followed_source_weeks (
    id integer NOT NULL,
    wechat_page_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE wechat_daily_user_followed_source_weeks OWNER TO postgres;

--
-- Name: wechat_daily_user_followed_source_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_daily_user_followed_source_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_daily_user_followed_source_weeks_id_seq OWNER TO postgres;

--
-- Name: wechat_daily_user_followed_source_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_daily_user_followed_source_weeks_id_seq OWNED BY wechat_daily_user_followed_source_weeks.id;


--
-- Name: wechat_page_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_page_metrics_days (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    daily_new_followers bigint,
    daily_cancel_followers bigint,
    daily_msg_user bigint,
    daily_msg_count bigint,
    daily_intermediate_page_read_user bigint,
    daily_intermediate_page_read_count bigint,
    daily_original_page_read_user bigint,
    daily_original_page_read_count bigint,
    daily_share_user bigint,
    daily_share_count bigint,
    daily_add_to_fav_user bigint,
    daily_add_to_fav_count bigint,
    daily_followers_changes bigint
);


ALTER TABLE wechat_page_metrics_days OWNER TO postgres;

--
-- Name: wechat_page_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_page_metrics_days_archive (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    daily_new_followers bigint,
    daily_cancel_followers bigint,
    daily_msg_user bigint,
    daily_msg_count bigint,
    daily_intermediate_page_read_user bigint,
    daily_intermediate_page_read_count bigint,
    daily_original_page_read_user bigint,
    daily_original_page_read_count bigint,
    daily_share_user bigint,
    daily_share_count bigint,
    daily_add_to_fav_user bigint,
    daily_add_to_fav_count bigint,
    daily_followers_changes bigint
);


ALTER TABLE wechat_page_metrics_days_archive OWNER TO postgres;

--
-- Name: wechat_page_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_page_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_page_metrics_days_id_seq OWNER TO postgres;

--
-- Name: wechat_page_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_page_metrics_days_id_seq OWNED BY wechat_page_metrics_days.id;


--
-- Name: wechat_page_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_page_metrics_months (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    daily_new_followers bigint,
    daily_cancel_followers bigint,
    daily_msg_user bigint,
    daily_msg_count bigint,
    daily_intermediate_page_read_user bigint,
    daily_intermediate_page_read_count bigint,
    daily_original_page_read_user bigint,
    daily_original_page_read_count bigint,
    daily_share_user bigint,
    daily_share_count bigint,
    daily_add_to_fav_user bigint,
    daily_add_to_fav_count bigint,
    daily_followers_changes bigint
);


ALTER TABLE wechat_page_metrics_months OWNER TO postgres;

--
-- Name: wechat_page_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_page_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_page_metrics_months_id_seq OWNER TO postgres;

--
-- Name: wechat_page_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_page_metrics_months_id_seq OWNED BY wechat_page_metrics_months.id;


--
-- Name: wechat_page_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wechat_page_metrics_weeks (
    id integer NOT NULL,
    page_id character varying(255),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    total_followers bigint,
    daily_new_followers bigint,
    daily_cancel_followers bigint,
    daily_msg_user bigint,
    daily_msg_count bigint,
    daily_intermediate_page_read_user bigint,
    daily_intermediate_page_read_count bigint,
    daily_original_page_read_user bigint,
    daily_original_page_read_count bigint,
    daily_share_user bigint,
    daily_share_count bigint,
    daily_add_to_fav_user bigint,
    daily_add_to_fav_count bigint,
    daily_followers_changes bigint
);


ALTER TABLE wechat_page_metrics_weeks OWNER TO postgres;

--
-- Name: wechat_page_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wechat_page_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wechat_page_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: wechat_page_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wechat_page_metrics_weeks_id_seq OWNED BY wechat_page_metrics_weeks.id;


--
-- Name: youtube_channel_comments_by_country_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_comments_by_country_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_comments_by_country_days OWNER TO postgres;

--
-- Name: youtube_channel_comments_by_country_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_comments_by_country_days_archive (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_comments_by_country_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_comments_by_country_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_comments_by_country_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_comments_by_country_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_comments_by_country_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_comments_by_country_days_id_seq OWNED BY youtube_channel_comments_by_country_days.id;


--
-- Name: youtube_channel_comments_by_country_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_comments_by_country_months (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_comments_by_country_months OWNER TO postgres;

--
-- Name: youtube_channel_comments_by_country_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_comments_by_country_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_comments_by_country_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_comments_by_country_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_comments_by_country_months_id_seq OWNED BY youtube_channel_comments_by_country_months.id;


--
-- Name: youtube_channel_comments_by_country_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_comments_by_country_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_comments_by_country_weeks OWNER TO postgres;

--
-- Name: youtube_channel_comments_by_country_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_comments_by_country_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_comments_by_country_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_comments_by_country_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_comments_by_country_weeks_id_seq OWNED BY youtube_channel_comments_by_country_weeks.id;


--
-- Name: youtube_channel_dislikes_by_country_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_dislikes_by_country_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_dislikes_by_country_days OWNER TO postgres;

--
-- Name: youtube_channel_dislikes_by_country_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_dislikes_by_country_days_archive (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_dislikes_by_country_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_dislikes_by_country_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_dislikes_by_country_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_dislikes_by_country_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_dislikes_by_country_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_dislikes_by_country_days_id_seq OWNED BY youtube_channel_dislikes_by_country_days.id;


--
-- Name: youtube_channel_dislikes_by_country_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_dislikes_by_country_months (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_dislikes_by_country_months OWNER TO postgres;

--
-- Name: youtube_channel_dislikes_by_country_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_dislikes_by_country_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_dislikes_by_country_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_dislikes_by_country_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_dislikes_by_country_months_id_seq OWNED BY youtube_channel_dislikes_by_country_months.id;


--
-- Name: youtube_channel_dislikes_by_country_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_dislikes_by_country_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_dislikes_by_country_weeks OWNER TO postgres;

--
-- Name: youtube_channel_dislikes_by_country_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_dislikes_by_country_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_dislikes_by_country_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_dislikes_by_country_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_dislikes_by_country_weeks_id_seq OWNED BY youtube_channel_dislikes_by_country_weeks.id;


--
-- Name: youtube_channel_favorites_added_by_country_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_favorites_added_by_country_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_favorites_added_by_country_days OWNER TO postgres;

--
-- Name: youtube_channel_favorites_added_by_country_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_favorites_added_by_country_days_archive (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_favorites_added_by_country_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_favorites_added_by_country_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_favorites_added_by_country_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_favorites_added_by_country_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_favorites_added_by_country_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_favorites_added_by_country_days_id_seq OWNED BY youtube_channel_favorites_added_by_country_days.id;


--
-- Name: youtube_channel_favorites_added_by_country_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_favorites_added_by_country_months (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_favorites_added_by_country_months OWNER TO postgres;

--
-- Name: youtube_channel_favorites_added_by_country_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_favorites_added_by_country_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_favorites_added_by_country_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_favorites_added_by_country_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_favorites_added_by_country_months_id_seq OWNED BY youtube_channel_favorites_added_by_country_months.id;


--
-- Name: youtube_channel_favorites_added_by_country_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_favorites_added_by_country_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_favorites_added_by_country_weeks OWNER TO postgres;

--
-- Name: youtube_channel_favorites_added_by_country_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_favorites_added_by_country_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_favorites_added_by_country_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_favorites_added_by_country_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_favorites_added_by_country_weeks_id_seq OWNED BY youtube_channel_favorites_added_by_country_weeks.id;


--
-- Name: youtube_channel_favorites_removed_by_country_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_favorites_removed_by_country_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_favorites_removed_by_country_days OWNER TO postgres;

--
-- Name: youtube_channel_favorites_removed_by_country_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_favorites_removed_by_country_days_archive (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_favorites_removed_by_country_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_favorites_removed_by_country_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_favorites_removed_by_country_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_favorites_removed_by_country_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_favorites_removed_by_country_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_favorites_removed_by_country_days_id_seq OWNED BY youtube_channel_favorites_removed_by_country_days.id;


--
-- Name: youtube_channel_favorites_removed_by_country_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_favorites_removed_by_country_months (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_favorites_removed_by_country_months OWNER TO postgres;

--
-- Name: youtube_channel_favorites_removed_by_country_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_favorites_removed_by_country_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_favorites_removed_by_country_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_favorites_removed_by_country_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_favorites_removed_by_country_months_id_seq OWNED BY youtube_channel_favorites_removed_by_country_months.id;


--
-- Name: youtube_channel_favorites_removed_by_country_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_favorites_removed_by_country_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_favorites_removed_by_country_weeks OWNER TO postgres;

--
-- Name: youtube_channel_favorites_removed_by_country_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_favorites_removed_by_country_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_favorites_removed_by_country_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_favorites_removed_by_country_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_favorites_removed_by_country_weeks_id_seq OWNED BY youtube_channel_favorites_removed_by_country_weeks.id;


--
-- Name: youtube_channel_likes_by_country_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_likes_by_country_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_likes_by_country_days OWNER TO postgres;

--
-- Name: youtube_channel_likes_by_country_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_likes_by_country_days_archive (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_likes_by_country_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_likes_by_country_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_likes_by_country_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_likes_by_country_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_likes_by_country_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_likes_by_country_days_id_seq OWNED BY youtube_channel_likes_by_country_days.id;


--
-- Name: youtube_channel_likes_by_country_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_likes_by_country_months (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_likes_by_country_months OWNER TO postgres;

--
-- Name: youtube_channel_likes_by_country_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_likes_by_country_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_likes_by_country_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_likes_by_country_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_likes_by_country_months_id_seq OWNED BY youtube_channel_likes_by_country_months.id;


--
-- Name: youtube_channel_likes_by_country_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_likes_by_country_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_likes_by_country_weeks OWNER TO postgres;

--
-- Name: youtube_channel_likes_by_country_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_likes_by_country_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_likes_by_country_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_likes_by_country_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_likes_by_country_weeks_id_seq OWNED BY youtube_channel_likes_by_country_weeks.id;


--
-- Name: youtube_channel_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_metrics_days (
    id integer NOT NULL,
    channel_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    views bigint,
    uniques bigint,
    comments bigint,
    likes bigint,
    dislikes bigint,
    shares bigint,
    favorites_added bigint,
    favorites_removed bigint,
    subscribers_gained bigint,
    subscribers_lost bigint,
    average_view_duration double precision,
    estimated_minutes_watched double precision,
    annotation_click_through_rate double precision,
    annotation_close_rate double precision,
    average_view_percentage double precision
);


ALTER TABLE youtube_channel_metrics_days OWNER TO postgres;

--
-- Name: youtube_channel_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_metrics_days_archive (
    id integer NOT NULL,
    channel_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    views bigint,
    uniques bigint,
    comments bigint,
    likes bigint,
    dislikes bigint,
    shares bigint,
    favorites_added bigint,
    favorites_removed bigint,
    subscribers_gained bigint,
    subscribers_lost bigint,
    average_view_duration double precision,
    estimated_minutes_watched double precision,
    annotation_click_through_rate double precision,
    annotation_close_rate double precision,
    average_view_percentage double precision
);


ALTER TABLE youtube_channel_metrics_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_metrics_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_metrics_days_id_seq OWNED BY youtube_channel_metrics_days.id;


--
-- Name: youtube_channel_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_metrics_months (
    id integer NOT NULL,
    channel_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    views bigint,
    uniques bigint,
    comments bigint,
    likes bigint,
    dislikes bigint,
    shares bigint,
    favorites_added bigint,
    favorites_removed bigint,
    subscribers_gained bigint,
    subscribers_lost bigint,
    average_view_duration double precision,
    estimated_minutes_watched double precision,
    annotation_click_through_rate double precision,
    annotation_close_rate double precision,
    average_view_percentage double precision
);


ALTER TABLE youtube_channel_metrics_months OWNER TO postgres;

--
-- Name: youtube_channel_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_metrics_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_metrics_months_id_seq OWNED BY youtube_channel_metrics_months.id;


--
-- Name: youtube_channel_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_metrics_weeks (
    id integer NOT NULL,
    channel_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    views bigint,
    uniques bigint,
    comments bigint,
    likes bigint,
    dislikes bigint,
    shares bigint,
    favorites_added bigint,
    favorites_removed bigint,
    subscribers_gained bigint,
    subscribers_lost bigint,
    average_view_duration double precision,
    estimated_minutes_watched double precision,
    annotation_click_through_rate double precision,
    annotation_close_rate double precision,
    average_view_percentage double precision
);


ALTER TABLE youtube_channel_metrics_weeks OWNER TO postgres;

--
-- Name: youtube_channel_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_metrics_weeks_id_seq OWNED BY youtube_channel_metrics_weeks.id;


--
-- Name: youtube_channel_shares_by_country_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_shares_by_country_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_shares_by_country_days OWNER TO postgres;

--
-- Name: youtube_channel_shares_by_country_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_shares_by_country_days_archive (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_shares_by_country_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_shares_by_country_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_shares_by_country_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_shares_by_country_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_shares_by_country_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_shares_by_country_days_id_seq OWNED BY youtube_channel_shares_by_country_days.id;


--
-- Name: youtube_channel_shares_by_country_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_shares_by_country_months (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_shares_by_country_months OWNER TO postgres;

--
-- Name: youtube_channel_shares_by_country_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_shares_by_country_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_shares_by_country_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_shares_by_country_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_shares_by_country_months_id_seq OWNED BY youtube_channel_shares_by_country_months.id;


--
-- Name: youtube_channel_shares_by_country_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_shares_by_country_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_shares_by_country_weeks OWNER TO postgres;

--
-- Name: youtube_channel_shares_by_country_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_shares_by_country_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_shares_by_country_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_shares_by_country_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_shares_by_country_weeks_id_seq OWNED BY youtube_channel_shares_by_country_weeks.id;


--
-- Name: youtube_channel_subscribers_gained_by_country_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_subscribers_gained_by_country_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_subscribers_gained_by_country_days OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_gained_by_country_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_subscribers_gained_by_country_days_archive (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_subscribers_gained_by_country_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_gained_by_country_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_subscribers_gained_by_country_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_subscribers_gained_by_country_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_gained_by_country_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_subscribers_gained_by_country_days_id_seq OWNED BY youtube_channel_subscribers_gained_by_country_days.id;


--
-- Name: youtube_channel_subscribers_gained_by_country_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_subscribers_gained_by_country_months (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_subscribers_gained_by_country_months OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_gained_by_country_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_subscribers_gained_by_country_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_subscribers_gained_by_country_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_gained_by_country_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_subscribers_gained_by_country_months_id_seq OWNED BY youtube_channel_subscribers_gained_by_country_months.id;


--
-- Name: youtube_channel_subscribers_gained_by_country_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_subscribers_gained_by_country_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_subscribers_gained_by_country_weeks OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_gained_by_country_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_subscribers_gained_by_country_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_subscribers_gained_by_country_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_gained_by_country_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_subscribers_gained_by_country_weeks_id_seq OWNED BY youtube_channel_subscribers_gained_by_country_weeks.id;


--
-- Name: youtube_channel_subscribers_lost_by_country_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_subscribers_lost_by_country_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_subscribers_lost_by_country_days OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_lost_by_country_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_subscribers_lost_by_country_days_archive (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_subscribers_lost_by_country_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_lost_by_country_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_subscribers_lost_by_country_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_subscribers_lost_by_country_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_lost_by_country_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_subscribers_lost_by_country_days_id_seq OWNED BY youtube_channel_subscribers_lost_by_country_days.id;


--
-- Name: youtube_channel_subscribers_lost_by_country_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_subscribers_lost_by_country_months (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_subscribers_lost_by_country_months OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_lost_by_country_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_subscribers_lost_by_country_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_subscribers_lost_by_country_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_lost_by_country_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_subscribers_lost_by_country_months_id_seq OWNED BY youtube_channel_subscribers_lost_by_country_months.id;


--
-- Name: youtube_channel_subscribers_lost_by_country_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_subscribers_lost_by_country_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_subscribers_lost_by_country_weeks OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_lost_by_country_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_subscribers_lost_by_country_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_subscribers_lost_by_country_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_subscribers_lost_by_country_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_subscribers_lost_by_country_weeks_id_seq OWNED BY youtube_channel_subscribers_lost_by_country_weeks.id;


--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gender_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_age_group_and_gender_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_and_gender_weeks OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq1 OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq1 OWNED BY youtube_channel_viewer_percentage_by_age_group_and_gender_weeks.id;


--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gender_month; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_age_group_and_gender_month (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_and_gender_month OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq2 OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq2 OWNED BY youtube_channel_viewer_percentage_by_age_group_and_gender_month.id;


--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gender_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_age_group_and_gender_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_and_gender_days OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gende_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_viewer_percentage_by_age_group_and_gende_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_and_gende_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gende_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_viewer_percentage_by_age_group_and_gende_id_seq OWNED BY youtube_channel_viewer_percentage_by_age_group_and_gender_days.id;


--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gender_days_; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_age_group_and_gender_days_ (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_and_gender_days_ OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_age_group_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_days OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_age_group_days_archive (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_viewer_percentage_by_age_group_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_viewer_percentage_by_age_group_days_id_seq OWNED BY youtube_channel_viewer_percentage_by_age_group_days.id;


--
-- Name: youtube_channel_viewer_percentage_by_age_group_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_age_group_months (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_months OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_viewer_percentage_by_age_group_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_viewer_percentage_by_age_group_months_id_seq OWNED BY youtube_channel_viewer_percentage_by_age_group_months.id;


--
-- Name: youtube_channel_viewer_percentage_by_age_group_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_age_group_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_weeks OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_viewer_percentage_by_age_group_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_viewer_percentage_by_age_group_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_age_group_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_viewer_percentage_by_age_group_weeks_id_seq OWNED BY youtube_channel_viewer_percentage_by_age_group_weeks.id;


--
-- Name: youtube_channel_viewer_percentage_by_gender_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_gender_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_gender_days OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_gender_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_gender_days_archive (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_gender_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_gender_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_viewer_percentage_by_gender_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_viewer_percentage_by_gender_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_gender_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_viewer_percentage_by_gender_days_id_seq OWNED BY youtube_channel_viewer_percentage_by_gender_days.id;


--
-- Name: youtube_channel_viewer_percentage_by_gender_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_gender_months (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_gender_months OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_gender_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_viewer_percentage_by_gender_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_viewer_percentage_by_gender_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_gender_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_viewer_percentage_by_gender_months_id_seq OWNED BY youtube_channel_viewer_percentage_by_gender_months.id;


--
-- Name: youtube_channel_viewer_percentage_by_gender_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_viewer_percentage_by_gender_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value double precision
);


ALTER TABLE youtube_channel_viewer_percentage_by_gender_weeks OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_gender_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_viewer_percentage_by_gender_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_viewer_percentage_by_gender_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_viewer_percentage_by_gender_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_viewer_percentage_by_gender_weeks_id_seq OWNED BY youtube_channel_viewer_percentage_by_gender_weeks.id;


--
-- Name: youtube_channel_views_by_country_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_views_by_country_days (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_views_by_country_days OWNER TO postgres;

--
-- Name: youtube_channel_views_by_country_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_views_by_country_days_archive (
    id integer NOT NULL,
    youtube_channel_metrics_day_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_views_by_country_days_archive OWNER TO postgres;

--
-- Name: youtube_channel_views_by_country_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_views_by_country_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_views_by_country_days_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_views_by_country_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_views_by_country_days_id_seq OWNED BY youtube_channel_views_by_country_days.id;


--
-- Name: youtube_channel_views_by_country_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_views_by_country_months (
    id integer NOT NULL,
    youtube_channel_metrics_month_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_views_by_country_months OWNER TO postgres;

--
-- Name: youtube_channel_views_by_country_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_views_by_country_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_views_by_country_months_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_views_by_country_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_views_by_country_months_id_seq OWNED BY youtube_channel_views_by_country_months.id;


--
-- Name: youtube_channel_views_by_country_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_channel_views_by_country_weeks (
    id integer NOT NULL,
    youtube_channel_metrics_week_id integer,
    name_id integer,
    value bigint
);


ALTER TABLE youtube_channel_views_by_country_weeks OWNER TO postgres;

--
-- Name: youtube_channel_views_by_country_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_channel_views_by_country_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_channel_views_by_country_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_channel_views_by_country_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_channel_views_by_country_weeks_id_seq OWNED BY youtube_channel_views_by_country_weeks.id;


--
-- Name: youtube_video_metadata; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_video_metadata (
    id integer NOT NULL,
    channel_id character varying(32),
    video_id character varying(32),
    published_at timestamp without time zone,
    title text
);


ALTER TABLE youtube_video_metadata OWNER TO postgres;

--
-- Name: youtube_video_metadata_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_video_metadata_archive (
    id integer NOT NULL,
    channel_id character varying(32),
    video_id character varying(32),
    published_at timestamp without time zone,
    title text
);


ALTER TABLE youtube_video_metadata_archive OWNER TO postgres;

--
-- Name: youtube_video_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_video_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_video_metadata_id_seq OWNER TO postgres;

--
-- Name: youtube_video_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_video_metadata_id_seq OWNED BY youtube_video_metadata.id;


--
-- Name: youtube_video_metrics_days; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_video_metrics_days (
    id integer NOT NULL,
    channel_id character varying(32),
    video_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    views bigint,
    uniques bigint,
    comments bigint,
    likes bigint,
    dislikes bigint,
    shares bigint,
    favorites_added bigint,
    favorites_removed bigint,
    subscribers_gained bigint,
    subscribers_lost bigint,
    average_view_duration bigint,
    estimated_minutes_watched bigint,
    annotation_click_through_rate double precision,
    annotation_close_rate double precision,
    average_view_percentage double precision
);


ALTER TABLE youtube_video_metrics_days OWNER TO postgres;

--
-- Name: youtube_video_metrics_days_archive; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_video_metrics_days_archive (
    id integer NOT NULL,
    channel_id character varying(32),
    video_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    views bigint,
    uniques bigint,
    comments bigint,
    likes bigint,
    dislikes bigint,
    shares bigint,
    favorites_added bigint,
    favorites_removed bigint,
    subscribers_gained bigint,
    subscribers_lost bigint,
    average_view_duration bigint,
    estimated_minutes_watched bigint,
    annotation_click_through_rate double precision,
    annotation_close_rate double precision,
    average_view_percentage double precision
);


ALTER TABLE youtube_video_metrics_days_archive OWNER TO postgres;

--
-- Name: youtube_video_metrics_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_video_metrics_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_video_metrics_days_id_seq OWNER TO postgres;

--
-- Name: youtube_video_metrics_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_video_metrics_days_id_seq OWNED BY youtube_video_metrics_days.id;


--
-- Name: youtube_video_metrics_months; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_video_metrics_months (
    id integer NOT NULL,
    channel_id character varying(32),
    video_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    views bigint,
    uniques bigint,
    comments bigint,
    likes bigint,
    dislikes bigint,
    shares bigint,
    favorites_added bigint,
    favorites_removed bigint,
    subscribers_gained bigint,
    subscribers_lost bigint,
    average_view_duration bigint,
    estimated_minutes_watched bigint,
    annotation_click_through_rate double precision,
    annotation_close_rate double precision,
    average_view_percentage double precision
);


ALTER TABLE youtube_video_metrics_months OWNER TO postgres;

--
-- Name: youtube_video_metrics_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_video_metrics_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_video_metrics_months_id_seq OWNER TO postgres;

--
-- Name: youtube_video_metrics_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_video_metrics_months_id_seq OWNED BY youtube_video_metrics_months.id;


--
-- Name: youtube_video_metrics_weeks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youtube_video_metrics_weeks (
    id integer NOT NULL,
    channel_id character varying(32),
    video_id character varying(32),
    date date,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    views bigint,
    uniques bigint,
    comments bigint,
    likes bigint,
    dislikes bigint,
    shares bigint,
    favorites_added bigint,
    favorites_removed bigint,
    subscribers_gained bigint,
    subscribers_lost bigint,
    average_view_duration bigint,
    estimated_minutes_watched bigint,
    annotation_click_through_rate double precision,
    annotation_close_rate double precision,
    average_view_percentage double precision
);


ALTER TABLE youtube_video_metrics_weeks OWNER TO postgres;

--
-- Name: youtube_video_metrics_weeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youtube_video_metrics_weeks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE youtube_video_metrics_weeks_id_seq OWNER TO postgres;

--
-- Name: youtube_video_metrics_weeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youtube_video_metrics_weeks_id_seq OWNED BY youtube_video_metrics_weeks.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY api_keys ALTER COLUMN id SET DEFAULT nextval('api_keys_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY backfill_requests ALTER COLUMN id SET DEFAULT nextval('backfill_requests_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY googleplus_circle_metadata ALTER COLUMN id SET DEFAULT nextval('googleplus_circle_metadata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY googleplus_circle_metrics_days ALTER COLUMN id SET DEFAULT nextval('googleplus_circle_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY googleplus_circle_metrics_months ALTER COLUMN id SET DEFAULT nextval('googleplus_circle_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY googleplus_circle_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('googleplus_circle_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY googleplus_page_metrics_days ALTER COLUMN id SET DEFAULT nextval('googleplus_page_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY googleplus_page_metrics_months ALTER COLUMN id SET DEFAULT nextval('googleplus_page_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY googleplus_page_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('googleplus_page_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY googleplus_post_metadata ALTER COLUMN id SET DEFAULT nextval('googleplus_post_metadata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY googleplus_post_metrics_days ALTER COLUMN id SET DEFAULT nextval('googleplus_post_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY googleplus_post_metrics_months ALTER COLUMN id SET DEFAULT nextval('googleplus_post_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY googleplus_post_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('googleplus_post_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY instagram_page_metrics_days ALTER COLUMN id SET DEFAULT nextval('instagram_page_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY instagram_page_metrics_months ALTER COLUMN id SET DEFAULT nextval('instagram_page_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY instagram_page_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('instagram_page_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY instagram_post_metadata ALTER COLUMN id SET DEFAULT nextval('instagram_post_metadata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY instagram_post_metrics_days ALTER COLUMN id SET DEFAULT nextval('instagram_post_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY instagram_post_metrics_months ALTER COLUMN id SET DEFAULT nextval('instagram_post_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY instagram_post_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('instagram_post_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linkedin_page_metrics_days ALTER COLUMN id SET DEFAULT nextval('linkedin_page_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linkedin_page_metrics_months ALTER COLUMN id SET DEFAULT nextval('linkedin_page_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linkedin_page_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('linkedin_page_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linkedin_post_metadata ALTER COLUMN id SET DEFAULT nextval('linkedin_post_metadata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linkedin_post_metrics_days ALTER COLUMN id SET DEFAULT nextval('linkedin_post_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linkedin_post_metrics_months ALTER COLUMN id SET DEFAULT nextval('linkedin_post_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linkedin_post_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('linkedin_post_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY names ALTER COLUMN id SET DEFAULT nextval('names_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_consumptions_by_consumption_type_days ALTER COLUMN id SET DEFAULT nextval('page_consumptions_by_consumption_type_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_consumptions_by_consumption_type_months ALTER COLUMN id SET DEFAULT nextval('page_consumptions_by_consumption_type_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_consumptions_by_consumption_type_weeks ALTER COLUMN id SET DEFAULT nextval('page_consumptions_by_consumption_type_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_by_like_source_days ALTER COLUMN id SET DEFAULT nextval('page_fans_by_like_source_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_by_like_source_months ALTER COLUMN id SET DEFAULT nextval('page_fans_by_like_source_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_by_like_source_weeks ALTER COLUMN id SET DEFAULT nextval('page_fans_by_like_source_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_city_days ALTER COLUMN id SET DEFAULT nextval('page_fans_city_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_city_months ALTER COLUMN id SET DEFAULT nextval('page_fans_city_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_city_weeks ALTER COLUMN id SET DEFAULT nextval('page_fans_city_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_country_days ALTER COLUMN id SET DEFAULT nextval('page_fans_country_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_country_months ALTER COLUMN id SET DEFAULT nextval('page_fans_country_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_country_weeks ALTER COLUMN id SET DEFAULT nextval('page_fans_country_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_gender_age_days ALTER COLUMN id SET DEFAULT nextval('page_fans_gender_age_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_gender_age_months ALTER COLUMN id SET DEFAULT nextval('page_fans_gender_age_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_gender_age_weeks ALTER COLUMN id SET DEFAULT nextval('page_fans_gender_age_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_locale_days ALTER COLUMN id SET DEFAULT nextval('page_fans_locale_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_locale_months ALTER COLUMN id SET DEFAULT nextval('page_fans_locale_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_fans_locale_weeks ALTER COLUMN id SET DEFAULT nextval('page_fans_locale_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_age_gender_unique_days ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_age_gender_unique_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_age_gender_unique_months ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_age_gender_unique_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_age_gender_unique_weeks ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_age_gender_unique_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_city_unique_days ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_city_unique_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_city_unique_months ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_city_unique_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_city_unique_weeks ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_city_unique_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_country_unique_days ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_country_unique_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_country_unique_months ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_country_unique_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_country_unique_weeks ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_country_unique_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_locale_unique_days ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_locale_unique_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_locale_unique_months ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_locale_unique_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_locale_unique_weeks ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_locale_unique_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_story_type_days ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_story_type_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_story_type_months ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_story_type_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_story_type_unique_days ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_story_type_unique_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_story_type_unique_months ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_story_type_unique_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_story_type_unique_weeks ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_story_type_unique_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_impressions_by_story_type_weeks ALTER COLUMN id SET DEFAULT nextval('page_impressions_by_story_type_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_metrics_days ALTER COLUMN id SET DEFAULT nextval('page_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_metrics_months ALTER COLUMN id SET DEFAULT nextval('page_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('page_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_negative_feedback_by_type_days ALTER COLUMN id SET DEFAULT nextval('page_negative_feedback_by_type_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_negative_feedback_by_type_months ALTER COLUMN id SET DEFAULT nextval('page_negative_feedback_by_type_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_negative_feedback_by_type_weeks ALTER COLUMN id SET DEFAULT nextval('page_negative_feedback_by_type_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_stories_by_story_type_days ALTER COLUMN id SET DEFAULT nextval('page_stories_by_story_type_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_stories_by_story_type_months ALTER COLUMN id SET DEFAULT nextval('page_stories_by_story_type_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_stories_by_story_type_weeks ALTER COLUMN id SET DEFAULT nextval('page_stories_by_story_type_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_age_gender_days ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_age_gender_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_age_gender_months ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_age_gender_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_age_gender_weeks ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_age_gender_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_city_days ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_city_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_city_months ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_city_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_city_weeks ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_city_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_country_days ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_country_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_country_months ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_country_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_country_weeks ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_country_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_locale_days ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_locale_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_locale_months ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_locale_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_locale_weeks ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_locale_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_story_type_days ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_story_type_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_story_type_months ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_story_type_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_storytellers_by_story_type_weeks ALTER COLUMN id SET DEFAULT nextval('page_storytellers_by_story_type_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_views_external_referrals_days ALTER COLUMN id SET DEFAULT nextval('page_views_external_referrals_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_views_external_referrals_months ALTER COLUMN id SET DEFAULT nextval('page_views_external_referrals_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_views_external_referrals_weeks ALTER COLUMN id SET DEFAULT nextval('page_views_external_referrals_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_consumptions_by_type ALTER COLUMN id SET DEFAULT nextval('post_consumptions_by_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_consumptions_by_type_unique ALTER COLUMN id SET DEFAULT nextval('post_consumptions_by_type_unique_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_metrics ALTER COLUMN id SET DEFAULT nextval('post_metrics_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_metrics_geotargets ALTER COLUMN id SET DEFAULT nextval('post_metrics_geotargets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_negative_feedback_by_type ALTER COLUMN id SET DEFAULT nextval('post_negative_feedback_by_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_negative_feedback_by_type_unique ALTER COLUMN id SET DEFAULT nextval('post_negative_feedback_by_type_unique_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_stories_by_action_type ALTER COLUMN id SET DEFAULT nextval('post_stories_by_action_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_story_adds_by_action_type ALTER COLUMN id SET DEFAULT nextval('post_story_adds_by_action_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rerollup_requests ALTER COLUMN id SET DEFAULT nextval('rerollup_requests_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tumblr_page_metrics_days ALTER COLUMN id SET DEFAULT nextval('tumblr_page_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tumblr_page_metrics_months ALTER COLUMN id SET DEFAULT nextval('tumblr_page_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tumblr_page_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('tumblr_page_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tumblr_post_metadata ALTER COLUMN id SET DEFAULT nextval('tumblr_post_metadata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tumblr_post_metrics_days ALTER COLUMN id SET DEFAULT nextval('tumblr_post_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tumblr_post_metrics_months ALTER COLUMN id SET DEFAULT nextval('tumblr_post_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tumblr_post_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('tumblr_post_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tweet_urls ALTER COLUMN id SET DEFAULT nextval('tweet_urls_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tweets ALTER COLUMN id SET DEFAULT nextval('tweets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_metrics_days ALTER COLUMN id SET DEFAULT nextval('twitter_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_metrics_months ALTER COLUMN id SET DEFAULT nextval('twitter_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('twitter_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_article_read_source_days ALTER COLUMN id SET DEFAULT nextval('wechat_daily_article_read_source_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_article_read_source_months ALTER COLUMN id SET DEFAULT nextval('wechat_daily_article_read_source_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_article_read_source_weeks ALTER COLUMN id SET DEFAULT nextval('wechat_daily_article_read_source_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_article_shared_scene_days ALTER COLUMN id SET DEFAULT nextval('wechat_daily_article_shared_scene_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_article_shared_scene_months ALTER COLUMN id SET DEFAULT nextval('wechat_daily_article_shared_scene_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_article_shared_scene_weeks ALTER COLUMN id SET DEFAULT nextval('wechat_daily_article_shared_scene_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_msg_count_type_days ALTER COLUMN id SET DEFAULT nextval('wechat_daily_msg_count_type_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_msg_count_type_months ALTER COLUMN id SET DEFAULT nextval('wechat_daily_msg_count_type_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_msg_count_type_weeks ALTER COLUMN id SET DEFAULT nextval('wechat_daily_msg_count_type_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_msg_user_type_days ALTER COLUMN id SET DEFAULT nextval('wechat_daily_msg_user_type_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_msg_user_type_months ALTER COLUMN id SET DEFAULT nextval('wechat_daily_msg_user_type_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_msg_user_type_weeks ALTER COLUMN id SET DEFAULT nextval('wechat_daily_msg_user_type_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_user_followed_source_days ALTER COLUMN id SET DEFAULT nextval('wechat_daily_user_followed_source_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_user_followed_source_months ALTER COLUMN id SET DEFAULT nextval('wechat_daily_user_followed_source_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_daily_user_followed_source_weeks ALTER COLUMN id SET DEFAULT nextval('wechat_daily_user_followed_source_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_page_metrics_days ALTER COLUMN id SET DEFAULT nextval('wechat_page_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_page_metrics_months ALTER COLUMN id SET DEFAULT nextval('wechat_page_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wechat_page_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('wechat_page_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_comments_by_country_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_comments_by_country_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_comments_by_country_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_comments_by_country_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_comments_by_country_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_comments_by_country_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_dislikes_by_country_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_dislikes_by_country_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_dislikes_by_country_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_dislikes_by_country_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_dislikes_by_country_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_dislikes_by_country_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_favorites_added_by_country_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_favorites_added_by_country_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_favorites_added_by_country_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_favorites_added_by_country_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_favorites_added_by_country_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_favorites_added_by_country_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_favorites_removed_by_country_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_favorites_removed_by_country_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_favorites_removed_by_country_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_favorites_removed_by_country_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_favorites_removed_by_country_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_favorites_removed_by_country_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_likes_by_country_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_likes_by_country_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_likes_by_country_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_likes_by_country_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_likes_by_country_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_likes_by_country_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_metrics_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_metrics_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_metrics_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_shares_by_country_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_shares_by_country_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_shares_by_country_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_shares_by_country_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_shares_by_country_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_shares_by_country_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_subscribers_gained_by_country_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_subscribers_gained_by_country_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_subscribers_gained_by_country_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_subscribers_gained_by_country_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_subscribers_gained_by_country_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_subscribers_gained_by_country_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_subscribers_lost_by_country_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_subscribers_lost_by_country_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_subscribers_lost_by_country_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_subscribers_lost_by_country_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_subscribers_lost_by_country_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_subscribers_lost_by_country_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_and_gender_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_viewer_percentage_by_age_group_and_gende_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_and_gender_month ALTER COLUMN id SET DEFAULT nextval('youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq2'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_and_gender_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq1'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_viewer_percentage_by_age_group_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_viewer_percentage_by_age_group_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_viewer_percentage_by_age_group_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_gender_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_viewer_percentage_by_gender_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_gender_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_viewer_percentage_by_gender_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_gender_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_viewer_percentage_by_gender_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_views_by_country_days ALTER COLUMN id SET DEFAULT nextval('youtube_channel_views_by_country_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_views_by_country_months ALTER COLUMN id SET DEFAULT nextval('youtube_channel_views_by_country_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_channel_views_by_country_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_channel_views_by_country_weeks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_video_metadata ALTER COLUMN id SET DEFAULT nextval('youtube_video_metadata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_video_metrics_days ALTER COLUMN id SET DEFAULT nextval('youtube_video_metrics_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_video_metrics_months ALTER COLUMN id SET DEFAULT nextval('youtube_video_metrics_months_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY youtube_video_metrics_weeks ALTER COLUMN id SET DEFAULT nextval('youtube_video_metrics_weeks_id_seq'::regclass);


--
-- Data for Name: api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY api_keys (id, name, key) FROM stdin;
1	optimus	fneO9ucCcgs3U-jGBkaB
\.


--
-- Name: api_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('api_keys_id_seq', 1, true);


--
-- Data for Name: backfill_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY backfill_requests (id, type, external_id, since, until, name, reason, created_at, updated_at) FROM stdin;
\.


--
-- Name: backfill_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('backfill_requests_id_seq', 1, false);


--
-- Data for Name: googleplus_circle_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_circle_metadata (id, page_id, circle_id, display_name, description, self_link) FROM stdin;
\.


--
-- Data for Name: googleplus_circle_metadata_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_circle_metadata_archive (id, page_id, circle_id, display_name, description, self_link) FROM stdin;
\.


--
-- Name: googleplus_circle_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('googleplus_circle_metadata_id_seq', 1, false);


--
-- Data for Name: googleplus_circle_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_circle_metrics_days (id, page_id, circle_id, date, created_at, updated_at, follower_count) FROM stdin;
\.


--
-- Data for Name: googleplus_circle_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_circle_metrics_days_archive (id, page_id, circle_id, date, created_at, updated_at, follower_count) FROM stdin;
\.


--
-- Name: googleplus_circle_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('googleplus_circle_metrics_days_id_seq', 1, false);


--
-- Data for Name: googleplus_circle_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_circle_metrics_months (id, page_id, circle_id, date, created_at, updated_at, follower_count) FROM stdin;
\.


--
-- Name: googleplus_circle_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('googleplus_circle_metrics_months_id_seq', 1, false);


--
-- Data for Name: googleplus_circle_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_circle_metrics_weeks (id, page_id, circle_id, date, created_at, updated_at, follower_count) FROM stdin;
\.


--
-- Name: googleplus_circle_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('googleplus_circle_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: googleplus_page_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_page_metrics_days (id, page_id, date, created_at, updated_at, follower_count, likes, comments, shares) FROM stdin;
\.


--
-- Data for Name: googleplus_page_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_page_metrics_days_archive (id, page_id, date, created_at, updated_at, follower_count, likes, comments, shares) FROM stdin;
\.


--
-- Name: googleplus_page_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('googleplus_page_metrics_days_id_seq', 1, false);


--
-- Data for Name: googleplus_page_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_page_metrics_months (id, page_id, date, created_at, updated_at, follower_count, likes, comments, shares) FROM stdin;
\.


--
-- Name: googleplus_page_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('googleplus_page_metrics_months_id_seq', 1, false);


--
-- Data for Name: googleplus_page_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_page_metrics_weeks (id, page_id, date, created_at, updated_at, follower_count, likes, comments, shares) FROM stdin;
\.


--
-- Name: googleplus_page_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('googleplus_page_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: googleplus_post_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_post_metadata (id, page_id, post_id, posted_at, post_type, text, picture, permalink, visibility, circle_ids) FROM stdin;
\.


--
-- Data for Name: googleplus_post_metadata_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_post_metadata_archive (id, page_id, post_id, posted_at, post_type, text, picture, permalink, visibility, circle_ids) FROM stdin;
\.


--
-- Name: googleplus_post_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('googleplus_post_metadata_id_seq', 1, false);


--
-- Data for Name: googleplus_post_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_post_metrics_days (id, page_id, post_id, date, created_at, updated_at, likes, comments, shares) FROM stdin;
\.


--
-- Data for Name: googleplus_post_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_post_metrics_days_archive (id, page_id, post_id, date, created_at, updated_at, likes, comments, shares) FROM stdin;
\.


--
-- Name: googleplus_post_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('googleplus_post_metrics_days_id_seq', 1, false);


--
-- Data for Name: googleplus_post_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_post_metrics_months (id, page_id, post_id, date, created_at, updated_at, likes, comments, shares) FROM stdin;
\.


--
-- Name: googleplus_post_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('googleplus_post_metrics_months_id_seq', 1, false);


--
-- Data for Name: googleplus_post_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY googleplus_post_metrics_weeks (id, page_id, post_id, date, created_at, updated_at, likes, comments, shares) FROM stdin;
\.


--
-- Name: googleplus_post_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('googleplus_post_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: instagram_page_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instagram_page_metrics_days (id, page_id, date, created_at, updated_at, total_followers, daily_followers, total_posts, daily_posts, total_likes, daily_likes, total_comments, daily_comments) FROM stdin;
\.


--
-- Data for Name: instagram_page_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instagram_page_metrics_days_archive (id, page_id, date, created_at, updated_at, total_followers, daily_followers, total_posts, daily_posts, total_likes, daily_likes, total_comments, daily_comments) FROM stdin;
\.


--
-- Name: instagram_page_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instagram_page_metrics_days_id_seq', 1, false);


--
-- Data for Name: instagram_page_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instagram_page_metrics_months (id, page_id, date, created_at, updated_at, total_followers, daily_followers, total_posts, daily_posts, total_likes, daily_likes, total_comments, daily_comments) FROM stdin;
\.


--
-- Name: instagram_page_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instagram_page_metrics_months_id_seq', 1, false);


--
-- Data for Name: instagram_page_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instagram_page_metrics_weeks (id, page_id, date, created_at, updated_at, total_followers, daily_followers, total_posts, daily_posts, total_likes, daily_likes, total_comments, daily_comments) FROM stdin;
\.


--
-- Name: instagram_page_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instagram_page_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: instagram_post_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instagram_post_metadata (id, page_id, post_id, posted_at, author, author_id, body, url, image_url, thumbnail_pic_url, original_post_id) FROM stdin;
\.


--
-- Data for Name: instagram_post_metadata_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instagram_post_metadata_archive (id, page_id, post_id, posted_at, author, author_id, body, url, image_url, thumbnail_pic_url, original_post_id) FROM stdin;
\.


--
-- Name: instagram_post_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instagram_post_metadata_id_seq', 1, false);


--
-- Data for Name: instagram_post_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instagram_post_metrics_days (id, page_id, post_id, date, created_at, updated_at, total_likes, daily_likes, total_comments, daily_comments) FROM stdin;
\.


--
-- Data for Name: instagram_post_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instagram_post_metrics_days_archive (id, page_id, post_id, date, created_at, updated_at, total_likes, daily_likes, total_comments, daily_comments) FROM stdin;
\.


--
-- Name: instagram_post_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instagram_post_metrics_days_id_seq', 1, false);


--
-- Data for Name: instagram_post_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instagram_post_metrics_months (id, page_id, post_id, date, created_at, updated_at, total_likes, daily_likes, total_comments, daily_comments) FROM stdin;
\.


--
-- Name: instagram_post_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instagram_post_metrics_months_id_seq', 1, false);


--
-- Data for Name: instagram_post_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instagram_post_metrics_weeks (id, page_id, post_id, date, created_at, updated_at, total_likes, daily_likes, total_comments, daily_comments) FROM stdin;
\.


--
-- Name: instagram_post_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instagram_post_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: linkedin_page_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linkedin_page_metrics_days (id, page_id, date, created_at, updated_at, total_followers, organic_followers, paid_followers, likes, shares, comments, clicks, impressions, engagement, followers, daily_organic_followers, daily_paid_followers, total_likes, total_shares, total_comments, total_clicks, total_impressions) FROM stdin;
\.


--
-- Data for Name: linkedin_page_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linkedin_page_metrics_days_archive (id, page_id, date, created_at, updated_at, total_followers, organic_followers, paid_followers, likes, shares, comments, clicks, impressions, engagement, followers, daily_organic_followers, daily_paid_followers, total_likes, total_shares, total_comments, total_clicks, total_impressions) FROM stdin;
\.


--
-- Name: linkedin_page_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('linkedin_page_metrics_days_id_seq', 1, false);


--
-- Data for Name: linkedin_page_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linkedin_page_metrics_months (id, page_id, date, created_at, updated_at, total_followers, organic_followers, paid_followers, likes, shares, comments, clicks, impressions, engagement, followers, daily_organic_followers, daily_paid_followers, total_likes, total_shares, total_comments, total_clicks, total_impressions) FROM stdin;
\.


--
-- Name: linkedin_page_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('linkedin_page_metrics_months_id_seq', 1, false);


--
-- Data for Name: linkedin_page_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linkedin_page_metrics_weeks (id, page_id, date, created_at, updated_at, total_followers, organic_followers, paid_followers, likes, shares, comments, clicks, impressions, engagement, followers, daily_organic_followers, daily_paid_followers, total_likes, total_shares, total_comments, total_clicks, total_impressions) FROM stdin;
\.


--
-- Name: linkedin_page_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('linkedin_page_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: linkedin_post_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linkedin_post_metadata (id, page_id, post_id, posted_at, author, body, permalink, title, description, url, image_url, thumbnail_pic_url, shortened_url, eyebrow_url, original_pic_url, visibility, original_post_id) FROM stdin;
\.


--
-- Data for Name: linkedin_post_metadata_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linkedin_post_metadata_archive (id, page_id, post_id, posted_at, author, body, permalink, title, description, url, image_url, thumbnail_pic_url, shortened_url, eyebrow_url, original_pic_url, visibility, original_post_id) FROM stdin;
\.


--
-- Name: linkedin_post_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('linkedin_post_metadata_id_seq', 1, false);


--
-- Data for Name: linkedin_post_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linkedin_post_metrics_days (id, page_id, post_id, date, created_at, updated_at, likes, comments, shares, clicks, impressions, engagement, total_likes, total_comments, total_impressions, total_shares, total_clicks) FROM stdin;
\.


--
-- Data for Name: linkedin_post_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linkedin_post_metrics_days_archive (id, page_id, post_id, date, created_at, updated_at, likes, comments, shares, clicks, impressions, engagement, total_likes, total_comments, total_impressions, total_shares, total_clicks) FROM stdin;
\.


--
-- Name: linkedin_post_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('linkedin_post_metrics_days_id_seq', 1, false);


--
-- Data for Name: linkedin_post_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linkedin_post_metrics_months (id, page_id, post_id, date, created_at, updated_at, likes, comments, shares, clicks, impressions, engagement, total_likes, total_comments, total_impressions, total_shares, total_clicks) FROM stdin;
\.


--
-- Name: linkedin_post_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('linkedin_post_metrics_months_id_seq', 1, false);


--
-- Data for Name: linkedin_post_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linkedin_post_metrics_weeks (id, page_id, post_id, date, created_at, updated_at, likes, comments, shares, clicks, impressions, engagement, total_likes, total_comments, total_impressions, total_shares, total_clicks) FROM stdin;
\.


--
-- Name: linkedin_post_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('linkedin_post_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: names; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY names (id, name) FROM stdin;
\.


--
-- Name: names_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('names_id_seq', 1, false);


--
-- Data for Name: page_consumptions_by_consumption_type_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_consumptions_by_consumption_type_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_consumptions_by_consumption_type_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_consumptions_by_consumption_type_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_consumptions_by_consumption_type_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_consumptions_by_consumption_type_days_id_seq', 1, false);


--
-- Data for Name: page_consumptions_by_consumption_type_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_consumptions_by_consumption_type_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_consumptions_by_consumption_type_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_consumptions_by_consumption_type_months_id_seq', 1, false);


--
-- Data for Name: page_consumptions_by_consumption_type_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_consumptions_by_consumption_type_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_consumptions_by_consumption_type_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_consumptions_by_consumption_type_weeks_id_seq', 1, false);


--
-- Data for Name: page_fans_by_like_source_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_by_like_source_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_fans_by_like_source_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_by_like_source_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_by_like_source_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_by_like_source_days_id_seq', 1, false);


--
-- Data for Name: page_fans_by_like_source_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_by_like_source_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_by_like_source_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_by_like_source_months_id_seq', 1, false);


--
-- Data for Name: page_fans_by_like_source_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_by_like_source_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_by_like_source_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_by_like_source_weeks_id_seq', 1, false);


--
-- Data for Name: page_fans_city_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_city_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_fans_city_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_city_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_city_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_city_days_id_seq', 1, false);


--
-- Data for Name: page_fans_city_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_city_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_city_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_city_months_id_seq', 1, false);


--
-- Data for Name: page_fans_city_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_city_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_city_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_city_weeks_id_seq', 1, false);


--
-- Data for Name: page_fans_country_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_country_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_fans_country_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_country_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_country_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_country_days_id_seq', 1, false);


--
-- Data for Name: page_fans_country_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_country_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_country_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_country_months_id_seq', 1, false);


--
-- Data for Name: page_fans_country_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_country_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_country_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_country_weeks_id_seq', 1, false);


--
-- Data for Name: page_fans_gender_age_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_gender_age_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_fans_gender_age_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_gender_age_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_gender_age_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_gender_age_days_id_seq', 1, false);


--
-- Data for Name: page_fans_gender_age_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_gender_age_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_gender_age_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_gender_age_months_id_seq', 1, false);


--
-- Data for Name: page_fans_gender_age_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_gender_age_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_gender_age_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_gender_age_weeks_id_seq', 1, false);


--
-- Data for Name: page_fans_locale_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_locale_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_fans_locale_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_locale_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_locale_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_locale_days_id_seq', 1, false);


--
-- Data for Name: page_fans_locale_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_locale_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_locale_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_locale_months_id_seq', 1, false);


--
-- Data for Name: page_fans_locale_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_fans_locale_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_fans_locale_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_fans_locale_weeks_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_age_gender_unique_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_age_gender_unique_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_impressions_by_age_gender_unique_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_age_gender_unique_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_age_gender_unique_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_age_gender_unique_days_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_age_gender_unique_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_age_gender_unique_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_age_gender_unique_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_age_gender_unique_months_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_age_gender_unique_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_age_gender_unique_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_age_gender_unique_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_age_gender_unique_weeks_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_city_unique_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_city_unique_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_impressions_by_city_unique_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_city_unique_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_city_unique_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_city_unique_days_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_city_unique_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_city_unique_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_city_unique_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_city_unique_months_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_city_unique_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_city_unique_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_city_unique_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_city_unique_weeks_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_country_unique_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_country_unique_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_impressions_by_country_unique_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_country_unique_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_country_unique_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_country_unique_days_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_country_unique_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_country_unique_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_country_unique_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_country_unique_months_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_country_unique_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_country_unique_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_country_unique_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_country_unique_weeks_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_locale_unique_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_locale_unique_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_impressions_by_locale_unique_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_locale_unique_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_locale_unique_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_locale_unique_days_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_locale_unique_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_locale_unique_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_locale_unique_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_locale_unique_months_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_locale_unique_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_locale_unique_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_locale_unique_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_locale_unique_weeks_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_story_type_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_story_type_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_impressions_by_story_type_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_story_type_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_story_type_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_story_type_days_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_story_type_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_story_type_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_story_type_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_story_type_months_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_story_type_unique_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_story_type_unique_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_impressions_by_story_type_unique_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_story_type_unique_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_story_type_unique_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_story_type_unique_days_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_story_type_unique_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_story_type_unique_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_story_type_unique_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_story_type_unique_months_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_story_type_unique_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_story_type_unique_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_story_type_unique_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_story_type_unique_weeks_id_seq', 1, false);


--
-- Data for Name: page_impressions_by_story_type_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_impressions_by_story_type_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_impressions_by_story_type_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_impressions_by_story_type_weeks_id_seq', 1, false);


--
-- Data for Name: page_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_metrics_days (id, page_id, date, created_at, updated_at, page_consumptions, page_engaged_users, page_fan_adds, page_fan_removes, page_fans, page_impressions, page_impressions_organic, page_impressions_organic_unique, page_impressions_paid, page_impressions_paid_unique, page_impressions_unique, page_impressions_viral, page_impressions_viral_unique, page_posts_impressions, page_stories, page_storytellers, page_views, page_fan_adds_unique, page_fan_removes_unique) FROM stdin;
\.


--
-- Data for Name: page_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_metrics_days_archive (id, page_id, date, created_at, updated_at, page_consumptions, page_engaged_users, page_fan_adds, page_fan_removes, page_fans, page_impressions, page_impressions_organic, page_impressions_organic_unique, page_impressions_paid, page_impressions_paid_unique, page_impressions_unique, page_impressions_viral, page_impressions_viral_unique, page_posts_impressions, page_stories, page_storytellers, page_views, page_fan_adds_unique, page_fan_removes_unique) FROM stdin;
\.


--
-- Name: page_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_metrics_days_id_seq', 1, false);


--
-- Data for Name: page_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_metrics_months (id, page_id, date, created_at, updated_at, page_consumptions, page_engaged_users, page_fan_adds, page_fan_removes, page_fans, page_impressions, page_impressions_organic, page_impressions_organic_unique, page_impressions_paid, page_impressions_paid_unique, page_impressions_unique, page_impressions_viral, page_impressions_viral_unique, page_posts_impressions, page_stories, page_storytellers, page_views, page_fan_adds_unique, page_fan_removes_unique) FROM stdin;
\.


--
-- Name: page_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_metrics_months_id_seq', 1, false);


--
-- Data for Name: page_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_metrics_weeks (id, page_id, date, created_at, updated_at, page_consumptions, page_engaged_users, page_fan_adds, page_fan_removes, page_fans, page_impressions, page_impressions_organic, page_impressions_organic_unique, page_impressions_paid, page_impressions_paid_unique, page_impressions_unique, page_impressions_viral, page_impressions_viral_unique, page_posts_impressions, page_stories, page_storytellers, page_views, page_fan_adds_unique, page_fan_removes_unique) FROM stdin;
\.


--
-- Name: page_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: page_negative_feedback_by_type_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_negative_feedback_by_type_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_negative_feedback_by_type_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_negative_feedback_by_type_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_negative_feedback_by_type_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_negative_feedback_by_type_days_id_seq', 1, false);


--
-- Data for Name: page_negative_feedback_by_type_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_negative_feedback_by_type_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_negative_feedback_by_type_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_negative_feedback_by_type_months_id_seq', 1, false);


--
-- Data for Name: page_negative_feedback_by_type_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_negative_feedback_by_type_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_negative_feedback_by_type_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_negative_feedback_by_type_weeks_id_seq', 1, false);


--
-- Data for Name: page_stories_by_story_type_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_stories_by_story_type_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_stories_by_story_type_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_stories_by_story_type_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_stories_by_story_type_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_stories_by_story_type_days_id_seq', 1, false);


--
-- Data for Name: page_stories_by_story_type_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_stories_by_story_type_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_stories_by_story_type_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_stories_by_story_type_months_id_seq', 1, false);


--
-- Data for Name: page_stories_by_story_type_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_stories_by_story_type_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_stories_by_story_type_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_stories_by_story_type_weeks_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_age_gender_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_age_gender_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_storytellers_by_age_gender_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_age_gender_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_age_gender_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_age_gender_days_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_age_gender_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_age_gender_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_age_gender_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_age_gender_months_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_age_gender_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_age_gender_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_age_gender_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_age_gender_weeks_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_city_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_city_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_storytellers_by_city_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_city_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_city_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_city_days_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_city_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_city_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_city_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_city_months_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_city_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_city_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_city_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_city_weeks_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_country_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_country_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_storytellers_by_country_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_country_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_country_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_country_days_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_country_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_country_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_country_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_country_months_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_country_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_country_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_country_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_country_weeks_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_locale_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_locale_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_storytellers_by_locale_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_locale_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_locale_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_locale_days_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_locale_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_locale_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_locale_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_locale_months_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_locale_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_locale_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_locale_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_locale_weeks_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_story_type_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_story_type_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_storytellers_by_story_type_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_story_type_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_story_type_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_story_type_days_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_story_type_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_story_type_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_story_type_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_story_type_months_id_seq', 1, false);


--
-- Data for Name: page_storytellers_by_story_type_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_storytellers_by_story_type_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_storytellers_by_story_type_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_storytellers_by_story_type_weeks_id_seq', 1, false);


--
-- Data for Name: page_views_external_referrals_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_views_external_referrals_days (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: page_views_external_referrals_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_views_external_referrals_days_archive (id, page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: page_views_external_referrals_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_views_external_referrals_days_id_seq', 1, false);


--
-- Data for Name: page_views_external_referrals_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_views_external_referrals_months (id, page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: page_views_external_referrals_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_views_external_referrals_months_id_seq', 1, false);


--
-- Data for Name: page_views_external_referrals_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page_views_external_referrals_weeks (id, page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: page_views_external_referrals_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_views_external_referrals_weeks_id_seq', 1, false);


--
-- Data for Name: post_consumptions_by_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_consumptions_by_type (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: post_consumptions_by_type_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_consumptions_by_type_archive (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Name: post_consumptions_by_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_consumptions_by_type_id_seq', 1, false);


--
-- Data for Name: post_consumptions_by_type_unique; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_consumptions_by_type_unique (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: post_consumptions_by_type_unique_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_consumptions_by_type_unique_archive (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Name: post_consumptions_by_type_unique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_consumptions_by_type_unique_id_seq', 1, false);


--
-- Data for Name: post_metrics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_metrics (id, post_id, page_id, created_time, created_at, updated_at, post_consumptions, post_consumptions_unique, post_impressions, post_impressions_unique, post_impressions_organic, post_impressions_organic_unique, post_impressions_paid, post_impressions_paid_unique, post_impressions_viral, post_impressions_viral_unique, post_negative_feedback, post_negative_feedback_unique, post_storytellers, post_engaged_users, post_stories, post_story_adds, post_story_adds_unique, likes, comments, shares, type, updated_time, message, caption, story, picture, link) FROM stdin;
\.


--
-- Data for Name: post_metrics_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_metrics_archive (id, post_id, page_id, created_time, created_at, updated_at, post_consumptions, post_consumptions_unique, post_impressions, post_impressions_unique, post_impressions_organic, post_impressions_organic_unique, post_impressions_paid, post_impressions_paid_unique, post_impressions_viral, post_impressions_viral_unique, post_negative_feedback, post_negative_feedback_unique, post_storytellers, post_engaged_users, post_stories, post_story_adds, post_story_adds_unique, likes, comments, shares, type, updated_time, message, caption, story, picture, link) FROM stdin;
\.


--
-- Data for Name: post_metrics_geotargets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_metrics_geotargets (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: post_metrics_geotargets_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_metrics_geotargets_archive (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Name: post_metrics_geotargets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_metrics_geotargets_id_seq', 1, false);


--
-- Name: post_metrics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_metrics_id_seq', 1, false);


--
-- Data for Name: post_negative_feedback_by_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_negative_feedback_by_type (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: post_negative_feedback_by_type_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_negative_feedback_by_type_archive (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Name: post_negative_feedback_by_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_negative_feedback_by_type_id_seq', 1, false);


--
-- Data for Name: post_negative_feedback_by_type_unique; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_negative_feedback_by_type_unique (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: post_negative_feedback_by_type_unique_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_negative_feedback_by_type_unique_archive (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Name: post_negative_feedback_by_type_unique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_negative_feedback_by_type_unique_id_seq', 1, false);


--
-- Data for Name: post_stories_by_action_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_stories_by_action_type (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: post_stories_by_action_type_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_stories_by_action_type_archive (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Name: post_stories_by_action_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_stories_by_action_type_id_seq', 1, false);


--
-- Data for Name: post_story_adds_by_action_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_story_adds_by_action_type (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: post_story_adds_by_action_type_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_story_adds_by_action_type_archive (id, post_metrics_id, name_id, value) FROM stdin;
\.


--
-- Name: post_story_adds_by_action_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_story_adds_by_action_type_id_seq', 1, false);


--
-- Data for Name: rerollup_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY rerollup_requests (id, metrics, name, reason, created_at, updated_at) FROM stdin;
\.


--
-- Name: rerollup_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rerollup_requests_id_seq', 1, false);


--
-- Data for Name: tumblr_page_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tumblr_page_metrics_days (id, page_id, date, created_at, updated_at, total_followers, followers) FROM stdin;
\.


--
-- Data for Name: tumblr_page_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tumblr_page_metrics_days_archive (id, page_id, date, created_at, updated_at, total_followers, followers) FROM stdin;
\.


--
-- Name: tumblr_page_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tumblr_page_metrics_days_id_seq', 1, false);


--
-- Data for Name: tumblr_page_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tumblr_page_metrics_months (id, page_id, date, created_at, updated_at, total_followers, followers) FROM stdin;
\.


--
-- Name: tumblr_page_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tumblr_page_metrics_months_id_seq', 1, false);


--
-- Data for Name: tumblr_page_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tumblr_page_metrics_weeks (id, page_id, date, created_at, updated_at, total_followers, followers) FROM stdin;
\.


--
-- Name: tumblr_page_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tumblr_page_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: tumblr_post_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tumblr_post_metadata (id, page_id, post_id, posted_at, author, body, permalink, title, description, url, image_url, visibility) FROM stdin;
\.


--
-- Data for Name: tumblr_post_metadata_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tumblr_post_metadata_archive (id, page_id, post_id, posted_at, author, body, permalink, title, description, url, image_url, visibility) FROM stdin;
\.


--
-- Name: tumblr_post_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tumblr_post_metadata_id_seq', 1, false);


--
-- Data for Name: tumblr_post_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tumblr_post_metrics_days (id, page_id, post_id, date, created_at, updated_at, likes, shares, comments, total_likes, total_shares, total_comments) FROM stdin;
\.


--
-- Data for Name: tumblr_post_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tumblr_post_metrics_days_archive (id, page_id, post_id, date, created_at, updated_at, likes, shares, comments, total_likes, total_shares, total_comments) FROM stdin;
\.


--
-- Name: tumblr_post_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tumblr_post_metrics_days_id_seq', 1, false);


--
-- Data for Name: tumblr_post_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tumblr_post_metrics_months (id, page_id, post_id, date, created_at, updated_at, likes, shares, comments, total_likes, total_shares, total_comments) FROM stdin;
\.


--
-- Name: tumblr_post_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tumblr_post_metrics_months_id_seq', 1, false);


--
-- Data for Name: tumblr_post_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tumblr_post_metrics_weeks (id, page_id, post_id, date, created_at, updated_at, likes, shares, comments, total_likes, total_shares, total_comments) FROM stdin;
\.


--
-- Name: tumblr_post_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tumblr_post_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: tweet_urls; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tweet_urls (id, tweets_id, url, expanded_url) FROM stdin;
\.


--
-- Data for Name: tweet_urls_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tweet_urls_archive (id, tweets_id, url, expanded_url) FROM stdin;
\.


--
-- Name: tweet_urls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tweet_urls_id_seq', 1, false);


--
-- Data for Name: tweets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tweets (id, twitter_id, stream_id, tweeted_at, created_at, updated_at, retweet_count, favorite_count, text) FROM stdin;
\.


--
-- Data for Name: tweets_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tweets_archive (id, twitter_id, stream_id, tweeted_at, created_at, updated_at, retweet_count, favorite_count, text) FROM stdin;
\.


--
-- Name: tweets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tweets_id_seq', 1, false);


--
-- Data for Name: twitter_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_metrics_days (id, stream_id, date, created_at, updated_at, follower_count, listed_count, mention_count, reply_count, retweet_count, favorite_count) FROM stdin;
\.


--
-- Data for Name: twitter_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_metrics_days_archive (id, stream_id, date, created_at, updated_at, follower_count, listed_count, mention_count, reply_count, retweet_count, favorite_count) FROM stdin;
\.


--
-- Name: twitter_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('twitter_metrics_days_id_seq', 1, false);


--
-- Data for Name: twitter_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_metrics_months (id, stream_id, date, created_at, updated_at, follower_count, listed_count, mention_count, reply_count, retweet_count, favorite_count) FROM stdin;
\.


--
-- Name: twitter_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('twitter_metrics_months_id_seq', 1, false);


--
-- Data for Name: twitter_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_metrics_weeks (id, stream_id, date, created_at, updated_at, follower_count, listed_count, mention_count, reply_count, retweet_count, favorite_count) FROM stdin;
\.


--
-- Name: twitter_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('twitter_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: wechat_daily_article_read_source_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_article_read_source_days (id, wechat_page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: wechat_daily_article_read_source_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_article_read_source_days_archive (id, wechat_page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_article_read_source_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_article_read_source_days_id_seq', 1, false);


--
-- Data for Name: wechat_daily_article_read_source_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_article_read_source_months (id, wechat_page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_article_read_source_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_article_read_source_months_id_seq', 1, false);


--
-- Data for Name: wechat_daily_article_read_source_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_article_read_source_weeks (id, wechat_page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_article_read_source_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_article_read_source_weeks_id_seq', 1, false);


--
-- Data for Name: wechat_daily_article_shared_scene_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_article_shared_scene_days (id, wechat_page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: wechat_daily_article_shared_scene_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_article_shared_scene_days_archive (id, wechat_page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_article_shared_scene_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_article_shared_scene_days_id_seq', 1, false);


--
-- Data for Name: wechat_daily_article_shared_scene_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_article_shared_scene_months (id, wechat_page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_article_shared_scene_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_article_shared_scene_months_id_seq', 1, false);


--
-- Data for Name: wechat_daily_article_shared_scene_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_article_shared_scene_weeks (id, wechat_page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_article_shared_scene_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_article_shared_scene_weeks_id_seq', 1, false);


--
-- Data for Name: wechat_daily_msg_count_type_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_msg_count_type_days (id, wechat_page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: wechat_daily_msg_count_type_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_msg_count_type_days_archive (id, wechat_page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_msg_count_type_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_msg_count_type_days_id_seq', 1, false);


--
-- Data for Name: wechat_daily_msg_count_type_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_msg_count_type_months (id, wechat_page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_msg_count_type_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_msg_count_type_months_id_seq', 1, false);


--
-- Data for Name: wechat_daily_msg_count_type_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_msg_count_type_weeks (id, wechat_page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_msg_count_type_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_msg_count_type_weeks_id_seq', 1, false);


--
-- Data for Name: wechat_daily_msg_user_type_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_msg_user_type_days (id, wechat_page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: wechat_daily_msg_user_type_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_msg_user_type_days_archive (id, wechat_page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_msg_user_type_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_msg_user_type_days_id_seq', 1, false);


--
-- Data for Name: wechat_daily_msg_user_type_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_msg_user_type_months (id, wechat_page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_msg_user_type_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_msg_user_type_months_id_seq', 1, false);


--
-- Data for Name: wechat_daily_msg_user_type_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_msg_user_type_weeks (id, wechat_page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_msg_user_type_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_msg_user_type_weeks_id_seq', 1, false);


--
-- Data for Name: wechat_daily_user_followed_source_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_user_followed_source_days (id, wechat_page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: wechat_daily_user_followed_source_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_user_followed_source_days_archive (id, wechat_page_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_user_followed_source_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_user_followed_source_days_id_seq', 1, false);


--
-- Data for Name: wechat_daily_user_followed_source_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_user_followed_source_months (id, wechat_page_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_user_followed_source_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_user_followed_source_months_id_seq', 1, false);


--
-- Data for Name: wechat_daily_user_followed_source_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_daily_user_followed_source_weeks (id, wechat_page_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: wechat_daily_user_followed_source_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_daily_user_followed_source_weeks_id_seq', 1, false);


--
-- Data for Name: wechat_page_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_page_metrics_days (id, page_id, date, created_at, updated_at, total_followers, daily_new_followers, daily_cancel_followers, daily_msg_user, daily_msg_count, daily_intermediate_page_read_user, daily_intermediate_page_read_count, daily_original_page_read_user, daily_original_page_read_count, daily_share_user, daily_share_count, daily_add_to_fav_user, daily_add_to_fav_count, daily_followers_changes) FROM stdin;
\.


--
-- Data for Name: wechat_page_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_page_metrics_days_archive (id, page_id, date, created_at, updated_at, total_followers, daily_new_followers, daily_cancel_followers, daily_msg_user, daily_msg_count, daily_intermediate_page_read_user, daily_intermediate_page_read_count, daily_original_page_read_user, daily_original_page_read_count, daily_share_user, daily_share_count, daily_add_to_fav_user, daily_add_to_fav_count, daily_followers_changes) FROM stdin;
\.


--
-- Name: wechat_page_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_page_metrics_days_id_seq', 1, false);


--
-- Data for Name: wechat_page_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_page_metrics_months (id, page_id, date, created_at, updated_at, total_followers, daily_new_followers, daily_cancel_followers, daily_msg_user, daily_msg_count, daily_intermediate_page_read_user, daily_intermediate_page_read_count, daily_original_page_read_user, daily_original_page_read_count, daily_share_user, daily_share_count, daily_add_to_fav_user, daily_add_to_fav_count, daily_followers_changes) FROM stdin;
\.


--
-- Name: wechat_page_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_page_metrics_months_id_seq', 1, false);


--
-- Data for Name: wechat_page_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wechat_page_metrics_weeks (id, page_id, date, created_at, updated_at, total_followers, daily_new_followers, daily_cancel_followers, daily_msg_user, daily_msg_count, daily_intermediate_page_read_user, daily_intermediate_page_read_count, daily_original_page_read_user, daily_original_page_read_count, daily_share_user, daily_share_count, daily_add_to_fav_user, daily_add_to_fav_count, daily_followers_changes) FROM stdin;
\.


--
-- Name: wechat_page_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wechat_page_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_channel_comments_by_country_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_comments_by_country_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_comments_by_country_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_comments_by_country_days_archive (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_comments_by_country_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_comments_by_country_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_comments_by_country_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_comments_by_country_months (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_comments_by_country_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_comments_by_country_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_comments_by_country_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_comments_by_country_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_comments_by_country_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_comments_by_country_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_channel_dislikes_by_country_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_dislikes_by_country_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_dislikes_by_country_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_dislikes_by_country_days_archive (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_dislikes_by_country_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_dislikes_by_country_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_dislikes_by_country_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_dislikes_by_country_months (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_dislikes_by_country_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_dislikes_by_country_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_dislikes_by_country_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_dislikes_by_country_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_dislikes_by_country_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_dislikes_by_country_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_channel_favorites_added_by_country_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_favorites_added_by_country_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_favorites_added_by_country_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_favorites_added_by_country_days_archive (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_favorites_added_by_country_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_favorites_added_by_country_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_favorites_added_by_country_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_favorites_added_by_country_months (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_favorites_added_by_country_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_favorites_added_by_country_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_favorites_added_by_country_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_favorites_added_by_country_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_favorites_added_by_country_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_favorites_added_by_country_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_channel_favorites_removed_by_country_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_favorites_removed_by_country_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_favorites_removed_by_country_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_favorites_removed_by_country_days_archive (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_favorites_removed_by_country_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_favorites_removed_by_country_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_favorites_removed_by_country_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_favorites_removed_by_country_months (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_favorites_removed_by_country_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_favorites_removed_by_country_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_favorites_removed_by_country_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_favorites_removed_by_country_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_favorites_removed_by_country_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_favorites_removed_by_country_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_channel_likes_by_country_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_likes_by_country_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_likes_by_country_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_likes_by_country_days_archive (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_likes_by_country_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_likes_by_country_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_likes_by_country_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_likes_by_country_months (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_likes_by_country_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_likes_by_country_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_likes_by_country_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_likes_by_country_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_likes_by_country_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_likes_by_country_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_channel_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_metrics_days (id, channel_id, date, created_at, updated_at, views, uniques, comments, likes, dislikes, shares, favorites_added, favorites_removed, subscribers_gained, subscribers_lost, average_view_duration, estimated_minutes_watched, annotation_click_through_rate, annotation_close_rate, average_view_percentage) FROM stdin;
\.


--
-- Data for Name: youtube_channel_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_metrics_days_archive (id, channel_id, date, created_at, updated_at, views, uniques, comments, likes, dislikes, shares, favorites_added, favorites_removed, subscribers_gained, subscribers_lost, average_view_duration, estimated_minutes_watched, annotation_click_through_rate, annotation_close_rate, average_view_percentage) FROM stdin;
\.


--
-- Name: youtube_channel_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_metrics_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_metrics_months (id, channel_id, date, created_at, updated_at, views, uniques, comments, likes, dislikes, shares, favorites_added, favorites_removed, subscribers_gained, subscribers_lost, average_view_duration, estimated_minutes_watched, annotation_click_through_rate, annotation_close_rate, average_view_percentage) FROM stdin;
\.


--
-- Name: youtube_channel_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_metrics_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_metrics_weeks (id, channel_id, date, created_at, updated_at, views, uniques, comments, likes, dislikes, shares, favorites_added, favorites_removed, subscribers_gained, subscribers_lost, average_view_duration, estimated_minutes_watched, annotation_click_through_rate, annotation_close_rate, average_view_percentage) FROM stdin;
\.


--
-- Name: youtube_channel_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_metrics_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_channel_shares_by_country_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_shares_by_country_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_shares_by_country_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_shares_by_country_days_archive (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_shares_by_country_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_shares_by_country_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_shares_by_country_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_shares_by_country_months (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_shares_by_country_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_shares_by_country_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_shares_by_country_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_shares_by_country_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_shares_by_country_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_shares_by_country_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_channel_subscribers_gained_by_country_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_subscribers_gained_by_country_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_subscribers_gained_by_country_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_subscribers_gained_by_country_days_archive (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_subscribers_gained_by_country_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_subscribers_gained_by_country_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_subscribers_gained_by_country_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_subscribers_gained_by_country_months (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_subscribers_gained_by_country_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_subscribers_gained_by_country_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_subscribers_gained_by_country_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_subscribers_gained_by_country_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_subscribers_gained_by_country_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_subscribers_gained_by_country_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_channel_subscribers_lost_by_country_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_subscribers_lost_by_country_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_subscribers_lost_by_country_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_subscribers_lost_by_country_days_archive (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_subscribers_lost_by_country_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_subscribers_lost_by_country_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_subscribers_lost_by_country_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_subscribers_lost_by_country_months (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_subscribers_lost_by_country_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_subscribers_lost_by_country_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_subscribers_lost_by_country_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_subscribers_lost_by_country_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_subscribers_lost_by_country_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_subscribers_lost_by_country_weeks_id_seq', 1, false);


--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq1', 1, false);


--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_viewer_percentage_by_age_group_and_gend_id_seq2', 1, false);


--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gende_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_viewer_percentage_by_age_group_and_gende_id_seq', 1, false);


--
-- Data for Name: youtube_channel_viewer_percentage_by_age_group_and_gender_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_age_group_and_gender_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_viewer_percentage_by_age_group_and_gender_days_; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_age_group_and_gender_days_ (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_viewer_percentage_by_age_group_and_gender_month; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_age_group_and_gender_month (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_viewer_percentage_by_age_group_and_gender_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_age_group_and_gender_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_viewer_percentage_by_age_group_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_age_group_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_viewer_percentage_by_age_group_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_age_group_days_archive (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_viewer_percentage_by_age_group_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_viewer_percentage_by_age_group_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_viewer_percentage_by_age_group_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_age_group_months (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_viewer_percentage_by_age_group_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_viewer_percentage_by_age_group_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_viewer_percentage_by_age_group_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_age_group_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_viewer_percentage_by_age_group_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_viewer_percentage_by_age_group_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_channel_viewer_percentage_by_gender_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_gender_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_viewer_percentage_by_gender_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_gender_days_archive (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_viewer_percentage_by_gender_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_viewer_percentage_by_gender_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_viewer_percentage_by_gender_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_gender_months (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_viewer_percentage_by_gender_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_viewer_percentage_by_gender_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_viewer_percentage_by_gender_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_viewer_percentage_by_gender_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_viewer_percentage_by_gender_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_viewer_percentage_by_gender_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_channel_views_by_country_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_views_by_country_days (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Data for Name: youtube_channel_views_by_country_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_views_by_country_days_archive (id, youtube_channel_metrics_day_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_views_by_country_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_views_by_country_days_id_seq', 1, false);


--
-- Data for Name: youtube_channel_views_by_country_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_views_by_country_months (id, youtube_channel_metrics_month_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_views_by_country_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_views_by_country_months_id_seq', 1, false);


--
-- Data for Name: youtube_channel_views_by_country_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_channel_views_by_country_weeks (id, youtube_channel_metrics_week_id, name_id, value) FROM stdin;
\.


--
-- Name: youtube_channel_views_by_country_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_channel_views_by_country_weeks_id_seq', 1, false);


--
-- Data for Name: youtube_video_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_video_metadata (id, channel_id, video_id, published_at, title) FROM stdin;
\.


--
-- Data for Name: youtube_video_metadata_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_video_metadata_archive (id, channel_id, video_id, published_at, title) FROM stdin;
\.


--
-- Name: youtube_video_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_video_metadata_id_seq', 1, false);


--
-- Data for Name: youtube_video_metrics_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_video_metrics_days (id, channel_id, video_id, date, created_at, updated_at, views, uniques, comments, likes, dislikes, shares, favorites_added, favorites_removed, subscribers_gained, subscribers_lost, average_view_duration, estimated_minutes_watched, annotation_click_through_rate, annotation_close_rate, average_view_percentage) FROM stdin;
\.


--
-- Data for Name: youtube_video_metrics_days_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_video_metrics_days_archive (id, channel_id, video_id, date, created_at, updated_at, views, uniques, comments, likes, dislikes, shares, favorites_added, favorites_removed, subscribers_gained, subscribers_lost, average_view_duration, estimated_minutes_watched, annotation_click_through_rate, annotation_close_rate, average_view_percentage) FROM stdin;
\.


--
-- Name: youtube_video_metrics_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_video_metrics_days_id_seq', 1, false);


--
-- Data for Name: youtube_video_metrics_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_video_metrics_months (id, channel_id, video_id, date, created_at, updated_at, views, uniques, comments, likes, dislikes, shares, favorites_added, favorites_removed, subscribers_gained, subscribers_lost, average_view_duration, estimated_minutes_watched, annotation_click_through_rate, annotation_close_rate, average_view_percentage) FROM stdin;
\.


--
-- Name: youtube_video_metrics_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_video_metrics_months_id_seq', 1, false);


--
-- Data for Name: youtube_video_metrics_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY youtube_video_metrics_weeks (id, channel_id, video_id, date, created_at, updated_at, views, uniques, comments, likes, dislikes, shares, favorites_added, favorites_removed, subscribers_gained, subscribers_lost, average_view_duration, estimated_minutes_watched, annotation_click_through_rate, annotation_close_rate, average_view_percentage) FROM stdin;
\.


--
-- Name: youtube_video_metrics_weeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('youtube_video_metrics_weeks_id_seq', 1, false);


--
-- Name: api_keys_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY api_keys
    ADD CONSTRAINT api_keys_key_key UNIQUE (key);


--
-- Name: api_keys_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY api_keys
    ADD CONSTRAINT api_keys_name_key UNIQUE (name);


--
-- Name: api_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY api_keys
    ADD CONSTRAINT api_keys_pkey PRIMARY KEY (id);


--
-- Name: backfill_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY backfill_requests
    ADD CONSTRAINT backfill_requests_pkey PRIMARY KEY (id);


--
-- Name: cidx_cm_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_metrics_days
    ADD CONSTRAINT cidx_cm_days_on_id_and_date UNIQUE (channel_id, date);


--
-- Name: cidx_cm_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_metrics_months
    ADD CONSTRAINT cidx_cm_months_on_id_and_date UNIQUE (channel_id, date);


--
-- Name: cidx_cm_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_metrics_weeks
    ADD CONSTRAINT cidx_cm_weeks_on_id_and_date UNIQUE (channel_id, date);


--
-- Name: cidx_gcircm_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_circle_metrics_days
    ADD CONSTRAINT cidx_gcircm_days_on_id_and_date UNIQUE (page_id, circle_id, date);


--
-- Name: cidx_gcircm_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_circle_metrics_months
    ADD CONSTRAINT cidx_gcircm_months_on_id_and_date UNIQUE (page_id, circle_id, date);


--
-- Name: cidx_gcircm_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_circle_metrics_weeks
    ADD CONSTRAINT cidx_gcircm_weeks_on_id_and_date UNIQUE (page_id, circle_id, date);


--
-- Name: cidx_gcircmcircle_metadata_on_circle_y_page_ids; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_circle_metadata
    ADD CONSTRAINT cidx_gcircmcircle_metadata_on_circle_y_page_ids UNIQUE (page_id, circle_id);


--
-- Name: cidx_gpgpm_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_page_metrics_days
    ADD CONSTRAINT cidx_gpgpm_days_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_gpgpm_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_page_metrics_months
    ADD CONSTRAINT cidx_gpgpm_months_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_gpgpm_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_page_metrics_weeks
    ADD CONSTRAINT cidx_gpgpm_weeks_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_gpstpm_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_post_metrics_days
    ADD CONSTRAINT cidx_gpstpm_days_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_gpstpm_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_post_metrics_months
    ADD CONSTRAINT cidx_gpstpm_months_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_gpstpm_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_post_metrics_weeks
    ADD CONSTRAINT cidx_gpstpm_weeks_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_gpstpmpost_metadata_on_post_y_page_ids; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_post_metadata
    ADD CONSTRAINT cidx_gpstpmpost_metadata_on_post_y_page_ids UNIQUE (page_id, post_id);


--
-- Name: cidx_igpg_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_page_metrics_days
    ADD CONSTRAINT cidx_igpg_days_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_igpg_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_page_metrics_months
    ADD CONSTRAINT cidx_igpg_months_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_igpg_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_page_metrics_weeks
    ADD CONSTRAINT cidx_igpg_weeks_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_igps_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_post_metrics_days
    ADD CONSTRAINT cidx_igps_days_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_igps_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_post_metrics_months
    ADD CONSTRAINT cidx_igps_months_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_igps_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_post_metrics_weeks
    ADD CONSTRAINT cidx_igps_weeks_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_igpspost_metadata_on_post_y_page_ids; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_post_metadata
    ADD CONSTRAINT cidx_igpspost_metadata_on_post_y_page_ids UNIQUE (page_id, post_id);


--
-- Name: cidx_lipg_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_page_metrics_days
    ADD CONSTRAINT cidx_lipg_days_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_lipg_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_page_metrics_months
    ADD CONSTRAINT cidx_lipg_months_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_lipg_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_page_metrics_weeks
    ADD CONSTRAINT cidx_lipg_weeks_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_lips_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_post_metrics_days
    ADD CONSTRAINT cidx_lips_days_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_lips_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_post_metrics_months
    ADD CONSTRAINT cidx_lips_months_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_lips_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_post_metrics_weeks
    ADD CONSTRAINT cidx_lips_weeks_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_lipspost_metadata_on_post_y_page_ids; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_post_metadata
    ADD CONSTRAINT cidx_lipspost_metadata_on_post_y_page_ids UNIQUE (page_id, post_id);


--
-- Name: cidx_names_on_name; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY names
    ADD CONSTRAINT cidx_names_on_name UNIQUE (name);


--
-- Name: cidx_page_01b3645995bf9a0161ed4fa7d6858f69_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_city_days
    ADD CONSTRAINT cidx_page_01b3645995bf9a0161ed4fa7d6858f69_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_0395ec44609f4525f99016aa9d963918_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_views_external_referrals_months
    ADD CONSTRAINT cidx_page_0395ec44609f4525f99016aa9d963918_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_0a12d4d317b0c143f8bb46bab816c0ed_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_days
    ADD CONSTRAINT cidx_page_0a12d4d317b0c143f8bb46bab816c0ed_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_0b159748146e6cdd68ff154d4f9db83e_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_by_like_source_months
    ADD CONSTRAINT cidx_page_0b159748146e6cdd68ff154d4f9db83e_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_0d95feafc2efd3beb16daef95cb6a5ca_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_age_gender_days
    ADD CONSTRAINT cidx_page_0d95feafc2efd3beb16daef95cb6a5ca_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_12083f8abca8b4799bf3039fb6f2c304_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_unique_weeks
    ADD CONSTRAINT cidx_page_12083f8abca8b4799bf3039fb6f2c304_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_12e2e0ee6e4c8b41a85aea2d8753f7bd_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_city_unique_days
    ADD CONSTRAINT cidx_page_12e2e0ee6e4c8b41a85aea2d8753f7bd_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_19a803eaa9a4fdfba0a3b2d9cc80f59b_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_negative_feedback_by_type_weeks
    ADD CONSTRAINT cidx_page_19a803eaa9a4fdfba0a3b2d9cc80f59b_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_19a93ad202615f40826642529a85f9f8_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_city_weeks
    ADD CONSTRAINT cidx_page_19a93ad202615f40826642529a85f9f8_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_1f745c158c245edbcce897a9d9eee954_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_negative_feedback_by_type_days
    ADD CONSTRAINT cidx_page_1f745c158c245edbcce897a9d9eee954_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_22a190dcaaae5bc15ab4c0ee10fc5fcd_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_weeks
    ADD CONSTRAINT cidx_page_22a190dcaaae5bc15ab4c0ee10fc5fcd_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_2641d21fb116e3dbf2f0a97219001380_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_city_months
    ADD CONSTRAINT cidx_page_2641d21fb116e3dbf2f0a97219001380_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_2ac0078dd998e306d983fa4abf8c50ed_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_age_gender_unique_months
    ADD CONSTRAINT cidx_page_2ac0078dd998e306d983fa4abf8c50ed_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_30df4b0f19f8b2830a2d2ac15fa024cc_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_by_like_source_days
    ADD CONSTRAINT cidx_page_30df4b0f19f8b2830a2d2ac15fa024cc_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_3894996ba741713bad06eaa61c85e0c6_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_locale_days
    ADD CONSTRAINT cidx_page_3894996ba741713bad06eaa61c85e0c6_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_3a6bdb12e63a894fb3bab38e7c0ff879_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_unique_days
    ADD CONSTRAINT cidx_page_3a6bdb12e63a894fb3bab38e7c0ff879_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_3a8734f93b81422fc2d5f132fefa86ea_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_consumptions_by_consumption_type_months
    ADD CONSTRAINT cidx_page_3a8734f93b81422fc2d5f132fefa86ea_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_3b79fe674a0a553bc506009f9d50271f_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_age_gender_months
    ADD CONSTRAINT cidx_page_3b79fe674a0a553bc506009f9d50271f_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_421b2eaa40aa4cf0e5cd5573046a526b_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_country_weeks
    ADD CONSTRAINT cidx_page_421b2eaa40aa4cf0e5cd5573046a526b_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_43e14db068a7464d2cee66f99be778b0_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_city_unique_weeks
    ADD CONSTRAINT cidx_page_43e14db068a7464d2cee66f99be778b0_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_46e73ab4cd7353e24e079e6dc17fbdb8_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_country_months
    ADD CONSTRAINT cidx_page_46e73ab4cd7353e24e079e6dc17fbdb8_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_47678b113cb6a6265be7966735bf57f2_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_country_unique_weeks
    ADD CONSTRAINT cidx_page_47678b113cb6a6265be7966735bf57f2_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_48b20106262e912f01be7d15abe79fea_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_consumptions_by_consumption_type_days
    ADD CONSTRAINT cidx_page_48b20106262e912f01be7d15abe79fea_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_4a1bbbb90b16aa82b276c40873dea808_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_locale_unique_days
    ADD CONSTRAINT cidx_page_4a1bbbb90b16aa82b276c40873dea808_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_4ed51f1f774ef6f3a18db3444464fea1_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_country_days
    ADD CONSTRAINT cidx_page_4ed51f1f774ef6f3a18db3444464fea1_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_5063974578406aa90ce7d81f07546edf_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_age_gender_unique_weeks
    ADD CONSTRAINT cidx_page_5063974578406aa90ce7d81f07546edf_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_51356e2bf20427e4a515f82255b92dbd_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_country_unique_days
    ADD CONSTRAINT cidx_page_51356e2bf20427e4a515f82255b92dbd_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_51612dca523bf8952fe720436ac150fc_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_stories_by_story_type_weeks
    ADD CONSTRAINT cidx_page_51612dca523bf8952fe720436ac150fc_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_5522e3902705ef6af600277a1cfef921_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_locale_unique_weeks
    ADD CONSTRAINT cidx_page_5522e3902705ef6af600277a1cfef921_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_5704ee4ed4f6eb4cca24a00c9ff221e8_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_views_external_referrals_days
    ADD CONSTRAINT cidx_page_5704ee4ed4f6eb4cca24a00c9ff221e8_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_58b4d3f685833a873e2ecc11976ac0c5_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_views_external_referrals_weeks
    ADD CONSTRAINT cidx_page_58b4d3f685833a873e2ecc11976ac0c5_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_5bbd2ea0f0a7a64c1a5d1e4b38b73817_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_city_days
    ADD CONSTRAINT cidx_page_5bbd2ea0f0a7a64c1a5d1e4b38b73817_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_5c9799b171094d528d4907482c4c5c71_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_story_type_weeks
    ADD CONSTRAINT cidx_page_5c9799b171094d528d4907482c4c5c71_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_618db3142208bfd382e60e84a15b3ec9_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_gender_age_months
    ADD CONSTRAINT cidx_page_618db3142208bfd382e60e84a15b3ec9_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_64ed002f20e39c954d31b1a952f72863_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_negative_feedback_by_type_months
    ADD CONSTRAINT cidx_page_64ed002f20e39c954d31b1a952f72863_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_6a3342d490a075a4311a91dc020400a5_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_country_days
    ADD CONSTRAINT cidx_page_6a3342d490a075a4311a91dc020400a5_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_6fdd324f77884f370a58c343e6c152c0_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_gender_age_weeks
    ADD CONSTRAINT cidx_page_6fdd324f77884f370a58c343e6c152c0_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_6fe834a69bfced97ac4dacb90f93d15b_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_country_months
    ADD CONSTRAINT cidx_page_6fe834a69bfced97ac4dacb90f93d15b_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_7bf3a029aaee67190f130dc1fdbf2b76_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_stories_by_story_type_months
    ADD CONSTRAINT cidx_page_7bf3a029aaee67190f130dc1fdbf2b76_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_89504a8acd2600ad6c8c05414afdc6d7_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_city_months
    ADD CONSTRAINT cidx_page_89504a8acd2600ad6c8c05414afdc6d7_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_8a97948265c565edc463ea61203f1120_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_age_gender_unique_days
    ADD CONSTRAINT cidx_page_8a97948265c565edc463ea61203f1120_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_9101f1b8066499494a24e17bb8c2cd75_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_story_type_months
    ADD CONSTRAINT cidx_page_9101f1b8066499494a24e17bb8c2cd75_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_9640c56ca5bc29cf0b0e1fa7c0ebe6a5_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_consumptions_by_consumption_type_weeks
    ADD CONSTRAINT cidx_page_9640c56ca5bc29cf0b0e1fa7c0ebe6a5_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_a614352ce832c5cea69450680121e8e6_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_locale_months
    ADD CONSTRAINT cidx_page_a614352ce832c5cea69450680121e8e6_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_b51a443093bac7ce70933f22302ee73c_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_city_weeks
    ADD CONSTRAINT cidx_page_b51a443093bac7ce70933f22302ee73c_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_b776f052b007964ded9081ed916ab35c_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_story_type_days
    ADD CONSTRAINT cidx_page_b776f052b007964ded9081ed916ab35c_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_be5647ddc015f3febe75fbfa1a4b31d3_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_by_like_source_weeks
    ADD CONSTRAINT cidx_page_be5647ddc015f3febe75fbfa1a4b31d3_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_c3311cd77b62680495fd0fbda45377b9_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_unique_months
    ADD CONSTRAINT cidx_page_c3311cd77b62680495fd0fbda45377b9_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_c7ae6655df5e7f6cdf9c40a801e525a5_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_locale_unique_months
    ADD CONSTRAINT cidx_page_c7ae6655df5e7f6cdf9c40a801e525a5_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_c9d8e6f0b7e978a6f7bd5a79f7866c73_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_country_weeks
    ADD CONSTRAINT cidx_page_c9d8e6f0b7e978a6f7bd5a79f7866c73_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_d779a148948bda11a0002a74afbd7917_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_country_unique_months
    ADD CONSTRAINT cidx_page_d779a148948bda11a0002a74afbd7917_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_da04c5077a96933d368d19e41e0df702_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_months
    ADD CONSTRAINT cidx_page_da04c5077a96933d368d19e41e0df702_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_dbff2bba30390b1b7bcca4f03a290fe7_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_locale_months
    ADD CONSTRAINT cidx_page_dbff2bba30390b1b7bcca4f03a290fe7_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_de59a34e262a67f576d61e165ec5b99a_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_stories_by_story_type_days
    ADD CONSTRAINT cidx_page_de59a34e262a67f576d61e165ec5b99a_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_e2eb707e3481dbc06993c8b262d1a970_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_gender_age_days
    ADD CONSTRAINT cidx_page_e2eb707e3481dbc06993c8b262d1a970_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_e66eb66349ff3fb6f75388107e92ba56_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_city_unique_months
    ADD CONSTRAINT cidx_page_e66eb66349ff3fb6f75388107e92ba56_on_pmid UNIQUE (page_metrics_month_id, name_id);


--
-- Name: cidx_page_f225cba22a4cdeae4b12bc211a67b266_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_age_gender_weeks
    ADD CONSTRAINT cidx_page_f225cba22a4cdeae4b12bc211a67b266_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_f9bcd7251fb2a70dd194794432e0cf9a_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_locale_days
    ADD CONSTRAINT cidx_page_f9bcd7251fb2a70dd194794432e0cf9a_on_pmid UNIQUE (page_metrics_day_id, name_id);


--
-- Name: cidx_page_faac6e5b4f7feacd6877b1b8bc159ff7_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_locale_weeks
    ADD CONSTRAINT cidx_page_faac6e5b4f7feacd6877b1b8bc159ff7_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_page_fb8965caa90505af341c4b4296a64c72_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_locale_weeks
    ADD CONSTRAINT cidx_page_fb8965caa90505af341c4b4296a64c72_on_pmid UNIQUE (page_metrics_week_id, name_id);


--
-- Name: cidx_pm_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_metrics_days
    ADD CONSTRAINT cidx_pm_days_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_pm_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_metrics_months
    ADD CONSTRAINT cidx_pm_months_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_pm_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_metrics_weeks
    ADD CONSTRAINT cidx_pm_weeks_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_post_consumptions_by_type_on_post_mid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_consumptions_by_type
    ADD CONSTRAINT cidx_post_consumptions_by_type_on_post_mid UNIQUE (post_metrics_id, name_id);


--
-- Name: cidx_post_consumptions_by_type_unique_on_post_mid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_consumptions_by_type_unique
    ADD CONSTRAINT cidx_post_consumptions_by_type_unique_on_post_mid UNIQUE (post_metrics_id, name_id);


--
-- Name: cidx_post_metrics_geotargets_on_post_mid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_metrics_geotargets
    ADD CONSTRAINT cidx_post_metrics_geotargets_on_post_mid UNIQUE (post_metrics_id, name_id);


--
-- Name: cidx_post_negative_feedback_by_type_on_post_mid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_negative_feedback_by_type
    ADD CONSTRAINT cidx_post_negative_feedback_by_type_on_post_mid UNIQUE (post_metrics_id, name_id);


--
-- Name: cidx_post_negative_feedback_by_type_unique_on_post_mid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_negative_feedback_by_type_unique
    ADD CONSTRAINT cidx_post_negative_feedback_by_type_unique_on_post_mid UNIQUE (post_metrics_id, name_id);


--
-- Name: cidx_post_stories_by_action_type_on_post_mid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_stories_by_action_type
    ADD CONSTRAINT cidx_post_stories_by_action_type_on_post_mid UNIQUE (post_metrics_id, name_id);


--
-- Name: cidx_post_story_adds_by_action_type_on_post_mid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_story_adds_by_action_type
    ADD CONSTRAINT cidx_post_story_adds_by_action_type_on_post_mid UNIQUE (post_metrics_id, name_id);


--
-- Name: cidx_posts_on_post_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_metrics
    ADD CONSTRAINT cidx_posts_on_post_id UNIQUE (post_id);


--
-- Name: cidx_tbpg_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_page_metrics_days
    ADD CONSTRAINT cidx_tbpg_days_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_tbpg_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_page_metrics_months
    ADD CONSTRAINT cidx_tbpg_months_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_tbpg_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_page_metrics_weeks
    ADD CONSTRAINT cidx_tbpg_weeks_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_tbps_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_post_metrics_days
    ADD CONSTRAINT cidx_tbps_days_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_tbps_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_post_metrics_months
    ADD CONSTRAINT cidx_tbps_months_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_tbps_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_post_metrics_weeks
    ADD CONSTRAINT cidx_tbps_weeks_on_id_and_date UNIQUE (page_id, post_id, date);


--
-- Name: cidx_tbpspost_metadata_on_post_y_page_ids; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_post_metadata
    ADD CONSTRAINT cidx_tbpspost_metadata_on_post_y_page_ids UNIQUE (page_id, post_id);


--
-- Name: cidx_tm_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_metrics_days
    ADD CONSTRAINT cidx_tm_days_on_id_and_date UNIQUE (stream_id, date);


--
-- Name: cidx_tm_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_metrics_months
    ADD CONSTRAINT cidx_tm_months_on_id_and_date UNIQUE (stream_id, date);


--
-- Name: cidx_tm_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_metrics_weeks
    ADD CONSTRAINT cidx_tm_weeks_on_id_and_date UNIQUE (stream_id, date);


--
-- Name: cidx_tweets_on_twitter_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tweets
    ADD CONSTRAINT cidx_tweets_on_twitter_id UNIQUE (twitter_id);


--
-- Name: cidx_video_metadata_on_video_y_channel_ids; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_video_metadata
    ADD CONSTRAINT cidx_video_metadata_on_video_y_channel_ids UNIQUE (channel_id, video_id);


--
-- Name: cidx_vm_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_video_metrics_days
    ADD CONSTRAINT cidx_vm_days_on_id_and_date UNIQUE (channel_id, video_id, date);


--
-- Name: cidx_vm_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_video_metrics_months
    ADD CONSTRAINT cidx_vm_months_on_id_and_date UNIQUE (channel_id, video_id, date);


--
-- Name: cidx_vm_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_video_metrics_weeks
    ADD CONSTRAINT cidx_vm_weeks_on_id_and_date UNIQUE (channel_id, video_id, date);


--
-- Name: cidx_wcpg_days_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_page_metrics_days
    ADD CONSTRAINT cidx_wcpg_days_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_wcpg_months_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_page_metrics_months
    ADD CONSTRAINT cidx_wcpg_months_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_wcpg_weeks_on_id_and_date; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_page_metrics_weeks
    ADD CONSTRAINT cidx_wcpg_weeks_on_id_and_date UNIQUE (page_id, date);


--
-- Name: cidx_wechat_027b8e76f477174c38f00e18a9ebc2a4_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_shared_scene_days
    ADD CONSTRAINT cidx_wechat_027b8e76f477174c38f00e18a9ebc2a4_on_pmid UNIQUE (wechat_page_metrics_day_id, name_id);


--
-- Name: cidx_wechat_0aa03c8f2d09c7b58fbc26991d340b48_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_shared_scene_months
    ADD CONSTRAINT cidx_wechat_0aa03c8f2d09c7b58fbc26991d340b48_on_pmid UNIQUE (wechat_page_metrics_month_id, name_id);


--
-- Name: cidx_wechat_102d74b68a5ea7957a6dd0e5c95b80c4_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_count_type_weeks
    ADD CONSTRAINT cidx_wechat_102d74b68a5ea7957a6dd0e5c95b80c4_on_pmid UNIQUE (wechat_page_metrics_week_id, name_id);


--
-- Name: cidx_wechat_175488e62390ecb7d9dfc9730b6e2e60_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_user_followed_source_days
    ADD CONSTRAINT cidx_wechat_175488e62390ecb7d9dfc9730b6e2e60_on_pmid UNIQUE (wechat_page_metrics_day_id, name_id);


--
-- Name: cidx_wechat_344830500dd21bfd4c9442acb23c9849_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_shared_scene_weeks
    ADD CONSTRAINT cidx_wechat_344830500dd21bfd4c9442acb23c9849_on_pmid UNIQUE (wechat_page_metrics_week_id, name_id);


--
-- Name: cidx_wechat_4def545b85e0fe894fbbb8cb45560f8a_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_count_type_months
    ADD CONSTRAINT cidx_wechat_4def545b85e0fe894fbbb8cb45560f8a_on_pmid UNIQUE (wechat_page_metrics_month_id, name_id);


--
-- Name: cidx_wechat_9c8ccbec8089916e10c57f15b10a4a6e_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_user_followed_source_months
    ADD CONSTRAINT cidx_wechat_9c8ccbec8089916e10c57f15b10a4a6e_on_pmid UNIQUE (wechat_page_metrics_month_id, name_id);


--
-- Name: cidx_wechat_b5367bfd34612e3a3a38f8b91a089d45_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_user_followed_source_weeks
    ADD CONSTRAINT cidx_wechat_b5367bfd34612e3a3a38f8b91a089d45_on_pmid UNIQUE (wechat_page_metrics_week_id, name_id);


--
-- Name: cidx_wechat_bd94c77983077dd90423eac8ebb1f8ba_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_read_source_weeks
    ADD CONSTRAINT cidx_wechat_bd94c77983077dd90423eac8ebb1f8ba_on_pmid UNIQUE (wechat_page_metrics_week_id, name_id);


--
-- Name: cidx_wechat_bf10d9ce44f0fa45f64460c831d3d5af_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_user_type_months
    ADD CONSTRAINT cidx_wechat_bf10d9ce44f0fa45f64460c831d3d5af_on_pmid UNIQUE (wechat_page_metrics_month_id, name_id);


--
-- Name: cidx_wechat_c2dd386574bf298413929bceaf1558aa_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_read_source_days
    ADD CONSTRAINT cidx_wechat_c2dd386574bf298413929bceaf1558aa_on_pmid UNIQUE (wechat_page_metrics_day_id, name_id);


--
-- Name: cidx_wechat_cdb4ab1f50a3d099c48010342ed59bae_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_user_type_weeks
    ADD CONSTRAINT cidx_wechat_cdb4ab1f50a3d099c48010342ed59bae_on_pmid UNIQUE (wechat_page_metrics_week_id, name_id);


--
-- Name: cidx_wechat_e023b6746c1787276887c18bbbe8e0ce_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_count_type_days
    ADD CONSTRAINT cidx_wechat_e023b6746c1787276887c18bbbe8e0ce_on_pmid UNIQUE (wechat_page_metrics_day_id, name_id);


--
-- Name: cidx_wechat_e4e09513d4c1c8679050d72fa2100355_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_user_type_days
    ADD CONSTRAINT cidx_wechat_e4e09513d4c1c8679050d72fa2100355_on_pmid UNIQUE (wechat_page_metrics_day_id, name_id);


--
-- Name: cidx_wechat_f20658b115a69da115e03aa80b7a8632_on_pmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_read_source_months
    ADD CONSTRAINT cidx_wechat_f20658b115a69da115e03aa80b7a8632_on_pmid UNIQUE (wechat_page_metrics_month_id, name_id);


--
-- Name: cidx_youtube_0505f9c8030a02cd1da0275e00f106d6_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_comments_by_country_months
    ADD CONSTRAINT cidx_youtube_0505f9c8030a02cd1da0275e00f106d6_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_06148ce7c8f5d0329bf29adb1d92b686_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_removed_by_country_days
    ADD CONSTRAINT cidx_youtube_06148ce7c8f5d0329bf29adb1d92b686_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_0660efde90ff4d1fbfcacb814a9c71ba_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_comments_by_country_weeks
    ADD CONSTRAINT cidx_youtube_0660efde90ff4d1fbfcacb814a9c71ba_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: cidx_youtube_0fd6c9a8e41d5ca405c731a1057d5b24_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_removed_by_country_weeks
    ADD CONSTRAINT cidx_youtube_0fd6c9a8e41d5ca405c731a1057d5b24_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: cidx_youtube_1fc22e943e57ef15f91b0fc3be0cdf42_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_comments_by_country_days
    ADD CONSTRAINT cidx_youtube_1fc22e943e57ef15f91b0fc3be0cdf42_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_2035d37b948af5fd3343b2ea2ff0bb63_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_views_by_country_days
    ADD CONSTRAINT cidx_youtube_2035d37b948af5fd3343b2ea2ff0bb63_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_25364ca6b03b9af67102106da0321838_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_added_by_country_months
    ADD CONSTRAINT cidx_youtube_25364ca6b03b9af67102106da0321838_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_2fd1ac28895452e4f738b97c0b7cc17c_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_gained_by_country_months
    ADD CONSTRAINT cidx_youtube_2fd1ac28895452e4f738b97c0b7cc17c_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_3ce6371283cf4e9ff10affe5495168e2_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_and_gender_days
    ADD CONSTRAINT cidx_youtube_3ce6371283cf4e9ff10affe5495168e2_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_3fb86b4cd72fa69d4b8ece0969fe8fee_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_gender_months
    ADD CONSTRAINT cidx_youtube_3fb86b4cd72fa69d4b8ece0969fe8fee_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_418b1397ce48b95f3a15c911f9a75813_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_shares_by_country_months
    ADD CONSTRAINT cidx_youtube_418b1397ce48b95f3a15c911f9a75813_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_46a5dde49384b884e2c87446b15458ce_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_shares_by_country_weeks
    ADD CONSTRAINT cidx_youtube_46a5dde49384b884e2c87446b15458ce_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: cidx_youtube_4bdf782df91175025578ed45bc719bc3_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_lost_by_country_months
    ADD CONSTRAINT cidx_youtube_4bdf782df91175025578ed45bc719bc3_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_5a85818835e713bbecfc256148658e93_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_views_by_country_months
    ADD CONSTRAINT cidx_youtube_5a85818835e713bbecfc256148658e93_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_6c4e9d163fe94014830343c100def598_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_dislikes_by_country_days
    ADD CONSTRAINT cidx_youtube_6c4e9d163fe94014830343c100def598_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_78294d412a5bdb225d1610b2b4920ccd_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_gender_days
    ADD CONSTRAINT cidx_youtube_78294d412a5bdb225d1610b2b4920ccd_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_7dbe30f38463de17469e16a13c345c77_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_lost_by_country_days
    ADD CONSTRAINT cidx_youtube_7dbe30f38463de17469e16a13c345c77_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_87b03240beda247e532082868e40cd0d_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_gained_by_country_weeks
    ADD CONSTRAINT cidx_youtube_87b03240beda247e532082868e40cd0d_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: cidx_youtube_8fa2446e36b3ce0cc0836ed5f00d41e2_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_added_by_country_weeks
    ADD CONSTRAINT cidx_youtube_8fa2446e36b3ce0cc0836ed5f00d41e2_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: cidx_youtube_9890a2c411eb2d023901cb4fc63783ee_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_shares_by_country_days
    ADD CONSTRAINT cidx_youtube_9890a2c411eb2d023901cb4fc63783ee_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_999423a87e3d33b2be3b232b557a50c0_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_weeks
    ADD CONSTRAINT cidx_youtube_999423a87e3d33b2be3b232b557a50c0_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: cidx_youtube_9d3e8071c640471fe7bae61e0ebbeb01_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_gained_by_country_days
    ADD CONSTRAINT cidx_youtube_9d3e8071c640471fe7bae61e0ebbeb01_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_a6e40bfa435ea19b863b682a9349c481_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_dislikes_by_country_months
    ADD CONSTRAINT cidx_youtube_a6e40bfa435ea19b863b682a9349c481_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_a98ccea90c1db19ce6145db4920e0f8e_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_likes_by_country_days
    ADD CONSTRAINT cidx_youtube_a98ccea90c1db19ce6145db4920e0f8e_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_af839d4f755fe7ccd7e00555e4ec40c7_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_gender_weeks
    ADD CONSTRAINT cidx_youtube_af839d4f755fe7ccd7e00555e4ec40c7_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: cidx_youtube_b81628cd67d4d9894bd406e6821c1f5b_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_and_gender_weeks
    ADD CONSTRAINT cidx_youtube_b81628cd67d4d9894bd406e6821c1f5b_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: cidx_youtube_c1bcc5ed2a1712dd0b74252a3a5e6437_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_months
    ADD CONSTRAINT cidx_youtube_c1bcc5ed2a1712dd0b74252a3a5e6437_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_d54666b6e42458e47b1e4fe83dc0f86f_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_lost_by_country_weeks
    ADD CONSTRAINT cidx_youtube_d54666b6e42458e47b1e4fe83dc0f86f_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: cidx_youtube_db0d895bf79ef55db447d81c2f43e11a_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_likes_by_country_months
    ADD CONSTRAINT cidx_youtube_db0d895bf79ef55db447d81c2f43e11a_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_dfa9f0e02c201aad03811e0276201dc6_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_likes_by_country_weeks
    ADD CONSTRAINT cidx_youtube_dfa9f0e02c201aad03811e0276201dc6_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: cidx_youtube_ea724ac634948b7082821005189ffe3a_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_removed_by_country_months
    ADD CONSTRAINT cidx_youtube_ea724ac634948b7082821005189ffe3a_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_ea8a23ddcc9f17f8d80441d4f3c7c57f_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_days
    ADD CONSTRAINT cidx_youtube_ea8a23ddcc9f17f8d80441d4f3c7c57f_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_ed379920293d64cd4e1b48618f45c22c_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_and_gender_month
    ADD CONSTRAINT cidx_youtube_ed379920293d64cd4e1b48618f45c22c_on_cmid UNIQUE (youtube_channel_metrics_month_id, name_id);


--
-- Name: cidx_youtube_f4695ac91dd256eaf886fb8f16670f29_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_added_by_country_days
    ADD CONSTRAINT cidx_youtube_f4695ac91dd256eaf886fb8f16670f29_on_cmid UNIQUE (youtube_channel_metrics_day_id, name_id);


--
-- Name: cidx_youtube_f586e5d74cc4b29d18d43def9a05bad6_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_views_by_country_weeks
    ADD CONSTRAINT cidx_youtube_f586e5d74cc4b29d18d43def9a05bad6_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: cidx_youtube_f7cc0309312248c6fc1c785d3b60fb4d_on_cmid; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_dislikes_by_country_weeks
    ADD CONSTRAINT cidx_youtube_f7cc0309312248c6fc1c785d3b60fb4d_on_cmid UNIQUE (youtube_channel_metrics_week_id, name_id);


--
-- Name: googleplus_circle_metadata_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_circle_metadata_archive
    ADD CONSTRAINT googleplus_circle_metadata_archive_pkey PRIMARY KEY (id);


--
-- Name: googleplus_circle_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_circle_metadata
    ADD CONSTRAINT googleplus_circle_metadata_pkey PRIMARY KEY (id);


--
-- Name: googleplus_circle_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_circle_metrics_days_archive
    ADD CONSTRAINT googleplus_circle_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: googleplus_circle_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_circle_metrics_days
    ADD CONSTRAINT googleplus_circle_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: googleplus_circle_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_circle_metrics_months
    ADD CONSTRAINT googleplus_circle_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: googleplus_circle_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_circle_metrics_weeks
    ADD CONSTRAINT googleplus_circle_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: googleplus_page_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_page_metrics_days_archive
    ADD CONSTRAINT googleplus_page_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: googleplus_page_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_page_metrics_days
    ADD CONSTRAINT googleplus_page_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: googleplus_page_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_page_metrics_months
    ADD CONSTRAINT googleplus_page_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: googleplus_page_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_page_metrics_weeks
    ADD CONSTRAINT googleplus_page_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: googleplus_post_metadata_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_post_metadata_archive
    ADD CONSTRAINT googleplus_post_metadata_archive_pkey PRIMARY KEY (id);


--
-- Name: googleplus_post_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_post_metadata
    ADD CONSTRAINT googleplus_post_metadata_pkey PRIMARY KEY (id);


--
-- Name: googleplus_post_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_post_metrics_days_archive
    ADD CONSTRAINT googleplus_post_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: googleplus_post_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_post_metrics_days
    ADD CONSTRAINT googleplus_post_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: googleplus_post_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_post_metrics_months
    ADD CONSTRAINT googleplus_post_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: googleplus_post_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY googleplus_post_metrics_weeks
    ADD CONSTRAINT googleplus_post_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: instagram_page_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_page_metrics_days_archive
    ADD CONSTRAINT instagram_page_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: instagram_page_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_page_metrics_days
    ADD CONSTRAINT instagram_page_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: instagram_page_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_page_metrics_months
    ADD CONSTRAINT instagram_page_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: instagram_page_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_page_metrics_weeks
    ADD CONSTRAINT instagram_page_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: instagram_post_metadata_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_post_metadata_archive
    ADD CONSTRAINT instagram_post_metadata_archive_pkey PRIMARY KEY (id);


--
-- Name: instagram_post_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_post_metadata
    ADD CONSTRAINT instagram_post_metadata_pkey PRIMARY KEY (id);


--
-- Name: instagram_post_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_post_metrics_days_archive
    ADD CONSTRAINT instagram_post_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: instagram_post_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_post_metrics_days
    ADD CONSTRAINT instagram_post_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: instagram_post_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_post_metrics_months
    ADD CONSTRAINT instagram_post_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: instagram_post_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instagram_post_metrics_weeks
    ADD CONSTRAINT instagram_post_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: linkedin_page_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_page_metrics_days_archive
    ADD CONSTRAINT linkedin_page_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: linkedin_page_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_page_metrics_days
    ADD CONSTRAINT linkedin_page_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: linkedin_page_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_page_metrics_months
    ADD CONSTRAINT linkedin_page_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: linkedin_page_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_page_metrics_weeks
    ADD CONSTRAINT linkedin_page_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: linkedin_post_metadata_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_post_metadata_archive
    ADD CONSTRAINT linkedin_post_metadata_archive_pkey PRIMARY KEY (id);


--
-- Name: linkedin_post_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_post_metadata
    ADD CONSTRAINT linkedin_post_metadata_pkey PRIMARY KEY (id);


--
-- Name: linkedin_post_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_post_metrics_days_archive
    ADD CONSTRAINT linkedin_post_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: linkedin_post_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_post_metrics_days
    ADD CONSTRAINT linkedin_post_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: linkedin_post_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_post_metrics_months
    ADD CONSTRAINT linkedin_post_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: linkedin_post_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY linkedin_post_metrics_weeks
    ADD CONSTRAINT linkedin_post_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: names_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY names
    ADD CONSTRAINT names_pkey PRIMARY KEY (id);


--
-- Name: page_consumptions_by_consumption_type_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_consumptions_by_consumption_type_days_archive
    ADD CONSTRAINT page_consumptions_by_consumption_type_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_consumptions_by_consumption_type_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_consumptions_by_consumption_type_days
    ADD CONSTRAINT page_consumptions_by_consumption_type_days_pkey PRIMARY KEY (id);


--
-- Name: page_consumptions_by_consumption_type_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_consumptions_by_consumption_type_months
    ADD CONSTRAINT page_consumptions_by_consumption_type_months_pkey PRIMARY KEY (id);


--
-- Name: page_consumptions_by_consumption_type_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_consumptions_by_consumption_type_weeks
    ADD CONSTRAINT page_consumptions_by_consumption_type_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_fans_by_like_source_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_by_like_source_days_archive
    ADD CONSTRAINT page_fans_by_like_source_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_fans_by_like_source_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_by_like_source_days
    ADD CONSTRAINT page_fans_by_like_source_days_pkey PRIMARY KEY (id);


--
-- Name: page_fans_by_like_source_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_by_like_source_months
    ADD CONSTRAINT page_fans_by_like_source_months_pkey PRIMARY KEY (id);


--
-- Name: page_fans_by_like_source_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_by_like_source_weeks
    ADD CONSTRAINT page_fans_by_like_source_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_fans_city_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_city_days_archive
    ADD CONSTRAINT page_fans_city_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_fans_city_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_city_days
    ADD CONSTRAINT page_fans_city_days_pkey PRIMARY KEY (id);


--
-- Name: page_fans_city_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_city_months
    ADD CONSTRAINT page_fans_city_months_pkey PRIMARY KEY (id);


--
-- Name: page_fans_city_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_city_weeks
    ADD CONSTRAINT page_fans_city_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_fans_country_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_country_days_archive
    ADD CONSTRAINT page_fans_country_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_fans_country_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_country_days
    ADD CONSTRAINT page_fans_country_days_pkey PRIMARY KEY (id);


--
-- Name: page_fans_country_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_country_months
    ADD CONSTRAINT page_fans_country_months_pkey PRIMARY KEY (id);


--
-- Name: page_fans_country_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_country_weeks
    ADD CONSTRAINT page_fans_country_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_fans_gender_age_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_gender_age_days_archive
    ADD CONSTRAINT page_fans_gender_age_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_fans_gender_age_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_gender_age_days
    ADD CONSTRAINT page_fans_gender_age_days_pkey PRIMARY KEY (id);


--
-- Name: page_fans_gender_age_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_gender_age_months
    ADD CONSTRAINT page_fans_gender_age_months_pkey PRIMARY KEY (id);


--
-- Name: page_fans_gender_age_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_gender_age_weeks
    ADD CONSTRAINT page_fans_gender_age_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_fans_locale_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_locale_days_archive
    ADD CONSTRAINT page_fans_locale_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_fans_locale_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_locale_days
    ADD CONSTRAINT page_fans_locale_days_pkey PRIMARY KEY (id);


--
-- Name: page_fans_locale_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_locale_months
    ADD CONSTRAINT page_fans_locale_months_pkey PRIMARY KEY (id);


--
-- Name: page_fans_locale_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_fans_locale_weeks
    ADD CONSTRAINT page_fans_locale_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_age_gender_unique_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_age_gender_unique_days_archive
    ADD CONSTRAINT page_impressions_by_age_gender_unique_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_age_gender_unique_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_age_gender_unique_days
    ADD CONSTRAINT page_impressions_by_age_gender_unique_days_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_age_gender_unique_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_age_gender_unique_months
    ADD CONSTRAINT page_impressions_by_age_gender_unique_months_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_age_gender_unique_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_age_gender_unique_weeks
    ADD CONSTRAINT page_impressions_by_age_gender_unique_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_city_unique_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_city_unique_days_archive
    ADD CONSTRAINT page_impressions_by_city_unique_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_city_unique_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_city_unique_days
    ADD CONSTRAINT page_impressions_by_city_unique_days_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_city_unique_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_city_unique_months
    ADD CONSTRAINT page_impressions_by_city_unique_months_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_city_unique_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_city_unique_weeks
    ADD CONSTRAINT page_impressions_by_city_unique_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_country_unique_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_country_unique_days_archive
    ADD CONSTRAINT page_impressions_by_country_unique_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_country_unique_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_country_unique_days
    ADD CONSTRAINT page_impressions_by_country_unique_days_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_country_unique_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_country_unique_months
    ADD CONSTRAINT page_impressions_by_country_unique_months_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_country_unique_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_country_unique_weeks
    ADD CONSTRAINT page_impressions_by_country_unique_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_locale_unique_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_locale_unique_days_archive
    ADD CONSTRAINT page_impressions_by_locale_unique_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_locale_unique_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_locale_unique_days
    ADD CONSTRAINT page_impressions_by_locale_unique_days_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_locale_unique_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_locale_unique_months
    ADD CONSTRAINT page_impressions_by_locale_unique_months_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_locale_unique_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_locale_unique_weeks
    ADD CONSTRAINT page_impressions_by_locale_unique_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_story_type_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_days_archive
    ADD CONSTRAINT page_impressions_by_story_type_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_story_type_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_days
    ADD CONSTRAINT page_impressions_by_story_type_days_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_story_type_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_months
    ADD CONSTRAINT page_impressions_by_story_type_months_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_story_type_unique_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_unique_days_archive
    ADD CONSTRAINT page_impressions_by_story_type_unique_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_story_type_unique_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_unique_days
    ADD CONSTRAINT page_impressions_by_story_type_unique_days_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_story_type_unique_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_unique_months
    ADD CONSTRAINT page_impressions_by_story_type_unique_months_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_story_type_unique_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_unique_weeks
    ADD CONSTRAINT page_impressions_by_story_type_unique_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_impressions_by_story_type_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_impressions_by_story_type_weeks
    ADD CONSTRAINT page_impressions_by_story_type_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_metrics_days_archive
    ADD CONSTRAINT page_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_metrics_days
    ADD CONSTRAINT page_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: page_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_metrics_months
    ADD CONSTRAINT page_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: page_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_metrics_weeks
    ADD CONSTRAINT page_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_negative_feedback_by_type_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_negative_feedback_by_type_days_archive
    ADD CONSTRAINT page_negative_feedback_by_type_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_negative_feedback_by_type_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_negative_feedback_by_type_days
    ADD CONSTRAINT page_negative_feedback_by_type_days_pkey PRIMARY KEY (id);


--
-- Name: page_negative_feedback_by_type_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_negative_feedback_by_type_months
    ADD CONSTRAINT page_negative_feedback_by_type_months_pkey PRIMARY KEY (id);


--
-- Name: page_negative_feedback_by_type_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_negative_feedback_by_type_weeks
    ADD CONSTRAINT page_negative_feedback_by_type_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_stories_by_story_type_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_stories_by_story_type_days_archive
    ADD CONSTRAINT page_stories_by_story_type_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_stories_by_story_type_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_stories_by_story_type_days
    ADD CONSTRAINT page_stories_by_story_type_days_pkey PRIMARY KEY (id);


--
-- Name: page_stories_by_story_type_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_stories_by_story_type_months
    ADD CONSTRAINT page_stories_by_story_type_months_pkey PRIMARY KEY (id);


--
-- Name: page_stories_by_story_type_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_stories_by_story_type_weeks
    ADD CONSTRAINT page_stories_by_story_type_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_age_gender_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_age_gender_days_archive
    ADD CONSTRAINT page_storytellers_by_age_gender_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_age_gender_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_age_gender_days
    ADD CONSTRAINT page_storytellers_by_age_gender_days_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_age_gender_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_age_gender_months
    ADD CONSTRAINT page_storytellers_by_age_gender_months_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_age_gender_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_age_gender_weeks
    ADD CONSTRAINT page_storytellers_by_age_gender_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_city_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_city_days_archive
    ADD CONSTRAINT page_storytellers_by_city_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_city_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_city_days
    ADD CONSTRAINT page_storytellers_by_city_days_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_city_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_city_months
    ADD CONSTRAINT page_storytellers_by_city_months_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_city_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_city_weeks
    ADD CONSTRAINT page_storytellers_by_city_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_country_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_country_days_archive
    ADD CONSTRAINT page_storytellers_by_country_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_country_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_country_days
    ADD CONSTRAINT page_storytellers_by_country_days_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_country_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_country_months
    ADD CONSTRAINT page_storytellers_by_country_months_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_country_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_country_weeks
    ADD CONSTRAINT page_storytellers_by_country_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_locale_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_locale_days_archive
    ADD CONSTRAINT page_storytellers_by_locale_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_locale_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_locale_days
    ADD CONSTRAINT page_storytellers_by_locale_days_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_locale_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_locale_months
    ADD CONSTRAINT page_storytellers_by_locale_months_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_locale_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_locale_weeks
    ADD CONSTRAINT page_storytellers_by_locale_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_story_type_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_story_type_days_archive
    ADD CONSTRAINT page_storytellers_by_story_type_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_story_type_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_story_type_days
    ADD CONSTRAINT page_storytellers_by_story_type_days_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_story_type_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_story_type_months
    ADD CONSTRAINT page_storytellers_by_story_type_months_pkey PRIMARY KEY (id);


--
-- Name: page_storytellers_by_story_type_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_storytellers_by_story_type_weeks
    ADD CONSTRAINT page_storytellers_by_story_type_weeks_pkey PRIMARY KEY (id);


--
-- Name: page_views_external_referrals_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_views_external_referrals_days_archive
    ADD CONSTRAINT page_views_external_referrals_days_archive_pkey PRIMARY KEY (id);


--
-- Name: page_views_external_referrals_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_views_external_referrals_days
    ADD CONSTRAINT page_views_external_referrals_days_pkey PRIMARY KEY (id);


--
-- Name: page_views_external_referrals_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_views_external_referrals_months
    ADD CONSTRAINT page_views_external_referrals_months_pkey PRIMARY KEY (id);


--
-- Name: page_views_external_referrals_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY page_views_external_referrals_weeks
    ADD CONSTRAINT page_views_external_referrals_weeks_pkey PRIMARY KEY (id);


--
-- Name: post_consumptions_by_type_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_consumptions_by_type_archive
    ADD CONSTRAINT post_consumptions_by_type_archive_pkey PRIMARY KEY (id);


--
-- Name: post_consumptions_by_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_consumptions_by_type
    ADD CONSTRAINT post_consumptions_by_type_pkey PRIMARY KEY (id);


--
-- Name: post_consumptions_by_type_unique_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_consumptions_by_type_unique_archive
    ADD CONSTRAINT post_consumptions_by_type_unique_archive_pkey PRIMARY KEY (id);


--
-- Name: post_consumptions_by_type_unique_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_consumptions_by_type_unique
    ADD CONSTRAINT post_consumptions_by_type_unique_pkey PRIMARY KEY (id);


--
-- Name: post_metrics_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_metrics_archive
    ADD CONSTRAINT post_metrics_archive_pkey PRIMARY KEY (id);


--
-- Name: post_metrics_geotargets_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_metrics_geotargets_archive
    ADD CONSTRAINT post_metrics_geotargets_archive_pkey PRIMARY KEY (id);


--
-- Name: post_metrics_geotargets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_metrics_geotargets
    ADD CONSTRAINT post_metrics_geotargets_pkey PRIMARY KEY (id);


--
-- Name: post_metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_metrics
    ADD CONSTRAINT post_metrics_pkey PRIMARY KEY (id);


--
-- Name: post_negative_feedback_by_type_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_negative_feedback_by_type_archive
    ADD CONSTRAINT post_negative_feedback_by_type_archive_pkey PRIMARY KEY (id);


--
-- Name: post_negative_feedback_by_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_negative_feedback_by_type
    ADD CONSTRAINT post_negative_feedback_by_type_pkey PRIMARY KEY (id);


--
-- Name: post_negative_feedback_by_type_unique_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_negative_feedback_by_type_unique_archive
    ADD CONSTRAINT post_negative_feedback_by_type_unique_archive_pkey PRIMARY KEY (id);


--
-- Name: post_negative_feedback_by_type_unique_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_negative_feedback_by_type_unique
    ADD CONSTRAINT post_negative_feedback_by_type_unique_pkey PRIMARY KEY (id);


--
-- Name: post_stories_by_action_type_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_stories_by_action_type_archive
    ADD CONSTRAINT post_stories_by_action_type_archive_pkey PRIMARY KEY (id);


--
-- Name: post_stories_by_action_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_stories_by_action_type
    ADD CONSTRAINT post_stories_by_action_type_pkey PRIMARY KEY (id);


--
-- Name: post_story_adds_by_action_type_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_story_adds_by_action_type_archive
    ADD CONSTRAINT post_story_adds_by_action_type_archive_pkey PRIMARY KEY (id);


--
-- Name: post_story_adds_by_action_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_story_adds_by_action_type
    ADD CONSTRAINT post_story_adds_by_action_type_pkey PRIMARY KEY (id);


--
-- Name: rerollup_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rerollup_requests
    ADD CONSTRAINT rerollup_requests_pkey PRIMARY KEY (id);


--
-- Name: tumblr_page_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_page_metrics_days_archive
    ADD CONSTRAINT tumblr_page_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: tumblr_page_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_page_metrics_days
    ADD CONSTRAINT tumblr_page_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: tumblr_page_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_page_metrics_months
    ADD CONSTRAINT tumblr_page_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: tumblr_page_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_page_metrics_weeks
    ADD CONSTRAINT tumblr_page_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: tumblr_post_metadata_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_post_metadata_archive
    ADD CONSTRAINT tumblr_post_metadata_archive_pkey PRIMARY KEY (id);


--
-- Name: tumblr_post_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_post_metadata
    ADD CONSTRAINT tumblr_post_metadata_pkey PRIMARY KEY (id);


--
-- Name: tumblr_post_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_post_metrics_days_archive
    ADD CONSTRAINT tumblr_post_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: tumblr_post_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_post_metrics_days
    ADD CONSTRAINT tumblr_post_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: tumblr_post_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_post_metrics_months
    ADD CONSTRAINT tumblr_post_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: tumblr_post_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumblr_post_metrics_weeks
    ADD CONSTRAINT tumblr_post_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: tweet_urls_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tweet_urls_archive
    ADD CONSTRAINT tweet_urls_archive_pkey PRIMARY KEY (id);


--
-- Name: tweet_urls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tweet_urls
    ADD CONSTRAINT tweet_urls_pkey PRIMARY KEY (id);


--
-- Name: tweets_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tweets_archive
    ADD CONSTRAINT tweets_archive_pkey PRIMARY KEY (id);


--
-- Name: tweets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tweets
    ADD CONSTRAINT tweets_pkey PRIMARY KEY (id);


--
-- Name: twitter_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_metrics_days_archive
    ADD CONSTRAINT twitter_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: twitter_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_metrics_days
    ADD CONSTRAINT twitter_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: twitter_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_metrics_months
    ADD CONSTRAINT twitter_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: twitter_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_metrics_weeks
    ADD CONSTRAINT twitter_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_article_read_source_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_read_source_days_archive
    ADD CONSTRAINT wechat_daily_article_read_source_days_archive_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_article_read_source_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_read_source_days
    ADD CONSTRAINT wechat_daily_article_read_source_days_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_article_read_source_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_read_source_months
    ADD CONSTRAINT wechat_daily_article_read_source_months_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_article_read_source_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_read_source_weeks
    ADD CONSTRAINT wechat_daily_article_read_source_weeks_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_article_shared_scene_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_shared_scene_days_archive
    ADD CONSTRAINT wechat_daily_article_shared_scene_days_archive_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_article_shared_scene_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_shared_scene_days
    ADD CONSTRAINT wechat_daily_article_shared_scene_days_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_article_shared_scene_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_shared_scene_months
    ADD CONSTRAINT wechat_daily_article_shared_scene_months_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_article_shared_scene_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_article_shared_scene_weeks
    ADD CONSTRAINT wechat_daily_article_shared_scene_weeks_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_msg_count_type_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_count_type_days_archive
    ADD CONSTRAINT wechat_daily_msg_count_type_days_archive_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_msg_count_type_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_count_type_days
    ADD CONSTRAINT wechat_daily_msg_count_type_days_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_msg_count_type_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_count_type_months
    ADD CONSTRAINT wechat_daily_msg_count_type_months_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_msg_count_type_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_count_type_weeks
    ADD CONSTRAINT wechat_daily_msg_count_type_weeks_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_msg_user_type_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_user_type_days_archive
    ADD CONSTRAINT wechat_daily_msg_user_type_days_archive_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_msg_user_type_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_user_type_days
    ADD CONSTRAINT wechat_daily_msg_user_type_days_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_msg_user_type_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_user_type_months
    ADD CONSTRAINT wechat_daily_msg_user_type_months_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_msg_user_type_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_msg_user_type_weeks
    ADD CONSTRAINT wechat_daily_msg_user_type_weeks_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_user_followed_source_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_user_followed_source_days_archive
    ADD CONSTRAINT wechat_daily_user_followed_source_days_archive_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_user_followed_source_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_user_followed_source_days
    ADD CONSTRAINT wechat_daily_user_followed_source_days_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_user_followed_source_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_user_followed_source_months
    ADD CONSTRAINT wechat_daily_user_followed_source_months_pkey PRIMARY KEY (id);


--
-- Name: wechat_daily_user_followed_source_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_daily_user_followed_source_weeks
    ADD CONSTRAINT wechat_daily_user_followed_source_weeks_pkey PRIMARY KEY (id);


--
-- Name: wechat_page_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_page_metrics_days_archive
    ADD CONSTRAINT wechat_page_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: wechat_page_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_page_metrics_days
    ADD CONSTRAINT wechat_page_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: wechat_page_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_page_metrics_months
    ADD CONSTRAINT wechat_page_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: wechat_page_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wechat_page_metrics_weeks
    ADD CONSTRAINT wechat_page_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_comments_by_country_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_comments_by_country_days_archive
    ADD CONSTRAINT youtube_channel_comments_by_country_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_comments_by_country_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_comments_by_country_days
    ADD CONSTRAINT youtube_channel_comments_by_country_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_comments_by_country_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_comments_by_country_months
    ADD CONSTRAINT youtube_channel_comments_by_country_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_comments_by_country_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_comments_by_country_weeks
    ADD CONSTRAINT youtube_channel_comments_by_country_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_dislikes_by_country_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_dislikes_by_country_days_archive
    ADD CONSTRAINT youtube_channel_dislikes_by_country_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_dislikes_by_country_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_dislikes_by_country_days
    ADD CONSTRAINT youtube_channel_dislikes_by_country_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_dislikes_by_country_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_dislikes_by_country_months
    ADD CONSTRAINT youtube_channel_dislikes_by_country_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_dislikes_by_country_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_dislikes_by_country_weeks
    ADD CONSTRAINT youtube_channel_dislikes_by_country_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_favorites_added_by_country_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_added_by_country_days_archive
    ADD CONSTRAINT youtube_channel_favorites_added_by_country_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_favorites_added_by_country_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_added_by_country_days
    ADD CONSTRAINT youtube_channel_favorites_added_by_country_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_favorites_added_by_country_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_added_by_country_months
    ADD CONSTRAINT youtube_channel_favorites_added_by_country_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_favorites_added_by_country_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_added_by_country_weeks
    ADD CONSTRAINT youtube_channel_favorites_added_by_country_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_favorites_removed_by_country_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_removed_by_country_days_archive
    ADD CONSTRAINT youtube_channel_favorites_removed_by_country_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_favorites_removed_by_country_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_removed_by_country_days
    ADD CONSTRAINT youtube_channel_favorites_removed_by_country_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_favorites_removed_by_country_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_removed_by_country_months
    ADD CONSTRAINT youtube_channel_favorites_removed_by_country_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_favorites_removed_by_country_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_favorites_removed_by_country_weeks
    ADD CONSTRAINT youtube_channel_favorites_removed_by_country_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_likes_by_country_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_likes_by_country_days_archive
    ADD CONSTRAINT youtube_channel_likes_by_country_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_likes_by_country_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_likes_by_country_days
    ADD CONSTRAINT youtube_channel_likes_by_country_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_likes_by_country_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_likes_by_country_months
    ADD CONSTRAINT youtube_channel_likes_by_country_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_likes_by_country_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_likes_by_country_weeks
    ADD CONSTRAINT youtube_channel_likes_by_country_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_metrics_days_archive
    ADD CONSTRAINT youtube_channel_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_metrics_days
    ADD CONSTRAINT youtube_channel_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_metrics_months
    ADD CONSTRAINT youtube_channel_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_metrics_weeks
    ADD CONSTRAINT youtube_channel_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_shares_by_country_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_shares_by_country_days_archive
    ADD CONSTRAINT youtube_channel_shares_by_country_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_shares_by_country_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_shares_by_country_days
    ADD CONSTRAINT youtube_channel_shares_by_country_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_shares_by_country_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_shares_by_country_months
    ADD CONSTRAINT youtube_channel_shares_by_country_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_shares_by_country_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_shares_by_country_weeks
    ADD CONSTRAINT youtube_channel_shares_by_country_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_subscribers_gained_by_country_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_gained_by_country_days_archive
    ADD CONSTRAINT youtube_channel_subscribers_gained_by_country_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_subscribers_gained_by_country_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_gained_by_country_days
    ADD CONSTRAINT youtube_channel_subscribers_gained_by_country_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_subscribers_gained_by_country_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_gained_by_country_months
    ADD CONSTRAINT youtube_channel_subscribers_gained_by_country_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_subscribers_gained_by_country_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_gained_by_country_weeks
    ADD CONSTRAINT youtube_channel_subscribers_gained_by_country_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_subscribers_lost_by_country_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_lost_by_country_days_archive
    ADD CONSTRAINT youtube_channel_subscribers_lost_by_country_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_subscribers_lost_by_country_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_lost_by_country_days
    ADD CONSTRAINT youtube_channel_subscribers_lost_by_country_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_subscribers_lost_by_country_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_lost_by_country_months
    ADD CONSTRAINT youtube_channel_subscribers_lost_by_country_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_subscribers_lost_by_country_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_subscribers_lost_by_country_weeks
    ADD CONSTRAINT youtube_channel_subscribers_lost_by_country_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gender__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_and_gender_days
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_age_group_and_gender__pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gender_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_and_gender_days_
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_age_group_and_gender_pkey1 PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gender_pkey2; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_and_gender_weeks
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_age_group_and_gender_pkey2 PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_age_group_and_gender_pkey3; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_and_gender_month
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_age_group_and_gender_pkey3 PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_age_group_days_archiv_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_days_archive
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_age_group_days_archiv_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_age_group_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_days
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_age_group_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_age_group_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_months
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_age_group_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_age_group_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_age_group_weeks
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_age_group_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_gender_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_gender_days_archive
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_gender_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_gender_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_gender_days
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_gender_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_gender_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_gender_months
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_gender_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_viewer_percentage_by_gender_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_viewer_percentage_by_gender_weeks
    ADD CONSTRAINT youtube_channel_viewer_percentage_by_gender_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_views_by_country_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_views_by_country_days_archive
    ADD CONSTRAINT youtube_channel_views_by_country_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_views_by_country_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_views_by_country_days
    ADD CONSTRAINT youtube_channel_views_by_country_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_views_by_country_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_views_by_country_months
    ADD CONSTRAINT youtube_channel_views_by_country_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_channel_views_by_country_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_channel_views_by_country_weeks
    ADD CONSTRAINT youtube_channel_views_by_country_weeks_pkey PRIMARY KEY (id);


--
-- Name: youtube_video_metadata_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_video_metadata_archive
    ADD CONSTRAINT youtube_video_metadata_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_video_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_video_metadata
    ADD CONSTRAINT youtube_video_metadata_pkey PRIMARY KEY (id);


--
-- Name: youtube_video_metrics_days_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_video_metrics_days_archive
    ADD CONSTRAINT youtube_video_metrics_days_archive_pkey PRIMARY KEY (id);


--
-- Name: youtube_video_metrics_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_video_metrics_days
    ADD CONSTRAINT youtube_video_metrics_days_pkey PRIMARY KEY (id);


--
-- Name: youtube_video_metrics_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_video_metrics_months
    ADD CONSTRAINT youtube_video_metrics_months_pkey PRIMARY KEY (id);


--
-- Name: youtube_video_metrics_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youtube_video_metrics_weeks
    ADD CONSTRAINT youtube_video_metrics_weeks_pkey PRIMARY KEY (id);


--
-- Name: idx_cm_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_cm_days_on_date ON youtube_channel_metrics_days USING btree (date);


--
-- Name: idx_cm_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_cm_months_on_date ON youtube_channel_metrics_months USING btree (date);


--
-- Name: idx_cm_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_cm_weeks_on_date ON youtube_channel_metrics_weeks USING btree (date);


--
-- Name: idx_gcircm_days_on_circle_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gcircm_days_on_circle_id ON googleplus_circle_metrics_days USING btree (circle_id);


--
-- Name: idx_gcircm_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gcircm_days_on_date ON googleplus_circle_metrics_days USING btree (date);


--
-- Name: idx_gcircm_months_on_circle_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gcircm_months_on_circle_id ON googleplus_circle_metrics_months USING btree (circle_id);


--
-- Name: idx_gcircm_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gcircm_months_on_date ON googleplus_circle_metrics_months USING btree (date);


--
-- Name: idx_gcircm_weeks_on_circle_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gcircm_weeks_on_circle_id ON googleplus_circle_metrics_weeks USING btree (circle_id);


--
-- Name: idx_gcircm_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gcircm_weeks_on_date ON googleplus_circle_metrics_weeks USING btree (date);


--
-- Name: idx_gcircmcircle_metadata_on_circle_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gcircmcircle_metadata_on_circle_id ON googleplus_circle_metadata USING btree (circle_id);


--
-- Name: idx_gpgpm_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gpgpm_days_on_date ON googleplus_page_metrics_days USING btree (date);


--
-- Name: idx_gpgpm_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gpgpm_months_on_date ON googleplus_page_metrics_months USING btree (date);


--
-- Name: idx_gpgpm_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gpgpm_weeks_on_date ON googleplus_page_metrics_weeks USING btree (date);


--
-- Name: idx_gpstpm_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gpstpm_days_on_date ON googleplus_post_metrics_days USING btree (date);


--
-- Name: idx_gpstpm_days_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gpstpm_days_on_post_id ON googleplus_post_metrics_days USING btree (post_id);


--
-- Name: idx_gpstpm_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gpstpm_months_on_date ON googleplus_post_metrics_months USING btree (date);


--
-- Name: idx_gpstpm_months_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gpstpm_months_on_post_id ON googleplus_post_metrics_months USING btree (post_id);


--
-- Name: idx_gpstpm_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gpstpm_weeks_on_date ON googleplus_post_metrics_weeks USING btree (date);


--
-- Name: idx_gpstpm_weeks_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gpstpm_weeks_on_post_id ON googleplus_post_metrics_weeks USING btree (post_id);


--
-- Name: idx_gpstpmpost_metadata_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gpstpmpost_metadata_on_post_id ON googleplus_post_metadata USING btree (post_id);


--
-- Name: idx_gpstpmpost_metadata_on_posted_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_gpstpmpost_metadata_on_posted_at ON googleplus_post_metadata USING btree (posted_at);


--
-- Name: idx_igpg_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_igpg_days_on_date ON instagram_page_metrics_days USING btree (date);


--
-- Name: idx_igpg_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_igpg_months_on_date ON instagram_page_metrics_months USING btree (date);


--
-- Name: idx_igpg_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_igpg_weeks_on_date ON instagram_page_metrics_weeks USING btree (date);


--
-- Name: idx_igps_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_igps_days_on_date ON instagram_post_metrics_days USING btree (date);


--
-- Name: idx_igps_days_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_igps_days_on_post_id ON instagram_post_metrics_days USING btree (post_id);


--
-- Name: idx_igps_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_igps_months_on_date ON instagram_post_metrics_months USING btree (date);


--
-- Name: idx_igps_months_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_igps_months_on_post_id ON instagram_post_metrics_months USING btree (post_id);


--
-- Name: idx_igps_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_igps_weeks_on_date ON instagram_post_metrics_weeks USING btree (date);


--
-- Name: idx_igps_weeks_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_igps_weeks_on_post_id ON instagram_post_metrics_weeks USING btree (post_id);


--
-- Name: idx_igpspost_metadata_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_igpspost_metadata_on_post_id ON instagram_post_metadata USING btree (post_id);


--
-- Name: idx_igpspost_metadata_on_posted_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_igpspost_metadata_on_posted_at ON instagram_post_metadata USING btree (posted_at);


--
-- Name: idx_lipg_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lipg_days_on_date ON linkedin_page_metrics_days USING btree (date);


--
-- Name: idx_lipg_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lipg_months_on_date ON linkedin_page_metrics_months USING btree (date);


--
-- Name: idx_lipg_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lipg_weeks_on_date ON linkedin_page_metrics_weeks USING btree (date);


--
-- Name: idx_lips_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lips_days_on_date ON linkedin_post_metrics_days USING btree (date);


--
-- Name: idx_lips_days_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lips_days_on_post_id ON linkedin_post_metrics_days USING btree (post_id);


--
-- Name: idx_lips_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lips_months_on_date ON linkedin_post_metrics_months USING btree (date);


--
-- Name: idx_lips_months_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lips_months_on_post_id ON linkedin_post_metrics_months USING btree (post_id);


--
-- Name: idx_lips_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lips_weeks_on_date ON linkedin_post_metrics_weeks USING btree (date);


--
-- Name: idx_lips_weeks_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lips_weeks_on_post_id ON linkedin_post_metrics_weeks USING btree (post_id);


--
-- Name: idx_lipspost_metadata_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lipspost_metadata_on_post_id ON linkedin_post_metadata USING btree (post_id);


--
-- Name: idx_lipspost_metadata_on_posted_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lipspost_metadata_on_posted_at ON linkedin_post_metadata USING btree (posted_at);


--
-- Name: idx_pm_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_pm_days_on_date ON page_metrics_days USING btree (date);


--
-- Name: idx_pm_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_pm_months_on_date ON page_metrics_months USING btree (date);


--
-- Name: idx_pm_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_pm_weeks_on_date ON page_metrics_weeks USING btree (date);


--
-- Name: idx_posts_on_created_time; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_posts_on_created_time ON post_metrics USING btree (created_time);


--
-- Name: idx_posts_on_page_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_posts_on_page_id ON post_metrics USING btree (page_id);


--
-- Name: idx_tbpg_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tbpg_days_on_date ON tumblr_page_metrics_days USING btree (date);


--
-- Name: idx_tbpg_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tbpg_months_on_date ON tumblr_page_metrics_months USING btree (date);


--
-- Name: idx_tbpg_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tbpg_weeks_on_date ON tumblr_page_metrics_weeks USING btree (date);


--
-- Name: idx_tbps_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tbps_days_on_date ON tumblr_post_metrics_days USING btree (date);


--
-- Name: idx_tbps_days_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tbps_days_on_post_id ON tumblr_post_metrics_days USING btree (post_id);


--
-- Name: idx_tbps_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tbps_months_on_date ON tumblr_post_metrics_months USING btree (date);


--
-- Name: idx_tbps_months_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tbps_months_on_post_id ON tumblr_post_metrics_months USING btree (post_id);


--
-- Name: idx_tbps_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tbps_weeks_on_date ON tumblr_post_metrics_weeks USING btree (date);


--
-- Name: idx_tbps_weeks_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tbps_weeks_on_post_id ON tumblr_post_metrics_weeks USING btree (post_id);


--
-- Name: idx_tbpspost_metadata_on_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tbpspost_metadata_on_post_id ON tumblr_post_metadata USING btree (post_id);


--
-- Name: idx_tbpspost_metadata_on_posted_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tbpspost_metadata_on_posted_at ON tumblr_post_metadata USING btree (posted_at);


--
-- Name: idx_tm_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tm_days_on_date ON twitter_metrics_days USING btree (date);


--
-- Name: idx_tm_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tm_months_on_date ON twitter_metrics_months USING btree (date);


--
-- Name: idx_tm_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tm_weeks_on_date ON twitter_metrics_weeks USING btree (date);


--
-- Name: idx_tweet_urls_tweets_ids; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tweet_urls_tweets_ids ON tweet_urls USING btree (tweets_id);


--
-- Name: idx_tweets_on_stream_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tweets_on_stream_id ON tweets USING btree (stream_id);


--
-- Name: idx_tweets_on_tweeted_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_tweets_on_tweeted_at ON tweets USING btree (tweeted_at);


--
-- Name: idx_video_metadata_on_published_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_video_metadata_on_published_at ON youtube_video_metadata USING btree (published_at);


--
-- Name: idx_video_metadata_on_video_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_video_metadata_on_video_id ON youtube_video_metadata USING btree (video_id);


--
-- Name: idx_vm_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_vm_days_on_date ON youtube_video_metrics_days USING btree (date);


--
-- Name: idx_vm_days_on_video_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_vm_days_on_video_id ON youtube_video_metrics_days USING btree (video_id);


--
-- Name: idx_vm_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_vm_months_on_date ON youtube_video_metrics_months USING btree (date);


--
-- Name: idx_vm_months_on_video_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_vm_months_on_video_id ON youtube_video_metrics_months USING btree (video_id);


--
-- Name: idx_vm_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_vm_weeks_on_date ON youtube_video_metrics_weeks USING btree (date);


--
-- Name: idx_vm_weeks_on_video_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_vm_weeks_on_video_id ON youtube_video_metrics_weeks USING btree (video_id);


--
-- Name: idx_wcpg_days_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_wcpg_days_on_date ON wechat_page_metrics_days USING btree (date);


--
-- Name: idx_wcpg_months_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_wcpg_months_on_date ON wechat_page_metrics_months USING btree (date);


--
-- Name: idx_wcpg_weeks_on_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_wcpg_weeks_on_date ON wechat_page_metrics_weeks USING btree (date);


--
-- Name: public; Type: ACL; Schema: -; Owner: david
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM david;
GRANT ALL ON SCHEMA public TO david;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

