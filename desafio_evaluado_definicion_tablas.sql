CREATE TABLE peliculas (id INT PRIMARY KEY, pelicula VARCHAR NOT NULL, estreno INT NOT NULL, reparto VARCHAR NOT NULL);

ALTER TABLE peliculas RENAME COLUMN id to id_pelicula;
ALTER TABLE peliculas RENAME COLUMN reparto to director;
SELECT * FROM peliculas;

CREATE TABLE reparto (id_reparto INT, actor VARCHAR, FOREIGN KEY (id_reparto) REFERENCES peliculas (id_pelicula));
DROP TABLE reparto;

SELECT * FROM reparto;

SELECT id_pelicula, pelicula FROM peliculas WHERE pelicula='Titanic';

SELECT pelicula, actor FROM peliculas FULL JOIN reparto ON peliculas.id_pelicula=reparto.id_reparto WHERE pelicula='Titanic';

SELECT pelicula FROM peliculas RIGHT JOIN reparto ON peliculas.id_pelicula=reparto.id_reparto WHERE reparto.actor='Harrison Ford';

SELECT * FROM peliculas WHERE estreno BETWEEN 1990 AND 1999 ORDER BY pelicula ASC;

SELECT pelicula AS titulo, LENGTH(pelicula) as longitud_titulo FROM peliculas ORDER BY longitud_titulo DESC;

SELECT MAX(LENGTH(pelicula)) AS longitud_max_titulo FROM peliculas;

