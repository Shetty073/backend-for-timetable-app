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
    header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/users.php?deleted=4");
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

if (isset($_GET["user"])) {
    $user_to_be_deleted = $_GET["user"];
    if ($curr_user == $user_to_be_deleted) {
        header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/users.php?deleted=3");
        die();
    } else {
        $del_query = "DELETE FROM admin WHERE username='$user_to_be_deleted'";
        $del_result = mysqli_query($conn1, $del_query);
        if ($del_result) {
            header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/users.php?deleted=1");
            die();
        } else {
            header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/users.php?deleted=2");
            die();
        }
    }
}


// Close the mysql connection
mysqli_close($conn1);

