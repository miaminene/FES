<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = " ";
$dbname = "faculty_evaluation_system";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Sample data retrieval (replace with actual database queries)
$totalFaculty = 0; // Initialize total faculty count

// Query to count total faculty members
$sqlTotalFaculty = "SELECT COUNT(*) AS total_faculty FROM faculty";
$resultTotalFaculty = mysqli_query($conn, $sqlTotalFaculty);

if (mysqli_num_rows($resultTotalFaculty) > 0) {
    $rowTotalFaculty = mysqli_fetch_assoc($resultTotalFaculty);
    $totalFaculty = $rowTotalFaculty['total_faculty'];
}

// Close the database connection
mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FES - Admin</title>
    <link rel="stylesheet" href="styleadmin.css">
</head>

<body>
    <div class="container">
        <div class="navigation">
            <ul>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="desktop-outline"></ion-icon></span>
                        <span class="title"><b>FES | KLD</b></span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                        <span class="title">Sign Out</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="main">
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>
                <div class="user">
                    <img src="img/user.jpeg">
                </div>
            </div>

            <div class="cardBox">
                <div class="card">
                    <div>
                        <div class="numbers">
                            <?php echo $totalFaculty; ?>
                        </div>
                        <div class="cardName">Total Faculty Members</div>
                    </div>
                    <div class="iconBox">
                        <ion-icon name="people-outline"></ion-icon>
                    </div>
                </div>
            </div>
            
                 <!--CHARTS-->
        <div class="graphBox">
            <div class="box">
              <h2><center>Student Population per Institute</center></h2>
              <br>
              <canvas id="myChart"></canvas> 
            </div>
            <div class="box">
                <h2><center>Evaluation Rate per Institute</center></h2>
                <canvas id="donutChart"></canvas>
            </div> 
        </div>

            </div>
        </div>
    </div>
</body>

</html>