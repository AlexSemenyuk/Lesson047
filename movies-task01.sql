-- Сделать выборки:
use movies;
-- 1. Выбрать все фильмы и отсортировать по году выпуска в порядке убывания (новые фильмы раньше)
select * from movies
order by release_year desc;

-- 2. Выбрать все фильмы и выпущенные в прошлом году отсортированные по рейтингу (в порядке убывания) с рейтингом выше среднего
-- если считать, что рейтинг выше среднего 50 (Rating_max = 100)
select * from movies
where release_year = 2022 and rating > 50
order by rating desc;
-- если взять средний рейтинг из выборки фильмов 2022
select * from movies
where release_year = 2022 and rating > (select avg(rating) from movies)
order by rating desc;

-- 3. Выбрать все фильмы по заданному жанру (комедия, боевик, ...)
-- По одному показателю
select movie_id, title, release_year, rating, plot, length, name
from movies, genres, movies_genres
where genres.name = 'Комедия'
    and movies.id = movies_genres.movie_id
  and genres.id = movies_genres.genre_id;
-- По двум показателям
select movie_id, title, release_year, rating, plot, length, name
from movies, genres, movies_genres
where (genres.name = 'Боевики' or genres.name = 'Комедия')
  and movies.id = movies_genres.movie_id
  and genres.id = movies_genres.genre_id;

-- 4. Выбрать все фильмы по заданному имени и фамилии актера
-- По фамилии
select movies.id, title, release_year, rating, plot, length, first_name, last_name
from movies, actors, movies_actors
where actors.last_name = 'Пратт'
  and movies.id = movies_actors.movie_id
  and actors.id = movies_actors.actor_id;
-- По имени
select movies.id, title, release_year, rating, plot, length, first_name, last_name
from movies, actors, movies_actors
where actors.first_name = 'Рассел'
  and movies.id = movies_actors.movie_id
  and actors.id = movies_actors.actor_id;
-- По имени или фамилии
select movies.id, title, release_year, rating, plot, length, first_name, last_name
from movies, actors, movies_actors
where movies.id = movies_actors.movie_id and
      actors.id = movies_actors.actor_id and
    (actors.first_name = 'Рассел' or actors.last_name = 'Пратт');

-- 5. Выбрать все фильмы по заданному имени и фамилии продюсеру
-- По фамилии
select movies.id, title, release_year, rating, plot, length, first_name, last_name
from movies, directors
where last_name = 'Треворроу'
  and movies.director_id = directors.id;
-- По имени
select movies.id, title, release_year, rating, plot, length, first_name, last_name
from movies, directors
where first_name = 'Ридли'
  and movies.director_id = directors.id;
-- По имени или фамилии
select movies.id, title, release_year, rating, plot, length, first_name, last_name
from movies, directors
where movies.director_id = directors.id and
    (first_name = 'Ридли' or last_name = 'Треворроу');

-- 6. Отобразить информацию по фильмам с названием жанра, именем, фамилией и национальности продюсера
select movies.id, title, release_year, rating, plot, length, first_name, last_name, nationality
from movies, directors
where movies.director_id = directors.id;