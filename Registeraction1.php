<?php

session_start();
$connect = mysqli_connect('localhost','root','','minor');

$s_number=$_POST["s_number"];
$Datex=$_POST["Datex"];
$Timeb=$_POST["Timeb"];
$Place =$_POST["Place"];
$prior_case_Noof_lraid =$_POST["prior_case_Noof_lraid"];
$GS_domain_Noof_lraid=$_POST["GS_domain_Noof_lraid"];
$The_rank_of_the_officer_who_carried_out_the_raid=$_POST["The_rank_of_the_officer_who_carried_out_the_raid"];
$The_Offcial_Number_of_the_officer_who_carried_out_the_raid=$_POST["The_Offcial_Number_of_the_officer_who_carried_out_the_raid"];
$The_Offcial_Name_of_the_officer_who_carried_out_the_raid=$_POST["The_Offcial_Name_of_the_officer_who_carried_out_the_raid"];
$Location_attached=$_POST["Location_attached"];
$Reference_to_the_information_book_containing_the_notes_used=$_POST["Reference_to_the_information_book_containing_the_notes_used"];
$The_nature_of_the_fault=$_POST["The_nature_of_the_fault"];
$Article_of_law=$_POST["Article_of_law"];







$_SESSION['s_number']="$s_number";
$_SESSION['Datex']="$Datex";
$_SESSION['Timeb']="$Timeb";
$_SESSION['Place']="$Place";
$_SESSION['prior_case_Noof_lraid']="$prior_case_Noof_lraid";
$_SESSION['GS_domain_Noof_lraid']="$GS_domain_Noof_lraid";
$_SESSION['The_rank_of_the_officer_who_carried_out_the_raid']="$The_rank_of_the_officer_who_carried_out_the_raid";
$_SESSION['The_Offcial_Number_of_the_officer_who_carried_out_the_raid']="$The_Offcial_Number_of_the_officer_who_carried_out_the_raid";
$_SESSION['The_Offcial_Name_of_the_officer_who_carried_out_the_raid']="$The_Offcial_Name_of_the_officer_who_carried_out_the_raid";
$_SESSION['Location_attached']="$Location_attached";
$_SESSION['Reference_to_the_information_book_containing_the_notes_used']="$Reference_to_the_information_book_containing_the_notes_used";
$_SESSION['The_nature_of_the_fault']="$The_nature_of_the_fault";
$_SESSION['Article_of_law']="$Article_of_law";







$result=mysqli_query($connect,"insert into arrest1 values('$s_number','$Datex','$Timeb','$Place','$prior_case_Noof_lraid','$GS_domain_Noof_lraid','$The_rank_of_the_officer_who_carried_out_the_raid','$The_Offcial_Number_of_the_officer_who_carried_out_the_raid','$The_Offcial_Name_of_the_officer_who_carried_out_the_raid','$Location_attached','$Reference_to_the_information_book_containing_the_notes_used','$The_nature_of_the_fault','$Article_of_law')");

if($result){
	
           header('Location: register1.html');
            exit();
        } else{
    
    echo("Not Access the second Page");

}

?>