CREATE TABLE mpeix.faculty_info
(
    faculty_id INTEGER GENERATED ALWAYS AS IDENTITY,
    full_name  CHARACTER VARYING(100) NOT NULL,
    short_name CHARACTER VARYING(10)  NOT NULL,
    literas    CHARACTER VARYING(10)  NOT NULL,
    primary key (faculty_id)
);

COMMENT ON TABLE mpeix.faculty_info IS 'Таблица факультетов';
COMMENT ON COLUMN mpeix.faculty_info.faculty_id IS 'Идентификатор факультета';
COMMENT ON COLUMN mpeix.faculty_info.faculty_id IS 'Полное факультета';
COMMENT ON COLUMN mpeix.faculty_info.faculty_id IS 'Инициалы факультета';
COMMENT ON COLUMN mpeix.faculty_info.faculty_id IS 'Литера групп, которые входят в состав факультета';

ALTER TABLE mpeix.faculty_info
    OWNER TO mpeix;
