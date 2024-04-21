<?php

session_start();
require "dbConnection.php";

if (isset($_POST["login"])) {
  $kld_number = $_POST['kld_number'];
  $password = $_POST['password'];

  $stmt = $conn->query(("SELECT * FROM student WHERE STUD_KLD = '$kld_number'"));
  if($stmt->num_rows > 0) {
      $row = $stmt->fetch_assoc();
      $_SESSION['student_number'] = $row['STUD_KLD'];
      header(("Location: index.php"));
  }else {
    echo "<script>alert('Invalid Credentials!')</script>";
  }
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Faculty Evaluation System | Login</title>
    <link rel="stylesheet" href="styleLOGIN.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
  </head>

  <body>
    <form method="post">
      <div class="wrapper">
        <h1>Login</h1>

        <div class="error-message"></div>
        <form>
          <input
            type="text"
            name="kld_number"
            placeholder="KLD Number"
            required
          />
          <input
            type="password"
            name="password"
            placeholder="Password"
            id="password"
            required
          />
          <img src="eye-close.png" id="eyeicon" />
        </form>

        <div class="terms">
          <input type="checkbox" id="checkbox" name="terms" required />
          <label for="checkbox"
            >I agree to these
            <a href="TermsCond.html">Terms and Conditions</a></label
          >
        </div>

        <div class="forgot-pass">
          <p><a href="forgotpass.html">Forgot Password?</a></p>
        </div>

        <button type="submit" name="login">Login</button>
        <h2>KLD - FES</h2>
      </div>
    </form>

    <script>
      let eyeicon = document.getElementById("eyeicon");
      let password = document.getElementById("password");

      eyeicon.onclick = function () {
        if (password.type === "password") {
          password.type = "text";
          eyeicon.src = "eye-open.png";
        } else {
          password.type = "password";
          eyeicon.src = "eye-close.png";
        }
      };
    </script>
  </body>
</html>
