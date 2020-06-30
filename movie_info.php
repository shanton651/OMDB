<?php

  $nav_selected = "MOVIES"; 
  $left_buttons = "YES"; 
  $left_selected = ""; 

  include("./nav.php");
  include_once 'db_credentials.php';
  global $db;

  ?>

<!DOCTYPE html>

<html>

  <style>
  .head {

    font-family: 'Roboto', sans-serif;
    font-weight: bold;
    margin-bottom: 3%;

  }

  .title {

    font-family: 'Roboto', sans-serif;
    color: rgb(0, 153, 51);
    font-weight: bold;
    font-size: 2.5rem;
    margin-top: 2%;

  }

  .words{

    font-family: 'Roboto', sans-serif;

  }

  .container {

      width: 100%;
      padding-right: 15px;
      padding-left: 15px;
      margin-right: auto;
      margin-left: auto;

  }

  </style>

  <body>

    <div class="container">

      <?php

        /* MOVIE INFORMATION */

	      if (isset($_GET['id'])) {

	          $id = mysqli_real_escape_string($db, $_GET['id']);
	          $sql = "SELECT * FROM `movies` WHERE movies.movie_id = " . $id;
	          $GLOBALS['row_data'] = mysqli_query($db, $sql);
	      }

	      if ($row_data->num_rows > 0) {

	          // fetch row_data_1 from $_Globals

	      	  print('<h2 class= "head"> Movie Information </h2> <hr>');

	          while($row = $row_data->fetch_assoc()) {

	            print( '<h3 class= "title"> Movie ID: </h3><p class= "words" >'.$row["movie_id"]. '</p>
	                    <h3 class= "title"> Native Name: </h3><p class= "words">' .$row["native_name"]. '</p>
	                    <h3 class= "title"> English Name: </h3><p class= "words">' .$row["english_name"]. '</p>
	                    <h3 class= "title"> Year: </h3><p class= "words">' .$row["year_made"]. '</p>' );

	          }

	      }

	      else {

	        print('<hr>NO DATA ON MOVIE');

	      }

        /* MOVIE DATA */

	      if (isset($_GET['id'])) {

	          $id = mysqli_real_escape_string($db, $_GET['id']);
	          $sql = "SELECT * FROM `movies` NATURAL JOIN `movie_data` WHERE movies.movie_id = movie_data.movie_id AND movies.movie_id = " . $id;
	          $GLOBALS['row_data'] = mysqli_query($db, $sql);

	      }

	      if ($row_data->num_rows > 0) {

	        // fetch row_data_1 from $_Globals

	      	print('</br><h2 class= "head"> Movie Data </h2> <hr>');

	        while($row = $row_data->fetch_assoc()) {

	            print( '<h3 class= "title"> Language: </h3><p class= "words" >'.$row["language"]. '</p>
	                    <h3 class= "title"> Country: </h3><p class= "words">' .$row["country"]. '</p>
	                    <h3 class= "title"> Genre: </h3><p class= "words">' .$row["genre"]. '</p>
	                    <h3 class= "title"> Plot: </h3><p class= "words">' .$row["plot"]. '</p>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON MOVIE_DATA');

	      }

        /* MULTIMEDIA */

	      if (isset($_GET['id'])) {

	          $id = mysqli_real_escape_string($db, $_GET['id']);
	          $sql = "SELECT * FROM `movies` NATURAL JOIN `movie_media` WHERE movies.movie_id = movie_media.movie_id AND movies.movie_id = " . $id;
	          $GLOBALS['row_data'] = mysqli_query($db, $sql);

	      }

	      if ($row_data->num_rows > 0) {

	        // fetch row_data_1 from $_Globals

	      	print('</br><h2 class= "head"> Multimedia </h2> <hr>');

	        while($row = $row_data->fetch_assoc()) {

	            print( '<h3 class= "title"> Multimedia Link: </h3><a class= "words" href="'.$row["m_link"].'">' .$row["m_link"]. ' </a>
	                    <h3 class= "title"> Link Type: </h3><p class= "words">' .$row["m_link_type"]. '</p>
	                    <div style="width: 50%; border-bottom: 1px groove gray; opacity: 0.3;"></div>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON MOVIE_MEDIA');

	      }	      

        /* MOVIE KEYWORDS */

	      if (isset($_GET['id'])) {

	          $id = mysqli_real_escape_string($db, $_GET['id']);
	          $sql = "SELECT * FROM `movies` NATURAL JOIN `movie_keywords` WHERE movies.movie_id = movie_keywords.movie_id AND movies.movie_id = " . $id;
	          $GLOBALS['row_data'] = mysqli_query($db, $sql);

	      }

	      if ($row_data->num_rows > 0) {

	        // fetch row_data_1 from $_Globals

	      	print('</br><h2 class= "head"> Movie Keywords </h2> <hr>
	      		  <h3 class= "title"> Keywords list: </h3></br>');

	        while($row = $row_data->fetch_assoc()) {

	            print(  '<p class= "words"> - ' .$row["keyword"]. ' </p>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON MOVIE_KEYWORDS');

	      }	 

        /* PEOPLE INFORMATION */

	      if (isset($_GET['id'])) {

	          $id = mysqli_real_escape_string($db, $_GET['id']);
	          $sql = "SELECT *, CONCAT(first_name, ' ', middle_name, ' ', last_name) AS full_name FROM `movie_people` NATURAL JOIN `people` WHERE movie_people.people_id = people.id AND movie_people.movie_id = " . $id;
	          $GLOBALS['row_data'] = mysqli_query($db, $sql);

	      }

	      if ($row_data->num_rows > 0) {

	        // fetch row_data_1 from $_Globals

	      	print('</br><h2 class= "head"> Movie Staff </h2> <hr>');

	        while($row = $row_data->fetch_assoc()) {

	            print( '</br><img style="width: 30%; border-radius: 50%; margin: 1% auto;" src="./images/people/'.$row["image_name"].'"></img>
	            	    <h3 class= "title"> People ID: </h3><p class= "words" >'.$row["people_id"]. '</p>
	                    <h3 class= "title"> Screen Name: </h3><p class= "words">' .$row["screen_name"]. '</p>
	                    <h3 class= "title"> Full Name: </h3><p class= "words">' .$row["full_name"]. '</p>
	                    <h3 class= "title"> Role: </h3><p class= "words">' .$row["role"]. '</p>
	                    <h3 class= "title"> Gender: </h3><p class= "words">' .$row["gender"]. '</p>
	                    <div style="width: 50%; border-bottom: 1px groove gray; opacity: 0.3;"></div>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON PEOPLE');

	      }

        /* SONGS INFORMATION */

	      if (isset($_GET['id'])) {

	          $id = mysqli_real_escape_string($db, $_GET['id']);
	          $sql = "SELECT * FROM `movie_song` NATURAL JOIN `songs` WHERE movie_song.song_id = songs.song_id AND movie_song.movie_id = " . $id;
	          $GLOBALS['row_data'] = mysqli_query($db, $sql);

	      }

	      if ($row_data->num_rows > 0) {

	        // fetch row_data_1 from $_Globals

	      	print('</br><h2 class= "head"> Songs </h2> <hr>');

	        while($row = $row_data->fetch_assoc()) {

	            print( '<h3 class= "title"> Song ID: </h3><p class= "words" >'.$row["song_id"]. '</p>
	                    <h3 class= "title"> Title: </h3><p class= "words">' .$row["title"]. '</p>
	                    <h3 class= "title"> Lyrics: </h3><p class= "words">' .$row["lyrics"]. '</p>
	                    <div style="width: 50%; border-bottom: 1px groove gray; opacity: 0.3;"></div>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON SONGS');

	      }	      

        /* SONGS MEDIA INFORMATION */

	      if (isset($_GET['id'])) {

	          $id = mysqli_real_escape_string($db, $_GET['id']);
	          $sql = "SELECT * FROM `movie_song` NATURAL JOIN `songs` NATURAL JOIN `song_media` WHERE movie_song.song_id = song_media.song_id && songs.song_id AND movie_song.movie_id = " . $id;
	          $GLOBALS['row_data'] = mysqli_query($db, $sql);

	      }

	      if ($row_data->num_rows > 0) {

	        // fetch row_data_1 from $_Globals

	      	print('</br><h2 class= "head"> Songs Media </h2> <hr>');

	        while($row = $row_data->fetch_assoc()) {

	            print( '<h3 class= "title"> Song: </h3><p class= "words" >'.$row["title"]. '</p>
	                    <h3 class= "title"> Link: </h3><p class= "words">' .$row["s_link"]. '</p>
	                    <h3 class= "title"> Link Type: </h3><p class= "words">' .$row["s_link_type"]. '</p>
	                    <div style="width: 50%; border-bottom: 1px groove gray; opacity: 0.3;"></div>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON SONG_MEDIA');

	      }

        /* SONGS PEOPLE INFORMATION */

	      if (isset($_GET['id'])) {

	          $id = mysqli_real_escape_string($db, $_GET['id']);
	          $sql = "SELECT *, CONCAT(first_name, ' ', middle_name, ' ', last_name) AS full_name FROM `movie_song` NATURAL JOIN `songs` NATURAL JOIN `song_people` NATURAL JOIN `people` WHERE movie_song.song_id = song_people.song_id && songs.song_id AND song_people.people_id = people.id AND movie_song.movie_id = " . $id;
	          $GLOBALS['row_data'] = mysqli_query($db, $sql);

	      }

	      if ($row_data->num_rows > 0) {

	        // fetch row_data_1 from $_Globals

	      	print('</br><h2 class= "head"> Artist Information </h2> <hr>');

	        while($row = $row_data->fetch_assoc()) {

	            print( '<h3 class= "title"> Song: </h3><p class= "words" >'.$row["title"]. '</p>
	                    <h3 class= "title"> Artist: </h3><p class= "words">' .$row["full_name"]. '</p>
	                    <h3 class= "title"> Role: </h3><p class= "words">' .$row["role"]. '</p>
	                    <div style="width: 50%; border-bottom: 1px groove gray; opacity: 0.3;"></div>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON SONG_PEOPLE');

	      }

        /* SONG KEYWORDS */

	      if (isset($_GET['id'])) {

	          $id = mysqli_real_escape_string($db, $_GET['id']);
	          $sql = "SELECT * FROM `songs` NATURAL JOIN `song_keywords` NATURAL JOIN `movie_song` WHERE songs.song_id = song_keywords.song_id && movie_song.song_id AND movie_song.movie_id = " . $id;
	          $GLOBALS['row_data'] = mysqli_query($db, $sql);

	      }

	      if ($row_data->num_rows > 0) {

	        // fetch row_data_1 from $_Globals

	      	print('</br><h2 class= "head"> Song Keywords </h2><hr>');

	        while($row = $row_data->fetch_assoc()) {

	            print('<h3 class= "title"> Song: </h3><p class= "words" >'.$row["title"]. '</p>  
	            	  <h3 class= "title"> Keyword:</h3><p class= "words" >' .$row["keyword"]. ' </p>' );

	        }

	      }

	      else {

	        print('<hr>NO DATA ON SONG_KEYWORDS');

	      }		      	      

      ?>

    </div>

  </body>
</html>
