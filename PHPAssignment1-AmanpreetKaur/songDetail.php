<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<div>
    <?php
    //fetching  selected song information from the database
    include ('reusable/connect.php');
    $id = $_GET['songId'];
    //$query = "SELECT * FROM songs WHERE `songId` = '$id'";
    $query = "SELECT *  FROM songs JOIN movies ON  songs.movieId = movies.movieId WHERE `songId` = '$id' ";
    $song = mysqli_query($connect, $query);
    $result = $song->fetch_assoc();

    ?>
    <!-- Displaying the song details on the webpage -->
    <div class="container-fluid">
        <div class="container">
            <h1 class="display-4 mt-5 mb-5 pb-2  border-bottom border-white">Song Deatils <i
                    class="fa-solid fa-music text-warning "></i></h1>
            <?php
            echo '<span class="float-end"> User Rating : ' . $result['userRating'] . '
                    <i class="fa-solid fa-star text-warning"></i>
                </span> ';
            ?>
            <div class="row align-items-center gap-5 justify-content-center">


                <?php
                echo '
                        <div class="col " > 
                            <div>
                                <img src="' . $result['imagePath'] . '" class="object-fit-fill" height="400"/>
                            </div>
                        </div>

                        <div class="col">

                            <h2 class="display-5  mb-3">' . $result['songName'] . ' </h2>
 
                            <div class="fs-5 mb-3">
                                <i class="fa-solid fa-film"></i><a href="movieDetail.php?movieId=' . $result['movieId'] . '"  name="movieId" class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover text-bg-danger-subtle"  > Movie : ' . $result['movieName'] . ' </a>
                            </div>
                            <div><span class="badge bg-warning fs-6 mb-3 fw-normal"> Release Date :  </span>  ' . '&nbsp; ' . $result['releaseDate'] . '</div>
                            <div><span class="badge bg-danger fs-6 mb-3 fw-normal"> Singer :  </span>' . '&nbsp; ' . $result['singer'] . '</div>
                            <div><span class="badge bg-info fs-6 fw-normal"> Genre :  </span>' . '&nbsp; ' . $result['songGenre'] . '</div>
 
                        </div>'
                    ?>



            </div>
        </div>
    </div>
<!-- CDN link for the js file  of Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
   <!--CDN link for fontawesone icons  -->
    <script src="https://kit.fontawesome.com/db1e295bdd.js" crossorigin="anonymous"></script>
    </body>

</html>