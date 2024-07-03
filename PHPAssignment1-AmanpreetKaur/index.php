<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->

  <!--CDN  link for icons -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

  <!-- CDN link for the Bootsrap Framework -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>

  <div class="container-fluid">
    <div class="container">
      <div class="row">
        <div class="col">
          <h1 class="display-4 mt-5 mb-5 text-center">Bollywood Hit Songs(2017-2019) <i
              class="bi bi-fire text-warning"></i></h1>
        </div>
      </div>
    </div>
  </div>

  <div class="container-fluid">
    <div class="container">
      <div class="row">


        <?php
        include ('reusable/connect.php');
        $query = 'SELECT *  FROM songs JOIN movies ON  songs.movieId = movies.movieId';
        //$query ='SELECT * FROM songs';
        $songs = mysqli_query($connect, $query);
        // making three arrays to store the bollywood songs based on the year
        // first array to store bollywood hit songs  for year 2017
        $array1 = array();
        // Second array to store bollywood hit songs  for year 2018
        $array2 = array();
        // third array to store bollywood hit songs  for year 2019
        $array3 = array();
        foreach ($songs as $song) {
          $relasedate = date($song['releaseDate']);
          // echo($relasedate);
          //get the year value 
          $year = date('Y', strtotime($relasedate));

          //separating songs based on the year of the release
          if ($year == "2017") {
            array_push($array1, $song);
          } else if ($year == "2018") {
            array_push($array2, $song);
          } else {
            array_push($array3, $song);
          }
        }
        // Displaying on the webpage 
        echo '<h2  class="display-5  mt-5 mb-5 pb-2 text-white  border-bottom border-white"> Bollywood hits of 2017 </h2>';
        
        // Year 2017- Bollywood hits
        echo '<div class= "row ">';
        foreach ($array1 as $song) {
          echo '<div class="col-md-4 mt-2 mb-3">
                  <div class="card" style="width: 18rem;">
              
                    <img src="' . $song['imagePath'] . '" alt="song cover picture" aria-hidden="true"/>
                      <div class="card-body ">
                        <h5 class="card-title fs-4 fw-normal">' . $song['songName'] . ' <i class="fa-solid fa-music text-warning "></i></h5>
                        <div class="card-text">
                          <i class="fa-solid fa-file-video"></i>&nbsp;<a href="movieDetail.php?movieId=' . $song['movieId'] . '"  name="movieId" class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover text-bg-danger-subtle"  > ' . $song['movie'] . ' </a>
                        </div>
                      <div class="card-text mt-3">
                        <form action="songDetail.php" method="GET">
                          <input type="hidden" name="songId" value="' . $song['songId'] . '">
                          <button class="btn btn-sn btn-outline-primary" type="submit" name="detail">Details</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>';
        }
        echo ' </div>';

      // Year 2018- Bollywood hits
        echo '<h2 class=" display-5 mt-5 mb-5 pb-2 text-white  border-bottom border-white"> Bollywood hits of 2018 </h2>';
        echo '<div class= "row">';
        foreach ($array2 as $song) {
          echo '<div class="col-md-4 mt-2 mb-3">
                  <div class="card" style="width: 18rem;">
            
                    <img src="' . $song['imagePath'] . '" alt="song cover picture" aria-hidden="true"/>
                    <div class="card-body ">
                      <h5 class="card-title fs-4 fw-normal">' . $song['songName'] . ' <i class="fa-solid fa-music text-warning "></i></h5>
                      <div class="card-text">
                        <i class="fa-solid fa-file-video"></i>&nbsp;<a href="movieDetail.php?movieId=' . $song['movieId'] . '"  name="movieId" class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover text-bg-danger-subtle"  > ' . $song['movie'] . ' </a>
                      </div>
                      <div class="card-text mt-3">
                        <form action="songDetail.php" method="GET">
                          <input type="hidden" name="songId" value="' . $song['songId'] . '">
                          <button class="btn btn-sn btn-outline-primary" type="submit" name="detail">Details</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>';
        }
        echo ' </div>';

        // Year 2019- Bollywood hits
        echo '<h2 class="display-5 mt-5 mb-5 pb-2 text-white  border-bottom border-white"> Bollywood hits of 2019 </h2>';
        echo '<div class= "row">';
        foreach ($array3 as $song) {
          echo '<div class="col-md-4 mt-2 mb-3">
                  <div class="card" style="width: 18rem;">
              
                    <img src="' . $song['imagePath'] . '" alt="song cover picture" aria-hidden="true"/>
                    <div class="card-body ">
                      <h5 class="card-title fs-4 fw-normal">' . $song['songName'] . ' <i class="fa-solid fa-music text-warning "></i></h5>
                      <div class="card-text">
                        <i class="fa-solid fa-file-video"></i>&nbsp;<a href="movieDetail.php?movieId=' . $song['movieId'] . '"  name="movieId" class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover text-bg-danger-subtle"  > ' . $song['movie'] . ' </a>
                      </div>
                      <div class="card-text mt-3">
                        <form action="songDetail.php" method="GET">
                          <input type="hidden" name="songId" value="' . $song['songId'] . '">
                          <button class="btn btn-sn btn-outline-primary" type="submit" name="detail">Details</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>';
        }
        echo ' </div>';
        
        
        ?>
      </div>
    </div>
  </div>


<!-- CDN link for the js file  of Bootstrap -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
  <!-- CDN link for the fontawesone icons-->
  <script src="https://kit.fontawesome.com/db1e295bdd.js" crossorigin="anonymous"></script>
</body>

</html>