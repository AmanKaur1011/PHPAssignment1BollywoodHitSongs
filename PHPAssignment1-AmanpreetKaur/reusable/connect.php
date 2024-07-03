<?php
//  connection to the database
$connect= mysqli_connect("localhost","root","","entertainment");
    if(!$connect){
        die("Connection Failed". mysqli_connect_error());
    }


?>