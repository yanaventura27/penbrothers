<?php

$databaseHost = 'localhost';
$databaseName = 'penbrothers';
$databaseUsername = 'root';
$databasePassword = '';

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 


// for classic pizza
$result_classic = mysqli_query($mysqli, "SELECT * FROM items where item_type = 'classic pizza'") or die("Error: " .mysqli_error($mysqli)); 

// specialty pizza
$result_specialty = mysqli_query($mysqli, "SELECT * FROM items where item_type = 'specialty pizza'") or die("Error: " .mysqli_error($mysqli)); 

//toppings
$result_toppings = mysqli_query($mysqli, "SELECT * FROM items where item_type = 'toppings'") or die("Error: " .mysqli_error($mysqli)); 


$result = mysqli_query($mysqli, "SELECT * FROM items ") or die("Error: " .mysqli_error($mysqli)); 


//admin
$result_admin = mysqli_query($mysqli, "SELECT * FROM customer") or die("Error: " .mysqli_error($mysqli)); 

 
?>