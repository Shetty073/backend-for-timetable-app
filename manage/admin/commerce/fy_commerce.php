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
    <title>Admin Console - FY Commerce</title>

    <!-- Bootstrap core CSS -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Our custom template adjustments -->
    <link href="../../css/admin_template.css" rel="stylesheet">

    <style>

    </style>
</head>
<body>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">TimeTable App Backend Console</a>
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link logged-in-as" id="logged-in-as" href="#">Logged in as <?php echo ucfirst($_SESSION["username"]); ?></a>
            <a class="nav-link logged-in-as" href="../../login/logout_process.php">Log out</a>
        </li>
    </ul>
</nav>

<div class="container-fluid dboard">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="./sy_commerce.php">
                            Second Year - BMS
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./ty_commerce.php">
                            Third Year - BMS
                        </a>
                    </li>
                    <hr>
                    <li class="nav-item">
                        <a class="nav-link" href="../admin.php">
                            Console Dashboard
                        </a>
                    </li>
                    <hr>
                    <li class="nav-item">
                        <a class="nav-link" href="../users.php">
                            Users
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h4 class="h4">First Year - Commerce</h4>
            </div>

            <a href="./fy/fy_commerce_A.php" class="card-link">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">First Year - Commerce - A </h5>
                        <h6 class="card-subtitle mb-2 text-muted">Division</h6>
                    </div>
                </div>
            </a>
            <a href="./fy/fy_commerce_B.php" class="card-link">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">First Year - Commerce - B </h5>
                        <h6 class="card-subtitle mb-2 text-muted">Division</h6>
                    </div>
                </div>
            </a>
            <a href="./fy/fy_commerce_C.php" class="card-link">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">First Year - Commerce - C </h5>
                        <h6 class="card-subtitle mb-2 text-muted">Division</h6>
                    </div>
                </div>
            </a>



        </main>
    </div>
</div>

<script src="../../bootstrap/js/jquery-3.4.1.min.js"></script>
<script src="../../bootstrap/js/popper.min.js"></script>
<script src="../../bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
