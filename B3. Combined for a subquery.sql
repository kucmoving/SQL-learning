--Combined for a subquery,
-- 1) innermost select first
-- 2) no limit but not too deep
-- 3) single coloumn

-- find the names of all the tracks for the album "Californication".
SELECT t.name
FROM Tracks t
WHERE t.albumid in (SELECT
al.albumid
       FROM albums al 
       WHERE title = 'Californication' );

--EXAMPLE
/* How many albums does the artist Led Zepplin have? */
SELECT COUNT(a.Albumid)
FROM albums a
WHERE a.artistid in (SELECT
r.artistid
       FROM artists r
       WHERE r.name = 'Led Zeppelin' );
