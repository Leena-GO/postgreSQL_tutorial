CREATE TABLE public.summer_medals (
	year INTEGER,
	city VARCHAR(42),
	sport VARCHAR(34),
	discipline VARCHAR(34),
	athlete VARCHAR(94),
	country CHAR(6) NOT NULL,
	gender VARCHAR(10),
	event VARCHAR(98),
	medal VARCHAR(12)
);

TABLESPACE pg_default;

ALTER TABLE public.summer_medals
    OWNER to postgres;

\COPY summer_medals FROM "step01_basic/data/summer.csv" DELIMITER ',' CSV HEADER;