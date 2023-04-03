<html>
<title>userProfile.php</title>
<body>
 <?php
	session_start();
	$Uname = $_SESSION['Username']; 
	 ?>
 <div style="text-align:center"><h1>User Profile</h1></div>
 <br/>
 
 <div style="font-weight:bold"> Welcome <?php echo $Uname ?> </div>
  
 <div style="text-align: right"><a href="Logout.php">Logout</a></div> 
 
 <?php
 if(!isset($_SESSION['Username'])) 
 {
   header("location:LoginForm.php");
 }
 ?>
</body>
</html>