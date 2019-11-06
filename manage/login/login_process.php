<?php


// Session start
session_start();


// Include the database variables file
include_once "../../include/dbconn.php";

// Database connection
$conn1 = mysqli_connect($db_host, $db_user, $db_pass, "timetable");

// Form data
$usr = mysqli_real_escape_string($conn1, $_POST["username"]);
$pas = mysqli_real_escape_string($conn1, $_POST["password"]);

if (!$conn1) {
//    die("Error! could not connect to database".mysqli_error($conn));
    header("Location: http://$_SERVER[HTTP_HOST]/manage/login.php?err=2");
    die();
}

// Query
$query = "SELECT * FROM admin WHERE username='$usr'";
$result = mysqli_query($conn1, $query);

if (mysqli_num_rows($result) < 1) {
    $_SESSION["loggedin"] = false;
    header("Location: http://$_SERVER[HTTP_HOST]/manage/login.php?err=1");
    die();
} else {
    if ($row = mysqli_fetch_assoc($result)) {
        // Verify password with the hashed one
        if (password_verify($pas, $row["password"])) {
            // If password is correct
            $_SESSION["loggedin"] = true;
            $_SESSION["user_id"] = $row["user_id"];
            $_SESSION["username"] = $row["username"];

            header("Location: http://$_SERVER[HTTP_HOST]/manage/admin/admin.php");
            die();
        } else {
            // If password is not correct
            $_SESSION["loggedin"] = false;
            header("Location: http://$_SERVER[HTTP_HOST]/manage/login.php?err=1");
            die();
        }
    }
}

// Close database connection
mysqli_close($conn1);
