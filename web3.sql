-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 08:22 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(300) NOT NULL,
  `productQtNeeded` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `categorySrc` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryId`, `categoryName`, `categorySrc`) VALUES
(1, 'Covid 19', '../../imgs/categories_subcategories/Covid_19'),
(2, 'Home care', '../../imgs/categories_subcategories/Home_care'),
(3, 'ICU Critical care', '../../imgs/categories_subcategories/ICU_Critical_care'),
(4, 'LAB equipments', '../../imgs/categories_subcategories/LAB_equipments'),
(5, 'OT equipments', '../../imgs/categories_subcategories/OT_equipments'),
(10, 'wadih', '../../imgs/categories_subcategories/wadih');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `gender` varchar(39) NOT NULL,
  `city` varchar(50) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientId`, `firstName`, `lastName`, `mobile`, `email`, `password`, `Date`, `gender`, `city`, `discount`) VALUES
(1, 'wadih', 'morkos', 76132016, 'wadihmorkos9@gmail.com', '$2y$10$WglQL2DzetT0Cv4YFoC3i.qkYXSSyK3c3QhwkZ7WoJmSzZhRUFDc2', '2000-02-11', '', 'batroun', 10);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `companyId` int(11) NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyId`, `companyName`, `mobile`, `email`, `password`, `city`, `discount`) VALUES
(1, 'abcsdfgh', 76134343, 'abc@gmail.com', '$2y$10$8R9L39CYHJokGCIAOACjIOQpyZOMRhX5cQRMgHME2tcYmha8Qt0vW', 'beirut', 10);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `city` varchar(30) NOT NULL,
  `fees` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`city`, `fees`) VALUES
('Beirut', 13),
('Rashaya', 17),
('Zahle', 15),
('Byblos', 6),
('Jounieh', 11),
('Aley', 16),
('Baabda', 9),
('Chouf', 11),
('Matn', 7),
('Nabatieh', 21),
('Batroun', 4),
('Bsharri', 22),
('Koura', 21),
('Miniyeh-Danniyeh', 24),
('Tripoli', 13),
('Zgharta', 18),
('other', 30);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `managerId` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`managerId`, `username`, `password`, `email`) VALUES
(1, 'wadih123', '12345678', 'wadihmorkos9@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageId`, `userId`, `email`, `message`) VALUES
(5, 1, 'wadihmorkos9@gmail.com', '12werghjkdvfghndfdfdxf');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `Date` date NOT NULL,
  `userId` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `price` int(11) NOT NULL,
  `adress` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `Date`, `userId`, `email`, `price`, `adress`, `status`) VALUES
(2, '2021-09-30', 1, 'sdftg@gmail.com', 143, 'wsedfgh', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `productName` varchar(300) NOT NULL,
  `productCategory` int(11) NOT NULL,
  `productsubCategory` int(11) NOT NULL,
  `productPrice` int(40) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productimageSrc` varchar(800) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `companyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `productName`, `productCategory`, `productsubCategory`, `productPrice`, `productQuantity`, `productimageSrc`, `Description`, `companyId`) VALUES
(1, 'Ply Mask with Nose Pin Meltblown EarLoop Pack of 10', 1, 1, 13, 12, '../imgs/categories_subcategories/Covid_19/Face_Mask/3_Ply_Mask_with_Nose_Pin_Meltblown_EarLoop.PNG', '', 0),
(2, '95 Particulate Respirator Mask Pack of 10', 1, 1, 133, 43, '../imgs/categories_subcategories/Covid_19/Face_Mask/95_Particulate_Respirator_Mask.PNG', '', 0),
(3, '95 Dust Pollution Mask Pack of 10', 1, 1, 140, 8, '../imgs/categories_subcategories/Covid_19/Face_Mask/95_Dust_Pollution_Mask_Pack_of_10.PNG', '', 0),
(4, 'Particulate Respirator and Surgical Mask N95 Mask ', 1, 1, 7, 30, '../imgs/categories_subcategories/Covid_19/Face_Mask/Particulate_Respirator_and_Surgical_Mask_N95_Mask.PNG', 'Health care respirator and surgical mask,NIOSH Approved: N95,FDA Cleared for use as surgical mask,helps protect against certain airborne biological particles,fluid resistant and disposable.', 0),
(5, 'Eye Shield Face Mask Pack of 10', 1, 1, 13, 67, '../imgs/categories_subcategories/Covid_19/Face_Mask/Eye_Shield_Face_Mask_Pack_of_10.PNG', '', 0),
(6, 'Kingfa Surgical Mask', 1, 1, 10, 29, '../imgs/categories_subcategories/Covid_19/Face_Mask/Kingfa_Surgical_Mask.PNG', '', 0),
(7, 'Ply Face Mask with Meltblown Filter', 1, 1, 15, 43, '../imgs/categories_subcategories/Covid_19/Face_Mask/Ply_Face_Mask_with_Meltblown_Filter_Pack_100.PNG', '', 0),
(8, 'Venus N95 Face Mask Pack of 25', 1, 1, 165, 45, '../imgs/categories_subcategories/Covid_19/Face_Mask/Venus_N95_Face_Mask_Pack_of_25.PNG', '', 0),
(9, 'N95 Face Mask PT Pack of 10', 1, 1, 66, 18, '../imgs/categories_subcategories/Covid_19/Face_Mask/N95_Face_Mask_PT_Pack_of_50.PNG', '', 0),
(10, 'Avagard Hand Sanitizer', 1, 2, 5, 13, '../imgs/categories_subcategories/Covid_19/Hand_sanitizer_and_disinfectant/Avagard_Hand_Sanitizer.PNG', '', 0),
(11, 'Surgical Hand Antiseptic Hand Sanitizer', 1, 2, 6, 25, '../imgs/categories_subcategories/Covid_19/Hand_sanitizer_and_disinfectant/Surgical_Hand_Antiseptic_Hand_Sanitizer.PNG', '', 0),
(12, 'Hand Sanitizer', 1, 2, 50, 67, '../imgs/categories_subcategories/Covid_19/Hand_sanitizer_and_disinfectant/Hand_Sanitizer.PNG', '', 0),
(13, 'Hand Sanitizer pack of 10', 1, 2, 23, 89, '../imgs/categories_subcategories/Covid_19/Hand_sanitizer_and_disinfectant/Hand_Sanitizer_pack_of_10.PNG', '', 0),
(14, 'Stabilised Sodium Hypochlorite', 1, 2, 16, 4, '../imgs/categories_subcategories/Covid_19/Hand_sanitizer_and_disinfectant/Stabilised_Sodium_Hypochlorite.PNG', '', 0),
(15, 'Hand Sanitizer', 1, 2, 7, 45, '../imgs/categories_subcategories/Covid_19/Hand_sanitizer_and_disinfectant/Sterirub_Hand_Sanitizer.PNG', '', 0),
(16, 'VIREX II 256', 1, 2, 10, 13, '../imgs/categories_subcategories/Covid_19/Hand_sanitizer_and_disinfectant/VIREX_II_256.PNG', '', 0),
(17, 'Hand Sanitizer 500 ML Pack of 2', 1, 2, 10, 55, '../imgs/categories_subcategories/Covid_19/Hand_sanitizer_and_disinfectant/Hand_Senitizer_500_ML_Pack_of_2.PNG', '', 0),
(18, 'Bouffant  Cap Blue Pack of 100', 1, 3, 10, 89, '../imgs/categories_subcategories/Covid_19/Personal_protective_equipment/Bouffant__Cap_Blue_Pack_of_100.PNG', '', 0),
(19, 'Disposable SMMS Surgical Gown XL', 1, 3, 50, 45, '../imgs/categories_subcategories/Covid_19/Hand_sanitizer_and_disinfectant/Disposable_SMMS_Surgical_Gown_XL.PNG', '', 0),
(20, 'PPE Coverall with Leggings', 1, 3, 40, 43, '../imgs/categories_subcategories/Covid_19/Personal_protective_equipment/PPE_Coverall_with_Leggings.PNG', '', 0),
(21, 'Safety Goggles', 1, 3, 10, 13, '../imgs/categories_subcategories/Covid_19/Personal_protective_equipment/Safety_Goggles.PNG', '', 0),
(22, 'Surgical PPSB Gown XL', 1, 3, 32, 55, '../imgs/categories_subcategories/Covid_19/Personal_protective_equipment/Surgical_PPSB_Gown_XL.PNG', '', 0),
(24, 'Medical Hearing Aids Amplifier', 2, 4, 2000, 13, '../imgs/categories_subcategories/Home_care/Health_and_personal_care/Medical_Hearing_Aids_Amplifier.PNG', '', 0),
(25, 'Medical Stick', 2, 4, 7, 13, '../imgs/categories_subcategories/Home_care/Health_and_personal_care/Medical_Stick.png', '', 0),
(26, 'Pedometer HJ 320', 2, 4, 40, 13, '../imgs/categories_subcategories/Home_care/Health_and_personal_care/Pedometer_HJ_320.PNG', '', 0),
(27, 'Size 10 Batteries for Hearing Aids PR70', 2, 4, 15, 13, '../imgs/categories_subcategories/Home_care/Health_and_personal_care/Size_10_Batteries_for_Hearing_Aids_PR70.PNG', '', 0),
(28, 'Size 13 Batteries for Hearing Aids PR48', 2, 4, 30, 13, '../imgs/categories_subcategories/Home_care/Health_and_personal_care/Size_13_Batteries_for_Hearing_Aids_PR48.PNG', '', 0),
(29, 'Thermometer MC 343F Pencil', 2, 4, 12, 13, '../imgs/categories_subcategories/Home_care/Health_and_personal_care/Thermometer_MC_343F_Pencil.PNG', '', 0),
(30, 'Remote Control for Hearing Aids', 2, 4, 14, 13, '../imgs/categories_subcategories/Home_care/Health_and_personal_care/Remote_Control_for_Hearing_Aids.PNG', '', 0),
(31, 'BMC Bipap Machine Resmart Gii Y30T', 2, 5, 150, 13, '../imgs/categories_subcategories/Home_care/Respiratory_care/BMC_Bipap_Machine_Resmart_Gii_Y30T.PNG', '', 0),
(32, 'BMC Bipap Smart', 2, 5, 200, 13, '../imgs/categories_subcategories/Home_care/Respiratory_care/BMC_Bipap_Smart.PNG', '', 0),
(33, 'Oxygen Concentrator 10 liter', 2, 5, 250, 13, '../imgs/categories_subcategories/Home_care/Respiratory_care/Oxygen_Concentrator_10_liter.PNG', '', 0),
(34, 'Oxygen Concentrator', 2, 5, 200, 13, '../imgs/categories_subcategories/Home_care/Respiratory_care/Oxygen_Concentrator.PNG', '', 0),
(35, 'Oxygen Mask', 2, 5, 20, 13, '../imgs/categories_subcategories/Home_care/Respiratory_care/Oxygen_Mask.PNG', '', 0),
(36, 'Oxymed Dual flow Oxygen Concentrator', 2, 5, 300, 13, '../imgs/categories_subcategories/Home_care/Respiratory_care/Oxymed_Dual_flow_Oxygen_Concentrator.PNG', '', 0),
(38, 'Active Cool Re Freezable Support Splint', 2, 6, 13, 13, '../imgs/categories_subcategories/Home_care/Support_braces/Active_Cool_Re_Freezable_Support_Splint.PNG', '', 0),
(39, 'Aluminum Moldable Splint', 2, 6, 40, 13, '../imgs/categories_subcategories/Home_care/Support_braces/Aluminum_Moldable_Splint.PNG', '', 0),
(40, 'Cervical Collar CC', 2, 6, 70, 13, '../imgs/categories_subcategories/Home_care/Support_braces/Cervical_Collar_CC.PNG', '', 0),
(41, 'Finger Splint', 2, 6, 20, 13, '../imgs/categories_subcategories/Home_care/Support_braces/Finger_Splint.PNG', '', 0),
(42, 'Adhesive Foam', 2, 6, 60, 13, '../imgs/categories_subcategories/Home_care/Support_braces/Adhesive_Foam.PNG', '', 0),
(43, 'Neckrest', 2, 6, 35, 13, '../imgs/categories_subcategories/Home_care/Support_braces/Neckrest.PNG', '', 0),
(44, 'Antiseptic Dressing', 2, 6, 10, 13, '../imgs/categories_subcategories/Home_care/Support_braces/Antiseptic_Dressing.PNG', '', 0),
(45, 'Diacap Acute Dialyzer', 3, 7, 300, 13, '../imgs/categories_subcategories/ICU_Critical_care/Dialysis/Diacap_Acute_Dialyzer.PNG', '', 0),
(46, 'Diacap Ultra Dialyzer', 3, 7, 240, 13, '../imgs/categories_subcategories/ICU_Critical_care/Dialysis/Diacap_Ultra_Dialyzer.PNG', '', 0),
(47, 'Dialog Hemodialysis Machine', 3, 7, 400, 13, '../imgs/categories_subcategories/ICU_Critical_care/Dialysis/Dialog_Hemodialysis_Machine.PNG', '', 0),
(48, 'Fresenius Dialysis Machine', 3, 7, 330, 13, '../imgs/categories_subcategories/ICU_Critical_care/Dialysis/Fresenius_Dialysis_Machine.PNG', '', 0),
(49, 'Fresenuis Hemodialysis Machine', 3, 7, 340, 13, '../imgs/categories_subcategories/ICU_Critical_care/Dialysis/Fresenuis_Hemodialysis_Machine.PNG', '', 0),
(50, 'Newtech Transducer Protector', 3, 7, 115, 13, '../imgs/categories_subcategories/ICU_Critical_care/Dialysis/Newtech_Transducer_Protector.PNG', '', 0),
(51, 'Elisio 15M Dialyzer', 3, 7, 100, 13, '../imgs/categories_subcategories/ICU_Critical_care/Dialysis/Elisio_15M_Dialyzer.PNG', '', 0),
(52, 'Allied Syringe Infusion Pump', 3, 8, 200, 13, '../imgs/categories_subcategories/ICU_Critical_care/Infusion_pump/Allied_Syringe_Infusion_Pump.PNG', '', 0),
(53, 'Syringe Pump', 3, 8, 60, 13, '../imgs/categories_subcategories/ICU_Critical_care/Infusion_pump/Syringe_Pump.PNG', '', 0),
(54, 'Feeding Pump', 3, 8, 113, 13, '../imgs/categories_subcategories/ICU_Critical_care/Infusion_pump/Feeding_Pump.PNG', '', 0),
(55, 'Hemodiaz Syringe Infusion Pump', 3, 8, 120, 13, '../imgs/categories_subcategories/ICU_Critical_care/Infusion_pump/Hemodiaz_Syringe_Infusion_Pump.PNG', '', 0),
(56, 'MDT Syringe Pump', 3, 8, 150, 13, '../imgs/categories_subcategories/ICU_Critical_care/Infusion_pump/MDT_Syringe_Pump.PNG', '', 0),
(57, 'Syringe Pump', 3, 8, 60, 13, '../imgs/categories_subcategories/ICU_Critical_care/Infusion_pump/Syringe_Pump.PNG', '', 0),
(58, 'Cardiac Monitor 12 inch Screen', 3, 9, 300, 13, '../imgs/categories_subcategories/ICU_Critical_care/Patient_monitoring_system/Cardiac_Monitor_12_inch_Screen.PNG', '', 0),
(59, 'CMS5100 Monitor', 3, 9, 240, 13, '../imgs/categories_subcategories/ICU_Critical_care/Patient_monitoring_system/CMS5100_Monitor.PNG', '', 0),
(60, 'Contec CMS5100 Monitor', 3, 9, 260, 13, '../imgs/categories_subcategories/ICU_Critical_care/Patient_monitoring_system/Contec_CMS5100_Monitor.PNG', '', 0),
(61, 'Contec Fingertip Pulse Oximeter', 2, 5, 34, 13, '../imgs/categories_subcategories/ICU_Critical_care/Patient_monitoring_system/Contec_Fingertip_Pulse_Oximeter.png', '', 0),
(62, 'Masimo Rad97', 3, 9, 120, 13, '../imgs/categories_subcategories/ICU_Critical_care/Patient_monitoring_system/Masimo_Rad97.PNG', '', 0),
(63, 'Medsun MD9009B', 3, 9, 135, 13, '../imgs/categories_subcategories/ICU_Critical_care/Patient_monitoring_system/Medsun_MD9009B.PNG', '', 0),
(64, 'Schiller Medical Plusoximeter', 3, 9, 210, 13, '../imgs/categories_subcategories/ICU_Critical_care/Patient_monitoring_system/Schiller_Medical_Plusoximeter.PNG', '', 0),
(65, 'Airliquide Medical ICU Ventilator', 3, 10, 200, 13, '../imgs/categories_subcategories/ICU_Critical_care/Ventilator_machine/Airliquide_Medical_ICU_Ventilator.PNG', '', 0),
(66, 'Humidification High Flow System', 3, 10, 105, 13, '../imgs/categories_subcategories/ICU_Critical_care/Ventilator_machine/Humidification_High_Flow_System.PNG', '', 0),
(67, 'BMC Medical HFNC Device', 3, 10, 130, 13, '../imgs/categories_subcategories/ICU_Critical_care/Ventilator_machine/BMC_Medical_HFNC_Device.PNG', '', 0),
(68, 'Disposable Ventilator Circuit', 3, 10, 70, 13, '../imgs/categories_subcategories/ICU_Critical_care/Ventilator_machine/Disposable_Ventilator_Circuit.PNG', '', 0),
(69, 'High flow nasal cannula', 2, 5, 100, 13, '../imgs/categories_subcategories/ICU_Critical_care/Ventilator_machine/High_flow_nasal_cannula.png', '', 0),
(70, 'ICU Ventilator', 3, 10, 167, 13, '../imgs/categories_subcategories/ICU_Critical_care/Ventilator_machine/ICU_Ventilator.PNG', '', 0),
(72, 'Portable Medical Ventilator', 3, 10, 210, 13, '../imgs/categories_subcategories/ICU_Critical_care/Ventilator_machine/Portable_Medical_Ventilator.PNG', '', 0),
(73, 'Resmed Ventilator Astral', 3, 10, 220, 13, '../imgs/categories_subcategories/ICU_Critical_care/Ventilator_machine/Resmed_Ventilator_Astral.PNG', '', 0),
(74, 'Micropipette From 10 to 100 μL', 4, 12, 17, 23, '../imgs/categories_subcategories/LAB_equipments/lab_diagnostic/Micropipette_10_to_100.jpg', '', 0),
(75, 'Coldchain Vaccine Carriers For Laboratory', 4, 11, 100, 13, '../imgs/categories_subcategories/LAB_equipments/blood_bank_equipment/Coldchain_Vaccine_Carriers_For_Laboratory.PNG', '', 0),
(76, 'Fairbizps 2 To 8 Degree Cold Box', 4, 11, 120, 13, '../imgs/categories_subcategories/LAB_equipments/blood_bank_equipment/Fairbizps_2_To_8_Degree_Cold_Box.PNG', '', 0),
(77, 'IndoSurgicals HDPE Vaccine Carrier box', 4, 11, 94, 13, '../imgs/categories_subcategories/LAB_equipments/blood_bank_equipment/IndoSurgicals_HDPE_Vaccine_Carrier_box.PNG', '', 0),
(78, 'Micropipette From 100 to 1000 μL', 4, 12, 19, 23, '../imgs/categories_subcategories/LAB_equipments/lab_diagnostic/Micropipette_100_to_1000.jpg', '', 0),
(79, 'Blood Gas Analyzer', 4, 12, 500, 13, '../imgs/categories_subcategories/LAB_equipments/lab_diagnostic/Blood_Gas_Analyzer.PNG', '', 0),
(80, 'Hematology Analyzer', 4, 12, 640, 13, '../imgs/categories_subcategories/LAB_equipments/lab_diagnostic/Hematology_Analyzer.PNG', '', 0),
(81, 'Autoclave Electric Cooker', 5, 13, 320, 13, '../imgs/categories_subcategories/OT_equipments/sterilization/Autoclave_Electric_Cooker.PNG', '', 0),
(82, 'Fumigation Machine', 5, 13, 300, 13, '../imgs/categories_subcategories/OT_equipments/sterilization/Fumigation_Machine.PNG', '', 0),
(83, 'Sterilizer Electric Seamless', 5, 13, 240, 13, '../imgs/categories_subcategories/OT_equipments/sterilization/Sterilizer_Electric_Seamless.PNG', '', 0),
(84, 'Electric Suction Apparatus', 5, 14, 220, 13, '../imgs/categories_subcategories/OT_equipments/Suction_machine/Electric_Suction_Apparatus.PNG', '', 0),
(85, 'Electric Suction Apparatus High flow', 5, 14, 235, 13, '../imgs/categories_subcategories/OT_equipments/Suction_machine/Electric_Suction_Apparatus_High_flow.PNG', '', 0),
(86, 'Hand Suction', 5, 14, 60, 13, '../imgs/categories_subcategories/OT_equipments/Suction_machine/Hand_Suction.PNG', '', 0),
(87, 'Hand Suction Machine Niscomed', 5, 14, 64, 13, '../imgs/categories_subcategories/OT_equipments/Suction_machine/Hand_Suction_Machine_Niscomed.PNG', '', 0),
(88, 'Hand Suction Units Anaesthetics', 5, 14, 64, 13, '../imgs/categories_subcategories/OT_equipments/Suction_machine/Hand_Suction_Units_Anaesthetics.PNG', '', 0),
(89, 'High Vacuum Suction Machine', 5, 14, 230, 13, '../imgs/categories_subcategories/OT_equipments/Suction_machine/High_Vacuum_Suction_Machine.PNG', '', 0),
(90, 'Portable Suction Machine', 5, 14, 267, 13, '../imgs/categories_subcategories/OT_equipments/Suction_machine/Portable_Suction_Machine.PNG', '', 0),
(91, 'Surgix Suction Machine', 5, 14, 200, 13, '../imgs/categories_subcategories/OT_equipments/Suction_machine/Surgix_Suction_Machine.PNG', '', 0),
(92, 'Cautery machine', 5, 15, 110, 13, '../imgs/categories_subcategories/OT_equipments/surgery_equipment/Cautery_machine.PNG', '', 0),
(93, 'Covidien Electorosurgical Unit', 5, 15, 130, 13, '../imgs/categories_subcategories/OT_equipments/surgery_equipment/Covidien_Electorosurgical_Unit.PNG', '', 0),
(94, 'Kidney Trays without cover', 5, 15, 12, 13, '../imgs/categories_subcategories/OT_equipments/surgery_equipment/Kidney_Trays_without_cover.PNG', '', 0),
(95, 'Surgical Cautery 250 Watts', 5, 15, 110, 13, '../imgs/categories_subcategories/OT_equipments/surgery_equipment/Surgical_Cautery_250_Watts.PNG', '', 0),
(96, 'Morbros Electric OT Table', 5, 15, 600, 13, '../imgs/categories_subcategories/OT_equipments/surgery_equipment/Morbros_Electric_OT_Table.PNG', '', 0),
(97, 'Abdominal Scissors', 5, 16, 45, 13, '../imgs/categories_subcategories/OT_equipments/surgical_instruments/Abdominal_Scissors.PNG', '', 0),
(98, 'Anatomy Post Mortem', 5, 16, 25, 13, '../imgs/categories_subcategories/OT_equipments/surgical_instruments/Anatomy_Post_Mortem.PNG', '', 0),
(99, 'Dressing Drums Heavy Jointed', 5, 16, 78, 13, '../imgs/categories_subcategories/OT_equipments/surgical_instruments/Dressing_Drums_Heavy_Jointed.PNG', '', 0),
(100, 'Trays with Cover', 5, 16, 35, 13, '../imgs/categories_subcategories/OT_equipments/surgical_instruments/Trays_with_Cover.PNG', '', 0),
(101, 'Medical Hemorhoid Pile Gun', 5, 16, 15, 13, '../imgs/categories_subcategories/OT_equipments/surgical_instruments/Medical_Hemorhoid_Pile_Gun.PNG', '', 0),
(102, 'Probes', 5, 16, 12, 13, '../imgs/categories_subcategories/OT_equipments/surgical_instruments/Probes.PNG', '', 0),
(103, 'Surgical Wash Basin', 5, 16, 20, 13, '../imgs/categories_subcategories/OT_equipments/surgical_instruments/Surgical_Wash_Basin.PNG', '', 0),
(104, 'Uterine Dilators', 5, 16, 23, 13, '../imgs/categories_subcategories/OT_equipments/surgical_instruments/Uterine_Dilators.PNG', '', 0),
(105, 'PCR Analyzer', 4, 12, 800, 13, '../imgs/categories_subcategories/LAB_equipments/lab_diagnostic/PCR_Analyzer.PNG', '', 0),
(106, 'Biochemistry Analyzer', 4, 12, 976, 13, '../imgs/categories_subcategories/LAB_equipments/lab_diagnostic/Biochemistry_Analyzer.jpg', '', 0),
(107, 'Serology Analyzer', 4, 12, 420, 13, '../imgs/categories_subcategories/LAB_equipments/lab_diagnostic/Serology_Analyzer.jpg', '', 0),
(108, 'Vacuum Blood Collection Tube', 4, 12, 45, 13, '../imgs/categories_subcategories/LAB_equipments/lab_diagnostic/Vacuum_Blood_Collection_Tube.jpg', '', 0),
(109, 'Spirometer', 2, 5, 23, 43, '../imgs/categories_subcategories/Home_care/Respiratory_care/Spirometer.jpg', '', 0),
(110, 'Urine Vial', 4, 12, 23, 43, '../imgs/categories_subcategories/LAB_equipments/lab_diagnostic/Urine_Vial.jpg', '', 0),
(111, 'PPE Kit Blue Gown', 1, 3, 65, 13, '../imgs/categories_subcategories/Covid_19/Personal_protective_equipment/PPE_Kit_Blue_Gown.PNG', '', 0),
(117, 'p1', 5, 15, 12, 35, '../imgs/categories_subcategories/OT_equipments/surgery_equipment/p1.jpeg', '', 1),
(118, 'p2', 1, 1, 12, 32, '../imgs/categories_subcategories/Covid_19/Face_Mask/p2.jpeg', 'mask', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `subcategoryId` int(11) NOT NULL,
  `subCname` varchar(50) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `subcategorySrc` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`subcategoryId`, `subCname`, `categoryId`, `subcategorySrc`) VALUES
(1, 'Face Mask', 1, ''),
(2, 'Hand sanitizer and disinfectant', 1, ''),
(3, 'Personal protective equipment', 1, ''),
(4, 'Health and personal care', 2, ''),
(5, 'Respiratory care', 2, ''),
(6, 'Support braces', 2, ''),
(7, 'Dialysis', 3, ''),
(8, 'Infusion pump', 3, ''),
(9, 'Patient monitoring system', 3, ''),
(10, 'Ventilator machine', 3, ''),
(11, 'blood bank equipment', 4, ''),
(12, 'lab diagnostic', 4, ''),
(13, 'sterilization', 5, ''),
(14, 'Suction machine', 5, ''),
(15, 'surgery equipment', 5, ''),
(16, 'surgical instruments', 5, ''),
(50, 'test', 10, '../../imgs/categories_subcategories/wadih/test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clientId`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`companyId`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`managerId`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `companyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `managerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
