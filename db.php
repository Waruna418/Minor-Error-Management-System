<?php

	define('DB_SERVER', 'localhost:3306');
    define('DB_USERNAME', 'root');  
    define('DB_PASSWORD', ''); 
    define('DB_DATABASE', 'minor'); 
    
    $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
/*$connect=mysqli_connect("localhost","root","","sltb");


if($connect){
	
	//echo"success";
}else{
	echo "failed to connct";
	
}*/

?>