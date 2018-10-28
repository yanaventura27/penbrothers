-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2018 at 01:30 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penbrothers`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `customer_contact` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_contact`, `order_id`) VALUES
(1, 'Yana VEntura', 123, 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(25) NOT NULL,
  `item_price_10` decimal(10,0) NOT NULL,
  `item_price_14` decimal(10,0) NOT NULL,
  `item_price_18` decimal(10,0) NOT NULL,
  `item_type` varchar(15) NOT NULL,
  `item_desc` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_price_10`, `item_price_14`, `item_price_18`, `item_type`, `item_desc`) VALUES
(1, 'CHEESE', '175', '285', '440', 'CLASSIC PIZZA', 'double layer of mozzarella'),
(4, 'NY CLASSIC', '210', '340', '530', 'CLASSIC PIZZA', 'pepperoni'),
(7, 'PEPPERONI & MUSHROOM', '220', '250', '540', 'CLASSIC PIZZA', 'pepperoni & button mushroom'),
(10, 'MANHATTAN MEATLOVERS', '250', '295', '565', 'CLASSIC PIZZA', 'ham, pepperoni, Italian sausage, ground beef, salami & bacon'),
(13, 'GARDEN SPECIAL', '210', '340', '530', 'CLASSIC PIZZA', 'fresh tomatoes, black olives, mushrooms,onions, red & green bell peppers'),
(14, 'HAWAIIAN', '210', '340', '530', 'CLASSIC PIZZA', 'ham, pineapple & bacon'),
(16, 'NEW YORK\'S FINEST', '260', '420', '575', 'CLASSIC PIZZA', 'Italian sausage, ham, pepperoni, bacon, ground beef black olives, mushroom, onions, red & green bell peppers'),
(19, 'TRIBECA MUSHRM', '245', '390', '560', 'SPECIALTY PIZZA', 'shiitake, button & oyster mushroom'),
(22, 'ANCHOVY LOVERS', '275', '450', '595', 'SPECIALTY PIZZA', 'black olives, anchovies, capers roasted garlic, mushroom & onions'),
(25, '#4 CHEESE', '250', '400', '560', 'SPECIALTY PIZZA', 'cheese heaven! mozzarella, cheddar, fontina & feta'),
(28, 'CORONA CHICKEN SALSA', '250', '420', '575', 'SPECIALTY PIZZA', 'tangy strips of chicken with Southwestern salsa'),
(31, 'GOURMET GARDEN', '250', '410', '585', 'SPECIALTY PIZZA', 'zucchini, grilled eggplant, fresh tomatoes, black olives capers, mushrooms, onions, red & green bell peppers'),
(34, 'ROASTED GARLIC & SHRIMP', '240', '405', '505', 'SPECIALTY PIZZA', 'Shrimp, onions, roasted garlic in wine-butter sauce'),
(37, 'FOUR SEASONS', '275', '430', '590', 'SPECIALTY PIZZA', 'gourmet sampler: NY Classic, #4 Cheese Anchovy lovers, Roasted Garlic & Shrimp'),
(40, 'cheese', '30', '45', '60', 'TOPPINGS', ''),
(43, 'bacon', '30', '45', '60', 'TOPPINGS', ''),
(46, 'ground beef', '30', '45', '60', 'TOPPINGS', ''),
(49, 'ham', '30', '45', '60', 'TOPPINGS', ''),
(52, 'italian sausage', '30', '45', '60', 'TOPPINGS', ''),
(55, 'pepperoni', '30', '45', '60', 'TOPPINGS', ''),
(58, 'salami', '30', '45', '60', 'TOPPINGS', ''),
(61, 'capers', '30', '45', '60', 'TOPPINGS', ''),
(64, 'roasted garlic', '30', '45', '60', 'TOPPINGS', ''),
(67, 'bell pepper', '30', '45', '60', 'TOPPINGS', ''),
(70, 'mushrooms', '30', '45', '60', 'TOPPINGS', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `order_id_2` (`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
