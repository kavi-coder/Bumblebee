-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 01:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_installment`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL,
  `c_code` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_description` varchar(255) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_code`, `c_name`, `c_description`, `c_date`) VALUES
(3, 'SAM', 'Samsung Phones', 'Smart Phones', '2023-02-15 17:59:41'),
(4, 'APP', 'Apple Iphones', 'Smart Phones', '2023-02-15 18:00:12'),
(5, 'HP', 'HP Laptops', 'i7 Laptops', '2023-02-15 18:00:43'),
(6, 'DELL', 'Dell Laptops', 'i3 Laptops', '2023-02-16 18:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `costumer`
--

CREATE TABLE `costumer` (
  `z_id` int(11) NOT NULL,
  `z_idnum` varchar(255) NOT NULL,
  `z_lastname` varchar(255) NOT NULL,
  `z_firstname` varchar(255) NOT NULL,
  `z_mi` varchar(255) NOT NULL,
  `z_age` varchar(255) NOT NULL,
  `z_contact` varchar(255) NOT NULL,
  `z_address` varchar(255) NOT NULL,
  `z_email` varchar(255) NOT NULL,
  `z_postal` varchar(255) NOT NULL,
  `z_job` varchar(255) NOT NULL,
  `z_salary` varchar(255) NOT NULL,
  `z_status` varchar(255) NOT NULL,
  `z_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `z_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `costumer`
--

INSERT INTO `costumer` (`z_id`, `z_idnum`, `z_lastname`, `z_firstname`, `z_mi`, `z_age`, `z_contact`, `z_address`, `z_email`, `z_postal`, `z_job`, `z_salary`, `z_status`, `z_date`, `z_pass`) VALUES
(3, '17100749', 'Beley', 'Marc Angelo', 'M.', '21', '09268471853', 'Don Francisco', 'main123452458@gmail.com', '3311', 'Leader', '300', 'Single', '2021-05-05 04:56:23', 'admin'),
(4, '171007419', 'Beley', 'Marc', 'M.', '21', '09999999999', 'Don Francisco', 'Main@gmail.com', '3311', 'None', '15000', 'Single', '2021-05-07 12:08:01', 'admin'),
(5, '19101960', 'aa', 'aa', 'aa', '1', '1', 'aa', 'aa', '11', '11', '11', '11', '2021-05-07 12:14:36', 'aa'),
(6, '55588822', 'Ann', 'Mery', 'Female', '28', '077777772727', '12, St Thomas Street', 'Ann123@gmail.com', '3000', 'Doctor', '100000', 'Single', '2023-02-02 15:21:44', 'user'),
(7, '22222', 'Smith', 'John', 'Male', '32', '077222222', 'Translavinia', 'smith@gmail.com', '1000', 'Lawyer', '200000', 'Married', '2023-02-15 18:57:03', 'user22');

-- --------------------------------------------------------

--
-- Table structure for table `installment`
--

CREATE TABLE `installment` (
  `i_id` int(11) NOT NULL,
  `i_transactionid` varchar(255) NOT NULL,
  `i_productid` varchar(255) NOT NULL,
  `i_costumerid` varchar(255) NOT NULL,
  `i_order` varchar(255) NOT NULL,
  `i_value` varchar(255) NOT NULL,
  `i_totalprice` varchar(255) NOT NULL,
  `i_tax` varchar(255) NOT NULL,
  `i_year` varchar(255) NOT NULL,
  `i_mp` varchar(255) NOT NULL,
  `i_dp` varchar(255) NOT NULL,
  `i_dpp` varchar(255) NOT NULL,
  `i_balance` varchar(255) NOT NULL,
  `i_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `installment`
--

INSERT INTO `installment` (`i_id`, `i_transactionid`, `i_productid`, `i_costumerid`, `i_order`, `i_value`, `i_totalprice`, `i_tax`, `i_year`, `i_mp`, `i_dp`, `i_dpp`, `i_balance`, `i_date`) VALUES
(1, '171007419', '171007419', '171007419', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2021-05-07 12:13:22'),
(12, '213123123', '121212', '19101960', '1', '11', '1', '1', '1', '1', '1', '1', '1', '2021-05-07 12:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `l_id` int(11) NOT NULL,
  `l_productid` varchar(255) NOT NULL,
  `l_stock` varchar(255) NOT NULL,
  `l_price` varchar(255) NOT NULL,
  `l_order` varchar(255) NOT NULL,
  `l_totalprice` varchar(255) NOT NULL,
  `l_transaction` varchar(255) NOT NULL,
  `l_user` varchar(255) NOT NULL,
  `l_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`l_id`, `l_productid`, `l_stock`, `l_price`, `l_order`, `l_totalprice`, `l_transaction`, `l_user`, `l_date`) VALUES
(1, 'SAM', '1', '0', '1', '40000', 'Stock In', '17100749', '2023-02-15 19:03:03'),
(2, 'SAM', '2', '0', '1', '96000', 'Stock In', '17100749', '2023-02-15 19:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `py_id` int(11) NOT NULL,
  `py_transactionid` int(11) NOT NULL,
  `py_productid` int(11) NOT NULL,
  `py_costumerid` int(11) NOT NULL,
  `py_penalty` varchar(255) NOT NULL,
  `py_payment` int(11) NOT NULL,
  `py_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`py_id`, `py_transactionid`, `py_productid`, `py_costumerid`, `py_penalty`, `py_payment`, `py_date`) VALUES
(1, 21003053, 171001131, 1, '1 month', 130, '2021-05-02 15:46:09'),
(2, 21003053, 171001131, 1, '1 month', 130, '2021-05-02 15:55:01'),
(3, 21003053, 171001131, 1, '1 month', 130, '2021-05-02 15:56:56'),
(4, 21007188, 0, 19101960, '1 month', 6, '2021-05-02 15:57:40'),
(5, 21007188, 0, 19101960, '1 month', 6, '2021-05-02 15:57:47'),
(6, 21007188, 0, 19101960, '1 month', 12, '2021-05-02 15:57:58'),
(7, 21007188, 0, 19101960, '1 month', 47, '2021-05-02 15:58:11'),
(8, 21003570, 171001131, 1, '1 month', 150, '2021-05-02 16:00:56'),
(9, 21001349, 171001131, 1, '1 month', 60, '2021-05-02 16:02:16'),
(10, 21001349, 171001131, 1, '1 month', 500, '2021-05-02 16:03:06'),
(11, 21001349, 171001131, 1, '1 month', 31, '2021-05-02 16:03:14'),
(12, 21001349, 171001131, 1, '1 month', 30, '2021-05-02 16:03:24'),
(13, 21001349, 171001131, 1, '1 month', 30, '2021-05-02 16:03:29'),
(14, 21001349, 171001131, 1, '1 month', 30, '2021-05-02 16:03:38'),
(15, 21001349, 171001131, 1, '1 month', 600, '2021-05-02 16:03:43'),
(16, 21001349, 171001131, 1, '1 month', 7, '2021-05-02 16:04:48'),
(17, 21001349, 171001131, 1, '1 month', 1, '2021-05-02 16:05:34'),
(18, 21003570, 171001131, 1, '1 month', 1140, '2021-05-02 16:05:47'),
(19, 21007188, 0, 19101960, '1 month', 6, '2021-05-02 16:06:00'),
(20, 21003053, 171001131, 1, '1 month', 1537, '2021-05-02 16:10:58'),
(21, 21003053, 171001131, 1, '2 months', 100, '2021-05-03 00:56:59'),
(22, 21003053, 171001131, 1, '0', 100, '2021-05-03 13:17:20'),
(23, 21004884, 1010101, 19101960, '0', 100, '2021-05-03 13:17:28'),
(24, 21003053, 171001131, 1, '0', 200, '2021-05-05 00:46:18'),
(25, 21007188, 0, 19101960, '0', 80, '2021-05-05 00:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_code` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_category` varchar(255) NOT NULL,
  `p_description` varchar(255) NOT NULL,
  `p_value` double NOT NULL,
  `p_mprice` double NOT NULL,
  `p_newvalue` double NOT NULL,
  `p_quantity` double NOT NULL,
  `p_supname` varchar(255) NOT NULL,
  `p_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_code`, `p_name`, `p_category`, `p_description`, `p_value`, `p_mprice`, `p_newvalue`, `p_quantity`, `p_supname`, `p_date`) VALUES
(16, 'SAM32', 'Samsung A32', 'Samsung Phones', 'International Version', 48000, 57600, 88000, 3, 'Samsung', '2023-02-16 17:29:10'),
(17, 'AP1212', 'Iphone 11 Pro', 'Apple Smart Phones', 'International Version', 100000, 150000, 0, 4, 'Apple phones', '2023-02-16 17:29:23'),
(18, 'HP1122', 'HP Laptop', 'HP Laptop', 'Intel Core i7 Laptop', 120000, 160000, 0, 6, 'HP', '2023-02-16 17:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `r_id` int(11) NOT NULL,
  `r_transactionid` varchar(255) NOT NULL,
  `r_productid` varchar(255) NOT NULL,
  `r_costumerid` varchar(255) NOT NULL,
  `r_quantity` varchar(255) NOT NULL,
  `r_price` varchar(255) NOT NULL,
  `r_total` varchar(255) NOT NULL,
  `r_tax` varchar(255) NOT NULL,
  `r_montly` varchar(255) NOT NULL,
  `r_downpayment` varchar(255) NOT NULL,
  `r_year` varchar(255) NOT NULL,
  `r_status` varchar(255) NOT NULL,
  `r_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`r_id`, `r_transactionid`, `r_productid`, `r_costumerid`, `r_quantity`, `r_price`, `r_total`, `r_tax`, `r_montly`, `r_downpayment`, `r_year`, `r_status`, `r_date`) VALUES
(2, '23007450', 'SAM', '55588822', '2', '40000', '80000.00', '2000.00', '4000.00', '32000.00', '1', '', '2023-02-15 18:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `s_id` int(11) NOT NULL,
  `s_idnum` varchar(255) NOT NULL,
  `s_lastname` varchar(255) NOT NULL,
  `s_firstname` varchar(255) NOT NULL,
  `s_mi` varchar(255) NOT NULL,
  `s_age` varchar(255) NOT NULL,
  `s_contact` varchar(255) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_email` varchar(255) NOT NULL,
  `s_company` varchar(255) NOT NULL,
  `s_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`s_id`, `s_idnum`, `s_lastname`, `s_firstname`, `s_mi`, `s_age`, `s_contact`, `s_address`, `s_email`, `s_company`, `s_date`) VALUES
(3, '19101960', 'Saculles', 'Rhea Joy', 'R.', '20', '09677618333', 'San Andeas', 'sacullesrheajoy@gmail.com', 'ABC company', '2021-05-05 03:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `u_idnumber` int(11) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_idnumber`, `u_password`, `u_position`) VALUES
(1, 17100749, 'admin', 'admin'),
(2, 19101960, 'admin', 'costumer'),
(3, 10101010, 'admin', 'Employee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`z_id`);

--
-- Indexes for table `installment`
--
ALTER TABLE `installment`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`py_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `costumer`
--
ALTER TABLE `costumer`
  MODIFY `z_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `installment`
--
ALTER TABLE `installment`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `py_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
