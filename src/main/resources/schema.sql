create table if not exists STATION
(
    id bigint auto_increment not null,
    name varchar(255) not null unique,
    created_at datetime,
    primary key(id)
);

create table if not exists LINE
(
    id bigint auto_increment not null,
    name varchar(255) not null,
    start_time time not null,
    end_time time not null,
    interval_time int not null,
    created_at datetime,
    updated_at datetime,
    primary key(id)
);

create table if not exists LINE_STATION
(
    line bigint not null,
    station_id bigint not null,
    pre_station_id bigint,
    distance int,
    duration int,
    created_at datetime,
    updated_at datetime
);

create table if not exists MEMBER
(
    id bigint auto_increment not null,
    email varchar(255) not null unique,
    name varchar(255) not null,
    password varchar(255) not null,
    primary key(id)
);

create table if not exists FAVORITE
(
    id bigint auto_increment not null,
    member_id bigint not null,
    departure_station_id varchar(255) not null,
    arrival_station_id varchar(255) not null,
    primary key(id)
);

-- insert into LINE (name, start_time, end_time, interval_time)
-- VALUES ('8호선', '05:40', '23:57', '8');
-- insert into STATION (name)
-- values ('암사역'),
--        ('천호역'),
--        ('몽촌토성역'),
--        ('잠실역');
--
-- insert into LINE_STATION (line, station_id, pre_station_id, distance, duration)
-- values (1, 1, null, 0, 0),
--        (1, 2, 1, 3, 3),
--        (1, 3, 2, 3, 3),
--        (1, 4, 3, 3, 3);
--
-- insert into LINE (name, start_time, end_time, interval_time)
-- VALUES ('7호선', '06:00', '23:59', '7');
-- insert into STATION (name)
-- values ('장암역'),
--        ('도봉산역'),
--        ('수락산역'),
--        ('마들역'),
--        ('노원역');
--
-- insert into LINE_STATION (line, station_id, pre_station_id, distance, duration)
-- values (2, 5, null, 0, 0),
--        (2, 6, 5, 3, 3),
--        (2, 7, 6, 3, 3),
--        (2, 8, 7, 3, 3),
--        (2, 9, 8, 3, 3);
--
-- insert into MEMBER (email, name, password)
-- values ('a@a.com', 'a', 'a'),
-- ('b@b.com', 'b', 'b'),
-- ('c@c.com', 'c', 'c');
