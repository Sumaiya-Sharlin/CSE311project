<?php
 $con=mysqli_connect('localhost', 'root', '', 'nsu_rds');
 if(!$con)
 {
 	die('check your connection'.mysqli_error());
 }
?>