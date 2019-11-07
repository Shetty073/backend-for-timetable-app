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
    <title>Admin Console - TY BMS</title>

    <!-- Bootstrap core CSS -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Our custom template adjustments -->
    <link href="../../css/admin_template.css" rel="stylesheet">

    <style>
        .btn-outline-secondary {
            border: 1px solid #B00020;
            color: #B00020;
        }
        .table-danger {
            background: #FFFFFF;
            border: 1px solid #B00020;
        }
        th {
            background: #B00020;
            color: #FFFFFF;
        }
        #td-days {
            border-right: 1px solid #B00020;
        }
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
                        <a class="nav-link" href="./fy_bms.php">
                            First Year - BMS
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./sy_bms.php">
                            Second Year - BMS
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
                <h4 class="h4">Third Year - BMS</h4>
            </div>

            <table class="table table-hover table-danger">
                <thead>
                <tr>
                    <th scope="col">Day</th>
                    <th scope="col">1</th>
                    <th scope="col">2</th>
                    <th scope="col">3</th>
                    <th scope="col">4</th>
                    <th scope="col">5</th>
                    <th scope="col">6</th>
                </tr>
                </thead>
                <tbody>
                <?php

                $weekdays = array(
                    1 => "Monday",
                    2 => "Tuesday",
                    3 => "Wednesday",
                    4 => "Thursday",
                    5 => "Friday",
                    6 => "Saturday"
                );

                // Include the database variables file
                include_once "../../../include/dbconn.php";

                // Database connection
                $conn1 = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

                if (!$conn1) {
                    //    die("Error! could not connect to database".mysqli_error($conn));
                    echo "<div class='alert alert-danger alert-dismissible fade show col-md-12' style='padding: 4px; font-size: 14px;'><button type='button' class='close' data-dismiss='alert' style='padding: 0px;'>&times;</button>Database connection error</div>";
                    die();
                }

                $query = "SELECT * FROM ty_bms";
                $result = mysqli_query($conn1, $query);
                if (mysqli_num_rows($result) >= 1) {
                    $i=1;
                    while ($row = mysqli_fetch_array($result)) {
                        $lec1 = $row['lec1'];
                        $lec2 = $row['lec2'];
                        $lec3 = $row['lec3'];
                        $lec4 = $row['lec4'];
                        $lec5 = $row['lec5'];
                        $lec6 = $row['lec6'];

                        // MariaDB SQL stores date type data in the format yyyy-mm-dd
                        // Change its format to dd-mm-yyy before displaying it
                        echo "<tr>";
                        echo "<td scope=\"row\" id=\"td-days\">$weekdays[$i]</td>";
                        echo "<td>$lec1</td>";
                        echo "<td>$lec2</td>";
                        echo "<td>$lec3</td>";
                        echo "<td>$lec4</td>";
                        echo "<td>$lec5</td>";
                        echo "<td>$lec6</td>";
                        // Modal closed
                        echo "</tr>";

                        $i++;
                    }
                }

                // Close the mysql connection
                mysqli_close($conn1);
                ?>
                </tbody>
            </table>
            <div class="container text-center">
                <a class="btn btn-outline-secondary" href="./update/update_ty_bms.php">Update</a>
            </div>
        </main>
    </div>
</div>

<script src="../../bootstrap/js/jquery-3.4.1.min.js"></script>
<script src="../../bootstrap/js/popper.min.js"></script>
<script src="../../bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
