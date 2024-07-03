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
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieId` varchar(10) NOT NULL,
  `movieName` varchar(48) DEFAULT NULL,
  `year` varchar(6) DEFAULT NULL,
  `genre` varchar(29) DEFAULT NULL,
  `overview` varchar(354) DEFAULT NULL,
  `director` varchar(167) DEFAULT NULL,
  `cast` varchar(83) DEFAULT NULL,
  `imagepath` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieId`, `movieName`, `year`, `genre`, `overview`, `director`, `cast`, `imagepath`) VALUES
('tt2395469', 'Gully Boy', '2019', 'Drama, Music, Romance', 'A coming-of-age story based on the lives of street rappers in Mumbai.', 'Zoya Akhtar', 'Ranveer Singh, Alia Bhatt, Siddhant Chaturvedi, Vijay Raaz', 'images/GullyBoy.jpg'),
('tt5842616', 'Veere Di Wedding', '2018', 'Comedy', 'Four girls on their way to find true love discover that their friendship must remain strong until the wedding of a friend named Veer.', 'Shashanka Ghosh', 'Kareena Kapoor, Sonam Kapoor, Swara Bhasker, Shikha Talsania', 'images/VeereDiWedding.jpg'),
('tt5956100', 'Tiger Zinda Hai', '2017', 'Action, Adventure, Thriller', 'Inspired by real events, Tiger Zinda Hai is a sequel to the blockbuster Ek Tha Tiger, and an espionage action drama that follows a daring rescue mission in Iraq.', 'Mehmet Tutkun, Ali Abbas Zafar, Musa Muhammed Olayinka', 'Salman Khan, Katrina Kaif, Nawab Shah, Anupriya Goenka', 'images/TigerZindaHai.jpg'),
('tt6527426', 'Zero', '2018', 'Comedy, Drama, Romance', 'The story revolves around Bauua Singh (Shah Rukh Khan), a vertically challenged man, who is full of charm and wit, with a pinch of arrogance. Born to a wealthy family and raised in an environment of affluence, he is challenged to broaden his horizon and find purpose in life.', 'Aanand L. Rai', 'Shah Rukh Khan, Anushka Sharma, Katrina Kaif, Mohd. Zeeshan Ayyub', 'images/Zero.jpg'),
('tt7212726', 'Simmba', '2018', 'Action, Crime, Drama', 'Simmba, a Corrupt Officer, enjoys all the perks of being an immoral and unethical police officer until a life-changing event forces him to choose the righteous path.', 'Rohit Shetty', 'Ranveer Singh, Sara Ali Khan, Sonu Sood, Ashutosh Rana', 'images/Simmba.jpg'),
('tt7581902', 'Sonu Ke Titu Ki Sweety', '2018', 'Comedy, Romance', 'Titu is going to marry a perfect woman named Sweety. Titu\'s best-friend Sonu doubts Sweety\'s character and tries to break the marriage while Sweety tries to do opposite and which leads to war between Bromance and Romance.', 'Luv Ranjan', 'Kartik Aaryan, Nushrratt Bharuccha, Sunny Singh, Alok Nath', 'images/Sonu.jpg'),
('tt7638344', 'Dhadak', '2018', 'Drama, Romance', 'Set in Rajasthan, this love story explores how the protagonists deal with issues like differences between castes and honor killings.', 'Shashank Khaitan', 'Janhvi Kapoor, Ishaan Khattar, Ashutosh Rana, Aditya Kumar', 'images/Dhadak.jpg'),
('tt7639372', 'Total Dhamaal', '2019', 'Action, Adventure, Comedy', 'A group of people learn about a hidden treasure and then they race to find it and claim it.', 'Indra Kumar', 'Ajay Devgn, Anil Kapoor, Madhuri Dixit, Riteish Deshmukh', 'images/TotalDhamaal.jpg'),
('tt7720922', 'Batti Gul Meter Chalu', '2018', 'Drama', 'The life of three friends takes a tragic turn due to an inflated electricity bill, which leads to a courtroom drama and social awakening.', 'Shree Narayan Singh', 'Shahid Kapoor, Shraddha Kapoor, Divyendu Sharma, Yami Gautam', 'images/BattiGul.jpg'),
('tt8060624', 'Nawabzaade', '2018', 'Comedy, Romance', 'Three best friends fall in love with a simple, stay-at-home girl from their neighbourhood. As they all go out of their way to win her love, they are pitted against each other in their efforts.', 'Jayesh Pradhan', 'Dharmesh Yelande, Punit Pathak, Raghav Juyal, Isha Rikhi', 'images/Nawabzaade.jpg'),
('tt8108164', 'Ek Ladki Ko Dekha Toh Aisa Laga', '2019', 'Comedy, Crime, Drama', 'The film tells the story of closeted lesbian Sweety Chaudhary and her attempts to come out to her conservative, traditional family.', 'Shelly Chopra Dhar', 'Sonam Kapoor, Anil Kapoor, Rajkummar Rao, Juhi Chawla', 'images/EkLadkiKoDekha.jpg'),
('tt8202612', 'Satyameva Jayate', '2018', 'Action, Crime, Drama', 'An honest cop attempts to hunt down a vigilante who kills corrupt cops by setting them on fire.', 'Milap Zaveri', 'John Abraham, Manoj Bajpayee, Aisha Sharma, Amruta Khanvilkar', 'images/SatyamevaJayate.jpg'),
('tt8852558', 'Mitron', '2018', 'Comedy', 'In order to bring stability in Jai\'s life, his father decides to get him married. However, fate has other plans.', 'Nitin Kakkar', 'Jackky Bhagnani, Kritika Kamra, Prateik Patil Babbar, Perlene Bhersaina', 'images/Mitron.jpg'),
('tt8899003', 'Namaste England', '2018', 'Romance/Comedy Drama', 'A couple\'s relationship undergoes stress and changes as they struggle to fulfil their dreams of relocating to England.', 'Vipul Amrutlal Shah', 'Arjun Kapoor, Parineeti Chopra, Aditya Seal , Alankrita Sahai, Anil Mange, Satish K', 'images/NamasteEngland.jpg'),
('tt8908002', 'Luka Chuppi', '2019', 'Comedy, Romance', 'Pretending to be married in order to cohabitate, a small-town couple lands in endless awkward situations to hide the truth from their orthodox families.', 'Laxman Utekar', 'Kartik Aaryan, Kriti Sanon, Aparshakti Khurana, Pankaj Tripathi', 'images/LukaChuppi.jpg'),
('tt8999000', 'Cheat India', '2019', 'Indian Film Pop', 'Focuses on existing malpractices in country\'s education system, the whole concept of buying your way through education, jobs and earnings.', 'Soumik Sen', 'Emraan Hashmi, Shreya Dhanwanthary,\r\nShivani Bedi, Snigdhadeep Chatterjee, \r\nManuj ', 'images/CheatIndia.jpg'),
('tt8999011', 'KGF', '2018', 'Action/Crime', 'The blood-soaked land of Kolar Gold Fields has a new overlord now, Rocky, whose name strikes fear in the heart of his foes. His allies look up to him as their Savior, the government sees him as a threat, and his enemies are clamouring for revenge', 'Prashanth Neel', 'Yash, Ramachandra Raju, Srinidhi Shetty,\r\nVasishta N. Simha, Achyuth Kumar, Archana', 'images/KGF.jpg'),
('tt8999022', 'Fraud Saiyaan', '2019', 'Comedy Drama', 'Bhola, a con artist, travels around the city wooing various women into marrying him in a bid to satisfy his monetary needs.', 'Sourabh Shrivastava', 'Arshad Warsi, Rana Bhola Pratap Singh, Mohit Balchandani, Saurabh Shukla, Flora Sai', 'images/FraudSaiyaan.jpeg');

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
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieId`);

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
