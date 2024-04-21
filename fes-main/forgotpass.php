<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = " ";
$dbname = "faculty_evaluation_system";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Process the form data
    if (isset($_POST['email'])) {
        $email = $_POST['email'];

        // Add your logic to handle the form data, such as saving it to a database or performing any other operations

        // For demonstration purposes, let's just display the email address
        echo "Email: " . $email;
    } else {
        echo "Error: Email not received.";
    }
} else {
    echo "Error: Form not submitted.";
}
?>