<?php

// Session start
session_start();
// Check if this page was accessed through URL directly or through the login process
// If this page was accessed through URL directly then access must be denied and user must be brought back to
// the login page, else user stays on this page.
if ($_SESSION["loggedin"] == false) {
    header("Location: http://$_SERVER[HTTP_HOST]/manage/login.php");
    die();
}


//TODO: Implement push messages regarding timetable updates to app users
//Note: for this first the app must be updated with firebase connectivity and Android SharedPreferences


// include the database variables (name, username, password)
include_once "../../../include/dbconn.php";
$conn1 = mysqli_connect($db_host, $db_user, "", $db_name);

// If connection fails kill current script and take the user to error page and let them know.
if (!$conn1) {
    header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/update_process/error.php?err=1");
    die();
}

// get the class name whose timetable is to be changed
$class = mysqli_escape_string($conn1, $_POST["class_name"]);
echo $class;

// Get the table rows as array and use array_map() with anonymous functions to execute the mysqli_escape_string() for each element of the row
// this is necessary to prevent SQL-injection attacks to an extent
$monday = array_map(function ($e) use ($conn1) {
    return mysqli_escape_string($conn1, $e);
}, $_POST["Monday"]);
$tuesday = array_map(function ($e) use ($conn1) {
    return mysqli_escape_string($conn1, $e);
}, $_POST["Tuesday"]);
$wednesday = array_map(function ($e) use ($conn1) {
    return mysqli_escape_string($conn1, $e);
}, $_POST["Wednesday"]);
$thursday = array_map(function ($e) use ($conn1) {
    return mysqli_escape_string($conn1, $e);
}, $_POST["Thursday"]);
$friday = array_map(function ($e) use ($conn1) {
    return mysqli_escape_string($conn1, $e);
}, $_POST["Friday"]);
$saturday = array_map(function ($e) use ($conn1) {
    return mysqli_escape_string($conn1, $e);
}, $_POST["Saturday"]);

// This array will hold all other arrays. It is an array of arrays
$weekdays = array($monday, $tuesday, $wednesday, $thursday, $wednesday, $thursday, $friday, $saturday);

// success flag - used later to take user to success page if everything executes as intended.
$success = true;

// Processing the data and updating the database one element (column) at a time using two temp-counter variables $i and $j
$j = 1;
foreach ($weekdays as $week) {
    $i = 1;
    foreach ($week as $w) {
        $query = "UPDATE $class SET lec$i='$w' WHERE week=$j";
        $result = mysqli_query($conn1, $query);
        if (!$result) {
            $success = false;
            header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/update_process/error.php?err=2");
            die();
        }

        echo 'lec'.$i.'week'.$j;

        $i++;
    }
    $j++;
}

// we use previous success flag to check whether everything executed fine or not
// if true then take the user to the success page
if ($success) {
    header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/update_process/success.php?class=$class");
}

mysqli_close($conn1);
