-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2025 at 12:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `updated_db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Author_ID` int(11) NOT NULL,
  `Author_LastName` varchar(50) DEFAULT NULL,
  `Author_FirstName` varchar(250) DEFAULT NULL,
  `Author_Nationality` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Author_ID`, `Author_LastName`, `Author_FirstName`, `Author_Nationality`) VALUES
(21, 'Liang', 'Ya', 'British'),
(22, 'Rowling', 'Joanne', 'British'),
(23, 'Mo', 'Xiang Tong Xiu', 'Chinese'),
(24, 'Hachijo and Harusono', 'Kotoko and Shou ', 'Japanese'),
(25, 'Rou', 'Bao Bu Chi Rou', 'Chinese'),
(26, 'Meng', 'Xi Shi', 'Chinese'),
(27, 'Cho', 'Nam-joo', 'Korean'),
(28, 'Syjuco', 'Miguel', 'Filipino'),
(29, 'Hwang', 'Sun-mi', 'Korean'),
(30, 'Liang', 'Ya', 'Chinese');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_ID` int(11) NOT NULL,
  `Book_Title` varchar(100) DEFAULT NULL,
  `Book_Volume` int(11) DEFAULT NULL,
  `ISBN` varchar(50) DEFAULT NULL,
  `Book_Genre` varchar(250) DEFAULT NULL,
  `Publisher` varchar(100) DEFAULT NULL,
  `Published_Date` varchar(11) DEFAULT NULL,
  `Author_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_ID`, `Book_Title`, `Book_Volume`, `ISBN`, `Book_Genre`, `Publisher`, `Published_Date`, `Author_ID`) VALUES
(101, 'Guardian', 1, '978-0233126867', 'Fantasy,Mystery,BL', 'Jinjiang Literature City', '2012', 21),
(102, 'Harry Potter and the Prisoner of Azkaban', 3, '978-0439136358', 'Fantasy', 'Bloomsbury (UK), Scholastic (US)\r\n', '08-Jul-99', 22),
(103, 'Heaven Officials Blessing', 2, '978-1648279025', 'XianXia,Fantasy,BL', 'Jinjiang Literature City\r\n', '2017', 23),
(104, 'Hirano and Kagiura', 1, '978-1646120619', 'Romance, BL', 'Kadokawa\r\n', '26-Oct-18', 24),
(105, 'Lord Seventh', 1, '978-1648279155 ', 'Historical, Political, BL', 'Jinjiang Literature City\r\n', '13-Jun-10', 30),
(106, 'The Husky and His White Cat Shizun', 2, '978-1648279148', 'Fantasy,Romance, BL', 'Jinjiang Literature City\r\n', '2017', 25),
(107, 'Thousand Autumns', 1, '978-1648279261', 'Fantasy,BL', 'Seven Seas\r\n', '14-Mar-23', 26),
(108, 'Kim Jiyoung, Born 1982', 1, '978-1631496053', 'Feminist Fiction', 'Minumsa\r\n', '2016', 27),
(109, 'Ilustrado', 1, '978-0374175342', 'Literary Fiction', 'Farrar, Straus and Giroux\r\n', '2010', 28),
(110, 'The Hen Who Dreamed She Could Fly', 1, '978-0143126867', 'Fable', 'Sakyejul Publishing\r\n', '2000', 29);

-- --------------------------------------------------------

--
-- Table structure for table `borrowing_record`
--

CREATE TABLE `borrowing_record` (
  `BR_ID` int(11) NOT NULL,
  `BR_IssueDate` date DEFAULT NULL,
  `BR_ReturnDate` date DEFAULT NULL,
  `BR_DueDate` date DEFAULT NULL,
  `Member_ID` int(11) DEFAULT NULL,
  `Book_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowing_record`
--

INSERT INTO `borrowing_record` (`BR_ID`, `BR_IssueDate`, `BR_ReturnDate`, `BR_DueDate`, `Member_ID`, `Book_ID`) VALUES
(401, '2025-01-15', '2025-01-16', '2025-01-22', 301, 101),
(402, '2025-01-15', '2025-01-16', '2025-01-22', 302, 102),
(403, '2025-01-22', '2025-01-28', '2025-01-29', 303, 103),
(404, '2025-01-24', '2025-01-25', '2025-01-31', 304, 104),
(405, '2025-02-15', '2025-02-19', '2025-02-22', 305, 105),
(406, '2025-02-28', '2025-03-04', '2025-03-07', 306, 106),
(407, '2025-02-25', '2025-02-27', '2025-03-04', 307, 107),
(408, '2025-02-17', '2025-02-22', '2025-02-24', 308, 108),
(409, '2025-03-02', '2025-03-04', '2025-03-09', 309, 109),
(410, '2025-02-18', '2025-03-20', '2025-02-25', 310, 110);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `Member_ID` int(11) NOT NULL,
  `Member_Name` varchar(100) DEFAULT NULL,
  `Member_ConInfo` varchar(15) DEFAULT NULL,
  `Member_Membership` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`Member_ID`, `Member_Name`, `Member_ConInfo`, `Member_Membership`) VALUES
(301, 'Garcia, Jane Carla A.', '09494686802', 'Regular'),
(302, 'Borgonos, Timothy Lovenrario', '09537683847', 'Regular'),
(303, 'Ecal, Jomari H.', '09507824880', 'Regular'),
(304, 'Mejos, Kristina T.', '09152879803', 'Regular'),
(305, 'Sabater, John Authin F.', '09173526940', 'Regular'),
(306, 'Silverio, Kiesha M.', '09486022542', 'Regular'),
(307, 'Hernandez, Jhann F.', '09511115056', 'Regular'),
(308, 'Jordan, Rochel S.', '09108677431', 'Regular'),
(309, 'Labalan, Aladin C.', '09108678431', 'Regular'),
(310, 'Alvarez, Justine Jordave D.', '09380664973', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `member_book`
--

CREATE TABLE `member_book` (
  `Member_ID` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_book`
--

INSERT INTO `member_book` (`Member_ID`, `Book_ID`) VALUES
(301, 101),
(302, 102),
(303, 103),
(304, 104),
(305, 105),
(306, 106),
(307, 107),
(308, 108),
(309, 109),
(310, 110);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Author_ID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_ID`),
  ADD KEY `Author_ID` (`Author_ID`);

--
-- Indexes for table `borrowing_record`
--
ALTER TABLE `borrowing_record`
  ADD PRIMARY KEY (`BR_ID`),
  ADD KEY `Member_ID` (`Member_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`Member_ID`);

--
-- Indexes for table `member_book`
--
ALTER TABLE `member_book`
  ADD PRIMARY KEY (`Member_ID`,`Book_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `Author_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `borrowing_record`
--
ALTER TABLE `borrowing_record`
  MODIFY `BR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `Member_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`Author_ID`) REFERENCES `author` (`Author_ID`);

--
-- Constraints for table `borrowing_record`
--
ALTER TABLE `borrowing_record`
  ADD CONSTRAINT `borrowing_record_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `members` (`Member_ID`),
  ADD CONSTRAINT `borrowing_record_ibfk_2` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`Book_ID`);

--
-- Constraints for table `member_book`
--
ALTER TABLE `member_book`
  ADD CONSTRAINT `member_book_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `members` (`Member_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `member_book_ibfk_2` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`Book_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
