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
    <title>Admin Console - Add User</title>

    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Our custom template adjustments -->
    <link href="../css/admin_template.css" rel="stylesheet">

    <style>
        .btn-outline-secondary {
            border: 1px solid #B00020;
            background-color: #FFFFFF;
            color: #B00020;
        }

        .btn-secondary {
            border: 1px solid #FFFFFF;
            background-color: #B00020;
            color: #FFFFFF !important;
            outline: none;
        }

        .btn-secondary:hover {
            border: 1px solid #B00020;
        }

        .table-danger {
            background: #FFFFFF;
            border: 1px solid #B00020;
        }

        .text-danger {
            color: #B00020 !important;
            text-decoration-style: solid;
        }

        label {
            color: #B00020;
        }

        input:invalid {
            background-color: #ee4750;
            border: 1px solid #B00020;
            color: #FFFFFF;
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
            <a class="nav-link logged-in-as" href="../login/logout_process.php">Log out</a>
        </li>
    </ul>
</nav>

<div class="container-fluid dboard">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="./admin.php">
                            Console Dashboard
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h4 class="h4">Add User</h4>
            </div>
            <p>
                <a class="btn btn-outline-secondary" href="./users.php">< back</a>
            </p>

            <div class="container">
                <form method="post" action="./process_add_user.php">
                    <div class="form-group col-lg-4">
                        <label for="username" class="mr-sm-2">Username</label>
                        <input type="text" class="form-control mb-2 mr-sm-2" name="username" id="username"
                               autocomplete="off" required>
                    </div>
                    <div class="form-group col-lg-4">
                        <label for="pwd" class="mr-sm-2">Password:</label>
                        <input type="password" class="form-control mb-2 mr-sm-2" name="password" id="pwd"
                               autocomplete="off" required>
                    </div>
                    <div class="form-group col-lg-4">
                        <label for="pwd_cf" class="mr-sm-2">Confirm Password:</label>
                        <input type="password" class="form-control mb-2 mr-sm-2" name="password" id="pwd_cf"
                               autocomplete="off" oninput="check(this)" required>
                    </div>
                    <script type="text/javascript">
                        function check(input) {
                            if (document.getElementById("pwd_cf").value !== document.getElementById("pwd").value) {
                                input.setCustomValidity("Password Must be Matching.");
                                input.reportValidity();
                            } else {
                                // input is valid -- reset the error message
                                input.setCustomValidity("");
                                input.reportValidity();
                            }
                        }
                    </script>
                    <div class="form-group">
                        <div class="form-check mb-2 mr-sm-2">
                            <label class="form-check-label text-danger">
                                <input class="form-check-input" type="checkbox" name="is_admin" autocomplete="off">
                                check this button to give this user admin rights
                            </label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-outline-secondary mb-2">Add user</button>
                </form>
                <?php
                if (isset($_GET["err"])) {
                    $deleted = (int)$_GET["err"];
                    switch ($deleted) {
                        case 1:
                            echo "<div class='alert alert-danger alert-dismissible fade show col-md-12' style='padding: 4px; font-size: 14px;'><button type='button' class='close' data-dismiss='alert' style='padding: 0px;'>&times;</button>User added successfully.</div>";
                            break;
                        case 2:
                            echo "<div class='alert alert-danger alert-dismissible fade show col-md-12' style='padding: 4px; font-size: 14px;'><button type='button' class='close' data-dismiss='alert' style='padding: 0px;'>&times;</button>Unable to add this user.</div>";
                            break;
                        case 3:
                            echo "<div class='alert alert-danger alert-dismissible fade show col-md-12' style='padding: 4px; font-size: 14px;'><button type='button' class='close' data-dismiss='alert' style='padding: 0px;'>&times;</button>Username is not available! Chose a different username</div>";
                            break;
                        case 4:
                            echo "<div class='alert alert-danger alert-dismissible fade show col-md-12' style='padding: 4px; font-size: 14px;'><button type='button' class='close' data-dismiss='alert' style='padding: 0px;'>&times;</button>Unable to add this user! Database connection error</div>";
                            break;
                    }
                }
                ?>
            </div>

        </main>
    </div>
</div>

<script src="../bootstrap/js/jquery-3.4.1.min.js"></script>
<script src="../bootstrap/js/popper.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
