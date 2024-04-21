<?php

session_start();
require "dbConnection.php"

// dito kayo maglagay ng backend nyo

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleINDEX2.css">
    <title>User Evaluation | Faculty Evaluation System</title>
</head>
<html>

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

            <div class="faculty">
                <div>
                    <h2>Faculty name</h2>
                </div>
                <div>
                    <h2>Course Code</h2>
                </div>
                <div>
                    <h2>Description</h2>
                </div>
            </div>


            <div class="eval-content">
                <table class="eval-questions">
                    <div class="eval-crit1">

                        <thead>
                            <tr>
                                <th>Question</th>
                                <th>5</th>
                                <th>4</th>
                                <th>3</th>
                                <th>2</th>
                                <th>1</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend1">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend2">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend3">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend4">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend4">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>
                        </tbody>
                    </div>

                    <div class="eval-crit2">

                        <thead>
                            <tr>
                                <th>Question</th>
                                <th>5</th>
                                <th>4</th>
                                <th>3</th>
                                <th>2</th>
                                <th>1</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend1">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend2">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend3">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend4">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend4">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>
                        </tbody>
                    </div>

                    <div class="eval-crit3">

                        <thead>
                            <tr>
                                <th>Question</th>
                                <th>5</th>
                                <th>4</th>
                                <th>3</th>
                                <th>2</th>
                                <th>1</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend1">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend2">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend3">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend4">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend4">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>
                        </tbody>
                    </div>

                    <div class="eval-crit4">

                        <thead>
                            <tr>
                                <th>Question</th>
                                <th>5</th>
                                <th>4</th>
                                <th>3</th>
                                <th>2</th>
                                <th>1</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend1">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend2">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend3">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend4">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>

                            <tr>
                                <td>lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</td>
                                <div class="legend4">
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                    <td><input type="radio" id="legend"></td>
                                </div>
                            </tr>
                        </tbody>
                    </div>

                </table>
            </div>



            <div class="comments">
                <h3>Comments</h3>
                <form action="#">
                    <input type="text" placeholder="Comments">
                </form>
            </div>

            <button id="submitBtn">Submit</button>



            <!-- <div class="popup">
                <div class="content">
                    <h2>Submission Confirmation</h2>
                    <p>Are you sure you want to submit?</p>
                    <button id="confirmBtn">Confirm</button>
                    <button id="cancelBtn">Cancel</button>
                </div>
            </div> -->

            <script type="text/javascript">
                // Get reference to the popup element
                const popup = document.querySelector('.popup');

                // Get reference to the buttons inside the popup
                const confirmBtn = document.getElementById('confirmBtn');
                const cancelBtn = document.getElementById('cancelBtn');

                // Function to show the popup
                function showPopup() {
                    popup.style.display = 'block';
                    document.querySelector('.overlay').style.display = 'block'; // Show overlay
                }

                // Function to hide the popup
                function hidePopup() {
                    popup.style.display = 'none';
                    document.querySelector('.overlay').style.display = 'none'; // Hide overlay
                }

                // Event listener for the submit button to show the popup
                document.getElementById('submitBtn').addEventListener('click', showPopup);

                // Event listener for the confirm button to hide the popup
                confirmBtn.addEventListener('click', hidePopup);

                // Event listener for the cancel button to hide the popup
                cancelBtn.addEventListener('click', hidePopup);
            </script>
        </div>

</body>

</html>