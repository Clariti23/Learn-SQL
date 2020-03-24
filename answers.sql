-- Select only the names of all the bands 
-- ALIAS the new data as Band Name

SELECT name AS 'Band Name'
FROM bands;

-- Select the oldest album

SELECT *
FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year
LIMIT 1;

-- GET ALL THE BANDS THAT HAVE ALBUMS
SELECT DISTINCT bands
.name AS 'Band Name'
FROM bands
JOIN albums ON bands.id = albums.band_id;

-- Get all Bands that have No Albums
-- ???
SELECT bands.name as 'Band Name'
FROM bands
    JOIN albums on bands.id = albums.band_id
GROUP BY albums.band_id
HAVING COUNT(albums.id )= 0;

-- Get the longest album

SELECT name, release_year,  
