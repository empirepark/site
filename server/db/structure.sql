--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: asset_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE asset_types (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    thumbnail_dimensions character varying DEFAULT '100x100'::character varying,
    min_dimensions character varying,
    max_dimensions character varying,
    optimize boolean,
    allowed_filetypes character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: asset_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE asset_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: asset_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE asset_types_id_seq OWNED BY asset_types.id;


--
-- Name: features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE features (
    id integer NOT NULL,
    sort_order integer NOT NULL,
    status character varying DEFAULT 'draft'::character varying,
    title character varying NOT NULL,
    content text,
    media_asset_id integer NOT NULL,
    published_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: features_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE features_id_seq OWNED BY features.id;


--
-- Name: job_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE job_categories (
    id integer NOT NULL,
    title character varying NOT NULL,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: job_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE job_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: job_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE job_categories_id_seq OWNED BY job_categories.id;


--
-- Name: job_positions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE job_positions (
    id integer NOT NULL,
    slug character varying NOT NULL,
    status character varying DEFAULT 'draft'::character varying,
    title character varying NOT NULL,
    job_category_id integer NOT NULL,
    labels character varying,
    time_commitment character varying,
    description text,
    responsibilities text,
    requirements text,
    apply_instructions text,
    published_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: job_positions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE job_positions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: job_positions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE job_positions_id_seq OWNED BY job_positions.id;


--
-- Name: media_assets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE media_assets (
    id integer NOT NULL,
    title character varying NOT NULL,
    description text,
    internal_notes text,
    url character varying NOT NULL,
    asset_type_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: media_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE media_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: media_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE media_assets_id_seq OWNED BY media_assets.id;


--
-- Name: programs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE programs (
    id integer NOT NULL,
    slug character varying NOT NULL,
    sort_order integer NOT NULL,
    status character varying DEFAULT 'draft'::character varying,
    title character varying NOT NULL,
    cost character varying,
    audience character varying,
    media_asset_id integer,
    excerpt text,
    content text,
    published_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: programs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE programs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE programs_id_seq OWNED BY programs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: static_pages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE static_pages (
    id integer NOT NULL,
    sort_order integer NOT NULL,
    slug character varying NOT NULL,
    status character varying DEFAULT 'draft'::character varying,
    title character varying NOT NULL,
    content text,
    media_asset_id integer,
    published_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: static_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE static_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: static_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE static_pages_id_seq OWNED BY static_pages.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY asset_types ALTER COLUMN id SET DEFAULT nextval('asset_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY features ALTER COLUMN id SET DEFAULT nextval('features_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY job_categories ALTER COLUMN id SET DEFAULT nextval('job_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY job_positions ALTER COLUMN id SET DEFAULT nextval('job_positions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY media_assets ALTER COLUMN id SET DEFAULT nextval('media_assets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY programs ALTER COLUMN id SET DEFAULT nextval('programs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY static_pages ALTER COLUMN id SET DEFAULT nextval('static_pages_id_seq'::regclass);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: asset_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY asset_types
    ADD CONSTRAINT asset_types_pkey PRIMARY KEY (id);


--
-- Name: features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY features
    ADD CONSTRAINT features_pkey PRIMARY KEY (id);


--
-- Name: job_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY job_categories
    ADD CONSTRAINT job_categories_pkey PRIMARY KEY (id);


--
-- Name: job_positions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY job_positions
    ADD CONSTRAINT job_positions_pkey PRIMARY KEY (id);


--
-- Name: media_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY media_assets
    ADD CONSTRAINT media_assets_pkey PRIMARY KEY (id);


--
-- Name: programs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: static_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY static_pages
    ADD CONSTRAINT static_pages_pkey PRIMARY KEY (id);


--
-- Name: index_features_on_media_asset_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_features_on_media_asset_id ON features USING btree (media_asset_id);


--
-- Name: index_job_positions_on_job_category_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_job_positions_on_job_category_id ON job_positions USING btree (job_category_id);


--
-- Name: index_job_positions_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_job_positions_on_slug ON job_positions USING btree (slug);


--
-- Name: index_media_assets_on_asset_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_media_assets_on_asset_type_id ON media_assets USING btree (asset_type_id);


--
-- Name: index_programs_on_media_asset_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_programs_on_media_asset_id ON programs USING btree (media_asset_id);


--
-- Name: index_programs_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_programs_on_slug ON programs USING btree (slug);


--
-- Name: index_static_pages_on_media_asset_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_static_pages_on_media_asset_id ON static_pages USING btree (media_asset_id);


--
-- Name: index_static_pages_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_static_pages_on_slug ON static_pages USING btree (slug);


--
-- Name: fk_rails_1dafc4d421; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY features
    ADD CONSTRAINT fk_rails_1dafc4d421 FOREIGN KEY (media_asset_id) REFERENCES media_assets(id);


--
-- Name: fk_rails_885090f3bb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY media_assets
    ADD CONSTRAINT fk_rails_885090f3bb FOREIGN KEY (asset_type_id) REFERENCES asset_types(id);


--
-- Name: fk_rails_c28ec4ee07; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY job_positions
    ADD CONSTRAINT fk_rails_c28ec4ee07 FOREIGN KEY (job_category_id) REFERENCES job_categories(id);


--
-- Name: fk_rails_d1f8aee58d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY static_pages
    ADD CONSTRAINT fk_rails_d1f8aee58d FOREIGN KEY (media_asset_id) REFERENCES media_assets(id);


--
-- Name: fk_rails_d9ffc886c0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY programs
    ADD CONSTRAINT fk_rails_d9ffc886c0 FOREIGN KEY (media_asset_id) REFERENCES media_assets(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO schema_migrations (version) VALUES ('20160823041430'), ('20160823043203'), ('20160823043503'), ('20160823044929'), ('20160823045101'), ('20160823045712'), ('20160823045726');


