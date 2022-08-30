<?php
session_start();
if(isset($_SESSION['user'])){
 	//echo 'welcome ' .$_SESSION['user'].'<br/>';
 	// echo '<a href="logout.php?logout">Logout</a>';
}
else
{
 header("location:login .php");
}
?>

<!DOCTYPE html>
<html>
<head>
   <style>
      body{
         margin: 0;
         padding: 0;
      }
      .topnav {
       height: 75px;
       padding: 12px 15px;
       background-color: #091a5e;
       overflow: hidden;
    }

    .topnav a {
       float: Right;
       margin-right: 25px;
       color: #f2f2f2;
       text-align: center;
       padding: 25px 50px;
       text-decoration: none;
       font-family: Arial, sans-serif;
       font-size: 17px;
    }

    .topnav a:hover {
       color: blue;
    }

    .bottomnav {
      height: 65px;
      background: #d9d9d9;
   }

   .bottomnav ul{
      height: 40px;
      display: inline-flex;
      justify-content: safe left;
      align-items: center;

   }

   .bottomnav ul a{
      color: #494949;
      padding: 0px 25px;
      border-right: 1px solid black;
      text-decoration: none;
      font-family: Arial, sans-serif;
      font-size: 20px;
   }

   .bottomnav a:hover{
      color: gray;
   }

   .container {
     display: flex;
     align-items: center;
     justify-content: left;
  }
  .image {
   margin-top: 50px;
   margin-left: 70px;

   flex-basis: 18%
}
.text {
   font-family: Arial, sans-serif;
   font-size: 25px;
   font-weight: bold;
   color: #14438f;
}


</style>

<title></title>
</head>
<body>
   <div class="topnav">
      <img src="https://rds3.northsouth.edu/assets/images/logo-wide.png" style="max-width:340px; margin-left: 45px" > 
      <a href="logout.php?logout"style="border-radius: 25px;
         background: #5768ba;
         padding: 20px; 
         width: 50px;
         height: 20px;">Logout</a>
   </div>
   <div class="bottomnav">
      <ul>
         <a href="Departments.php">Departments</a>
         <a href="Faculty.php">Faculty</a>
         <a href="Courses.php">Courses</a>
         <a href="Studentinfo.php">Student Info</a>
         <a href="Advising.php">Advising</a>
      </ul>
   </div>
   <div class="container">
      <div class="image">
        <img src="https://rds3.northsouth.edu/assets/images/avatars/profile-pic.jpg" style="max-width:240px; border: outset 8px">
     </div>
     <div class="text">
        <?php 
        echo 'Welcome, ' .$_SESSION['user'].'<br/>';
        ?>
     </div>
  </div>
</body>
</html>