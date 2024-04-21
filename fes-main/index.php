<?php

session_start();
require "dbConnection.php";

$studentNumber = $_SESSION['student_number'];
$stmt = $conn->query("SELECT * FROM student 
                     INNER JOIN course ON student.COURSE_ID = course.COURSE_ID 
                     INNER JOIN year ON student.YEAR_ID = year.YEAR_ID 
                     WHERE STUD_KLD = '$studentNumber'");

$row = $stmt->fetch_assoc();

// dito kayo maglagay ng backend nyo, kapag nagsubmit ng form

?>


<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleINDEX1.css">
    <title>User | Faculty Evaluation System</title>
</head>

<body>
    <form method="post">
        <div class="banner">
            <header class="navbar">
                <img src="KLDlogo.png" alt="Kolehiyo ng Lungsod ng Dasmarinas Logo">
                <h1>Kolehiyo ng Lungsod ng Dasmarinas</h1>
                <ul>
                    <li><a href="#">Change Password</a></li>
                    <li><a href="logout.php">Logout</a></li>
                </ul>
            </header>

            <h3>STUDENT</h3>
            <h4>Name: <?= $row['STUD_FNAME'] . " " . $row['STUD_MNAME'] . " " . $row['STUD_LNAME'] ?></h4>
            <h4>Course: <?= $row['COURSE_NAME'] ?></h4>
            <h4>Level and Section: <?= $row['YEAR_NAME'] ?></h4>


            <div class="table-container">
                <table class="content-table">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Faculty</th>
                            <th>Course Code</th>
                            <th>Description</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>John Doe</td>
                            <td>CSC 101</td>
                            <td>Introduction to Computer Science</td>
                        </tr>
                        <tr class="active-row">
                            <td>2</td>
                            <td>Lorem Ipsum</td>
                            <td>PCIS2209</td>
                            <td>Mean Bean</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Loren Simsum</td>
                            <td>PCIS2240</td>
                            <td>Green Bean</td>
                        </tr>
                        <tr class="active-row">
                            <td>4</td>
                            <td>Loren Dimsum</td>
                            <td>PCIS2299</td>
                            <td>Lumot Bean</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <button><a href="evaluation.php">Start Evaluation Now</a></button>
        </div>

</body>

</html>