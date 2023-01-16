DROP DATABASE IF EXISTS movies;
CREATE DATABASE movies default char set utf8;
USE movies;
CREATE TABLE movies
(
    id           int primary key auto_increment not null,
    title        varchar(50)                    not null,
    release_year int,
    rating       int,
    plot         text,
    length       int,
    director_id  int                            not null
);
CREATE TABLE directors
(
    id          int primary key auto_increment not null,
    first_name  varchar(50)                    not null,
    last_name   varchar(50)                    not null,
    nationality varchar(50),
    birth_date  date
);
alter table movies
    add constraint movies_directors_fk
        foreign key (director_id) references directors (id);

CREATE TABLE actors
(
    id          int primary key auto_increment not null,
    first_name  varchar(50)                    not null,
    last_name   varchar(50)                    not null,
    nationality varchar(50),
    birth_date  date
);
CREATE TABLE genres
(
    id   int primary key auto_increment not null,
    name varchar(50) unique             not null
);

create table movies_genres
(
    movie_id int not null,
    genre_id int not null,
    primary key (movie_id, genre_id)
);

alter table movies_genres
    add constraint movies_genres_movies_fk
        foreign key (movie_id) references movies (id),
    add constraint movies_genres_genres_fk
        foreign key (genre_id) references genres (id);

create table movies_actors
(
    movie_id int not null,
    actor_id int not null,
    primary key (movie_id, actor_id)
);

alter table movies_actors
    add constraint movies_actors_movies_fk
        foreign key (movie_id) references movies (id),
    add constraint movies_actors_actors_fk
        foreign key (actor_id) references actors (id);