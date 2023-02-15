-- Import the database dump from hbtn_0d_tvshows to your MySQL server: download
-- script that lists all shows contained in hbtn_0d_tvshows that have at least one genre linked.
-- Each record should display: tv_shows.title - tv_show_genres.genre_id
-- Results must be sorted in ascending order by tv_shows.title and tv_show_genres.genre_id
-- You can use only one SELECT statement
-- The database name will be passed as an argument of the mysql command
SELECT tvs.title, it.genre_id
FROM  tv_show_genres it
INNER JOIN tv_shows tvs
ON it.show_id = tvs.id
ORDER BY tvs.title, it.genre_id ASC;
