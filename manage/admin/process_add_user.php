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
$conn1 = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

if (!$conn1) {
    header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/add_user.php?err=4");
    die();
}

// Only users with admin rights must be able to access this page
// If a user do not have admin right then they must be routed to the users.php page
$curr_user = $_SESSION["username"];
$query = "SELECT is_admin FROM admin WHERE username='$curr_user'";
$result = mysqli_query($conn1, $query);
$curr_user_admin = mysqli_fetch_array($result)["is_admin"];

if (!$curr_user_admin) {
    header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/users.php");
    die();
}


// get all the data
$username = $_POST["username"];
$raw_pass = $_POST["password"];
if (isset($_POST["is_admin"])) {
    $raw_is_admin = $_POST["is_admin"];
    // Convert the checkbox value from string "on"/"off" to boolean 1/0
    $is_admin_mapper = array(
        "on" => 1,
        "off" => 0
    );
    $is_admin = $is_admin_mapper[$raw_is_admin];
} else {
    $is_admin = 0;
}

// check if the username is available or not
$user_check_query = "SELECT is_admin FROM admin WHERE username='$username'";
$user_check_result = mysqli_query($conn1, $user_check_query);

if ($user_check_result == $username) {
    header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/add_user.php?err=3");
    die();
}

// Hash the password
$password = password_hash($raw_pass, PASSWORD_BCRYPT);

// insert the data
$ins_query = "INSERT INTO admin(username, password, is_admin) VALUES('$username', '$password', '$is_admin')";
$ins_result = mysqli_query($conn1, $ins_query);

// check if insertion was successful or not, and report to the user likewise
if (!$ins_result) {
    header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/add_user.php?err=2");
    die();
} else {
    header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/add_user.php?err=1");
    die();
}

mysqli_close($conn1);
