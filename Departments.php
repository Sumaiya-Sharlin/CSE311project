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

   #tablestyle {
      font-family: Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 90%;
      margin-left: 65px;
      margin-right: 65px;
   }

   #tablestyle td, #tablestyle th {
      border: 1px solid #ddd;
      padding: 8px;
   }

   #tablestyle tr:nth-child(even){background-color: #f2f2f2;}

   #tablestyle tr:hover {background-color: #ddd;}

   #tablestyle th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: left;
      background-color: #04AA6D;
      color: white;
   }

</style>

<title></title>
</head>
<body>
   <div class="topnav">
      <img src="https://rds3.northsouth.edu/assets/images/logo-wide.png" style="max-width:340px; margin-left: 45px" > 
      <a href="logout.php?logout" style="border-radius: 25px;
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
   <h2 style="font-family: Arial,sans-serif; margin-left: 65px; color: #525252">List of Departments:</h2>

   <table id = "tablestyle">
      <tr>
         <th>Department ID</th>
         <th>Department Name</th>
         <th>Chairman</th>
      </tr>
      <?php 
         $con=mysqli_connect('localhost', 'root', '', 'nsu_rds');
         if(!$con){
            die('Check your connection'.mysqli_error());
         }
         $sql = "SELECT dept_id, dept_name, chairman FROM department";
         $result = $con -> query($sql);

         if($result -> num_rows > 0){
            while($row = $result-> fetch_assoc()){
               echo "<tr><td>". $row["dept_id"] ."</td><td>". $row["dept_name"] ."</td><td>". $row["chairman"] ."</td></tr>";
            }
         echo "</table>";
      }

      else{
         echo "0 Results found";
      }

      $con -> close();
   ?>
</table>
</body>
</html>