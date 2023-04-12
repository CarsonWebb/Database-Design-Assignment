CREATE TABLE IF NOT EXISTS artist (
artist_id INT AUTO_INCREMENT not null,
first_name VARCHAR(255) not null,
last_name VARCHAR(255) not null,
date_of_birth VARCHAR(255) not null,
PRIMARY KEY (artist_id)
);
CREATE TABLE IF NOT EXISTS song (
song_id INT AUTO_INCREMENT not null,
durration INT not null,
explicit boolean not null,
link VARCHAR(255) not null,
artist_id INT not null,
genre_id VARCHAR(255) not null,
PRIMARY KEY (song_id),
FOREIGN KEY artist_id(artist_id) references artist_id,
FOREIGN KEY genre_id(genre_id) references genre_id
);

CREATE TABLE IF NOT EXISTS genre (
genre_id  int not null,
genre_name VARCHAR(255) not null,
primary key(genre_id)
);

CREATE TABLE IF NOT EXISTS user (
user_id int auto_increment not null,
email VARCHAR(255) not null,
unique(email),
first_name VARCHAR(255) not null,
last_name VARCHAR(255) not null,
password VARCHAR(255) not null,
primary key(user_id)
);

CREATE TABLE IF NOT EXISTS favorite_song (
user_id int not null,
song_id INT not null,
FOREIGN KEY user_id(user_id) references user_id,
FOREIGN KEY song_id(song_id) references song_id
);

CREATE TABLE IF NOT EXISTS playlist (
user_id int not null,
playlist_song_id INT not null,
FOREIGN KEY user_id(user_id) references user_id,
FOREIGN KEY playlist_song_id(playlist_song_id) references song_id
);

CREATE TABLE IF NOT EXISTS playlist_song (
ranking int not null,
playlist_song_id int not null,
FOREIGN KEY playlist_song_id(playlist_song_id) references playlist_song_id
);