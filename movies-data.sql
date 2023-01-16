use movies;
-- Мумия 1, 2, 3
insert into directors (first_name, last_name, nationality, birth_date)
VALUES ('Стивен', 'Соммерс', 'США', '1962-03-20'),
       ('Роб', 'Коэн', 'США', '1949-03-12');

insert into actors (first_name, last_name, nationality, birth_date)
VALUES ('Брендан', 'Фрейзер', 'США', '1968-12-03'),
       ('Рэйчел', 'Вайс', 'Великобритания', '1970-03-07'),
       ('Арнольд', 'Вослу', 'Южная Африка', '1962-06-16'),
       ('Энтони', 'Вон', 'Гонконг', '1961-09-02');

insert into movies (title, release_year, rating, plot, length, director_id)
    value ('Мумия', 1999, 78, 'Во время экспедиции искатели приключений находят в развалинах Хамунаптры гробницу, в которой заживо мумифицировано тело жреца.', 124, 1),
    ('Мумия возвращается', 2001, 74, 'Это вторая часть полюбившегося многим фильма "Мумия", поэтому герои те же, присутствуют погони, скачки на лошадях, сокровища, ну и конечно злодеи.', 130, 1),
    ('Мумия: Гробница Императора Драконов', 2008, 61, 'Событие перенесено из Египта в Китай, где археолог Рик О’Коннел сражается с воскресшим древним императором Цинь Ши Хуаном.', 112, 2);

insert into movies_actors (movie_id, actor_id)
values (4, 9), (4, 10), (4, 11),
       (5, 9), (5, 10), (5, 11),
       (6, 9), (6, 10), (6, 12);

insert into genres (name)
values ('Приключения'),
       ('Фэнтези');

insert into movies_genres (movie_id, genre_id)
values (4, 1), (5, 1), (6, 1),
        (4, 2), (5, 2), (6, 2);

-- Аватар 2, Мир юрского периода 1, 2, 3
insert into directors (first_name, last_name, nationality, birth_date)
VALUES ('Джеймс', 'Кэмерон', 'Канада', '1954-08-16'),
       ('Колин', 'Треворроу', 'США', '1976-09-13'),
       ('Хуан', 'Антонио Байона', 'Испания', '1975-05-09');

insert into actors (first_name, last_name, nationality, birth_date)
VALUES ('Сэм', 'Уортингтон', 'Великобритания', '1976-08-02'),
       ('Зои', 'Салдана', 'США', '1978-06-19'),
       ('Сигурни', 'Уивер', 'США', '1949-10-08'),
       ('Крис', 'Пратт', 'США', '1979-06-21'),
       ('Брайс', 'Даллас Ховард', 'США', '1981-03-02'),
       ('Омар', 'Си', 'Франция', '1978-01-20'),
       ('Рейф', 'Сполл', 'Великобритания', '1983-03-10');

insert into movies (title, release_year, rating, plot, length, director_id)
    value ('Аватар: Путь воды', 2022, 80, 'После принятия образа аватара солдат Джейк Салли становится предводителем народа на’ви и берет на себя миссию по защите новых друзей от корыстных бизнесменов с Земли.', 190, 3),
    ('Мир Юрского периода', 2015, 69, 'На острове Нублар создали грандиозный парк, в котором создали генетического динозавра под названием Индоминус Рекс.', 125, 4),
    ('Мир Юрского периода 2', 2018, 62, 'После закрытия парка на острове Нублар, герои фильма спасают его обитателей от вымирания, вследствие пробудившегося на острове вулкана.', 128, 5),
    ('Мир Юрского периода: Господство', 2022, 57, 'В современном мире динозавры сосуществуют с людьми, а их исследованием занимается огромная корпорация «Biosyn Genetics».', 147, 4);

insert into movies_actors (movie_id, actor_id)
values (7, 13), (7, 14), (7, 15),
       (8, 16), (8, 17), (8, 18),
       (9, 16), (9, 17), (9, 19),
       (10, 16), (10, 17), (10, 18);

insert into movies_genres (movie_id, genre_id)
values (7, 1), (7, 2),
       (8, 1), (8, 2),
       (9, 1), (9, 2),
       (10, 1), (10, 2);

-- Царство небесное, Гладиатор, Робин Гуд, Хороший год
insert into directors (first_name, last_name, nationality, birth_date)
VALUES ('Ридли', 'Скотт', 'Великобритания', '1937-11-30');

insert into actors (first_name, last_name, nationality, birth_date)
VALUES ('Орландо', 'Блум', 'Великобритания', '1977-01-13'),
       ('Ева', 'Грин', 'Франция', '1980-07-06'),
       ('Мартон', 'Чокаш', 'Новая Зеландия', '1966-06-30'),
       ('Рассел', 'Кроу', 'Новая Зеландия', '1964-04-07'),
       ('Хоакин', 'Феникс', 'Пуэрто-Рико', '1974-10-28'),
       ('Конни', 'Нильсен', 'Дания', '1965-07-03'),
       ('Кейт', 'Бланшетт', 'Австралия', '1969-05-14'),
       ('Марк', 'Стронг', 'Великобритания', '1963-08-05'),
       ('Марион', 'Котийяр', 'Франция', '1975-09-30'),
       ('Эбби', 'Корниш', 'Австралия', '1982-08-07');

insert into movies (title, release_year, rating, plot, length, director_id)
    value ('Царство небесное', 2005, 76, 'Действия фильма начинаются в 1184 году, кузнец Бэлиан пережил две трагедия: умер сын и самоубийство его жене. Он отправляется а Иерусалим изменить свою жизнь.', 145, 6),
    ('Гладиатор', 2000, 86, 'Генерал, ставший рабом. Раб, ставший гладиатором. Гладиатор, бросивший вызов империи.', 155, 6),
    ('Робин Гуд', 2010, 72, 'Робин Лонгстрайд - лучник королевской армии. После гибели во Франции короля Ричарда Львиное Сердце, он возвращается в Англию и наталкивается на умирающего рыцаря Роберта Локсли, смерть которого изменила его жизнь.', 156, 6),
    ('Хороший год', 2006,77, 'Макс Скиннер - самый известный и высокооплачиваемый трейдер Лондонской фондовой биржи, его время и внимание стоит бешеных денег. Его приезд в родной Прованс отстраняет его на неделю от работы, изменяя при этом дальнейшую его жизнь.', 117, 6);

insert into movies_actors (movie_id, actor_id)
values (11, 20), (11, 21), (11, 22),
       (12, 23), (12, 24), (12, 25),
       (13, 23), (13, 26), (13, 27),
       (14, 23), (14, 28), (14, 29);

insert into genres (name)
values ('Исторические'),
       ('Боевики'),
       ('Мелодрама'),
       ('Комедия');

insert into movies_genres (movie_id, genre_id)
values (11, 1), (11, 3), (11, 4),
       (12, 1), (12, 3), (12, 4),
       (13, 1), (13, 3), (13, 4),
       (14, 5), (14, 6);

-- Красотка
insert into directors (first_name, last_name, nationality, birth_date)
VALUES ('Гэрри', 'Маршалл', 'США', '1934-11-13');

insert into actors (first_name, last_name, nationality, birth_date)
VALUES ('Ричард', 'Гир', 'США', '1949-08-31'),
       ('Джулия', 'Робертс', 'США', '1968-10-28'),
       ('Джейсон', 'Александер', 'США', '1959-09-23');

insert into movies (title, release_year, rating, plot, length, director_id)
    value ('Красотка', 1990, 80, 'Фильм о любовной истории между богатым мужчиной и бедной женщиной. Классический американский фильм про золушку.', 115, 7);

insert into movies_actors (movie_id, actor_id)
values (15, 30), (15, 31), (15, 32);

insert into movies_genres (movie_id, genre_id)
values (15, 5), (15, 6);

-- Смерть на Ниле
insert into directors (first_name, last_name, nationality, birth_date)
VALUES ('Кеннет', 'Брана', 'Великобритания', '1960-12-10');

insert into actors (first_name, last_name, nationality, birth_date)
VALUES ('Кеннет', 'Брана', 'Великобритания', '1960-12-10'),
       ('Галь', 'Гадот', 'Израиль', '1985-04-30'),
       ('Арми', 'Хаммер', 'США', '1986-08-26');

insert into movies (title, release_year, rating, plot, length, director_id)
    value ('Смерть на Ниле', 2022, 75, 'Действие фильма развиваются на борту идущего по Нилу парохода «Карнак», где Пуаро вынужден расследовать смерть богатой наследницы.', 127, 8);

-- Для проверки расчета среднего рейтинг из выборки фильмов 2022
update movies
set rating = 65
where title = 'Смерть на Ниле';

insert into movies_actors (movie_id, actor_id)
values (16, 33), (16, 34), (16, 35);

insert into genres (name)
values ('Детектив');

insert into movies_genres (movie_id, genre_id)
values (16, 7);