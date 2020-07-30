-----------
-- Movie View

SELECT movies.movie_id,
       movies.native_name,
       movies.english_name,
       movies.year_made,
       movie_data.tag_line,
       movie_data.language,
       movie_data.country,
       movie_data.genre,
       movie_data.plot,
       GROUP_CONCAT(distinct movie_trivia_name) AS movie_trivia_names,
       GROUP_CONCAT(distinct keyword) AS keywords,
       GROUP_CONCAT(distinct m_link) AS media_link,
       GROUP_CONCAT(distinct m_link_type) AS media_link_type,
       GROUP_CONCAT(distinct title) AS titles,
       GROUP_CONCAT(distinct stage_name),
       movie_numbers.running_time,
       movie_numbers.length,
       movie_numbers.strength,
       movie_numbers.weight,
       movie_numbers.budget,
       movie_numbers.box_office,
       movie_anagrams.anagram
FROM movies
       LEFT JOIN movie_data 
       ON (movies.movie_id = movie_data.movie_id)
       LEFT JOIN movie_trivia 
       ON (movies.movie_id = movie_trivia.movie_id)
       LEFT JOIN movie_keywords 
       ON (movies.movie_id = movie_keywords.movie_id)
       LEFT JOIN movie_media 
       ON (movies.movie_id = movie_media.movie_id)
       LEFT JOIN movie_song 
       ON (movies.movie_id = movie_song.song_id)
       LEFT JOIN songs 
       ON (movie_song.song_id = songs.song_id)
       LEFT JOIN movie_people 
       ON (movies.movie_id = movie_people.movie_id)
       LEFT JOIN people 
       ON (movie_people.people_id = people.people_id)
       LEFT JOIN movie_numbers 
       ON (movies.movie_id = movie_numbers.movie_id)
       LEFT JOIN movie_anagrams 
       ON (movies.movie_id = movie_anagrams.movie_id)
GROUP BY movies.movie_id;

--------------- 
---------------Song View

SELECT `songs`.`song_id`            AS `song_id`, 
       `songs`.`title`              AS `title`, 
       `songs`.`lyrics`             AS `lyrics`, 
       `songs`.`theme`              AS `theme`, 
       `song_media`.`song_media_id` AS `song_media_id`, 
       `song_media`.`s_link`        AS `s_link`, 
       `song_media`.`s_link_type`   AS `s_link_type`, 
       `song_media`.`song_id`       AS `song_id`, 
       `song_people`.`song_id`      AS `song_id`, 
       `song_people`.`people_id`    AS `people_id`, 
       `song_people`.`role`         AS `role`, 
       `people`.`people_id`         AS `people_id`, 
       `people`.`stage_name`        AS `stage_name`, 
       `people`.`first_name`        AS `first_name`, 
       `people`.`last_name`         AS `last_name`, 
       `people`.`gender`            AS `gender`, 
       `movie_song`.`movie_id`      AS `movie_id`, 
       `movie_song`.`song_id`       AS `song_id`, 
       `movies`.`movie_id`          AS `movie_id`, 
       `movies`.`native_name`       AS `native_name` 
FROM   ( ( ( ( ( `songs` 
                 LEFT JOIN `song_media` 
                        ON ( `songs`.`song_id` = `song_media`.`song_id` ) ) 
               LEFT JOIN `song_people` 
                      ON ( `songs`.`song_id` = `song_people`.`song_id` ) ) 
             LEFT JOIN `people` 
                    ON ( `song_people`.`people_id` = `people`.`people_id` ) ) 
           LEFT JOIN `movie_song` 
                  ON ( `song_people`.`song_id` = `movie_song`.`song_id` ) ) 
         LEFT JOIN `movies` 
                ON ( `movie_song`.`movie_id` = `movies`.`movie_id` ) ) 
GROUP  BY `songs`.`song_id`;
