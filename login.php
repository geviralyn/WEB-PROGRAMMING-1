<?php
include 'koneksi.php';


$login_message = "";

  if (isset($_POST['login'])) {
    $usn = $_POST['usn'];
    $passw = $_POST['passw'];

    $sql = "SELECT * FROM tbl_admin WHERE username='$usn' and password='$passw' ";

    $hasil = $db->query($sql);

    $data = $hasil->fetch_assoc();
    // $_SESSION["username"] = $data["username"];

    if ($hasil->num_rows > 0) {
      header("location: dashboard/admin.php");
    } else {
      $login_message = "akun tidak ditemukan";
    }
  }

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Login</title>
  </head>
  <body>
  

  <div class="d-md-flex half">
    <div class="bg" style="background-image: url('lorong.jpg');"></div>
    <div class="contents">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12">
            <div class="form-block mx-auto">
              <div class="text-center mb-5">
                <h3 class="text-uppercase"><strong>Login</strong></h3>
              </div>
              <form action="login.php" method="POST">
                <div class="form-group">
                  <label for="username">Username</label>
                  <input type="text" class="form-control" id="username" name="usn">
                </div>
                <div class="form-group last mb-3">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" placeholder="Your Password" id="password"  name="passw">
                </div>
                
                <div class="d-sm-flex mb-5 align-items-center">
                  <span class="ml-auto"><a href="regis.php" class="forgot-pass">Registration</a></span> 
                </div>

                <?php
                  echo $login_message;
                ?>

                <button type="submit" value="Log In" class="btn btn-block py-2 btn-primary text-white fw-bold" name="login">Login</button>

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    
  </div>
    
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>