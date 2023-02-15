-- Script that lists all shows contained in the database hbtn_0d_tvshows.
SELECT tvs.title, it.genre_id
FROM  tv_show_genres it
RIGHT OUTER JOIN tv_shows tvs
ON it.show_id = tvs.id
ORDER BY tvs.title, it.genre_id ASC;
