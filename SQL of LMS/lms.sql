-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2019 at 07:45 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_books`
--

CREATE TABLE `add_books` (
  `id` int(11) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(500) NOT NULL,
  `category` varchar(20) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(15) NOT NULL,
  `books_purchase_date` varchar(11) NOT NULL,
  `books_price` int(11) NOT NULL,
  `books_qty` int(11) NOT NULL,
  `available_qty` int(11) NOT NULL,
  `librarian_username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_books`
--

INSERT INTO `add_books` (`id`, `books_name`, `books_image`, `category`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_qty`, `available_qty`, `librarian_username`) VALUES
(7, 'Advanced Physics', 'books_image/629deb1c4fc78a95a1373fb870b4d6e9one.jpg', 'Physics', 'Steve Adams, Jonathan Allday', 'OXFORD', '03-08-19', 550, 25, 10, 'sabuj'),
(8, 'The Algorithm Design Manual', 'books_image/eb317e2c7492c1de5e48e2aea37b32b5six.jpg', 'CS', 'Steven S. Skiena', 'Springer', '03-08-19', 5500, 250, 77, 'sabuj'),
(9, 'Computer Science Handbook', 'books_image/9b714c9a0529da12464d0aa4077ffbf3four.jpg', 'CS', 'Allen B. Tucker', 'hhhh', '03-08-19', 5500, 250, 74, 'sabuj'),
(10, 'Introduction to Algorithm', 'books_image/1614756ecbbdf127565fbf597fbf8744five.jpg', 'CS', 'Coreman', 'OXFORD', '03-08-19', 560, 50, 51, 'sabuj'),
(13, 'Core Java for beginner', 'books_image/2c56c6bbc06716cbbd3422d1f7bd1edfcore java for beginner.jpg', 'CS', 'Rashmi Kanta Das', 'hhhh', '03-08-19', 5500, 250, 71, 'sabuj'),
(21, 'Handbook of Petroleum refining', 'books_image/b4352c4c60a6b542022e56052a60e44bhandbook of petroleum refining.jpg', 'PME', 'James G. Speight', 'CRC Press', '20/08/19', 5500, 250, 72, 'sabuj');

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

CREATE TABLE `issue_books` (
  `id` int(7) NOT NULL,
  `student_enrollment` varchar(10) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_sem` int(2) NOT NULL,
  `student_contact` int(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_issue_date` varchar(50) NOT NULL,
  `books_return_date` varchar(50) NOT NULL,
  `student_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_books`
--

INSERT INTO `issue_books` (`id`, `student_enrollment`, `student_name`, `student_sem`, `student_contact`, `student_email`, `books_name`, `books_issue_date`, `books_return_date`, `student_username`) VALUES
(55, '1604020', 'Mehadi Hasan munna', 5, 12345, 'munna@gmail.com', 'Advanced Physics', '25-Aug-2019', '', 'munna'),
(56, '1604020', 'Mehadi Hasan munna', 5, 12345, 'munna@gmail.com', 'Introduction to Algorithm', '25-Aug-2019', '25-08-2019', 'munna');

-- --------------------------------------------------------

--
-- Table structure for table `librarian_registration`
--

CREATE TABLE `librarian_registration` (
  `id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian_registration`
--

INSERT INTO `librarian_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES
(1, 'Shahriar Mahmud', 'sabuj', 'sabuj', '102030', 'abd@gmail.com', 1840149386);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(5) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `dusername` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `read1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `susername`, `dusername`, `title`, `msg`, `read1`) VALUES
(2, 'sabuj', 'nakib', 'Account Created', ' Dear student, your account is successfully created. Now you can borrow book from library.                                                     \r\n                                                    ', 'y'),
(3, 'sabuj', 'nakib', 'Account Created', ' Dear student, your account is successfully created. Now you can borrow book from library.                                                     \r\n                                                    ', 'y'),
(5, 'sabuj', 'sabuj', 'Return Book', 'Dear student, you have issued books from library. It have been arround a month. It is time to return the book. You are requested to return the in the library. Unless you will be fined.                                                        \r\n                                                    ', 'y'),
(6, 'sabuj', 'pal', 'welcome', '                         hhhhh                               \r\n                                                    ', 'y'),
(7, 'sabuj', 'munna', 'Welcome to Our Library ', '  Dear student, you now a member of our library. Now you can borrow books from the library. Thanks for your registration.                                                    \r\n                                                    ', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(7) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `enrollment` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`, `sem`, `enrollment`, `status`) VALUES
(7, 'Mehadi Hasan', 'munna', 'munna', '12345', 'munna@gmail.com', 12345, '5', '1604020', 'yes'),
(8, 'Shahriar Mahmud', 'Sabuj', 'sabuj', '102030', 'sabuj@gmail.com', 123456, '5', '1604013', 'yes'),
(9, 'Nahid', 'karim', 'karim', '102030', 'sabuj@gamil.com', 15698, '6', '1604025', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_books`
--
ALTER TABLE `add_books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_name` (`books_name`,`books_author_name`);

--
-- Indexes for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_enrollment` (`student_enrollment`,`books_name`);

--
-- Indexes for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_books`
--
ALTER TABLE `add_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `issue_books`
--
ALTER TABLE `issue_books`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
