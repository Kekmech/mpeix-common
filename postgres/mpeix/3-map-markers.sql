CREATE TABLE mpeix.map_markers
(
    id        INTEGER GENERATED ALWAYS AS IDENTITY,
    place_uid  CHARACTER VARYING(36)  NOT NULL,
    address    CHARACTER VARYING(255) NOT NULL,
    lat        DOUBLE PRECISION       NOT NULL,
    lng        DOUBLE PRECISION       NOT NULL,
    place_name CHARACTER VARYING(255) NOT NULL,
    place_type CHARACTER VARYING(15)  NOT NULL,
    icon       CHARACTER VARYING(255) NOT NULL,
    tag        CHARACTER VARYING(255),
    primary key (id)
);


COMMENT ON TABLE mpeix.map_markers IS 'Таблица маркеров на карте';
COMMENT ON COLUMN mpeix.map_markers.id IS 'Идентификатор маркера';
COMMENT ON COLUMN mpeix.map_markers.place_uid IS 'Идентификатор локации';
COMMENT ON COLUMN mpeix.map_markers.address IS 'Адрес локации';
COMMENT ON COLUMN mpeix.map_markers.lat IS 'Широта точки';
COMMENT ON COLUMN mpeix.map_markers.lng IS 'Долгота точки';
COMMENT ON COLUMN mpeix.map_markers.place_name IS 'Название локации';
COMMENT ON COLUMN mpeix.map_markers.place_type IS 'Тип локации';
COMMENT ON COLUMN mpeix.map_markers.icon IS 'Иконка локации';
COMMENT ON COLUMN mpeix.map_markers.tag IS 'Тэг локации';

ALTER TABLE mpeix.map_markers
    OWNER TO mpeix;
