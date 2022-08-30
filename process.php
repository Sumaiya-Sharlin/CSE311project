<?php
require_once("connection.php");
session_start();
 if(isset($_POST['Login']))
 {
 	if(empty($_POST['username'])||empty($_POST['password'])){
 		header("location:login.php?Empty=please fill in the blanks");
 	}
 	else{
 		$query="select * from student where name ='".$_POST['username']."' and id ='".$_POST['password']."' ";
 		$result=mysqli_query($con, $query);
 		if(mysqli_fetch_assoc($result)){
 			$_SESSION['user']=$_POST['username'];
 			header("location:welcome.php");
 		}
 		else{
 			header("location:login.php?Invalid=please give the correct information");
 	}
 		}
 	
 }
 else{
 	echo 'not working';
 }
?>