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

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Ashish Shetty">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>TimeTable App Backend - ERROR</title>

    <!-- Bootstrap core CSS -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Our custom template adjustments -->
    <link href="../../css/admin_template.css" rel="stylesheet">

    <style>
        .text-danger {
            color: #B00020;
        }

        .error-header {
            margin-top: 15%;
        }

        .error-body {
            background-color: #B00020;
            color: #FFFFFF;
        }

        .btn-outline-secondary {
            color: #B00020;
            border: 1px solid #B00020;
        }

        .btn-outline-secondary:hover {
            color: #FFFFFF;
            background-color: #B00020;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">TimeTable App Backend Console</a>
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link logged-in-as" id="logged-in-as" href="#">Logged in
                as <?php echo ucfirst($_SESSION["username"]); ?></a>
            <a class="nav-link logged-in-as" href="../../login/logout_process.php">Log out</a>
        </li>
    </ul>
</nav>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 container">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h4 class="h4">Error</h4>
    </div>
    <div class="container text-center">
        <div class="container card error-header">
            <h1 class="h1 text-danger card-header text-center">Database Update Error</h1>
            <div class="container error-body card-body">
                <p class="text-center">
                    An error occurred while updating the timetable data hence no changes are made to the database.<br>
                    <?php
                    $error_messages = array(
                        1 => "Database connectivity error: process failed to connect to the timetable database.",
                        2 => "Error updating database: database connection is successful but there is a problem in updating the data in the database."
                    );
                    if (isset($_GET["err"])) {
                        echo $error_messages[$_GET["err"]] . "<br>";
                    }
                    ?>
                    Contact system administrator immediately regarding this problem.
                </p>
            </div>
            <br>
            <div class="container text-center">
                <a class="btn btn-outline-secondary" href="../admin.php">Go to homepage</a>
            </div>
            <br>
        </div>
    </div>

</main>

<script src="../../bootstrap/js/jquery-3.4.1.min.js"></script>
<script src="../../bootstrap/js/popper.min.js"></script>
<script src="../../bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
