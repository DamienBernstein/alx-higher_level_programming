-- script that lists all shows contained in hbtn_0d_tvshows without a genre linked.
SELECT tvs.title, it.genre_id
FROM  tv_show_genres it
RIGHT OUTER JOIN tv_shows tvs
ON it.show_id = tvs.id
WHERE it.show_id IS NULL
ORDER BY tvs.title, it.genre_id ASC;
