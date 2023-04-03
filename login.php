<html>
<body>

<?php

include_once("db.php");
session_start();
if ($_SERVER['REQUEST_METHOD']=='POST'){

	if(empty($_POST['Username'])||empty($_POST['Password']))
	{
		echo "Incorrect User Name or Password";
		header("location:LoginForm.php");
	}
    //$Uid=$_POST["User_Id"];
	$Uname=$_POST["Username"];
	$Password=$_POST["Password"];
	$stmt=$db->prepare("SELECT * from login where Username='$Uname' and Password='$Password'");
	$stmt->bind_param("s",$Uname,$Password);
	$stmt->execute();
	$stmt->bind_result($UsernameDB,$PasswordDB);
	if ($stmt->fetch())
	{
		$_SESSION['Username']=$Uname;
		header("location:index.html");
			}
	else
	{
		echo "<script>";
	echo"alert('wrong user');";
		echo "window.location='login.html'";
		echo "</script>";
		?>
		<a href="LoginForm.php">Login</a>
		<?php
	}
}





/*$Username=$_POST["Username"];
$Password=$_POST["Password"];


$_SESSION['Username']="$Username";
$_SESSION['Password']="$Password";

$u=$_SESSION['Username'];
$p=$_SESSION['Password'];
include("db.php");
mysqli_select_db($connect,"sltb");



$result=mysqli_query($connect,"select * from login where Username='$Username' and Password='$Password' ");
//$check=false;

while($row=mysqli_fetch_array($result)){
$ut=$row["UserType"];
$check=true;
}

if($check){
	$_SESSION["user"]=$Username;
	
	if($ut=="Waruna"){
			echo "<script>";
	
		echo "window.location='admin.html'";
		echo "</script>";
	}else if($ut=="Condutor"){
		
			echo "<script>";

		echo "window.location='Conhome.html'";
		echo "</script>";
	}else{
		
			echo "<script>";

		echo "window.location='welcom.html'";
		echo "</script>";
	}

	
	
	
}else{
	echo "<script>";
	echo"alert('wrong user');";
		echo "window.location='login.html'";
		echo "</script>";
	
}*/


?>

	</body>
</html>
*/