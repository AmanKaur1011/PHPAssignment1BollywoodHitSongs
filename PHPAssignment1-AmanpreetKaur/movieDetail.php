<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <?php
    include ('reusable/connect.php');
    $id = $_GET['movieId'];
    //fetching  selected movie information from the database
    $query = "SELECT * FROM movies WHERE `movieId` = '$id'";
    $movie = mysqli_query($connect, $query);
    $result = $movie->fetch_assoc();

    ?>
    <!-- Displaying the movie details on the webpage -->
    <div class="container-fluid">
        <div class="container">
            <h1 class="display-4 mt-5 mb-5 pb-2  border-bottom border-white">Movie Deatils <i class="fa-solid fa-film"></i></h1>
            <div class="row align-items-center gap-5">


            <?php
            echo    '<div class="col-md-auto" > 
                        <div>
                            <img src="' . $result['imagepath'] . '" class="object-fit-fill" height="400" alt="movie cover picture" aria-hidden="true"/>
                        </div>
                    </div>

                    <div class="col-md-7">
                        <h2 class="display-5  mb-5">' . $result['movieName'] .' ('.$result['year'].') '. '</h2>
                        <p>' . $result['overview'] . '</p>
                        <div><span class="badge bg-warning fs-6 mb-3 fw-normal"> Director :  </span>  '.'&nbsp; '.$result['director'].'</div>
                        <div><span class="badge bg-danger fs-6 mb-3 fw-normal"> Cast :  </span>' .'&nbsp; '. $result['cast'] . '</div>
                        <div><span class="badge bg-info fs-6 fw-normal"> Genre :  </span>' .'&nbsp; '. $result['genre'] . '</div>
                        
                    </div>'
                ?>
        </div>
        </div>

    </div>
   
<!-- CDN link for the js file  of Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--CDN link for fontawesone icons  -->
<script src="https://kit.fontawesome.com/db1e295bdd.js" crossorigin="anonymous"></script>
</body>

</html>