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

// Include the database variables file
include_once "../../include/dbconn.php";

// Database connection
$conn1 = mysqli_connect($db_host, $db_user, $db_pass, "timetable");

if (!$conn1) {
    header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/change_curr_user_pass.php?err=4");
    die();
}

// Get the current users existing password from database
$curr_user = $_SESSION["username"];
$query = "SELECT password FROM admin WHERE username='$curr_user'";
$result = mysqli_query($conn1, $query);
$curr_user_pass = mysqli_fetch_array($result)["password"];

// Get the data from the password change form
$old_pass = $_POST["old_pass"];
$raw_new_pass = $_POST["new_pass"];

// Verify if the odl password matches with the one in the database
if (password_verify($old_pass, $curr_user_pass)) {
    // If password is matches then change the password with the new one
    // But hash the new password first
    $new_pass = password_hash($raw_new_pass, PASSWORD_BCRYPT);
    $pass_updt_query = "UPDATE admin SET password='$new_pass' WHERE username='$curr_user'";
    $pass_updt_result = mysqli_query($conn1, $pass_updt_query);
    if ($pass_updt_result) {
        header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/change_curr_user_pass.php?err=1");
        die();
    } else {
        header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/change_curr_user_pass.php?err=3");
        die();
    }
} else {
    // If password does not match then route the user to the password change page with the respective error message
    header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/change_curr_user_pass.php?err=2");
    die();
}

mysqli_close($conn1);
