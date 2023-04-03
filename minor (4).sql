-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 04, 2021 at 09:44 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minor`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `arrest`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `arrest`;
CREATE TABLE IF NOT EXISTS `arrest` (
`s_number` int
,`Datex` date
,`Timeb` time(6)
,`Place` varchar(100)
,`prior_case_Noof_lraid` varchar(25)
,`GS_domain_Noof_lraid` varchar(25)
,`The_rank_of_the_officer_who_carried_out_the_raid` char(3)
,`The_Offcial_Number_of_the_officer_who_carried_out_the_raid` int
,`The_Offcial_Name_of_the_officer_who_carried_out_the_raid` varchar(50)
,`Location_attached` varchar(50)
,`Reference_to_the_information_book_containing_the_notes_used` varchar(15)
,`The_nature_of_the_fault` varchar(1000)
,`Article_of_law` varchar(500)
,`Datea` date
,`Timea` time(6)
,`Name` varchar(100)
,`Address` varchar(250)
,`National_Identity_Card_Number` varchar(12)
,`Phone_number` varchar(21)
,`Previous_error_number` int
,`Presented_to_the_police_station_Date` date
,`Presented_to_the_police_station_Time` time(6)
,`Reference_to_the_information_book` varchar(15)
,`Time_taken_to_present_at_the_police_station_from_the_Hours` int
,`Time_taken_to_present_at_the_police_station_from_the_Minutes` int
,`Retention_serial_number` varchar(1000)
,`Bail_was_granted_Date` date
,`Bail_was_granted_Time` time(6)
,`Rank` char(3)
,`Official_number` int
,`Officer_Name` varchar(100)
,`Reference_to_the_information_book_guarantee` varchar(15)
,`P_Name` varchar(150)
,`P_Address` varchar(300)
,`P_ID` varchar(12)
,`Police_Domain` varchar(100)
,`Time_of_arrest` time(6)
,`Bail_time_taken_hours` int
,`Bail_time_taken_minutes` int
,`Date_the_suspect_is_to_appear_in_court` date
,`SubmittedorNot` text
,`Court_order_regarding_the_suspect` varchar(1000)
,`Medical_Report_No` varchar(15)
,`Exit_Note_Reference_Book` varchar(15)
,`Dated` date
,`Timed` time(6)
,`Hospital` varchar(50)
,`Name_of_the_doctor` varchar(100)
,`A_brief_history_of_the_medical_report` varchar(1500)
,`pp_presented_the_suspect_doct` varchar(100)
,`Offcial_Number` int
,`Officer_Name_of_the_person_who_presented_the_suspect_to_the_doct` varchar(100)
,`Date_if_the_suspect_was_produced_back_to_the_police` date
,`Time_if_the_suspect_was_produced_back_to_the_police` time(6)
,`Reference_to_the_information_bookd` varchar(15)
,`Date_submitted_to_the_court` date
,`Time_submitted_to_the_court` time(6)
,`Hours_taken_to_appear_court_at_the_time_of_arrest` int
,`Minutes_taken_to_appear_in_court_at_the_time_of_arrest` int
,`Date_the_suspect_reported_to_the_court` date
,`Time_the_suspect_reported_to_the_court` time(6)
,`Hours_taken_to_produce_in_court_at_the_time_of_arrest` int
,`Mintues_taken_to_produce_in_court_at_the_time_of_arrest` int
,`The_rank_of_the_officer_who_produced_the_suspect_in_court` char(3)
,`The_Official_nu_of_the_officer_who_produced_the_suspect_in_court` int
,`The_Official_na_of_the_officer_who_produced_the_suspect_in_court` varchar(100)
,`BR_No` varchar(10)
,`Court_order` varchar(1000)
,`Date_of_bail` date
,`Name_of_the_first_guarantor` varchar(150)
,`Address_of_the_first_guarantor` varchar(300)
,`ID_Card_N_of_the_first_guarantor` varchar(12)
,`Police_Domain_of_the_first_guarantor` varchar(50)
,`Name_of_the_Second_guarantor` varchar(150)
,`Address_of_the_Second_guarantor` varchar(300)
,`ID_Card_N_of_the_Second_guarantor` varchar(12)
,`Police_Domain_of_the_Second_guarantor` varchar(50)
,`Reference_in_the_information_book_on_the_submission_of_the_suspe` varchar(15)
,`Property_receipt_number_of_the_suspects` varchar(10)
,`Property_details` varchar(1500)
,`Rank_of_the_servant_who_took_over_the_property` char(3)
,`Official_number_of_the_servant_who_took_over_the_property` int
,`Name_of_the_servant_who_took_over_the_property` varchar(100)
,`Name_of_the_person_who_reclaimed_the_property_of_the_suspects` varchar(150)
,`Address_of_the_person_who_reclaimed_the_property_of_the_suspects` varchar(300)
,`The_rank_of_the_servant_who_handed_over_the_property` char(3)
,`Official_number_of_the_servant_who_handed_over_the_property` int
,`Name_servant_delivered_property` varchar(100)
,`Name_of_the_person_who_reclaimed_the_property_of_the_suspects1` varchar(150)
,`Address_of_the_person_who_reclaimed_the_property_of_the_suspec1` varchar(300)
,`The_rank_of_the_servant_who_handed_over_the_property1` char(3)
,`Official_number_of_the_servant_who_handed_over_the_property1` int
,`Name_of_the_servant_who_handed_over_the_property1` varchar(100)
,`The_relationship_of_the_person_who_took_over_the_property_to_the` varchar(500)
,`Reference_to_the_property_acquisition_information_book` varchar(15)
,`Type_of_case_goods` varchar(50)
,`Amount_taken_into_custody` varchar(10)
,`The_amount_destroyed_at_the_site` varchar(250)
,`Quantity_submitted_to_the_police_station` varchar(250)
,`Case_Receipt_No` varchar(10)
,`Reference_to_the_information_book_submitted_to_the_police_statio` varchar(10)
,`Of_the_sub_officer_in_charge_of_the_case_Rank` char(3)
,`Official_number_of_the_sub_officer_who_received_the_case` int
,`Name_of_the_sub_officer_in_charge_of_the_case` varchar(100)
,`Date_referred_to_the_case_room` date
,`The_rank_of_the_officer_in_charge_of_the_luggage_room` char(3)
,`Official_number_of_the_officer_in_charge_of_the_luggage_room` int
,`Name_of_the_officer_in_charge_of_the_luggage_room` varchar(100)
,`The_rank_of_the_officer_in_charge_of_the_case_room` char(3)
,`Official_number_of_the_officer_in_charge_of_the_case_room` int
,`Name_of_the_officer_in_charge_of_the_case_room` varchar(100)
,`rank_of_the_officer_issued_to_the_officer` char(3)
,`Official_number_of_the_officer_issued_to_the_officer_taking` int
,`Name_of_the_officer_who_issued_the_case_to_the_officer_taking` varchar(100)
,`Reference_to_the_information_book_issue` varchar(15)
,`Rank_of_the_officer_who_referred_the_case_to_the_court` char(3)
,`Official_number_of_the_officer_who_referred_the_case_to_the_cour` int
,`Name_of_the_officer_who_referred_the_case_to_the_court` varchar(100)
,`Reference_to_the_information_book_Court` varchar(15)
,`Date_submitted_to_the_court1` date
,`Of_the_officer_who_took_over_in_court_Position` varchar(50)
,`officer_tc_name` varchar(100)
,`Location_of_case_items` varchar(30)
,`Reference_the_information_book2` varchar(15)
,`The_rank_of_the_officer_who_gave_the_preliminary_evidence` char(3)
,`Official_number_of_the_officer_who_gave_the_initial_evidence` int
,`Name_of_the_officer_who_gave_the_initial_evidence` varchar(100)
,`Date_of_Preliminary_Evidence` date
,`The_rank_of_the_officer_who_took_the_case_for_analysis` char(3)
,`Official_number_of_the_officer_who_took_the_case_for_analysis` int
,`Name_of_the_officer_who_took_the_case_for_analysis` varchar(100)
,`Datec` date
,`Placec` varchar(50)
,`Number` varchar(25)
,`Dateh` date
,`Reference_No` varchar(15)
,`Court_recevied_Date` date
,`CA_OfizerRank` char(3)
,`CA_OfizerNo` int
,`CA_OfizerName` varchar(100)
,`Date_of_submission_to_the_court` date
,`Reference_to_the_information_book3` varchar(15)
,`Fo_regarding_case_items` text
,`Ct_destory_Date` date
,`Driver_Name` varchar(150)
,`Driver_Address` varchar(300)
,`D_ID_DL` varchar(12)
,`R_Name` varchar(150)
,`R_Address` varchar(300)
,`R_IDNo` int
,`Reason_for_arrest` text
,`Vehicle_Release_date` date
,`Name_vo` text
,`Address_vo` text
,`ID_Number_vo` text
,`If_the_case_was_confiscated_on_that_date` date
,`Court_order_for_release` text
,`Full_name_of_the_officer_who_released_the_case_items` text
,`Name_R` text
,`Address_R` text
,`ID_Number_R` text
,`Release_Reference_Inforbook` varchar(15)
,`Date_of_filing` date
,`Case_number` text
,`Of_the_officer_who_filed_the_complaint_in_court_Rank` char(3)
,`Of_the_officer_who_filed_the_complaint_in_court_Official_number` int
,`Of_the_officer_who_filed_the_complaint_in_court_Name` text
,`Character` char(15)
,`The_end_result` text
,`Date_of_presentation_of_gift_voucher` date
,`Signature_of_the_OIC` text
);

-- --------------------------------------------------------

--
-- Table structure for table `arrest1`
--

DROP TABLE IF EXISTS `arrest1`;
CREATE TABLE IF NOT EXISTS `arrest1` (
  `s_number` int NOT NULL AUTO_INCREMENT,
  `Datex` date NOT NULL,
  `Timeb` time(6) NOT NULL,
  `Place` varchar(100) NOT NULL,
  `prior_case_Noof_lraid` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Case_numbers_of_previous_offenses_at_the_location_of_the_raid',
  `GS_domain_Noof_lraid` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'GS_domain_and_number_of_the_raid',
  `The_rank_of_the_officer_who_carried_out_the_raid` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `The_Offcial_Number_of_the_officer_who_carried_out_the_raid` int NOT NULL,
  `The_Offcial_Name_of_the_officer_who_carried_out_the_raid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Location_attached` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Reference_to_the_information_book_containing_the_notes_used` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `The_nature_of_the_fault` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Article_of_law` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`s_number`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `arrest1`
--

INSERT INTO `arrest1` (`s_number`, `Datex`, `Timeb`, `Place`, `prior_case_Noof_lraid`, `GS_domain_Noof_lraid`, `The_rank_of_the_officer_who_carried_out_the_raid`, `The_Offcial_Number_of_the_officer_who_carried_out_the_raid`, `The_Offcial_Name_of_the_officer_who_carried_out_the_raid`, `Location_attached`, `Reference_to_the_information_book_containing_the_notes_used`, `The_nature_of_the_fault`, `Article_of_law`) VALUES
(9, '0000-00-00', '00:00:00.000000', '', '', '', 'PC', 0, '', '', '', '', ''),
(3, '0000-00-00', '00:00:00.000000', '', '', '', 'PC', 0, '', '', '', '', ''),
(7, '0000-00-00', '00:00:00.000000', '', '', '', 'PC', 0, '', '', '', '', ''),
(8, '0000-00-00', '00:00:00.000000', '', '', '', 'PC', 0, '', '', '', '', ''),
(1, '2021-03-02', '08:39:00.000000', 'Seeduwa', 'MB/000/01', '200-Thempala', 'WPC', 45871, 'Mali Fonseka', 'Seeduwa', '41/PER/01', 'සොරකමක් සම්බන්ධ ව  \r\n', 'LG/12/1401'),
(2, '2021-03-04', '09:05:00.000000', 'Colombo', 'MB/000/01', '201-Kuswala', 'PC', 47851, 'B A R JAYALATH', 'Gampha', '41/PER/01', ' රන් මාලයක් සොරකම් කිරීම සම්බන්ධව', 'LG/12/1401');

-- --------------------------------------------------------

--
-- Table structure for table `arrest2`
--

DROP TABLE IF EXISTS `arrest2`;
CREATE TABLE IF NOT EXISTS `arrest2` (
  `s_number` int NOT NULL AUTO_INCREMENT,
  `Datea` date NOT NULL,
  `Timea` time(6) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `National_Identity_Card_Number` varchar(12) NOT NULL,
  `Phone_number` varchar(21) NOT NULL,
  `Previous_error_number` int NOT NULL,
  `Presented_to_the_police_station_Date` date NOT NULL,
  `Presented_to_the_police_station_Time` time(6) NOT NULL,
  `Reference_to_the_information_book` varchar(15) NOT NULL,
  `Time_taken_to_present_at_the_police_station_from_the_Hours` int NOT NULL,
  `Time_taken_to_present_at_the_police_station_from_the_Minutes` int NOT NULL,
  `Retention_serial_number` varchar(1000) NOT NULL,
  `Bail_was_granted_Date` date NOT NULL,
  `Bail_was_granted_Time` time(6) NOT NULL,
  `Rank` char(3) NOT NULL,
  `Official_number` int NOT NULL,
  `Officer_Name` varchar(100) NOT NULL,
  `Reference_to_the_information_book_guarantee` varchar(15) NOT NULL,
  `P_Name` varchar(150) NOT NULL,
  `P_Address` varchar(300) NOT NULL,
  `P_ID` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Police_Domain` varchar(100) NOT NULL,
  `Time_of_arrest` time(6) NOT NULL,
  `Bail_time_taken_hours` int NOT NULL,
  `Bail_time_taken_minutes` int NOT NULL,
  PRIMARY KEY (`s_number`),
  KEY `s_number` (`s_number`),
  KEY `s_number_2` (`s_number`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `arrest2`
--

INSERT INTO `arrest2` (`s_number`, `Datea`, `Timea`, `Name`, `Address`, `National_Identity_Card_Number`, `Phone_number`, `Previous_error_number`, `Presented_to_the_police_station_Date`, `Presented_to_the_police_station_Time`, `Reference_to_the_information_book`, `Time_taken_to_present_at_the_police_station_from_the_Hours`, `Time_taken_to_present_at_the_police_station_from_the_Minutes`, `Retention_serial_number`, `Bail_was_granted_Date`, `Bail_was_granted_Time`, `Rank`, `Official_number`, `Officer_Name`, `Reference_to_the_information_book_guarantee`, `P_Name`, `P_Address`, `P_ID`, `Police_Domain`, `Time_of_arrest`, `Bail_time_taken_hours`, `Bail_time_taken_minutes`) VALUES
(2, '2021-03-05', '21:04:00.000000', 'Kasun Madushanka', 'NO 489,GURUGAMA,HEENATIYANA MINUWANGODA', '892611254V', '0771481219', 1, '2021-03-05', '09:45:00.000000', 'ES/259/MAR', 0, 41, '2', '2021-03-06', '14:06:00.000000', 'PC', 14785, 'Malin Dissanayaka Fonseka', '78/EIC/155', 'W D I I P  APPUHAMI', '131 D GONAVILA SOUTH, DANKOTUWA', '923064133V', 'රද්දොලුගම', '21:04:00.000000', 12, 47),
(3, '0000-00-00', '00:00:00.000000', '', '', '', '', 0, '0000-00-00', '00:00:00.000000', '', 0, 0, '', '0000-00-00', '00:00:00.000000', 'PC', 0, '', '', '', '', '', 'කොළඹ', '00:00:00.000000', 0, 0),
(1, '2021-03-03', '08:44:00.000000', 'Chamara Dasanayaka', 'R P 215,RAJAPAKSHAPURA,BANDARAWATHTHA,SEEDUWA.', '825863656V', '0711284050', 0, '2021-03-03', '09:00:00.000000', 'ES/258/MAR', 0, 16, '1', '2021-03-04', '10:48:00.000000', 'PC', 14782, 'Malin Dissanayaka Fonseka', '78/EIC/154', 'Priyan da silva', 'NO 489,GURUGAMA,HEENATIYANA MINUWANGODA', '674514721v', 'සීදුව', '08:46:00.000000', 12, 60),
(7, '0000-00-00', '00:00:00.000000', '', '', '', '', 0, '0000-00-00', '00:00:00.000000', '', 0, 0, '', '0000-00-00', '00:00:00.000000', 'PC', 0, '', '', '', '', '', 'කොළඹ', '00:00:00.000000', 0, 0),
(8, '0000-00-00', '00:00:00.000000', '', '', '', '', 0, '0000-00-00', '00:00:00.000000', '', 0, 0, '', '0000-00-00', '00:00:00.000000', 'PC', 0, '', '', '', '', '', 'කොළඹ', '00:00:00.000000', 0, 0),
(9, '0000-00-00', '00:00:00.000000', '', '', '', '', 0, '0000-00-00', '00:00:00.000000', '', 0, 0, '', '0000-00-00', '00:00:00.000000', 'PC', 0, '', '', '', '', '', 'කොළඹ', '00:00:00.000000', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `arrest3`
--

DROP TABLE IF EXISTS `arrest3`;
CREATE TABLE IF NOT EXISTS `arrest3` (
  `s_number` int NOT NULL AUTO_INCREMENT,
  `Date_the_suspect_is_to_appear_in_court` date NOT NULL,
  `SubmittedorNot` text NOT NULL,
  `Court_order_regarding_the_suspect` varchar(1000) NOT NULL,
  `Medical_Report_No` varchar(15) NOT NULL,
  `Dated` date NOT NULL,
  `Exit_Note_Reference_Book` varchar(15) NOT NULL,
  `Timed` time(6) NOT NULL,
  `Hospital` varchar(50) NOT NULL,
  `Name_of_the_doctor` varchar(100) NOT NULL,
  `A_brief_history_of_the_medical_report` varchar(1500) NOT NULL,
  `pp_presented_the_suspect_doct` varchar(100) NOT NULL,
  `Offcial_Number` int NOT NULL,
  `Officer_Name_of_the_person_who_presented_the_suspect_to_the_doct` varchar(100) NOT NULL,
  `Date_if_the_suspect_was_produced_back_to_the_police` date NOT NULL,
  `Time_if_the_suspect_was_produced_back_to_the_police` time(6) NOT NULL,
  `Reference_to_the_information_bookd` varchar(15) NOT NULL,
  `Date_submitted_to_the_court` date NOT NULL,
  `Time_submitted_to_the_court` time(6) NOT NULL,
  `Hours_taken_to_appear_court_at_the_time_of_arrest` int NOT NULL,
  `Minutes_taken_to_appear_in_court_at_the_time_of_arrest` int NOT NULL,
  `Date_the_suspect_reported_to_the_court` date NOT NULL,
  `Time_the_suspect_reported_to_the_court` time(6) NOT NULL,
  `Hours_taken_to_produce_in_court_at_the_time_of_arrest` int NOT NULL,
  `Mintues_taken_to_produce_in_court_at_the_time_of_arrest` int NOT NULL,
  `The_rank_of_the_officer_who_produced_the_suspect_in_court` char(3) NOT NULL,
  `The_Official_nu_of_the_officer_who_produced_the_suspect_in_court` int NOT NULL,
  `The_Official_na_of_the_officer_who_produced_the_suspect_in_court` varchar(100) NOT NULL,
  `BR_No` varchar(10) NOT NULL,
  `Court_order` varchar(1000) NOT NULL,
  `Date_of_bail` date NOT NULL,
  `Name_of_the_first_guarantor` varchar(150) NOT NULL,
  `Address_of_the_first_guarantor` varchar(300) NOT NULL,
  `ID_Card_N_of_the_first_guarantor` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Police_Domain_of_the_first_guarantor` varchar(50) NOT NULL,
  `Name_of_the_Second_guarantor` varchar(150) NOT NULL,
  `Address_of_the_Second_guarantor` varchar(300) NOT NULL,
  `ID_Card_N_of_the_Second_guarantor` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Police_Domain_of_the_Second_guarantor` varchar(50) NOT NULL,
  `Reference_in_the_information_book_on_the_submission_of_the_suspe` varchar(15) NOT NULL,
  `Property_receipt_number_of_the_suspects` varchar(10) NOT NULL,
  `Property_details` varchar(1500) NOT NULL,
  `Rank_of_the_servant_who_took_over_the_property` char(3) NOT NULL,
  `Official_number_of_the_servant_who_took_over_the_property` int NOT NULL,
  `Name_of_the_servant_who_took_over_the_property` varchar(100) NOT NULL,
  `Name_of_the_person_who_reclaimed_the_property_of_the_suspects` varchar(150) NOT NULL,
  `Address_of_the_person_who_reclaimed_the_property_of_the_suspects` varchar(300) NOT NULL,
  `The_rank_of_the_servant_who_handed_over_the_property` char(3) NOT NULL,
  `Official_number_of_the_servant_who_handed_over_the_property` int NOT NULL,
  `Name_servant_delivered_property` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name_of_the_person_who_reclaimed_the_property_of_the_suspects1` varchar(150) NOT NULL,
  `Address_of_the_person_who_reclaimed_the_property_of_the_suspec1` varchar(300) NOT NULL,
  `The_rank_of_the_servant_who_handed_over_the_property1` char(3) NOT NULL,
  `Official_number_of_the_servant_who_handed_over_the_property1` int NOT NULL,
  `Name_of_the_servant_who_handed_over_the_property1` varchar(100) NOT NULL,
  `The_relationship_of_the_person_who_took_over_the_property_to_the` varchar(500) NOT NULL,
  `Reference_to_the_property_acquisition_information_book` varchar(15) NOT NULL,
  `Type_of_case_goods` varchar(50) NOT NULL,
  `Amount_taken_into_custody` varchar(10) NOT NULL,
  `The_amount_destroyed_at_the_site` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Quantity_submitted_to_the_police_station` varchar(250) NOT NULL,
  `Case_Receipt_No` varchar(10) NOT NULL,
  `Reference_to_the_information_book_submitted_to_the_police_statio` varchar(10) NOT NULL,
  `Of_the_sub_officer_in_charge_of_the_case_Rank` char(3) NOT NULL,
  `Official_number_of_the_sub_officer_who_received_the_case` int NOT NULL,
  `Name_of_the_sub_officer_in_charge_of_the_case` varchar(100) NOT NULL,
  `Date_referred_to_the_case_room` date NOT NULL,
  `The_rank_of_the_officer_in_charge_of_the_luggage_room` char(3) NOT NULL,
  `Official_number_of_the_officer_in_charge_of_the_luggage_room` int NOT NULL,
  `Name_of_the_officer_in_charge_of_the_luggage_room` varchar(100) NOT NULL,
  `The_rank_of_the_officer_in_charge_of_the_case_room` char(3) NOT NULL,
  `Official_number_of_the_officer_in_charge_of_the_case_room` int NOT NULL,
  `Name_of_the_officer_in_charge_of_the_case_room` varchar(100) NOT NULL,
  `rank_of_the_officer_issued_to_the_officer` char(3) NOT NULL,
  `Official_number_of_the_officer_issued_to_the_officer_taking` int NOT NULL,
  `Name_of_the_officer_who_issued_the_case_to_the_officer_taking` varchar(100) NOT NULL,
  `Reference_to_the_information_book_issue` varchar(15) NOT NULL,
  `Rank_of_the_officer_who_referred_the_case_to_the_court` char(3) NOT NULL,
  `Official_number_of_the_officer_who_referred_the_case_to_the_cour` int NOT NULL,
  `Name_of_the_officer_who_referred_the_case_to_the_court` varchar(100) NOT NULL,
  `Reference_to_the_information_book_Court` varchar(15) NOT NULL,
  `Date_submitted_to_the_court1` date NOT NULL,
  `Of_the_officer_who_took_over_in_court_Position` varchar(50) NOT NULL,
  `officer_tc_name` varchar(100) NOT NULL,
  `Location_of_case_items` varchar(30) NOT NULL,
  `Reference_the_information_book2` varchar(15) NOT NULL,
  `The_rank_of_the_officer_who_gave_the_preliminary_evidence` char(3) NOT NULL,
  `Official_number_of_the_officer_who_gave_the_initial_evidence` int NOT NULL,
  `Name_of_the_officer_who_gave_the_initial_evidence` varchar(100) NOT NULL,
  `Date_of_Preliminary_Evidence` date NOT NULL,
  `The_rank_of_the_officer_who_took_the_case_for_analysis` char(3) NOT NULL,
  `Official_number_of_the_officer_who_took_the_case_for_analysis` int NOT NULL,
  `Name_of_the_officer_who_took_the_case_for_analysis` varchar(100) NOT NULL,
  `Datec` date NOT NULL,
  `Placec` varchar(50) NOT NULL,
  `Number` varchar(25) NOT NULL,
  `Dateh` date NOT NULL COMMENT 'Reference to the information book containing notes on delivery and filing of messages to the relevant place',
  `Reference_No` varchar(15) NOT NULL,
  `Court_recevied_Date` date NOT NULL COMMENT 'Date of receipt of the analysis report to the court',
  `CA_OfizerRank` char(3) NOT NULL COMMENT 'The rank of the officer who brought the case items analyzed',
  `CA_OfizerNo` int NOT NULL COMMENT 'Official number of the officer who brought the analyzed case items',
  `CA_OfizerName` varchar(100) NOT NULL COMMENT 'Name of the officer who brought the analyzed case items',
  `Date_of_submission_to_the_court` date NOT NULL,
  `Reference_to_the_information_book3` varchar(15) NOT NULL,
  `Fo_regarding_case_items` text NOT NULL COMMENT 'Final order regarding case items',
  `Ct_destory_Date` date NOT NULL COMMENT 'If the case items were destroyed by the court, the date of such destruction',
  `Driver_Name` varchar(150) NOT NULL,
  `Driver_Address` varchar(300) NOT NULL,
  `D_ID_DL` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `R_Name` varchar(150) NOT NULL,
  `R_Address` varchar(300) NOT NULL,
  `R_IDNo` int NOT NULL,
  `Reason_for_arrest` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Vehicle_Release_date` date NOT NULL COMMENT 'Release of seized vehicles by the court\r\nDate',
  `Name_vo` text NOT NULL,
  `Address_vo` text NOT NULL,
  `ID_Number_vo` text NOT NULL,
  `If_the_case_was_confiscated_on_that_date` date NOT NULL,
  `Court_order_for_release` text NOT NULL,
  `Full_name_of_the_officer_who_released_the_case_items` text NOT NULL,
  `Name_R` text NOT NULL,
  `Address_R` text NOT NULL,
  `ID_Number_R` text NOT NULL,
  `Release_Reference_Inforbook` varchar(15) NOT NULL COMMENT 'Reference to the information book containing the notes on the release of the case items',
  `Date_of_filing` date NOT NULL,
  `Case_number` text NOT NULL,
  `Of_the_officer_who_filed_the_complaint_in_court_Rank` char(3) NOT NULL,
  `Of_the_officer_who_filed_the_complaint_in_court_Official_number` int NOT NULL,
  `Of_the_officer_who_filed_the_complaint_in_court_Name` text NOT NULL,
  `Character` char(15) NOT NULL,
  `The_end_result` text NOT NULL,
  `Date_of_presentation_of_gift_voucher` date NOT NULL,
  `Signature_of_the_OIC` text NOT NULL,
  PRIMARY KEY (`s_number`),
  KEY `s_number` (`s_number`),
  KEY `s_number_2` (`s_number`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `arrest3`
--

INSERT INTO `arrest3` (`s_number`, `Date_the_suspect_is_to_appear_in_court`, `SubmittedorNot`, `Court_order_regarding_the_suspect`, `Medical_Report_No`, `Dated`, `Exit_Note_Reference_Book`, `Timed`, `Hospital`, `Name_of_the_doctor`, `A_brief_history_of_the_medical_report`, `pp_presented_the_suspect_doct`, `Offcial_Number`, `Officer_Name_of_the_person_who_presented_the_suspect_to_the_doct`, `Date_if_the_suspect_was_produced_back_to_the_police`, `Time_if_the_suspect_was_produced_back_to_the_police`, `Reference_to_the_information_bookd`, `Date_submitted_to_the_court`, `Time_submitted_to_the_court`, `Hours_taken_to_appear_court_at_the_time_of_arrest`, `Minutes_taken_to_appear_in_court_at_the_time_of_arrest`, `Date_the_suspect_reported_to_the_court`, `Time_the_suspect_reported_to_the_court`, `Hours_taken_to_produce_in_court_at_the_time_of_arrest`, `Mintues_taken_to_produce_in_court_at_the_time_of_arrest`, `The_rank_of_the_officer_who_produced_the_suspect_in_court`, `The_Official_nu_of_the_officer_who_produced_the_suspect_in_court`, `The_Official_na_of_the_officer_who_produced_the_suspect_in_court`, `BR_No`, `Court_order`, `Date_of_bail`, `Name_of_the_first_guarantor`, `Address_of_the_first_guarantor`, `ID_Card_N_of_the_first_guarantor`, `Police_Domain_of_the_first_guarantor`, `Name_of_the_Second_guarantor`, `Address_of_the_Second_guarantor`, `ID_Card_N_of_the_Second_guarantor`, `Police_Domain_of_the_Second_guarantor`, `Reference_in_the_information_book_on_the_submission_of_the_suspe`, `Property_receipt_number_of_the_suspects`, `Property_details`, `Rank_of_the_servant_who_took_over_the_property`, `Official_number_of_the_servant_who_took_over_the_property`, `Name_of_the_servant_who_took_over_the_property`, `Name_of_the_person_who_reclaimed_the_property_of_the_suspects`, `Address_of_the_person_who_reclaimed_the_property_of_the_suspects`, `The_rank_of_the_servant_who_handed_over_the_property`, `Official_number_of_the_servant_who_handed_over_the_property`, `Name_servant_delivered_property`, `Name_of_the_person_who_reclaimed_the_property_of_the_suspects1`, `Address_of_the_person_who_reclaimed_the_property_of_the_suspec1`, `The_rank_of_the_servant_who_handed_over_the_property1`, `Official_number_of_the_servant_who_handed_over_the_property1`, `Name_of_the_servant_who_handed_over_the_property1`, `The_relationship_of_the_person_who_took_over_the_property_to_the`, `Reference_to_the_property_acquisition_information_book`, `Type_of_case_goods`, `Amount_taken_into_custody`, `The_amount_destroyed_at_the_site`, `Quantity_submitted_to_the_police_station`, `Case_Receipt_No`, `Reference_to_the_information_book_submitted_to_the_police_statio`, `Of_the_sub_officer_in_charge_of_the_case_Rank`, `Official_number_of_the_sub_officer_who_received_the_case`, `Name_of_the_sub_officer_in_charge_of_the_case`, `Date_referred_to_the_case_room`, `The_rank_of_the_officer_in_charge_of_the_luggage_room`, `Official_number_of_the_officer_in_charge_of_the_luggage_room`, `Name_of_the_officer_in_charge_of_the_luggage_room`, `The_rank_of_the_officer_in_charge_of_the_case_room`, `Official_number_of_the_officer_in_charge_of_the_case_room`, `Name_of_the_officer_in_charge_of_the_case_room`, `rank_of_the_officer_issued_to_the_officer`, `Official_number_of_the_officer_issued_to_the_officer_taking`, `Name_of_the_officer_who_issued_the_case_to_the_officer_taking`, `Reference_to_the_information_book_issue`, `Rank_of_the_officer_who_referred_the_case_to_the_court`, `Official_number_of_the_officer_who_referred_the_case_to_the_cour`, `Name_of_the_officer_who_referred_the_case_to_the_court`, `Reference_to_the_information_book_Court`, `Date_submitted_to_the_court1`, `Of_the_officer_who_took_over_in_court_Position`, `officer_tc_name`, `Location_of_case_items`, `Reference_the_information_book2`, `The_rank_of_the_officer_who_gave_the_preliminary_evidence`, `Official_number_of_the_officer_who_gave_the_initial_evidence`, `Name_of_the_officer_who_gave_the_initial_evidence`, `Date_of_Preliminary_Evidence`, `The_rank_of_the_officer_who_took_the_case_for_analysis`, `Official_number_of_the_officer_who_took_the_case_for_analysis`, `Name_of_the_officer_who_took_the_case_for_analysis`, `Datec`, `Placec`, `Number`, `Dateh`, `Reference_No`, `Court_recevied_Date`, `CA_OfizerRank`, `CA_OfizerNo`, `CA_OfizerName`, `Date_of_submission_to_the_court`, `Reference_to_the_information_book3`, `Fo_regarding_case_items`, `Ct_destory_Date`, `Driver_Name`, `Driver_Address`, `D_ID_DL`, `R_Name`, `R_Address`, `R_IDNo`, `Reason_for_arrest`, `Vehicle_Release_date`, `Name_vo`, `Address_vo`, `ID_Number_vo`, `If_the_case_was_confiscated_on_that_date`, `Court_order_for_release`, `Full_name_of_the_officer_who_released_the_case_items`, `Name_R`, `Address_R`, `ID_Number_R`, `Release_Reference_Inforbook`, `Date_of_filing`, `Case_number`, `Of_the_officer_who_filed_the_complaint_in_court_Rank`, `Of_the_officer_who_filed_the_complaint_in_court_Official_number`, `Of_the_officer_who_filed_the_complaint_in_court_Name`, `Character`, `The_end_result`, `Date_of_presentation_of_gift_voucher`, `Signature_of_the_OIC`) VALUES
(1, '2021-03-03', 'on', 'Releted to the Civil law', 'MR/001/25', '2021-03-04', 'EX/45/001', '09:54:00.000000', 'General Hospital Colombo', 'Dr.Gayan Gunawarudana', 'ලෙඩ කිසිවක් නැත.', 'PC', 14785, 'Bandara Silva', '2021-03-04', '11:57:00.000000', 'ES/222/856', '2021-03-04', '10:56:00.000000', 8, 30, '2021-03-05', '10:57:00.000000', 12, 16, 'PC', 14785, 'Amara bandu Rupasinha', 'BR-100', 'දඩයේ ප්‍රමාණය රු.25000 ක් ලෙස නියම කිරීම සහ එසේ නොවේ නම් දින 14 ක සිර දඩුවම් නියම කිරීම.', '2021-03-05', 'Kumawathi Perera', '52/3,SMALL TEMPLE ROAD,KATUNAYAKA', '857163478V', 'සීදුව', 'Dilshan Randika', 'NO 214/5, WELABADA RD., KATUNAYAKE', '19941451234', 'රද්දොලුගම', 'DAD/25/84', 'Sup/01/20', 'More than Assest', 'PC', 14785, 'Rashmika Fernando', 'Chandi Hettiarachchi', 'No.83/E/1,\"Waruna\",Thempala,Raddolugama', 'PC', 63258, 'P S S  PRIYADARSHIKA', 'Senaka da Soyza', 'NO.100, BESLINE RD, AMANDOLUWA, SEEDUWA', 'PC', 14852, 'Malin Buddika', 'Brother', 'P/R/14/212', 'Asset', '10', '5', '5', 'EW/15/12/1', 'SA/05/06', 'PC', 52123, 'Malitha Rathnayaka', '2021-03-08', 'PC', 85412, 'Saman Ferando', 'PC', 85123, 'Senaka Bibile', 'PC', 85212, 'Senaka de Soyza', 'CE/50/582', 'PC', 41258, 'Mahela Kosta', 'PS/40/85', '2021-03-08', ' jailer', 'Sadun Perera', 'Police Station -Seeduwa', 'CO/40/52', 'PC', 32589, 'Ganga Dissanaya', '2021-03-09', 'PC', 45821, 'Gihan Ferndo', '2021-03-11', 'Ja ela Police Station', '001', '2021-03-11', 'CS/40/52/20', '2021-03-11', 'PC', 96521, 'Asanka Dilshan', '2021-03-15', 'CO/40/20', 'Release to the assests', '2021-03-16', 'Sonala Perera', '10/40,JAYAWARDHANAPURA,AMANDOLUWA,SEEDUWA.', '199413301939', 'Malaka de silva', '312/E,DEPAHENA PARA,RADDOLUWA,SEEDUWA.', 2147483647, 'රිය අනතුරක් සිදු කර පොලිස් අණ නොතකා පලා යාම .', '2021-03-16', 'P G D S KUMARA', '574, MAHAGAMA , HEENATIYANA , MINUWANGODA', '200183503887', '2021-03-18', 'නැවත නීති විරෝධි කටයුතු සදහා යොදා නොගැනිම ', 'Sapugawaththa Nanayakkara Waruna Chathuranga Nanayakkara', 'Waruna Chathuranga Nanayakkara', 'No.83/E/1\"Waruna\",Thempala,Raddolugama', '199413301939', 'SD/02/258', '2021-03-22', 'DS/12/28', 'PC', 14782, 'Menaka Piris', 'A', 'Release the Suspects', '2021-03-23', 'waruna'),
(2, '2021-03-07', 'on', 'රු .10000 ක් දඩයක් නියම කිරීම ', 'DD/14/52', '0000-00-00', '2021-03-08', '17:11:00.000000', 'General Hospital Colombo', 'Dr.Praboda Ekanayaka', 'දියවැඩියා රෝගයෙන් පෙලෙන අතර එයට බෙහෙත් ගනී ', 'PC', 74125, 'Senaka Alwis', '2021-03-08', '12:14:00.000000', 'ES/222/857', '2021-03-09', '10:15:00.000000', 7, 16, '2021-03-10', '11:15:00.000000', 5, 11, 'PC', 14785, 'M D R S  MANATHUNGA', 'BR-101', 'මාස 6ක සිර දඩුවම් හෝ නැති නම් රු.15000 ක දඩ නියම කරමි ', '2021-03-10', 'P S S  DISSNAYAKE', 'NO 15/55 JAYAWARDANAPURAYA , AMANDOLUWAM, SEEDUWA.', '200029301112', 'සීදුව', 'U G N D  KUMARA', 'NO 15/55 JAYAWARDANAPURAYA , AMANDOLUWAM, SEEDUWA.', '19941451234', 'සීදුව', 'DAD/25/85', 'Sup/01/21', 'වතුපිටි බොහෝ ප්‍රමාණයක් ඇත. ', 'PC', 74185, 'S P  MICHEAL', 'M A S P  KUMARA', '666/A,YAKKADUWA,JA ELA.', 'PC', 78415, 'D R  CHAMARA', 'Y M M M  DISSANAYAKE', '324,UDATHTHAWA,PAMUNUPURA,BATUMULLA.', 'PC', 21036, 'W A  LAKSHAN', 'මස්සිනා ', 'P/R/14/213', 'Vechicles', '2', '1', '1', 'EW/15/12/1', 'SA/05/07', 'PC', 85214, 'K I S  FERNANDO', '2021-03-09', 'PC', 12654, 'W N G N L  WIJEWARDHANA', 'PC', 30215, 'W P P K  KULARATHNE', 'PC', 25874, 'K S S SILVA', 'CE/50/583', 'PC', 14265, 'M P D P  JAYASHANTHA', 'PS/40/86', '2021-03-10', 'Jaiolr', 'W S D  MADURASIRI', 'Police Station -Grandpass', 'CO/40/53', 'PC', 85214, 'W M N K WANASINGHE', '2021-03-10', 'PC', 18523, 'D M I L  DISANAYAKE', '2021-03-11', 'Maradana-Police Station', '2', '2021-03-12', 'CS/40/52/21', '2021-03-15', 'PC', 32654, 'M K R FERNANDO', '2021-03-16', 'CO/40/21', 'විනාශ කර දමන්න ', '2021-03-17', 'N G M D BANDARA', 'NO;107 DEWAMOTTAWA ANDIAMBALAMA', '892301018V', 'N G M D BANDARA', '1/1 SENANAYAKA MW, KOWURUPER RADDOLUWGAMA', 821670381, 'අනිසි ලෙස රිය පැදවීම ', '2021-03-17', 'Sadun Fonseka', '110/A BASIYAWATTA THALAHENA NEGOMBO', '932620219V', '2021-03-19', 'LAW/PS/02', 'Sapugawaththa Nanayakkara Chathura Alwis', 'Chathura Alwis', 'NO 165/17, KIRULA ROAD, NARAHENPITA,COLOMBO 05', '638180839V', 'SD/02/259', '2021-03-22', 'DS/12/29', 'PC', 23654, 'A R  PRADEEP', 'C', 'Release the Suspects', '2021-03-22', 'Chathuranga'),
(3, '0000-00-00', 'on', '', '', '0000-00-00', '', '00:00:00.000000', '', '', '', 'PC', 0, '', '0000-00-00', '00:00:00.000000', '', '0000-00-00', '00:00:00.000000', 0, 0, '0000-00-00', '00:00:00.000000', 0, 0, 'PC', 0, '', '', '', '0000-00-00', '', '', '', 'කොළඹ', '', '', '', 'කොළඹ', '', '', '', 'PC', 0, '', '', '', 'PC', 0, '', '', '', 'PC', 0, '', '', '', '', '', '', '', '', '', 'PC', 0, '', '0000-00-00', 'PC', 0, '', 'PC', 0, '', 'PC', 0, '', '', 'PC', 0, '', '', '0000-00-00', '', '', '', '', 'PC', 0, '', '0000-00-00', 'PC', 0, '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'PC', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '', 0, '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', 'PC', 0, '', '', '', '0000-00-00', ''),
(7, '0000-00-00', 'on', '', '', '0000-00-00', '', '00:00:00.000000', '', '', '', 'PC', 0, '', '0000-00-00', '00:00:00.000000', '', '0000-00-00', '00:00:00.000000', 0, 0, '0000-00-00', '00:00:00.000000', 0, 0, 'PC', 0, '', '', '', '0000-00-00', '', '', '', 'කොළඹ', '', '', '', 'කොළඹ', '', '', '', 'PC', 0, '', '', '', 'PC', 0, '', '', '', 'PC', 0, '', '', '', '', '', '', '', '', '', 'PC', 0, '', '0000-00-00', 'PC', 0, '', 'PC', 0, '', 'PC', 0, '', '', 'PC', 0, '', '', '0000-00-00', '', '', '', '', 'PC', 0, '', '0000-00-00', 'PC', 0, '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'PC', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '', 0, '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', 'PC', 0, '', '', '', '0000-00-00', ''),
(8, '0000-00-00', '', '', '', '0000-00-00', '', '00:00:00.000000', '', '', '', 'PC', 0, '', '0000-00-00', '00:00:00.000000', '', '0000-00-00', '00:00:00.000000', 0, 0, '0000-00-00', '00:00:00.000000', 0, 0, 'PC', 0, '', '', '', '0000-00-00', '', '', '', 'කොළඹ', '', '', '', 'කොළඹ', '', '', '', 'PC', 0, '', '', '', 'PC', 0, '', '', '', 'PC', 0, '', '', '', '', '', '', '', '', '', 'PC', 0, '', '0000-00-00', 'PC', 0, '', 'PC', 0, '', 'PC', 0, '', '', 'PC', 0, '', '', '0000-00-00', '', '', '', '', 'PC', 0, '', '0000-00-00', 'PC', 0, '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'PC', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '', 0, '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', 'PC', 0, '', '', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `User_Id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`User_Id`, `Username`, `Password`) VALUES
(1, 'Waruna', '123');

-- --------------------------------------------------------

--
-- Structure for view `arrest`
--
DROP TABLE IF EXISTS `arrest`;

DROP VIEW IF EXISTS `arrest`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `arrest`  AS  select `r`.`s_number` AS `s_number`,`r`.`Datex` AS `Datex`,`r`.`Timeb` AS `Timeb`,`r`.`Place` AS `Place`,`r`.`prior_case_Noof_lraid` AS `prior_case_Noof_lraid`,`r`.`GS_domain_Noof_lraid` AS `GS_domain_Noof_lraid`,`r`.`The_rank_of_the_officer_who_carried_out_the_raid` AS `The_rank_of_the_officer_who_carried_out_the_raid`,`r`.`The_Offcial_Number_of_the_officer_who_carried_out_the_raid` AS `The_Offcial_Number_of_the_officer_who_carried_out_the_raid`,`r`.`The_Offcial_Name_of_the_officer_who_carried_out_the_raid` AS `The_Offcial_Name_of_the_officer_who_carried_out_the_raid`,`r`.`Location_attached` AS `Location_attached`,`r`.`Reference_to_the_information_book_containing_the_notes_used` AS `Reference_to_the_information_book_containing_the_notes_used`,`r`.`The_nature_of_the_fault` AS `The_nature_of_the_fault`,`r`.`Article_of_law` AS `Article_of_law`,`s`.`Datea` AS `Datea`,`s`.`Timea` AS `Timea`,`s`.`Name` AS `Name`,`s`.`Address` AS `Address`,`s`.`National_Identity_Card_Number` AS `National_Identity_Card_Number`,`s`.`Phone_number` AS `Phone_number`,`s`.`Previous_error_number` AS `Previous_error_number`,`s`.`Presented_to_the_police_station_Date` AS `Presented_to_the_police_station_Date`,`s`.`Presented_to_the_police_station_Time` AS `Presented_to_the_police_station_Time`,`s`.`Reference_to_the_information_book` AS `Reference_to_the_information_book`,`s`.`Time_taken_to_present_at_the_police_station_from_the_Hours` AS `Time_taken_to_present_at_the_police_station_from_the_Hours`,`s`.`Time_taken_to_present_at_the_police_station_from_the_Minutes` AS `Time_taken_to_present_at_the_police_station_from_the_Minutes`,`s`.`Retention_serial_number` AS `Retention_serial_number`,`s`.`Bail_was_granted_Date` AS `Bail_was_granted_Date`,`s`.`Bail_was_granted_Time` AS `Bail_was_granted_Time`,`s`.`Rank` AS `Rank`,`s`.`Official_number` AS `Official_number`,`s`.`Officer_Name` AS `Officer_Name`,`s`.`Reference_to_the_information_book_guarantee` AS `Reference_to_the_information_book_guarantee`,`s`.`P_Name` AS `P_Name`,`s`.`P_Address` AS `P_Address`,`s`.`P_ID` AS `P_ID`,`s`.`Police_Domain` AS `Police_Domain`,`s`.`Time_of_arrest` AS `Time_of_arrest`,`s`.`Bail_time_taken_hours` AS `Bail_time_taken_hours`,`s`.`Bail_time_taken_minutes` AS `Bail_time_taken_minutes`,`t`.`Date_the_suspect_is_to_appear_in_court` AS `Date_the_suspect_is_to_appear_in_court`,`t`.`SubmittedorNot` AS `SubmittedorNot`,`t`.`Court_order_regarding_the_suspect` AS `Court_order_regarding_the_suspect`,`t`.`Medical_Report_No` AS `Medical_Report_No`,`t`.`Exit_Note_Reference_Book` AS `Exit_Note_Reference_Book`,`t`.`Dated` AS `Dated`,`t`.`Timed` AS `Timed`,`t`.`Hospital` AS `Hospital`,`t`.`Name_of_the_doctor` AS `Name_of_the_doctor`,`t`.`A_brief_history_of_the_medical_report` AS `A_brief_history_of_the_medical_report`,`t`.`pp_presented_the_suspect_doct` AS `pp_presented_the_suspect_doct`,`t`.`Offcial_Number` AS `Offcial_Number`,`t`.`Officer_Name_of_the_person_who_presented_the_suspect_to_the_doct` AS `Officer_Name_of_the_person_who_presented_the_suspect_to_the_doct`,`t`.`Date_if_the_suspect_was_produced_back_to_the_police` AS `Date_if_the_suspect_was_produced_back_to_the_police`,`t`.`Time_if_the_suspect_was_produced_back_to_the_police` AS `Time_if_the_suspect_was_produced_back_to_the_police`,`t`.`Reference_to_the_information_bookd` AS `Reference_to_the_information_bookd`,`t`.`Date_submitted_to_the_court` AS `Date_submitted_to_the_court`,`t`.`Time_submitted_to_the_court` AS `Time_submitted_to_the_court`,`t`.`Hours_taken_to_appear_court_at_the_time_of_arrest` AS `Hours_taken_to_appear_court_at_the_time_of_arrest`,`t`.`Minutes_taken_to_appear_in_court_at_the_time_of_arrest` AS `Minutes_taken_to_appear_in_court_at_the_time_of_arrest`,`t`.`Date_the_suspect_reported_to_the_court` AS `Date_the_suspect_reported_to_the_court`,`t`.`Time_the_suspect_reported_to_the_court` AS `Time_the_suspect_reported_to_the_court`,`t`.`Hours_taken_to_produce_in_court_at_the_time_of_arrest` AS `Hours_taken_to_produce_in_court_at_the_time_of_arrest`,`t`.`Mintues_taken_to_produce_in_court_at_the_time_of_arrest` AS `Mintues_taken_to_produce_in_court_at_the_time_of_arrest`,`t`.`The_rank_of_the_officer_who_produced_the_suspect_in_court` AS `The_rank_of_the_officer_who_produced_the_suspect_in_court`,`t`.`The_Official_nu_of_the_officer_who_produced_the_suspect_in_court` AS `The_Official_nu_of_the_officer_who_produced_the_suspect_in_court`,`t`.`The_Official_na_of_the_officer_who_produced_the_suspect_in_court` AS `The_Official_na_of_the_officer_who_produced_the_suspect_in_court`,`t`.`BR_No` AS `BR_No`,`t`.`Court_order` AS `Court_order`,`t`.`Date_of_bail` AS `Date_of_bail`,`t`.`Name_of_the_first_guarantor` AS `Name_of_the_first_guarantor`,`t`.`Address_of_the_first_guarantor` AS `Address_of_the_first_guarantor`,`t`.`ID_Card_N_of_the_first_guarantor` AS `ID_Card_N_of_the_first_guarantor`,`t`.`Police_Domain_of_the_first_guarantor` AS `Police_Domain_of_the_first_guarantor`,`t`.`Name_of_the_Second_guarantor` AS `Name_of_the_Second_guarantor`,`t`.`Address_of_the_Second_guarantor` AS `Address_of_the_Second_guarantor`,`t`.`ID_Card_N_of_the_Second_guarantor` AS `ID_Card_N_of_the_Second_guarantor`,`t`.`Police_Domain_of_the_Second_guarantor` AS `Police_Domain_of_the_Second_guarantor`,`t`.`Reference_in_the_information_book_on_the_submission_of_the_suspe` AS `Reference_in_the_information_book_on_the_submission_of_the_suspe`,`t`.`Property_receipt_number_of_the_suspects` AS `Property_receipt_number_of_the_suspects`,`t`.`Property_details` AS `Property_details`,`t`.`Rank_of_the_servant_who_took_over_the_property` AS `Rank_of_the_servant_who_took_over_the_property`,`t`.`Official_number_of_the_servant_who_took_over_the_property` AS `Official_number_of_the_servant_who_took_over_the_property`,`t`.`Name_of_the_servant_who_took_over_the_property` AS `Name_of_the_servant_who_took_over_the_property`,`t`.`Name_of_the_person_who_reclaimed_the_property_of_the_suspects` AS `Name_of_the_person_who_reclaimed_the_property_of_the_suspects`,`t`.`Address_of_the_person_who_reclaimed_the_property_of_the_suspects` AS `Address_of_the_person_who_reclaimed_the_property_of_the_suspects`,`t`.`The_rank_of_the_servant_who_handed_over_the_property` AS `The_rank_of_the_servant_who_handed_over_the_property`,`t`.`Official_number_of_the_servant_who_handed_over_the_property` AS `Official_number_of_the_servant_who_handed_over_the_property`,`t`.`Name_servant_delivered_property` AS `Name_servant_delivered_property`,`t`.`Name_of_the_person_who_reclaimed_the_property_of_the_suspects1` AS `Name_of_the_person_who_reclaimed_the_property_of_the_suspects1`,`t`.`Address_of_the_person_who_reclaimed_the_property_of_the_suspec1` AS `Address_of_the_person_who_reclaimed_the_property_of_the_suspec1`,`t`.`The_rank_of_the_servant_who_handed_over_the_property1` AS `The_rank_of_the_servant_who_handed_over_the_property1`,`t`.`Official_number_of_the_servant_who_handed_over_the_property1` AS `Official_number_of_the_servant_who_handed_over_the_property1`,`t`.`Name_of_the_servant_who_handed_over_the_property1` AS `Name_of_the_servant_who_handed_over_the_property1`,`t`.`The_relationship_of_the_person_who_took_over_the_property_to_the` AS `The_relationship_of_the_person_who_took_over_the_property_to_the`,`t`.`Reference_to_the_property_acquisition_information_book` AS `Reference_to_the_property_acquisition_information_book`,`t`.`Type_of_case_goods` AS `Type_of_case_goods`,`t`.`Amount_taken_into_custody` AS `Amount_taken_into_custody`,`t`.`The_amount_destroyed_at_the_site` AS `The_amount_destroyed_at_the_site`,`t`.`Quantity_submitted_to_the_police_station` AS `Quantity_submitted_to_the_police_station`,`t`.`Case_Receipt_No` AS `Case_Receipt_No`,`t`.`Reference_to_the_information_book_submitted_to_the_police_statio` AS `Reference_to_the_information_book_submitted_to_the_police_statio`,`t`.`Of_the_sub_officer_in_charge_of_the_case_Rank` AS `Of_the_sub_officer_in_charge_of_the_case_Rank`,`t`.`Official_number_of_the_sub_officer_who_received_the_case` AS `Official_number_of_the_sub_officer_who_received_the_case`,`t`.`Name_of_the_sub_officer_in_charge_of_the_case` AS `Name_of_the_sub_officer_in_charge_of_the_case`,`t`.`Date_referred_to_the_case_room` AS `Date_referred_to_the_case_room`,`t`.`The_rank_of_the_officer_in_charge_of_the_luggage_room` AS `The_rank_of_the_officer_in_charge_of_the_luggage_room`,`t`.`Official_number_of_the_officer_in_charge_of_the_luggage_room` AS `Official_number_of_the_officer_in_charge_of_the_luggage_room`,`t`.`Name_of_the_officer_in_charge_of_the_luggage_room` AS `Name_of_the_officer_in_charge_of_the_luggage_room`,`t`.`The_rank_of_the_officer_in_charge_of_the_case_room` AS `The_rank_of_the_officer_in_charge_of_the_case_room`,`t`.`Official_number_of_the_officer_in_charge_of_the_case_room` AS `Official_number_of_the_officer_in_charge_of_the_case_room`,`t`.`Name_of_the_officer_in_charge_of_the_case_room` AS `Name_of_the_officer_in_charge_of_the_case_room`,`t`.`rank_of_the_officer_issued_to_the_officer` AS `rank_of_the_officer_issued_to_the_officer`,`t`.`Official_number_of_the_officer_issued_to_the_officer_taking` AS `Official_number_of_the_officer_issued_to_the_officer_taking`,`t`.`Name_of_the_officer_who_issued_the_case_to_the_officer_taking` AS `Name_of_the_officer_who_issued_the_case_to_the_officer_taking`,`t`.`Reference_to_the_information_book_issue` AS `Reference_to_the_information_book_issue`,`t`.`Rank_of_the_officer_who_referred_the_case_to_the_court` AS `Rank_of_the_officer_who_referred_the_case_to_the_court`,`t`.`Official_number_of_the_officer_who_referred_the_case_to_the_cour` AS `Official_number_of_the_officer_who_referred_the_case_to_the_cour`,`t`.`Name_of_the_officer_who_referred_the_case_to_the_court` AS `Name_of_the_officer_who_referred_the_case_to_the_court`,`t`.`Reference_to_the_information_book_Court` AS `Reference_to_the_information_book_Court`,`t`.`Date_submitted_to_the_court1` AS `Date_submitted_to_the_court1`,`t`.`Of_the_officer_who_took_over_in_court_Position` AS `Of_the_officer_who_took_over_in_court_Position`,`t`.`officer_tc_name` AS `officer_tc_name`,`t`.`Location_of_case_items` AS `Location_of_case_items`,`t`.`Reference_the_information_book2` AS `Reference_the_information_book2`,`t`.`The_rank_of_the_officer_who_gave_the_preliminary_evidence` AS `The_rank_of_the_officer_who_gave_the_preliminary_evidence`,`t`.`Official_number_of_the_officer_who_gave_the_initial_evidence` AS `Official_number_of_the_officer_who_gave_the_initial_evidence`,`t`.`Name_of_the_officer_who_gave_the_initial_evidence` AS `Name_of_the_officer_who_gave_the_initial_evidence`,`t`.`Date_of_Preliminary_Evidence` AS `Date_of_Preliminary_Evidence`,`t`.`The_rank_of_the_officer_who_took_the_case_for_analysis` AS `The_rank_of_the_officer_who_took_the_case_for_analysis`,`t`.`Official_number_of_the_officer_who_took_the_case_for_analysis` AS `Official_number_of_the_officer_who_took_the_case_for_analysis`,`t`.`Name_of_the_officer_who_took_the_case_for_analysis` AS `Name_of_the_officer_who_took_the_case_for_analysis`,`t`.`Datec` AS `Datec`,`t`.`Placec` AS `Placec`,`t`.`Number` AS `Number`,`t`.`Dateh` AS `Dateh`,`t`.`Reference_No` AS `Reference_No`,`t`.`Court_recevied_Date` AS `Court_recevied_Date`,`t`.`CA_OfizerRank` AS `CA_OfizerRank`,`t`.`CA_OfizerNo` AS `CA_OfizerNo`,`t`.`CA_OfizerName` AS `CA_OfizerName`,`t`.`Date_of_submission_to_the_court` AS `Date_of_submission_to_the_court`,`t`.`Reference_to_the_information_book3` AS `Reference_to_the_information_book3`,`t`.`Fo_regarding_case_items` AS `Fo_regarding_case_items`,`t`.`Ct_destory_Date` AS `Ct_destory_Date`,`t`.`Driver_Name` AS `Driver_Name`,`t`.`Driver_Address` AS `Driver_Address`,`t`.`D_ID_DL` AS `D_ID_DL`,`t`.`R_Name` AS `R_Name`,`t`.`R_Address` AS `R_Address`,`t`.`R_IDNo` AS `R_IDNo`,`t`.`Reason_for_arrest` AS `Reason_for_arrest`,`t`.`Vehicle_Release_date` AS `Vehicle_Release_date`,`t`.`Name_vo` AS `Name_vo`,`t`.`Address_vo` AS `Address_vo`,`t`.`ID_Number_vo` AS `ID_Number_vo`,`t`.`If_the_case_was_confiscated_on_that_date` AS `If_the_case_was_confiscated_on_that_date`,`t`.`Court_order_for_release` AS `Court_order_for_release`,`t`.`Full_name_of_the_officer_who_released_the_case_items` AS `Full_name_of_the_officer_who_released_the_case_items`,`t`.`Name_R` AS `Name_R`,`t`.`Address_R` AS `Address_R`,`t`.`ID_Number_R` AS `ID_Number_R`,`t`.`Release_Reference_Inforbook` AS `Release_Reference_Inforbook`,`t`.`Date_of_filing` AS `Date_of_filing`,`t`.`Case_number` AS `Case_number`,`t`.`Of_the_officer_who_filed_the_complaint_in_court_Rank` AS `Of_the_officer_who_filed_the_complaint_in_court_Rank`,`t`.`Of_the_officer_who_filed_the_complaint_in_court_Official_number` AS `Of_the_officer_who_filed_the_complaint_in_court_Official_number`,`t`.`Of_the_officer_who_filed_the_complaint_in_court_Name` AS `Of_the_officer_who_filed_the_complaint_in_court_Name`,`t`.`Character` AS `Character`,`t`.`The_end_result` AS `The_end_result`,`t`.`Date_of_presentation_of_gift_voucher` AS `Date_of_presentation_of_gift_voucher`,`t`.`Signature_of_the_OIC` AS `Signature_of_the_OIC` from ((`arrest1` `r` join `arrest2` `s`) join `arrest3` `t`) where ((`r`.`s_number` = `s`.`s_number`) and (`r`.`s_number` = `t`.`s_number`)) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
