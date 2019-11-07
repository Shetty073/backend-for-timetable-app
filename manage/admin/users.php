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
    <title>Admin Console - Manage Users</title>

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

        th {
            background: #B00020;
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
                <h4 class="h4">Manage Users</h4>
                <a class="btn btn-outline-secondary" href="change_curr_user_pass.php">Change my password</a>
            </div>

            <table class="table table-hover table-danger">
                <thead>
                <tr>
                    <th scope="col">User Id</th>
                    <th scope="col">Username</th>
                    <th scope="col">Date Added</th>
                    <th scope="col">Is Admin?</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <?php
                // Include the database variables file
                include_once "../../include/dbconn.php";

                // Database connection
                $conn1 = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

                if (!$conn1) {
                    //    die("Error! could not connect to database".mysqli_error($conn));
                    echo "<div class='alert alert-danger alert-dismissible fade show col-md-12' style='padding: 4px; font-size: 14px;'><button type='button' class='close' data-dismiss='alert' style='padding: 0px;'>&times;</button>Database connection error</div>";
                    die();
                }

                if (isset($_GET["deleted"])) {
                    $deleted = (int)$_GET["deleted"];
                    switch ($deleted) {
                        case 1:
                            echo "<div class='alert alert-danger alert-dismissible fade show col-md-12' style='padding: 4px; font-size: 14px;'><button type='button' class='close' data-dismiss='alert' style='padding: 0px;'>&times;</button>User successfully deleted</div>";
                            break;
                        case 2:
                            echo "<div class='alert alert-danger alert-dismissible fade show col-md-12' style='padding: 4px; font-size: 14px;'><button type='button' class='close' data-dismiss='alert' style='padding: 0px;'>&times;</button>Unable to delete this user</div>";
                            break;
                        case 3:
                            echo "<div class='alert alert-danger alert-dismissible fade show col-md-12' style='padding: 4px; font-size: 14px;'><button type='button' class='close' data-dismiss='alert' style='padding: 0px;'>&times;</button>Cannot delete current user</div>";
                            break;
                        case 4:
                            echo "<div class='alert alert-danger alert-dismissible fade show col-md-12' style='padding: 4px; font-size: 14px;'><button type='button' class='close' data-dismiss='alert' style='padding: 0px;'>&times;</button>Unable to delete this user! Database connection error</div>";
                            break;
                    }
                }

                // check if current user is admin or not
                $curr_user = $_SESSION["username"];
                $query = "SELECT is_admin FROM admin where username='$curr_user'";
                $result = mysqli_query($conn1, $query);
                $curr_user_admin = mysqli_fetch_array($result)["is_admin"];

                // Get data from database and build a HTML table
                $query = "SELECT * FROM admin";
                $result = mysqli_query($conn1, $query);
                if (mysqli_num_rows($result) >= 1) {
                    while ($row = mysqli_fetch_array($result)) {
                        $user_id = $row['user_id'];
                        $username = $row['username'];
                        $date_added = date("d-m-Y", strtotime($row['date_added']));
                        $raw_is_admin = $row["is_admin"];
                        // Convert the checkbox value from string "on"/"off" to boolean 1/0
                        $is_admin_mapper = array(
                            1 => "Yes",
                            0 => "No"
                        );
                        $is_admin = $is_admin_mapper[$raw_is_admin];

                        echo "<tr>";
                        echo "<td scope=\"row\" id=\"td-days\">$user_id</td>";
                        echo "<td>$username</td>";
                        echo "<td>$date_added</td>";
                        echo "<td>$is_admin</td>";

                        // Only display the Delete user button if the current user is admin
                        // Also do not display delete user button in front of current users username (row)
                        if (!($username == $_SESSION["username"]) && $curr_user_admin) {
                            echo "<td><div class=\"container text-center\">
                            <a class=\"btn btn-sm btn-secondary\" data-toggle=\"modal\" data-target=\"#myModal\" href=\"#\">Delete User</a>
                            </div></td>";
                            // Bootstrap Modal
                            echo "<div class=\"modal fade\" id=\"myModal\" role=\"dialog\">";
                            echo "<div class=\"modal-dialog\">";
                            // Modal content
                            echo "<div class=\"modal-content\">";
                            // open form for sending data via POST method
                            echo "<form action=\"checkout_service.php\" method=\"post\">";
                            echo "<div class=\"modal-header\">";
                            echo "<h4 class=\"modal-title\">Are you sure you want to delete user " . $username . "?</h4>";
                            // The data inside the above div ($suite_no) is sent to the checkout_service via POST on submit
                            echo "<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>";
                            echo "</div>";
                            echo "<div class=\"modal-body\">";
                            echo "<p>This action cannot be undone. <br>Please confirm that you want to delete: Yes or No</p>";
                            echo "</div>";
                            echo "<div class=\"modal-footer\">";
                            echo "<a class=\"btn btn-outline-secondary\" id=\"modal-yes-btn\" href=\"http://$_SERVER[HTTP_HOST]/manage/admin/manage_users.php?user=$username\">Yes</a>";
                            echo "<a class=\"btn btn-secondary\" data-dismiss=\"modal\">No</a>";
                            echo "</div>";
                            echo "</form>";
                            // form closed
                            echo "</div>";
                            echo "</div>";
                            echo "</div>";
                            // Modal closed
                        } else {
                            echo "<td></td>";
                        }
                        // Modal closed
                        echo "</tr>";
                    }
                }


                ?>
                </tbody>
            </table>

            <br>

            <?php
            // check if current user is admin or not
            $curr_user = $_SESSION["username"];
            $query = "SELECT is_admin FROM admin where username='$curr_user'";
            $result = mysqli_query($conn1, $query);
            $curr_user_admin = mysqli_fetch_array($result)["is_admin"];

            if ($curr_user_admin) {
                echo "<div class=\"container text-center\">
                <a class=\"btn btn-outline-secondary\" href=\"./add_user.php\">Add User</a>
                </div>";
            } else {
                echo "<div class=\"alert alert-danger\" role=\"alert\">
                  Only admins can add new users or delete existing users!
                </div>";
            }

            // Close the mysql connection
            mysqli_close($conn1);

            ?>

        </main>
    </div>
</div>

<script src="../bootstrap/js/jquery-3.4.1.min.js"></script>
<script src="../bootstrap/js/popper.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
