<?php

// Database connection variables
$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "timetable";

$conn = mysqli_connect($db_host, $db_user, "", $db_name);

if (!$conn)
{
    exit(header("error.php"));
}
