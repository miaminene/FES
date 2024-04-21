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
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get form data (sanitize inputs before using)
    $newPassword = $_POST['New Password']; // This has a space in the name attribute, so access it using the key it was submitted with
    $retypedPassword = $_POST['Retype New Password'];

    // Validation (example, you can add more checks)
    if (empty($newPassword) || empty($retypedPassword)) {
        echo "Please fill out both password fields.";
    } else if ($newPassword !== $retypedPassword) {
        echo "Passwords do not match.";
    } else {
        // Process the password change logic here (e.g., connect to database, update password)
        // For demonstration purposes, let's just display a success message
        echo "Password changed successfully!";
    }
}
?>