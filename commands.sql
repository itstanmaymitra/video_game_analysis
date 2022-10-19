CREATE TABLE game_sales
(
    game_id SERIAL PRIMARY KEY,
    game VARCHAR(250) NOT NULL,
    platform VARCHAR(250),
    publisher VARCHAR(250),
    developer VARCHAR(250),
    games_sold REAL,
    year INTEGER
);

CREATE TABLE reviews
(
    game_id SERIAL PRIMARY KEY,
    game VARCHAR(250) NOT NULL,
    critic_score REAL,
    user_score REAL
);

\copy game_sales(game, platform, publisher, developer, games_sold, year) FROM './data/game_sales.csv' WITH DELIMITER ',' CSV HEADER;
\copy reviews(game, critic_score, user_score) FROM './data/reviews.csv' WITH DELIMITER ',' CSV HEADER;