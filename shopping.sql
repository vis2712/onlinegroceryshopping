-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 06:14 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

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
(3, 'Beverages', 'Beverages', '2017-01-24 19:17:37', '16-10-2019 08:18:16 PM'),
(4, 'Grocery & Staples', 'Grocery items', '2017-01-24 19:19:32', '16-10-2019 08:22:05 PM'),
(5, 'Vegitables & Fruits', 'all types Vegitables & Fruits', '2017-01-24 19:19:54', '16-10-2019 08:22:41 PM'),
(6, 'Instant Food', 'Noodels, Meggi', '2017-02-20 19:18:52', '16-10-2019 08:23:09 PM');

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
(1, 4, 3, 'Chakki Atta', 'Bambino Agro Industries Limited', 293, 330, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><div class=\"product-attribute__attr--name\" style=\"color: rgb(51, 51, 51); margin-top: 12px; font-size: 14px; font-family: Celias, Helvetica; white-space: normal;\">Key Features</div><div class=\"product-attribute__attr--description\" style=\"border-color: rgb(242, 242, 242); color: rgb(102, 102, 102); font-size: 14px; line-height: 1.67; margin-top: 4px; margin-bottom: 12px; font-family: Celias, Helvetica; white-space: normal;\">Picked from the finest wheat fields<br>100% whole wheat Atta<br>Get the super quality taste<br>Imparts a good aroma and a fluffy look<br>Also helps prevent weight gain</div></div>', 'aata1.JPG', 'aata2.JPG', 'aata3.JPG', 10, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 4, 4, 'Aashirvaad Select Sharbati Whole Wheat Atta', 'Aashirvaad ', 260, 285, '<div class=\"product-attribute__attr--name\" style=\"color: rgb(51, 51, 51); margin-top: 12px; font-size: 14px; font-family: Celias, Helvetica;\">Key Features</div><div class=\"product-attribute__attr--description\" style=\"border-color: rgb(242, 242, 242); color: rgb(102, 102, 102); font-size: 14px; line-height: 1.67; margin-top: 4px; margin-bottom: 12px; font-family: Celias, Helvetica;\">Made from the choicest whole wheat<br>Fresh and pure wholesome flour<br>Grounded carefully to perfection<br>Rich in essential vitamins and extra fibre<br>Makes soft and fluffy rotis with a whole lot of health<br>Can also be used to make a variety of other sweets and savouries</div>', 'A_aata1.JPG', 'A_aata2.JPG', 'A_aata3.JPG', 0, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'Fortune Chakki Fresh Atta', 'Fortune', 332, 395, '<div><div><div class=\"product-attribute__attr--name\" style=\"color: rgb(51, 51, 51); margin-top: 12px; font-size: 14px; font-family: Celias, Helvetica;\">Key Features</div><div class=\"product-attribute__attr--description\" style=\"border-color: rgb(242, 242, 242); color: rgb(102, 102, 102); font-size: 14px; line-height: 1.67; margin-top: 4px; margin-bottom: 12px; font-family: Celias, Helvetica;\">Made from the choicest grains<br>Perfect combination of heath and taste<br>Makes soft and fluffy Roti, Paranthas, etc.<br>Can also be used to make a variety of other sweets and savouries.</div></div></div>', 'fc1.JPG', 'fc2.JPG', 'fc3.JPG', 0, 'In Stock', '2017-02-04 04:03:15', ''),
(15, 3, 8, 'Tata Agni Tea (Pouch)', 'Tata', 205, 250, '<div><ul><li><div class=\"product-attribute__attr--name\" style=\"color: rgb(51, 51, 51); margin-top: 12px; font-size: 14px; font-family: Celias, Helvetica;\">Key Features</div><div class=\"product-attribute__attr--description\" style=\"border-color: rgb(242, 242, 242); color: rgb(102, 102, 102); font-size: 14px; line-height: 1.67; margin-top: 4px; margin-bottom: 12px; font-family: Celias, Helvetica;\">With 10 % Extra Strong Leaves<br>Mixture of tea dust and additional long tea leaves</div></li></ul></div>', 'Tata Tea1.JPG', 'Tata Tea2.JPG', 'Tata Tea3.JPG', 50, 'In Stock', '2017-02-04 04:35:13', ''),
(16, 3, 8, 'Nescafe Classic Coffee (Jar)', 'Nescafe', 265, 285, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', 'Coffee 1.JPG', 'Coffee 2.JPG', 'Coffee 3.JPG', 30, 'In Stock', '2017-02-04 04:36:23', ''),
(17, 5, 9, 'Onion', 'DK Farm', 100, 120, '<div><ul><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Nasik Onion</span></font></li></ul></div>', 'onion.jpeg', 'onion2.jpg', 'onion3.jpg', 10, 'In Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Mango', 'Gir Farm', 160, 180, '<ul><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Kesar Mango</span></font></li></ul>', 'mango.jpg', 'mango2.jpg', 'mango3.jpg', 10, 'In Stock', '2017-02-04 04:42:27', ''),
(19, 6, 12, 'Maggi Masala Noodles - Pack of 4', 'Maggi', 45, 50, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Pack Of 6</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', 'MG.JPG', 'MG2.JPG', 'MG3.JPG', 0, 'In Stock', '2017-03-10 20:16:03', ''),
(20, 6, 12, 'Sunfeast Yippee Magic Masala Noodles', 'Sunfeast Yippee', 10, 12, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><span style=\"color: rgb(102, 102, 102); font-family: Celias, Helvetica;\">Goodness of wheat and vegetables</span><br style=\"color: rgb(102, 102, 102); font-family: Celias, Helvetica;\"><span style=\"color: rgb(102, 102, 102); font-family: Celias, Helvetica;\">Spicy and tangy taste</span><br style=\"color: rgb(102, 102, 102); font-family: Celias, Helvetica;\"><span style=\"color: rgb(102, 102, 102); font-family: Celias, Helvetica;\">Non-sticky noodles</span><br></li></ul>', 'SF.JPG', 'SF2.JPG', 'SF3.JPG', 0, 'In Stock', '2017-03-10 20:19:22', ''),
(21, 5, 9, 'Potato', 'KR Farm', 50, 60, 'Pukhraj', 'potato.jpg', 'potato2.jpg', 'potato3.jpg', 5, 'In Stock', '2019-10-16 15:24:51', NULL),
(22, 5, 11, 'Apple', 'Royal Farm', 100, 120, 'Red Apple (Himachali Apple)', 'apple.jpg', 'apple2.jpg', 'apple3.jpg', 5, 'In Stock', '2019-10-16 15:28:47', NULL),
(24, 4, 4, 'India Gate Classic Basmati Rice', 'India Gate', 179, 216, '<div class=\"product-attribute__attr--name\" style=\"color: rgb(51, 51, 51); margin-top: 12px; font-size: 14px; font-family: Celias, Helvetica;\">Key Features</div><div class=\"product-attribute__attr--description\" style=\"border-color: rgb(242, 242, 242); color: rgb(102, 102, 102); font-size: 14px; line-height: 1.67; margin-top: 4px; margin-bottom: 12px; font-family: Celias, Helvetica;\">Exotic quality<br>Pearly white, smooth grains<br>Authentic taste</div>', 'id1.JPG', 'id2.JPG', 'id3.JPG', 10, 'In Stock', '2019-10-16 15:46:04', NULL);

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
(3, 4, 'Atta & Other Flours', '2017-01-26 16:29:09', '16-10-2019 08:28:31 PM'),
(4, 4, 'Rice & Other Grains', '2017-01-30 16:55:48', '16-10-2019 08:29:01 PM'),
(8, 3, 'Tea & Coffee', '2017-02-04 04:13:54', '16-10-2019 08:30:56 PM'),
(9, 5, 'Vegitables', '2017-02-04 04:36:45', '16-10-2019 08:31:27 PM'),
(10, 5, 'Fruits', '2017-02-04 04:37:02', '16-10-2019 08:31:35 PM'),
(12, 6, 'Noodles & Meggi', '2017-03-10 20:12:59', '16-10-2019 08:34:10 PM');

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
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
