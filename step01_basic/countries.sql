CREATE TABLE cities (
  name                    VARCHAR   PRIMARY KEY,
  country_code            VARCHAR,
  city_proper_pop         REAL,
  metroarea_pop           REAL,
  urbanarea_pop           REAL
);

CREATE TABLE countries (
  code                  VARCHAR     PRIMARY KEY,
  name                  VARCHAR,
  continent             VARCHAR,
  region                VARCHAR,
  surface_area          REAL,
  indep_year            INTEGER,
  local_name            VARCHAR,
  gov_form              VARCHAR,
  capital               VARCHAR,
  cap_long              REAL,
  cap_lat               REAL
);

CREATE TABLE languages (
  lang_id               INTEGER     PRIMARY KEY,
  code                  VARCHAR,
  name                  VARCHAR,
  percent               REAL,
  official              BOOLEAN
);

CREATE TABLE economies (
  econ_id               INTEGER     PRIMARY KEY,
  code                  VARCHAR,
  year                  INTEGER,
  income_group          VARCHAR,
  gdp_percapita         REAL,
  gross_savings         REAL,
  inflation_rate        REAL,
  total_investment      REAL,
  unemployment_rate     REAL,
  exports               REAL,
  imports               REAL
);

CREATE TABLE currencies (
  curr_id               INTEGER     PRIMARY KEY,
  code                  VARCHAR,
  basic_unit            VARCHAR,
  curr_code             VARCHAR,
  frac_unit             VARCHAR,
  frac_perbasic         REAL
);

CREATE TABLE populations (
  pop_id                INTEGER     PRIMARY KEY,
  country_code          VARCHAR,
  year                  INTEGER,
  fertility_rate        REAL,
  life_expectancy       REAL,
  size                  REAL
);


CREATE TABLE countries_plus (
  name                  VARCHAR,
  continent             VARCHAR,
  code                  VARCHAR     PRIMARY KEY,
  surface_area          REAL,
  geosize_group         VARCHAR
);

CREATE TABLE economies2010 (
  code                  VARCHAR     PRIMARY KEY,
  year                  INTEGER,
  income_group          VARCHAR,
  gross_savings         REAL
);

CREATE TABLE economies2015 (
  code                  VARCHAR     PRIMARY KEY,
  year                  INTEGER,
  income_group          VARCHAR,
  gross_savings         REAL
);

-- Copy over data from CSVs
\copy cities FROM 'data/cities.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8';
\copy countries FROM 'data/countries.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8';
\copy languages FROM 'data/languages.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8';
\copy economies FROM 'data/economies.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8';
\copy economies2010 FROM 'data/economies2010.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8';
\copy economies2015 FROM 'data/economies2015.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8';
\copy currencies FROM 'data/currencies.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8';
\copy populations FROM 'data/populations.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8';
\copy countries_plus FROM 'data/countries_plus.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8';

/*
psql -U postgres
\cd step01_basic
\i countries.sql

*/