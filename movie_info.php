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

      if (isset($_GET['id'])) {

          $id = mysqli_real_escape_string($db, $_GET['id']);
          $sql = "SELECT * FROM `movies` WHERE 'id' = " . $id;
          $GLOBALS['row_data'] = mysqli_query($db, $sql);
      } 
      else if(isset($_GET['name'])) {

          $name = mysqli_real_escape_string($db, $_GET['name']);
          $sql = "SELECT * FROM `movies` WHERE 'name' = '" . $name ."'";
          $GLOBALS['row_data'] = mysqli_query($db, $sql);
      }

      if ($row_data->num_rows > 0) {
          // fetch row_data from $_Globals
          while($row = $row_data->fetch_assoc()) {
            print( '<h2 class= "head"> Movie Information </h2>');  
            print( '<h3 class= "title"> Movie ID: </h3><p class= "words" >'.$row["id"]. '</p>
                    <h3 class= "title"> Native Name: </h3><p class= "words">' .$row["name"]. '</p>
                    <h3 class= "title"> English Name: </h3><p class= "words">' .$row["english_name"]. '</p>
                    <h3 class= "title"> Year: </h3><p class= "words">' .$row["year"]. '</p>' );
          }
      } else {
        print('no data');
      }

      ?>

    </div>

  </body>
</html>
