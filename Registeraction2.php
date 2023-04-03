<?php

session_start();
$connect = mysqli_connect('localhost','root','','minor');

$s_number=$_POST["s_number"];
$Datea=$_POST["Datea"];
$Timea=$_POST["Timea"];
$Name=$_POST["Name"];
$Address=$_POST["Address"];
$National_Identity_Card_Number=$_POST["National_Identity_Card_Number"];
$Phone_number=$_POST["Phone_number"];
$Previous_error_number=$_POST["Previous_error_number"];
$Presented_to_the_police_station_Date=$_POST["Presented_to_the_police_station_Date"];
$Presented_to_the_police_station_Time=$_POST["Presented_to_the_police_station_Time"];
$Reference_to_the_information_book=$_POST["Reference_to_the_information_book"];
$Time_taken_to_present_at_the_police_station_from_the_Hours=$_POST["Time_taken_to_present_at_the_police_station_from_the_Hours"];
$Time_taken_to_present_at_the_police_station_from_the_Minutes=$_POST["Time_taken_to_present_at_the_police_station_from_the_Minutes"];
$Retention_serial_number=$_POST["Retention_serial_number"];
$Bail_was_granted_Date=$_POST["Bail_was_granted_Date"];
$Bail_was_granted_Time=$_POST["Bail_was_granted_Time"];
$Rank=$_POST["Rank"];
$Official_number=$_POST["Official_number"];
$Officer_Name=$_POST["Officer_Name"];
$Reference_to_the_information_book_guarantee=$_POST["Reference_to_the_information_book_guarantee"];
$P_Name=$_POST["P_Name"];
$P_Address=$_POST["P_Address"];
$P_ID=$_POST["P_ID"];
$Police_Domain=$_POST["Police_Domain"];
$Time_of_arrest=$_POST["Time_of_arrest"];
$Bail_time_taken_hours=$_POST["Bail_time_taken_hours"];
$Bail_time_taken_minutes=$_POST["Bail_time_taken_minutes"];


$_SESSION['s_number']='$s_number';
$_SESSION['Datea']="$Datea";
$_SESSION['Timea']="$Timea";
$_SESSION['Name']="$Name";
$_SESSION['Address']="$Address";
$_SESSION['National_Identity_Card_Number']="$National_Identity_Card_Number";
$_SESSION['Phone_number']="$Phone_number";
$_SESSION['Previous_error_number']="$Previous_error_number";
$_SESSION['Presented_to_the_police_station_Date']="$Presented_to_the_police_station_Date";
$_SESSION['Presented_to_the_police_station_Time']="$Presented_to_the_police_station_Time";
$_SESSION['Reference_to_the_information_book']="$Reference_to_the_information_book";
$_SESSION['Time_taken_to_present_at_the_police_station_from_the_Hours']="$Time_taken_to_present_at_the_police_station_from_the_Hours";
$_SESSION['Time_taken_to_present_at_the_police_station_from_the_Minutes']="$Time_taken_to_present_at_the_police_station_from_the_Minutes";
$_SESSION['Retention_serial_number']="$Retention_serial_number";
$_SESSION['Bail_was_granted_Date']="$Bail_was_granted_Date";
$_SESSION['Bail_was_granted_Time']="$Bail_was_granted_Time";
$_SESSION['Rank']="$Rank";
$_SESSION['Official_number']="$Official_number";
$_SESSION['Officer_Name']="$Officer_Name";
$_SESSION['Reference_to_the_information_book_guarantee']="$Reference_to_the_information_book_guarantee";
$_SESSION['P_Name']="$P_Name";
$_SESSION['P_Address']="$P_Address";
$_SESSION['P_ID']="P_ID";
$_SESSION['Police_Domain']="$Police_Domain";
$_SESSION['Time_of_arrest']="$Time_of_arrest";
$_SESSION['Bail_time_taken_hours']="$Bail_time_taken_hours";
$_SESSION['Bail_time_taken_minutes']="$Bail_time_taken_minutes";



$result=mysqli_query($connect,"insert into arrest2 values('$s_number','$Datea','$Timea','$Name','$Address','$National_Identity_Card_Number','$Phone_number','$Previous_error_number','$Presented_to_the_police_station_Date','$Presented_to_the_police_station_Time','$Reference_to_the_information_book','$Time_taken_to_present_at_the_police_station_from_the_Hours','$Time_taken_to_present_at_the_police_station_from_the_Minutes','$Retention_serial_number','$Bail_was_granted_Date','$Bail_was_granted_Time','$Rank','$Official_number','$Officer_Name','$Reference_to_the_information_book_guarantee','$P_Name','$P_Address','$P_ID','$Police_Domain','$Time_of_arrest','$Bail_time_taken_hours','$Bail_time_taken_minutes')");

if($result){
	
           header('Location: register4.html');
            exit();
        } else{
    
    echo("Not Access the Third Page");

}

?>