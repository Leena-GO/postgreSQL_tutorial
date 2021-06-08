CREATE TABLE public.developers
(
    book_id integer,
    date date,
    name character varying(80) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.developers
    OWNER to postgres;

INSERT INTO developers VALUES(1, '2019-12-17', '"자바"')
INSERT INTO developers VALUES(2, '2019-12-17', '''자바''')
INSERT INTO developers VALUES(3, '2019-12-17', 'Python''s Programming');

INSERT INTO developers (book_id, date, name) VALUES
(4, '2019-12-18', '맛있는 MongoDB'),
(5, '2019-12-18', 'Python'),
(6, '2019-12-18', 'R'),
(7, '2019-12-19', 'Ruby'),
(8, '2019-12-19', 'Go''s Programming'),
(9, '2019-12-19', 'Statistics');