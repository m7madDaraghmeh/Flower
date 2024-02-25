-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 05:41 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2023-08-11 09:05:59', '2023-08-11 12:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Flowers', 'Test anuj', '2023-08-11 09:05:59', '2023-08-11 12:05:59'),
(4, 'Cakes', 'Electronic Products', '2023-08-11 09:05:59', ''),
(5, 'Balloons', 'test', '2023-08-11 09:05:59', ''),
(6, 'Fragrances', 'Fashion', '2023-08-11 09:05:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '3', 1, '2023-08-07 19:57:03', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2023-08-08 09:05:59'),
(2, 1, 'Delivered', 'Order Has been delivered', '2023-08-10 09:05:59'),
(3, 3, 'Delivered', 'Product delivered successfully', '2023-08-09 09:05:59'),
(4, 4, 'in Process', 'Product ready for Shipping', '2023-08-11 09:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2023-08-11 09:05:59'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2023-08-10 09:05:59'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2023-08-09 09:05:59'),
(5, 3, 3, 3, 3, 'test', 'tette', 'bnfbdf\r\n', '2023-08-08 09:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'FERRERO ROCHER - 15 PERSONS', 'Micromax test', 32, 0, 'Ferrero Rocher - 15 - 18 persons', 'cakes1.jpg', 'cakes1.jpg', 'cakes1.jpg', 1200, 'In Stock', '2023-08-11 09:05:59', ''),
(2, 4, 4, 'CANDY CAKE - 15 PERSONS', 'Apple INC', 31, 0, 'Candy cake - 15 - 18 persons', 'cakes2.jpg', 'cakes2.jpg', 'cakes2.jpg', 0, 'In Stock', '2023-08-11 09:05:59', ''),
(3, 4, 4, 'CHOCOLATE RASPBERRY CAKE - 15 PERSONS', 'Redmi', 30, 0, 'Chocolate Raspberry Cake - 15 - 18 persons', 'cakes3.jpg', 'cakes3.jpg', 'cakes3.jpg', 0, 'In Stock', '2023-08-11 09:05:59', ''),
(4, 3, 8, 'ELEGANT VAS WITH STRAWBERRY CHOCOLATE', 'Lenovo', 54, 0, 'strawberry chocolate box with mixed flowers pink bouquet in a VAS', 'flowers3.jpg', 'flowers3.jpg', 'flowers3.jpg', 45, 'In Stock', '2023-08-11 09:05:59', ''),
(5, 3, 8, 'CANDY PACKAGE', 'Lenovo', 45, 0, 'Candy cake for 15 persons with a bouquet of 15 pink roses ', 'flowers4.jpg', 'flowers4.jpg', 'flowers4.jpg', 0, 'In Stock', '2023-08-11 09:05:59', ''),
(6, 3, 8, '\r\nBALLOONS PACKAGE', 'Micromax', 35, 0, 'Mixed flowers bouquet plus 2 birthday balloons', 'flowers5.jpg', 'flowers5.jpg', 'flowers5.jpg', 35, 'In Stock', '2023-08-11 09:05:59', ''),
(7, 3, 8, 'RED ROSES BOX', 'SAMSUNG', 29, 0, 'RED ROSES BOX', 'flowers6.jpg', 'flowers6.jpg', 'flowers6.jpg', 20, 'In Stock', '2023-08-11 09:05:59', ''),
(8, 3, 8, 'MIX FLOWERS BOX 2', 'OPPO', 39, 0, 'MIX FLOWERS BOX 2', 'flowers7.jpg', 'flowers7.jpg', 'flowers7.jpg', 0, 'In Stock', '2023-08-11 09:05:59', ''),
(9, 4, 5, 'HAPPY BIRTHDAY 20', 'Techguru', 65, 0, '<ul><li> Chocolate and chocolate chip filling with sugar frosting<br></li><li>Enough for 20persons<br></li></ul>', 'cakes4.jpg', 'cakes4.jpg', 'cakes4.jpg', 10, 'In Stock', '2023-08-11 09:05:59', ''),
(11, 4, 6, 'HAPPY BIRTHDAY 13', 'Acer', 57, 0, 'Chocolate and chocolate chip filling with sugar frosting', 'cakes6.jpg', 'cakes6.jpg', 'cakes6.jpg', 0, 'In Stock', '2023-08-11 09:05:59', ''),
(15, 3, 8, 'MIX PINK HAND BOUQUET', 'ABC', 205, 250, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">MIX PINK HAND BOUQUET</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'flowers1.jpg', 'flowers1.jpg', 'flowers1.jpg', 50, 'In Stock', '2023-08-11 09:05:59', ''),
(16, 3, 8, 'LILY & ROSES HAND BOUQUET', 'XYZ', 240, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', 'flowers2.jpg', 'flowers2.jpg', 'flowers2.jpg', 30, 'In Stock', '2023-08-11 09:05:59', ''),
(17, 5, 9, 'GRADUATION HELIUM BALLOON MIX', 'Induscraft', 32566, 0, 'Graduation Helium Balloon mix #10', 'balloons1.jpg', 'balloons1.jpg', 'balloons1.jpg', 0, 'In Stock', '2023-08-11 09:05:59', ''),
(18, 5, 10, 'BABY BOY HELIUM BALLOON 2', 'Nilkamal', 25, 0, 'BABY BOY HELIUM BALLOON 2', 'balloons2.jpg', 'balloons2.jpg', 'balloons2.jpg', 0, 'In Stock', '2023-08-11 09:05:59', ''),
(19, 6, 12, 'SIGNATURE WOMAN EAU DE TOILETTE 75ML', 'Asian', 75, 0, 'Fresh and delicate, the Maison\'s Eau de Toilette version of its signature fragrance exudes a powdery white rose bouquet offset by heady magnolia notes. The complex floral composition reveals a unique blend of vibrant youth and classic femininity.', '12.jpg', '12.jpg', '12.jpg', 45, 'In Stock', '2023-08-11 09:05:59', ''),
(20, 6, 12, 'AQUA ALLEGORIA FLORA CHERRYSIA WOMAN EAU DE TOILETTE 125ML', 'Adidas', 110, 5000, '\r\nFlora Cherrysia belongs to the Aqua Allegoria collection, the first collection of intensely fresh fragrances in perfumery created in 1999.', '13.jpg', '13.jpg', '13.jpg', 0, 'In Stock', '2023-08-11 09:05:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(8, 3, 'PACKAGES', '2023-08-11 09:05:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'Mahmoud', 'amin@gmail.com', 0, 'edb3acfa1e36dcd0a661edd0e76b9101', 'ddd', 'dddd', 'ddd', 222, 'fdfd', 'eew', 'ewe', 222, '2023-08-11 09:05:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
