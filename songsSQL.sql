-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2024 at 11:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entertainment`
--

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `songId` int(4) NOT NULL,
  `songName` varchar(43) DEFAULT NULL,
  `singer` varchar(114) DEFAULT NULL,
  `songGenre` varchar(35) DEFAULT NULL,
  `movie` varchar(36) DEFAULT NULL,
  `userRating` varchar(6) DEFAULT NULL,
  `movieId` varchar(10) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `imagePath` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`songId`, `songName`, `singer`, `songGenre`, `movie`, `userRating`, `movieId`, `releaseDate`, `imagePath`) VALUES
(1, 'Aankh Marey', 'Kumar Sanu, Mika Singh, Neha Kakkar', 'BollywoodDance', 'Simmba', '8.8/10', 'tt7212726', '2018-12-06', 'images/AankhMarey.jpeg'),
(2, 'Coca Cola', 'Neha Kakkar, Tony Kakkar', 'BollywoodDanceRomantic', 'Luka Chuppi', '9.0/10', 'tt8908002', '2019-02-04', 'images/CocaCola.jpg'),
(3, 'Apna Time Aayega', 'Ranveer Singh', 'BollywoodDance', 'Gully Boy', '9.7/10', 'tt2395469', '2019-01-14', 'images/ApnaTimeAayega.jpeg'),
(4, 'Mungda', 'Jyotica Tangri, Shaan, Subhro Ganguly', 'BollywoodDance', 'Total Dhamaal', '9.1/10', 'tt7639372', '2019-02-05', 'images/Mungda.jpeg'),
(5, 'Tere Bin', 'Asees Kaur, Rahat Fateh Ali Khan, Tanishk Bagchi', 'BollywoodRomantic', 'Simmba', '9.2/10', 'tt7212726', '2018-12-14', 'images/TereBin.jpeg'),
(6, 'Gali Gali', 'Neha Kakkar', 'BollywoodDance', 'KGF', '9.1/10', 'tt8999011', '2018-12-13', 'images/GaliGali.jpeg'),
(7, 'Chamma Chamma', 'Arun, Ikka, Neha Kakkar, Romy', 'BollywoodDance', 'Fraud Saiyaan', '9.2/10', 'tt8999022', '2018-12-03', 'images/ChammaChamma.jpeg'),
(8, 'Mere Gully Mein', 'Ranveer Singh', 'BollywoodDance', 'Gully Boy', '9.5/10', 'tt2395469', '2019-01-22', 'images/MereGullyMein.jpg'),
(9, 'Kamariya', 'Darshan Raval', 'BollywoodDance', 'Mitron', '9.2/10', 'tt8852558', '2018-08-30', 'images/Kamariya.jpg'),
(10, 'Ek Ladki Ko Dekha Toh Aisa Laga', 'Darshan Raval, Rochak Kohli', 'BollywoodRomantic', 'Ek Ladki Ko Dekha Toh Aisa Laga', '9.6/10', 'tt8108164', '2019-02-01', 'images/EkLadki.jpg'),
(11, 'Swag Se Swagat', 'Neha Bhasin, Vishal Dadlani', 'BollywoodDance', 'Tiger Zinda Hai', '8.8/10', 'tt5956100', '2017-11-21', 'images/SwagSeSwagat.jpg'),
(12, 'Poster Lagwa Do', 'Mika Singh, Sunanda Sharma', 'BollywoodDance', 'Luka Chuppi', '8.4/10', 'tt8908002', '2019-01-29', 'images/PosterLagwaDo.jpeg'),
(13, 'Daaru Wargi', 'Guru Randhawa', 'BollywoodDance', 'Cheat India', '9.1/10', 'tt8999000', '2018-12-15', 'images/DaaruWargi.jpeg'),
(14, 'Dilbar', 'Dhvani Bhanushali, Ikka, Neha Kakkar', 'BollywoodDance', 'Satyameva Jayate', '9.2/10', 'tt8202612', '2018-07-04', 'images/Dilbar.jpeg'),
(15, 'Proper Patola', 'Aastha Gill, Badshah, Diljit Dosanjh', 'BollywoodDance', 'Namaste England', '9.0/10', 'tt8899003', '2018-10-03', 'images/ProperPatola.jpeg'),
(16, 'Doori', 'Ranveer Singh', 'BollywoodDance', 'Gully Boy', '9.7/10', 'tt2395469', '2019-01-30', 'images/Doori.jpg'),
(17, 'Dil Diyan Gallan', 'Atif Aslam', 'BollywoodRomantic', 'Tiger Zinda Hai', '9.1/10', 'tt5956100', '2017-12-02', 'images/DilDiyanGallan.jpg'),
(18, 'Husn Parcham', 'Bhoomi Trivedi, Raja Kumari', 'BollywoodDance', 'Zero', '9.0/10', 'tt6527426', '2018-12-12', 'images/HusnParcham.jpeg'),
(19, 'Bom Diggy Diggy', 'Jasmin Walia, Zack Knight', 'BollywoodDance', 'Sonu Ke Titu Ki Sweety', '9.0/10', 'tt7581902', '2018-02-08', 'images/BomDiggyDiggy.jpeg'),
(20, 'Issaqbaazi', 'Divya Kumar, Sukhwinder Singh', 'BollywoodDance', 'Zero', '9.1/10', 'tt6527426', '2018-12-04', 'images/Issaqbaazi.jpg'),
(21, 'Mere Naam Tu', 'Abhay Jodhpurkar', 'BollywoodRomantic', 'Zero', '9.2/10', 'tt6527426', '2018-11-23', 'images/MereNaamTu.jpg'),
(22, 'High Rated Gabru   Nawabzaade', 'Guru Randhawa', 'BollywoodDance', 'Nawabzaade', '9.2/10', 'tt8060624', '2018-07-28', 'images/HighRatedGabru.jpg'),
(23, 'Dekhte Dekhte', 'Atif Aslam', 'BollywoodRomantic', 'Batti Gul Meter Chalu', '9.5/10', 'tt7720922', '2018-08-21', 'images/DekhteDekhte.jpeg'),
(24, 'Zingaat', 'Ajay, Atul', 'BollywoodDance', 'Dhadak', '8.6/10', 'tt7638344', '2018-06-27', 'images/Zingaat.jpg'),
(25, 'Tareefan', 'Badshah', 'Bollywood', 'Veere Di Wedding', '9.1/10', 'tt5842616', '2018-05-02', 'images/Tareefan.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`songId`),
  ADD KEY `foreignkey` (`movieId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
