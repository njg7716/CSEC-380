<?php

$dbhost = 'localhost';
$dbuser = 'admin';
$dbpass = 'pass';
$dbname = 'armbook';
$mysqli = new mysqli('127.0.0.1', $dbuser, $dbpass, $dbname);
if ($mysqli->connect_errno) {
    echo "Error: Failed to make a MySQL connection, here is why: \n";
    echo "Errno: " . $mysqli->connect_errno . "\n";
    echo "Error: " . $mysqli->connect_error . "\n";
    die( "Sorry, this website is experiencing problems.");
}


?>
