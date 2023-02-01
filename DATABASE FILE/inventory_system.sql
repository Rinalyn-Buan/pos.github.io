-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 04:08 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(11, 'Input Devices'),
(9, 'Memory/Storage Devices'),
(10, 'Output Devices'),
(12, 'Processing Devices');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
`id` int(11) unsigned NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(1, 'Logitech G512 Carbon RGB Mechanical Gaming Keyboard.jpg', 'image/jpeg'),
(2, 'Logitech M570 Wireless Trackball Mouse.jpg', 'image/jpeg'),
(3, 'Eyoyo Handheld 2D QR USB Barcode Scanner.jpg', 'image/jpeg'),
(4, 'Epson Perfection V39 Flatbed Scanner.jpg', 'image/jpeg'),
(5, 'USB Desktop Microphone with Mute Button Volume Adjustment Plug&Play Condenser for Laptop.jpg', 'image/jpeg'),
(6, 'Sekonic Optical Mark Reader.jpg', 'image/jpeg'),
(7, 'IrisPen Optical Character Reader.jpg', 'image/jpeg'),
(8, 'Lenovo Legion M600 Wireless Gaming Mouse.jpg', 'image/jpeg'),
(9, 'Logitech Attack 3 Joystick.jpg', 'image/jpeg'),
(10, 'Magnetic Ink Card Reader.jpg', 'image/jpeg'),
(11, '4K Wireless WiFi Projector 1080P Ultra HD Home Office Bluetooth Portable Smart Same Screen Projector.jpg', 'image/jpeg'),
(12, 'Cblue FG07 Stereo Surround Bass Built-in Mic Noise Cancellation Bluetooth Headphones 6 Hours Music Play Wireless Headphone BT Headset Bluetoot5.0 .jpg', 'image/jpeg'),
(13, 'BROTHER HL-T4000DW INK TANK PRINTER.jpg', 'image/jpeg'),
(14, '23.8'''' IPS Full HD Monitor with 3-Side Virtually Borderless Design.jpg', 'image/jpeg'),
(15, 'HD 1080P Webcam Mini Computer PC WebCamera with Microphone Rotatable Cameras for Live Broadcast Video Calling Conference Work.jpg', 'image/jpeg'),
(16, 'HP DHS2101 Mini Multimedia Speaker 3.5mm Headphone Jack Control Knob Shocking Sound.jpg', 'image/jpeg'),
(17, 'MSI GeForce 210 Video Card 1GB DDR3 (HDMIDVI-DVGA, Low Profile).jpg', 'image/jpeg'),
(18, 'SanDisk Ultra Flair 64GB USB 3.0 Flash Drive (Speed Up to 150MB).jpg', 'image/jpeg'),
(19, 'V8V8SF998 Sound Card Audio Mixer USB External Sound Card Headset Microphone Live Soundcard.jpg', 'image/jpeg'),
(20, 'hp plotter.jpg', 'image/jpeg'),
(21, '12.7mm External Sata Optical Driver Case USB 2.0 DVD CD.jpg', 'image/jpeg'),
(22, 'Amd Ryzen 5 5600G 3.9GHz Processor.jpg', 'image/jpeg'),
(23, 'AMD Ryzen Wraith Stealth processor Fan.jpg', 'image/jpeg'),
(24, 'Computer Power Supply Original INPLAY GS200LK or BK 700W true rated PSU Power Supply Unit for pc.jpg', 'image/jpeg'),
(25, 'Cooler Master Hyper 212 LED.jpg', 'image/jpeg'),
(26, 'Gigabyte B450M DS3H (AMD Ryzen AM4,Micro ATX,M.2,HMDI,DVI,USB 3.1,DDR4 Motherboard).jpg', 'image/jpeg'),
(27, 'INPLAY M10 Rainbow RGB 120MM LED Cooling Fan.jpg', 'image/jpeg'),
(28, 'Seagate Barracuda ST2000DM006 3.5 inch Mechanical Hard Disk SATA Internal HDD 2TB 7200RPM 256MB Cache for PC.jpg', 'image/jpeg'),
(29, 'Seagate hard disk drive HDD 3.5 Sata 160gb 320gb 500gb 1TB 2TB.jpg', 'image/jpeg'),
(30, 'ASUS ROG STRIX ARION M.2 NVME SSD USB 3.2 RAM ENCLOSURE.jpg', 'image/jpeg'),
(31, 'SAMSUNG 870 EVO SATA III 2.5 INCHES INTERNAL SSD1TB, MZ-77E1T0BW.jpg', 'image/jpeg'),
(32, 'Sandisk Cruzer Blade USB 2.0 16GB.jpg', 'image/jpeg'),
(33, 'SANDISK EXTREME PRO UHS-I MICROSDXC MEMORY CARD512GB, 170MB READ, 90MB WRITE.jpg', 'image/jpeg'),
(34, 'Sandisk Ultra Dual USB 3.0 128GB.jpg', 'image/jpeg'),
(35, 'Seagate Backup Plus Portable Black 4TB 3.0 USB.jpg', 'image/jpeg'),
(36, 'Team T-Force Delta RGB 16GB (2 x 8GB) 288-Pin PC RAM DDR4 3200 (PC4 25600) Intel XMP 2.0 Desktop Memory Model TF3D416G3200HC16CDC01.jpg', 'image/jpeg'),
(37, 'TRANSCEND STOREJET 25M3C USB 3.0 EXTERNAL HARD DRIVE 2TB.jpg', 'image/jpeg'),
(38, 'Western Digital Elements 1TB hard disk drive (HDD).jpg', 'image/jpeg'),
(39, 'Screenshot (1).png', 'image/png'),
(40, 'example.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) unsigned NOT NULL,
  `media_id` int(11) DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(14, 'Logitech G512 Carbon RGB Mechanical Gaming Keyboard', '6', '2500.00', '2700.00', 11, 1, '2022-05-19 07:57:47'),
(15, 'Logitech M570 Wireless Trackball Mouse', '20', '1000.00', '1200.00', 11, 2, '2022-05-19 07:58:44'),
(16, 'Eyoyo Handheld 2D QR USB Barcode Scanner', '15', '1500.00', '1700.00', 11, 3, '2022-05-19 07:59:26'),
(17, 'Epson Perfection V39 Flatbed Scanner', '10', '4500.00', '4700.00', 11, 4, '2022-05-19 08:00:16'),
(18, 'USB Desktop Microphone with Mute Button Volume Adjustment Plug&amp;Play Condenser for Laptop', '20', '600.00', '650.00', 11, 5, '2022-05-19 08:00:48'),
(19, 'Sekonic Optical Mark Reader', '20', '2000.00', '2300.00', 11, 6, '2022-05-19 08:01:33'),
(20, 'IrisPen Optical Character Reader', '40', '2200.00', '2500.00', 11, 7, '2022-05-19 08:02:11'),
(21, 'Lenovo Legion M600 Wireless Gaming Mouse', '30', '3700.00', '3990.00', 11, 8, '2022-05-19 08:03:51'),
(22, 'Logitech Attack 3 Joystick', '60', '2000.00', '2300.00', 11, 9, '2022-05-19 08:04:32'),
(23, 'Magnetic Ink Card Reader', '25', '3300.00', '3900.00', 11, 10, '2022-05-19 08:05:05'),
(24, '4K Wireless WiFi Projector 1080P Ultra HD Home Office Bluetooth Portable Smart Same Screen Projector', '15', '9000.00', '9999.00', 10, 11, '2022-05-19 13:47:05'),
(25, 'Cblue FG07 Stereo Surround Bass Built-in Mic Noise Cancellation Bluetooth Headphones 6 Hours Music Play Wireless Headphone BT Headset Bluetoot5.0 ', '30', '2000.00', '2300.00', 10, 12, '2022-05-19 13:47:38'),
(26, 'BROTHER HL-T4000DW INK TANK PRINTER', '20', '7500.00', '7999.00', 10, 13, '2022-05-19 13:48:07'),
(27, '23.8'''' IPS Full HD Monitor with 3-Side Virtually Borderless Design', '8', '12000.00', '13000.00', 10, 14, '2022-05-19 13:48:41'),
(28, 'HD 1080P Webcam Mini Computer PC WebCamera with Microphone Rotatable Cameras for Live Broadcast Video Calling Conference Work', '49', '600.00', '750.00', 10, 15, '2022-05-19 13:49:11'),
(29, 'HP DHS2101 Mini Multimedia Speaker 3.5mm Headphone Jack Control Knob Shocking Sound', '25', '1500.00', '1800.00', 10, 16, '2022-05-19 13:49:34'),
(30, 'MSI GeForce 210 Video Card 1GB DDR3 (HDMIDVI-DVGA, Low Profile)', '49', '3500.00', '3999.00', 10, 17, '2022-05-19 13:50:05'),
(31, 'SanDisk Ultra Flair 64GB USB 3.0 Flash Drive (Speed Up to 150MB)', '40', '700.00', '850.00', 10, 18, '2022-05-19 13:50:27'),
(32, 'V8V8SF998 Sound Card Audio Mixer USB External Sound Card Headset Microphone Live Soundcard', '50', '500.00', '550.00', 10, 19, '2022-05-19 13:50:46'),
(33, 'hp plotter', '10', '13000.00', '13999.00', 10, 20, '2022-05-19 13:51:17'),
(34, '12.7mm External Sata Optical Driver Case USB 2.0 DVD CD', '27', '200.00', '295.00', 12, 21, '2022-05-19 13:57:36'),
(35, 'Amd Ryzen 5 5600G 3.9GHz Processor', '40', '4000.00', '4801.00', 12, 22, '2022-05-19 13:58:17'),
(36, 'AMD Ryzen Wraith Stealth processor Fan / CPU Fan', '25', '250.00', '340.00', 12, 23, '2022-05-19 13:58:40'),
(37, 'Computer Power Supply Original INPLAY GS200LK/BK 700W true rated PSU Power Supply Unit for pc', '9', '400.00', '480.00', 12, 24, '2022-05-19 13:59:07'),
(38, 'Cooler Master Hyper 212 LED', '50', '1000.00', '1350.00', 12, 25, '2022-05-19 13:59:31'),
(39, 'Gigabyte B450M DS3H (AMD Ryzen AM4/Micro ATX/M.2/HMDI/DVI/USB 3.1/DDR4/Motherboard)', '59', '3500.00', '4199.00', 12, 26, '2022-05-19 14:00:02'),
(40, 'INPLAY M10 Rainbow RGB 120MM LED Cooling Fan', '20', '80.00', '110.00', 12, 27, '2022-05-19 14:00:32'),
(41, 'Seagate Barracuda ST2000DM006 3.5 inch Mechanical Hard Disk SATA Internal HDD 2TB 7200RPM 256MB Cache for PC/Mac', '20', '3750.00', '4500.00', 12, 28, '2022-05-19 14:01:02'),
(42, 'Seagate hard disk drive HDD 3.5 Sata 160gb 320gb 500gb 1TB 2TB', '50', '500.00', '850.00', 12, 29, '2022-05-19 14:01:20'),
(43, 'ASUS ROG STRIX ARION M.2 NVME SSD USB 3.2 RAM ENCLOSURE', '44', '2500.00', '3210.00', 9, 30, '2022-05-19 14:05:34'),
(44, 'SAMSUNG 870 EVO SATA III 2.5 INCHES INTERNAL SSD1TB, MZ-77E1T0BW', '25', '5000.00', '6675.00', 9, 31, '2022-05-19 14:06:02'),
(45, 'Sandisk Cruzer Blade USB 2.0 16GB', '50', '50.00', '119.00', 9, 32, '2022-05-19 14:06:34'),
(46, 'SANDISK EXTREME PRO UHS-I MICROSDXC MEMORY CARD512GB, 170MB/S READ, 90MB/S WRITE', '30', '4800.00', '5015.00', 9, 33, '2022-05-19 14:07:01'),
(47, 'Sandisk Ultra Dual USB 3.0 128GB', '60', '400.00', '659.00', 9, 34, '2022-05-19 14:07:21'),
(48, 'Seagate Backup Plus Portable Black 4TB 3.0 USB', '45', '4500.00', '4999.00', 9, 35, '2022-05-19 14:07:47'),
(49, 'Team T-Force Delta RGB 16GB (2 x 8GB) 288-Pin PC RAM DDR4 3200 (PC4 25600) Intel XMP 2.0 Desktop Memory Model TF3D416G3200HC16CDC01', '17', '4200.00', '4800.00', 9, 36, '2022-05-19 14:08:33'),
(50, 'TRANSCEND STOREJET 25M3C USB 3.0 EXTERNAL HARD DRIVE 2TB', '22', '4800.00', '5660.00', 9, 37, '2022-05-19 14:08:54'),
(51, 'Western Digital Elements 1TB hard disk drive (HDD)', '49', '925.00', '1185.00', 9, 38, '2022-05-19 14:09:23'),
(52, 'Lenovo Legion M900 Wireless Mouse', '4', '300.00', '450.00', 11, 2, '2022-05-19 17:07:18'),
(53, ' K1300 USB Standard Computer Keyboard', '1', '300.00', '380.00', 11, 1, '2022-05-19 17:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
`id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `price`, `date`) VALUES
(1, 14, 2, '5000.00', '2022-05-19'),
(2, 43, 1, '3210.00', '2022-05-19'),
(3, 39, 1, '4199.00', '2022-05-19'),
(4, 50, 1, '5660.00', '2022-05-19'),
(5, 37, 1, '480.00', '2022-05-19'),
(6, 28, 1, '750.00', '2022-05-19'),
(7, 34, 3, '885.00', '2022-05-19'),
(8, 27, 1, '13000.00', '2022-05-19'),
(9, 51, 4, '4740.00', '2022-05-19'),
(10, 30, 1, '3999.00', '2022-05-19'),
(11, 52, 1, '450.00', '2022-05-19'),
(12, 53, 2, '760.00', '2022-05-19'),
(13, 27, 1, '13000.00', '2022-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Samantha Nichole Rafols', 'Samantha', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'hrfg9ssk1.jpg', 1, '2022-05-21 07:53:33'),
(2, 'Erika Garimbao', 'Erika', '27a9612b3207eb0f0cd50e80b9ae0f5dc0d09bb4', 2, 't51qps842.jpg', 1, '2022-05-20 16:56:13'),
(3, 'Brent Nickole Mercado', 'Brent', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'h9co3nex3.jpg', 1, '2022-05-20 16:38:58'),
(4, 'Ryan Montajes', 'Ryan', 'a5b42198e3fb950b5ab0d0067cbe077a41da1245', 3, 'lzlhlanz4.jpg', 1, '2022-05-20 16:37:48'),
(5, 'Norshida Saidamen', 'Norshida', '27a9612b3207eb0f0cd50e80b9ae0f5dc0d09bb4', 2, 'y11iljpg5.jpg', 1, '2022-05-20 16:35:55'),
(6, 'Mathew Manago', 'Mathew', 'a5b42198e3fb950b5ab0d0067cbe077a41da1245', 3, 'xv65kkx6.png', 1, '2022-05-20 16:59:18'),
(7, 'Zhevrel Cruz', 'Zhev', 'a5b42198e3fb950b5ab0d0067cbe077a41da1245', 3, 'vqso7de7.png', 1, '2022-05-19 12:52:13'),
(8, 'Sean Patrick Tecson', 'Sean Patrick', 'a5b42198e3fb950b5ab0d0067cbe077a41da1245', 3, 'psogtmy38.png', 1, '2022-05-21 07:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
`id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'Store Assistant', 2, 1),
(3, 'Cashier', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`), ADD KEY `categorie_id` (`categorie_id`), ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
 ADD PRIMARY KEY (`id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
