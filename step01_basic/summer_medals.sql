-- Table: public.summer_medals

-- DROP TABLE public.summer_medals;

CREATE TABLE public.summer_medals
(
    year integer,
    city character varying(42) COLLATE pg_catalog."default",
    sport character varying(34) COLLATE pg_catalog."default",
    discipline character varying(34) COLLATE pg_catalog."default",
    athlete character varying(94) COLLATE pg_catalog."default",
    country character(6) COLLATE pg_catalog."default",
    gender character varying(10) COLLATE pg_catalog."default",
    event character varying(98) COLLATE pg_catalog."default",
    medal character varying(12) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.summer_medals
    OWNER to postgres;

\copy summer_medals(year, city, sport, discipline, athlete, country, gender, event, medal) FROM 'step01_basic/data/summer.csv' with DELIMITER ','  CSV HEADER ENCODING 'UTF8';