-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 11:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2mtrade`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `alert_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_image` text NOT NULL,
  `product_price/piece` int(5) NOT NULL,
  `status_payment` varchar(50) NOT NULL,
  `member_id` int(10) NOT NULL,
  `alert_time` datetime NOT NULL,
  `payment_check_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `basket_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `member_id` int(10) NOT NULL,
  `product_image` text NOT NULL,
  `product_price/piece` int(5) NOT NULL,
  `member_id1` int(10) NOT NULL,
  `member_name1` varchar(50) NOT NULL,
  `product_quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `check_product`
--

CREATE TABLE `check_product` (
  `product_id_check` int(10) NOT NULL,
  `check_product_name` varchar(50) NOT NULL,
  `check_product_image` text NOT NULL,
  `check_product_image2` text NOT NULL,
  `check_product_image3` text NOT NULL,
  `check_product_inf.` text NOT NULL,
  `check_category_product` varchar(50) NOT NULL,
  `check_product_quantity` int(5) NOT NULL,
  `check_product_price/piece` int(5) NOT NULL,
  `check_member_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(10) NOT NULL,
  `member_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `member_firstname` varchar(50) NOT NULL,
  `member_lastname` varchar(50) NOT NULL,
  `member_email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `member_password` varchar(50) NOT NULL,
  `member_mobile` varchar(10) NOT NULL,
  `member_address1` text CHARACTER SET utf8 NOT NULL,
  `member_address2` text NOT NULL,
  `member_address3` text NOT NULL,
  `member_gender` varchar(5) NOT NULL,
  `member_birthday` date NOT NULL,
  `member_image` text NOT NULL,
  `urole` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `member_firstname`, `member_lastname`, `member_email`, `member_password`, `member_mobile`, `member_address1`, `member_address2`, `member_address3`, `member_gender`, `member_birthday`, `member_image`, `urole`, `created_at`) VALUES
(257, 'YingSo', 'stamp', 'So', 'stamp.sop@gmail.com', 'stamp1506', '0851053528', '301/95 แกรนด์โฮมเคียงมอ ต.ท่าโพธิ์ อ.เมือง จ.พิษณุโลก', '', '', 'หญิง', '2001-06-09', '34adb6a0-785a-4b81-a91e-effb4c765e6a.jpg', 'user', '2023-04-08 09:37:45'),
(258, 'stamp', 'ff', 'ff', 'sophidat63@nu.ac.th', '12345678', '0851053528', 'efgvcx v', '', '', 'หญิง', '2023-03-09', '1012-10122524_cartoon-katze-cartoon-picture-of-cat.png', 'user', '2023-04-09 07:05:04'),
(259, 'fern', 'sdfg', 'sdfv', 'a@gmail.com', '55555555', '0851053528', 'savds', '', '', 'หญิง', '2023-03-09', '', 'user', '2023-03-08 18:56:09'),
(260, 'หญิงโส', 'หญิง', 'โส', 'stamp1234@gmail.com', 'stamp1506', '0851053528', '301/95', '', '', 'หญิง', '2023-03-09', 'CUTE-KITTY.jpg', 'user', '2023-03-09 13:26:32'),
(261, 'เดีย', 'I', 'Dea', 'idea1@gmail.com', '12345678', '0851053528', '301/95', '', '', 'หญิง', '2023-03-29', '1012-10122524_cartoon-katze-cartoon-picture-of-cat.png', 'user', '2023-03-09 15:46:20'),
(266, 'admin', 'Admin', '2Mtrade', 'admin@gmail.com', '12345678', '0851053528', '301/95 แกรนด์โฮมเคียงมอ ', '', '', 'หญิง', '2001-06-15', 'cat3.jpg', 'admin', '2023-03-10 06:54:11'),
(267, 'test2', '1', '2', 'test2@gmail.com', '12345678', '0851053528', '123', '', '', 'ชาย', '2023-03-10', 'images (1).jfif', 'user', '2023-03-09 23:43:41'),
(268, 'koko', 'ko', 'ko', 'koko@gmail.com', '12345678', '0851053528', '301/95 แกรนด์โฮม', '', '', 'หญิง', '2001-06-15', 'แมว.jpg', 'user', '2023-03-10 00:03:55'),
(269, 'kokooreo', 'koko', 'oreo', 'kokooreo@gmail.com', '12345678', '0987654321', '123 เกาะกลางถนน แถวรามเกียรติ อาจจะไปโผล่ที่ธาตุทองซาวด์ 778899', '', '', 'ชาย', '2007-06-07', 'รูปหล่อๆ.jfif', 'user', '2023-03-10 00:27:05'),
(270, 'kiw', 'คิว', 'ค้าบ', 'phakhawat@gmail.com', '12345678', '0631734326', '301/94', '', '', 'ชาย', '2023-03-10', 'test1.jpg', 'user', '2023-03-10 01:32:18'),
(271, 'kiw3', 'sdfg', 'โสภิดา   ตั้งการ', 'p@gmail.com', '87654321', '0851053528', '301/95', '', '', 'ชาย', '2023-03-16', 'รูปหล่อๆ.jfif', 'user', '2023-03-10 01:40:21'),
(272, 'jiro', 'จันทรกานต์​', 'วิทยกิจ​', 'jiro@gmail.com', '123456789', '0949965134', 'บ้านเลขที่​ 28​ หมู่​2​ต​ำบลบ้านใหม​่คลองเคียน​', '', '', 'หญิง', '2001-02-26', '333098564_506534768351624_7380380290881212104_n.jpg', 'user', '2023-03-10 06:16:28'),
(273, 'lalisaaaaa', 'จันทรกานต์​', 'วิทยกิจ​', 'lalisaaaaa@gmail.com', '123456789', '0949965134', 'บ้านเลขที่​ 28​ หมู่​2​ต​ำบลบ้านใหม​่คลองเคียน​', '', '', 'หญิง', '2023-03-16', 'google_firebase_icon-icons.com_61475.png', 'user', '2023-03-10 07:07:27'),
(274, 'chanthakan', 'จันทรกานต์​', 'วิทยกิจ​', 'chanthakan@gmail.com', '123456789', '0949965134', 'บ้านเลขที่​ 28​ หมู่​2​ต​ำบลบ้านใหม​่คลองเคียน​', '', '', 'หญิง', '2023-03-10', 'c_original_logo_icon_146611.png', 'user', '2023-03-10 07:53:01'),
(275, 'kiwZaa555+', 'ภควัต', 'เทพมที', 'kiwzaa55+@gmail.com', '123456789', '0999999999', 'บ้านนั้นอะ', '', '', 'ชาย', '2023-03-01', 'Screenshot 2023-03-10 161557.png', 'user', '2023-03-10 09:16:25'),
(276, 'kiw300', 'rrrrr', 'ffffff', 'pkkk@gmail.com', '789456123', '0949965134', 'บ้านเลขที่​ 28​ หมู่​2​ต​ำบลบ้านใหม​่คลองเคียน​', '', '', 'ชาย', '2023-03-03', 'c_original_logo_icon_146611.png', 'user', '2023-03-10 10:00:27'),
(277, 'ai', 'A', 'I', 'sssss@gmail.com', '12345678', '0888888888', '188 ต.เมืองปาน จ.ลำปาง', '', '', 'other', '2001-06-14', '6d2d8a76-3bef-4d67-9ee3-630bfeb215fb.jpg', 'user', '2023-04-08 12:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `member_id` int(10) NOT NULL,
  `product_image` text NOT NULL,
  `product_quantity` int(5) NOT NULL,
  `product_price/piece` int(5) NOT NULL,
  `member_id1` int(10) NOT NULL,
  `member_name1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE `orderlist` (
  `orderlist_id` int(15) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_image` text NOT NULL,
  `product_price/piece` int(5) NOT NULL,
  `member_id` int(10) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `member_address` text NOT NULL,
  `memshop_id` int(10) NOT NULL,
  `memshop_name` varchar(50) NOT NULL,
  `traking_num` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderlist`
--

INSERT INTO `orderlist` (`orderlist_id`, `product_id`, `product_name`, `product_image`, `product_price/piece`, `member_id`, `member_name`, `member_address`, `memshop_id`, `memshop_name`, `traking_num`) VALUES
(75, 100, 'Larov NR21-01', 'ac11.jpg', 620, 258, 'stamp', 'efgvcx v', 258, '', ''),
(76, 94, 'EZwear ฮู้ดดี้', 'c1.jpg', 320, 258, 'stamp', 'efgvcx v', 258, '', ''),
(77, 94, 'EZwear ฮู้ดดี้', 'c1.jpg', 400, 257, 'YingSo', '301/95 แกรนด์โฮมเคียงมอ ต.ท่าโพธิ์ อ.เมือง จ.พิษณุโลก', 258, '', ''),
(78, 116, 'CASIO MTP-VD01D-1EVUDF', 'c1.png', 1600, 257, 'YingSo', '301/95 แกรนด์โฮมเคียงมอ ต.ท่าโพธิ์ อ.เมือง จ.พิษณุโลก', 258, '', ''),
(79, 126, 'Blackmagic Pocket Cinema Camera 6K Pro', 'camera-6k-pro-1.jpg', 97800, 257, 'YingSo', '301/95 แกรนด์โฮมเคียงมอ ต.ท่าโพธิ์ อ.เมือง จ.พิษณุโลก', 261, '', ''),
(80, 94, 'EZwear ฮู้ดดี้', 'c1.jpg', 400, 257, '', '301/95 แกรนด์โฮมเคียงมอ ต.ท่าโพธิ์ อ.เมือง จ.พิษณุโลก', 258, '', ''),
(81, 94, 'EZwear ฮู้ดดี้', 'c1.jpg', 400, 258, 'stamp', 'efgvcx v', 258, '', ''),
(82, 94, 'EZwear ฮู้ดดี้', 'c1.jpg', 400, 257, '', '301/95 แกรนด์โฮมเคียงมอ ต.ท่าโพธิ์ อ.เมือง จ.พิษณุโลก', 258, '', ''),
(83, 118, 'HEMKOMST เฮียมโคมสต์', '02.png', 689, 258, 'stamp', 'efgvcx v', 258, '', ''),
(84, 113, 'พระสมเด็จ ลพ.กวย เนื้อผงน้ำมัน พิมพ์พระครูลมูล รูป', 'e4af4f56-ad47-4c76-aeec-ada30f9d2b1e.jpg', 1200, 258, '', 'efgvcx v', 258, '', ''),
(85, 179, 'Ai', '0f231b30-e04a-4182-9e2f-e4b0fb99169d.jpg', 300, 258, '', 'efgvcx v', 277, '', ''),
(86, 94, 'EZwear ฮู้ดดี้', 'c1.jpg', 400, 257, '', '301/95 แกรนด์โฮมเคียงมอ ต.ท่าโพธิ์ อ.เมือง จ.พิษณุโลก', 258, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_his`
--

CREATE TABLE `order_his` (
  `his_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_image` text NOT NULL,
  `product_price/piece` int(10) NOT NULL,
  `member_id` int(10) NOT NULL,
  `memshop_id` int(10) NOT NULL,
  `memshop_name` varchar(50) NOT NULL,
  `order_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_his`
--

INSERT INTO `order_his` (`his_id`, `product_id`, `product_name`, `product_image`, `product_price/piece`, `member_id`, `memshop_id`, `memshop_name`, `order_time`) VALUES
(4, 179, 'Ai', '0f231b30-e04a-4182-9e2f-e4b0fb99169d.jpg', 300, 257, 277, 'ai', '2023-04-09 02:24:46'),
(5, 175, 'ภาพจาก AI 4', '4fcd9b3b-3975-40d5-99ad-35674ab4ac49.jpg', 300, 257, 257, 'YingSo', '2023-04-09 02:25:30'),
(6, 177, 'ภาพจาก AI 6', '9c6bf868-8fb7-411a-be50-4d5b0fef3703.jpg', 900, 258, 257, 'YingSo', '2023-04-09 02:26:00'),
(7, 95, 'ROMWE', 'c11.jpg', 469, 260, 258, 'stamp', '2023-04-09 02:27:46'),
(8, 100, 'Larov NR21-01', 'ac11.jpg', 620, 260, 258, 'YingSo', '2023-04-09 02:27:47'),
(9, 177, 'ภาพจาก AI 6', '9c6bf868-8fb7-411a-be50-4d5b0fef3703.jpg', 900, 258, 257, '', '2023-04-09 04:59:00'),
(10, 177, 'ภาพจาก AI 6', '9c6bf868-8fb7-411a-be50-4d5b0fef3703.jpg', 900, 258, 257, '', '2023-04-09 04:59:01'),
(11, 178, 'ภาพจาก AI 7', 'd2bce437-223d-4e96-a05d-6ef51368802c.jpg', 600, 258, 257, '', '2023-04-09 04:59:01'),
(12, 179, 'Ai', '0f231b30-e04a-4182-9e2f-e4b0fb99169d.jpg', 300, 258, 277, '', '2023-04-09 04:59:02'),
(13, 179, 'Ai', '0f231b30-e04a-4182-9e2f-e4b0fb99169d.jpg', 300, 257, 277, '', '2023-04-09 05:37:58'),
(14, 98, 'SHEGLAM Stereo Face', 'b2.jpg', 250, 257, 258, '', '2023-04-09 05:38:03'),
(15, 98, 'SHEGLAM Stereo Face', 'b2.jpg', 250, 257, 258, '', '2023-04-09 05:38:03'),
(16, 98, 'SHEGLAM Stereo Face', 'b2.jpg', 250, 257, 258, '', '2023-04-09 05:38:04'),
(17, 98, 'SHEGLAM Stereo Face', 'b2.jpg', 250, 257, 258, '', '2023-04-09 05:38:04'),
(18, 98, 'SHEGLAM Stereo Face', 'b2.jpg', 250, 257, 258, '', '2023-04-09 05:38:04'),
(19, 98, 'SHEGLAM Stereo Face', 'b2.jpg', 250, 257, 258, '', '2023-04-09 05:38:05'),
(20, 95, 'ROMWE', 'c11.jpg', 469, 257, 258, '', '2023-04-09 05:38:05'),
(21, 95, 'ROMWE', 'c11.jpg', 469, 257, 258, '', '2023-04-09 05:38:05'),
(22, 99, 'SHEGLAM Color Bloom Liquid Blush', 'b22.jpg', 150, 257, 258, '', '2023-04-09 05:38:06'),
(23, 102, 'กระเป๋าใส่ดินสอ ลายสัตว์', 'a11.png', 20, 257, 258, '', '2023-04-09 05:38:06'),
(24, 101, 'MINI GLAM Lullabell Star', 'ac2.jpg', 1090, 257, 258, '', '2023-04-09 05:38:07'),
(25, 174, 'ภาพจาก AI 2', '4fceb647-0171-4900-b861-0ef5b206cc4f.jpg', 30, 257, 257, '', '2023-04-09 05:38:07'),
(26, 117, 'CASIO LTP-E157MR-9ADF', 'c2.png', 2900, 258, 258, '', '2023-04-09 05:41:14'),
(27, 106, 'ไดชาร์จ CHEVROLET CAPTIVA ดีเซล 2.0', 'aa11.jpg', 8744, 258, 258, '', '2023-04-09 05:41:15'),
(28, 115, 'บ้าน xxxxxx2', 'Home11.jpg', 1999999, 258, 258, '', '2023-04-09 05:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `payment_check`
--

CREATE TABLE `payment_check` (
  `payment_check_id` int(10) NOT NULL,
  `check_product_id` int(10) NOT NULL,
  `check_product_name` varchar(50) NOT NULL,
  `check_product_image` text NOT NULL,
  `check_product_price/piece` int(5) NOT NULL,
  `check_member_id` int(10) NOT NULL,
  `check_member_name` varchar(50) NOT NULL,
  `check_member_address1` text NOT NULL,
  `check_memshop_id` int(10) NOT NULL,
  `check_memshop_name` varchar(50) NOT NULL,
  `pay_name` varchar(50) NOT NULL,
  `pay_mobile` varchar(10) NOT NULL,
  `pay_money` int(10) NOT NULL,
  `pay_image` text NOT NULL,
  `pay_bank` varchar(20) NOT NULL,
  `pay_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `product_image` text NOT NULL,
  `product_image2` text NOT NULL,
  `product_image3` text NOT NULL,
  `product_inf.` text CHARACTER SET utf8 NOT NULL,
  `category_product` varchar(50) NOT NULL,
  `product_quantity` int(5) NOT NULL,
  `product_price/piece` int(5) NOT NULL,
  `member_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `product_image2`, `product_image3`, `product_inf.`, `category_product`, `product_quantity`, `product_price/piece`, `member_id`) VALUES
(94, 'EZwear ฮู้ดดี้', 'c1.jpg', 'c2.jpg', '', 'ความยาวแขนเสื้อ\r\nXS 20.3\r\nS   20.5\r\nM 20.7\r\nL   21\r\n', 'เสื้อผ้า', 1, 400, 258),
(95, 'ROMWE', 'c11.jpg', 'c22.jpg', '', 'สี:	สีดำ\r\nสไตล์:	ไม่เป็นทางการ\r\nประเภทรูปแบบ:	ทางเรขาคณิต, พิมพ์ตัวอักษร\r\nรายละเอียด:	เชือกรูด, กระเป๋าเสื้อ, เน็คไทด้านหน้า\r\nประเภท:	ขาตรง\r\nประเภทปิด:	เชือกผูกเอว\r\nเส้นรอบเอว:	ธรรมชาติ\r\nความยาว:	ยาว\r\nประเภทเหมาะสม:	หลวม\r\nผ้า:	ยืดเล็กน้อย\r\nวัสดุ:	ผ้า\r\nส่วนประกอบ:	100% เส้นใยสังเคราะห์\r\nคำแนะนำในการดูแล:	ซักเครื่องหรือซักแห้งโดยผู้เชี่ยวชาญ\r\nซับใน:	ไม่มีซับใน\r\nบาง:	ไม่', 'เสื้อผ้า', 1, 469, 258),
(98, 'SHEGLAM Stereo Face', 'b2.jpg', 'b1.jpg', '', 'แผ่นดิสก์เครื่องสำอาง 6 สี -502 Nude', 'โทรศัพท์', 1, 250, 258),
(99, 'SHEGLAM Color Bloom Liquid Blush', 'b22.jpg', 'b11.jpg', '', 'สี:	Love Cake\r\nประเภท:	ลิควิดบลัชออน\r\nความสูง :	3.1 inch\r\nเส้นผ่านศูนย์กลาง :	1.3 inch', 'เครื่องสำอาง', 1, 150, 258),
(100, 'Larov NR21-01', 'ac11.jpg', 'ac22.jpg', '', 'วัสดุ : แสตนเลสสตีล\r\nความยาว : 410 - 460 mm (41.0 - 46.0 cm)\r\nสีทนทาน ไม่ลอก ไม่ดำ\r\nสวมใส่สบาย ไม่แพ้ ไม่ระคายเคือง\r\nเสริมการแต่งกายให้แตกต่างและมีสไตล์', 'เครื่องสำอาง', 1, 620, 258),
(101, 'MINI GLAM Lullabell Star', 'ac2.jpg', 'ac1.jpg', '', 'สร้อยข้อมือแบบโซ่ 2 ชั้น พร้อมจี้รูปดาวและคริสตัล สีเงิน\r\nสามารถมิกซ์แอนด์แมทช์ได้อย่างลงตัวกับสร้อยข้อมือชิ้นอื่น หรือนาฬิกาเรือนโปรดของคุณ\r\nสายปรับความยาวได้\r\nขนาด ความกว้าง 0.6 ซม. ความยาว 19.5-23 ซม.\r\nวัสดุ คริสตัล, สเตนเลสสตีล (316L)\r\nสินค้านำเข้าจากเกาหลี\r\nสินค้าพร้อมกล่องแบรนด์ mini glam', 'เครื่องประดับ', 1, 1090, 258),
(102, 'กระเป๋าใส่ดินสอ ลายสัตว์', 'a11.png', 'a22.png', '', 'กระเป๋าใส่ดินสอ กระเป๋าเครื่องเขียน ลายสัตว์', 'เครื่องประดับ', 1, 20, 258),
(103, 'ปากกาเจลหัวการ์ตูนหมีคุมะ', 'a1.png', 'a2.png', '', 'ปากกาเจลหัวการ์ตูนหมีคุมะ หัวเข็ม0.38หมึกเจลสีดำ\r\nเขียนลื่น ไม่สะดุด เส้นไม่ขาด\r\nยาว 18 cm.', 'อุปกรณ์เครื่องเขียน', 1, 5, 258),
(106, 'ไดชาร์จ CHEVROLET CAPTIVA ดีเซล 2.0', 'aa11.jpg', 'aa22.jpg', '', 'สำหรับ CAPTIVA (C-100) ดีเซล 2.0 ปี 2007-2011', 'อุปกรณ์สัตว์เลี้ยง', 1, 8744, 258),
(107, 'หัวเพลาขับหน้า COLORADO', 'aa2.jpg', 'aa1.jpg', '', 'หัวเพลาขับหน้า ตัวใน ด้านซ้าย/ขวา สำหรับ COLORADO ปี 2012-2020', 'อะไหล่รถ', 1, 3335, 258),
(108, 'มุมมองนักอ่านพระเจ้า เล่ม 12', 'bo11.jpg', 'bo22.jpg', '', 'ผู้เขียน: sing N song\r\nสำนักพิมพ์: Levon\r\nหมวดหมู่: นิยาย , นิยายแฟนตาซี', 'อะไหล่รถ', 1, 295, 258),
(109, 'หนังสือ เลิกเป็นคนดี แล้วจะมีความสุข', 'bo1.jpg', 'bo2.jpg', '', 'ผู้เขียน: โกะโด โทคิโอะ (Tokio Godo)\r\nสำนักพิมพ์: อมรินทร์ How to\r\nหมวดหมู่: จิตวิทยา การพัฒนาตัวเอง , การพัฒนาตัวเอง how to', 'หนังสือ', 1, 180, 258),
(110, 'LACOSTE Challenge ', 'bt1.jpg', 'bt2.jpg', '', '-ผลิตจากหนัง\r\n-พื้นรองเท้ายาง\r\n-ซับในวัสดุสังเคราะห์ผสมผ้าทอ\r\n-ปักป้ายแบรนด์รูปจระเข้สีเขียวที่ด้านข้าง อักษรลาคอสท์สีทองที่ลิ้นรองเท้า\r\n-โครงสร้างแบบทวินคัพโซลทำให้รองเท้าออกแนวสปอร์ต', 'หนังสือ', 1, 3790, 258),
(111, 'SKECHERS Gorun Mojo Bravo', 'SSP57716718_1.jpg', 'SSP57716718_5.jpg', '', 'อัปเปอร์ทำจากผ้าถัก\r\nเทคโนโลยี 5GEN® ตอบสนองการวิ่งอย่างนุ่มนวล\r\nAir Cooled Goga Mat™ ที่พื้นรองเท้าช่วยรองรับแรงกระแทก\r\nพื้นรองเท้าด้านนอกมี GOimpulse sensors ช่วยให้ยึดเกาะได้ดี', 'รองเท้า', 1, 2790, 258),
(112, 'สมเด็จวัดเกศไชโยหกชั้นอกตลอดเนื้อเก่าสวยหนึบนุ่มเก', '5ad60e9a-830e-43c3-862d-be9c3e84cec3.jpg', 'ff88f098-a2e3-461d-a655-6da20cc954f6.jpg', '', 'สมเด็จวัดเกศไชโยหกชั้นอกตลอดเนื้อเก่าสวยหนึบนุ่มเก่ามีมวลสาร', 'พระเครื่อง', 1, 15000, 258),
(113, 'พระสมเด็จ ลพ.กวย เนื้อผงน้ำมัน พิมพ์พระครูลมูล รูป', 'e4af4f56-ad47-4c76-aeec-ada30f9d2b1e.jpg', '5338ccfb-eb17-406f-aa91-e3dd7f7ad82a.jpg', '', 'พระเนื้อผงน้ำมันหลวงพ่อกวยพิมพ์พระครูลมูล หลังมีลอยจารเลือนๆ', 'พระเครื่อง', 1, 1200, 258),
(115, 'บ้าน xxxxxx2', 'Home11.jpg', 'Home22.jpg', '', 'อยู่ที่ xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'บ้านและสวน', 1, 1999999, 258),
(116, 'CASIO MTP-VD01D-1EVUDF', 'c1.png', 'c1.png', '', 'ตัวล็อคพับสามทบ\r\nสายสเตนเลสสตีล\r\nกระจกมิเนอรัล\r\nกันน้ำลึก 50 เมตร\r\nการแสดงวันที่\r\nบอกเวลาปกติแบบทั่วไป\r\nเข็มนาฬิกา 3 เข็ม (ชั่วโมง นาที วินาที)\r\nความแม่นยำ ±20 วินาทีต่อเดือน\r\nอายุการใช้งาน โดยประมาณ: 3 ปีกับถ่านกระดุม SR626SW\r\nขนาด : 49 × 45 × 10.3 มม.\r\nสี : ดำ\r\nคุณสมบัติกันน้ำ : กันน้ำ\r\nประเภทนาฬิกา : อะนาล็อก\r\nวัสดุตัวเรือน : สเตนเลส\r\nวัสดุหน้าปัด : สเตนเลส\r\nรูปทรงหน้าปัด : ทรงกลม\r\nประเภท : ควอตซ์\r\nเพศ : ยูนิเซ็กส์\r\nอายุ : ผู้ใหญ่', 'นาฬิกา', 1, 1600, 258),
(117, 'CASIO LTP-E157MR-9ADF', 'c2.png', 'c2.png', '', 'วัสดุตัวเรือน / กรอบ: สเตนเลสสตีล\r\nสายปรับได้\r\nสายตาข่ายสเตนเลสสตีล\r\nกระจกมิเนอรัล\r\nกันน้ำ\r\nบอกเวลาปกติแบบทั่วไป\r\nอะนาล็อก: 3 เข็ม (ชั่วโมง นาที วินาที)\r\nความแม่นยำ: ±20 วินาทีต่อเดือน\r\nอายุการใช้งานแบตเตอรี่ โดยประมาณ: 3 ปีกับถ่านกระดุม SR626SW\r\nขนาด : 37.5 × 32 × 8 มม.\r\nสี : แชมเปญ\r\nคุณสมบัติกันน้ำ : กันน้ำ\r\nประเภทนาฬิกา : อะนาล็อก\r\nวัสดุตัวเรือน : สเตนเลส\r\nวัสดุหน้าปัด : สเตนเลส\r\nรูปทรงหน้าปัด : ทรงกลม\r\nประเภท : ควอตซ์\r\nเพศ : ยูนิเซ็กส์\r\nอายุ : ผู้ใหญ่', 'นาฬิกา', 1, 2900, 258),
(118, 'HEMKOMST เฮียมโคมสต์', '02.png', '022.png', '', 'หม้อและกระทะใช้ได้กับเตาทุกชนิด รวมถึงเตาแม่เหล็กไฟฟ้า\r\nด้วยสารเคลือบกันติด จึงสามารถปรุงอาหารได้ โดยใช้น้ำมันเพียงเล็กน้อย', 'ของใช้ในครัว', 1, 689, 258),
(120, 'SOFT Babynest Cushion', 'baby11.png', 'baby22.png', '', '33\"x18: (84 cm x46cm)\r\nข้างใน 25.5\"X10\"', 'ของใช้ทารก', 1, 2990, 261),
(121, 'Pur Nasal Aspirator ที่ดูดน้ำมูกเด็ก', 'baby01.png', 'baby02.png', '', 'ที่ดูดน้ำมูกช่วยให้ลูกน้อยหายใจสะดวกยิ่งขึ้น ลดสิ่งอุดตันในจมูกลูกน้อย เพื่อสุขภาพที่ดีของลูกน้อย\r\nใช้ช่วยในการดูดน้ำมูกหรือสิ่งอุดตันในรูจมูกทารก ช่วยให้ลูกน้อยหายใจสะดวกขึ้น\r\nง่ายต่อการถอดล้างทำความสะอาด\r\nมีสีขาวเพื่อสุขอนามัยของทารก\r\nใช้เสร็จควรทำความสะอาดทุกครั้ง', 'ของใช้ทารก', 1, 115, 261),
(122, 'จักรยานเอนปั่น HORIZON รุ่น COMFORT R', '91_horizon_comfort_r.jpg', '91_horizon_comfort_r.jpg', '', 'อุปกรณ์ฟิตเนส จักรยานเอนปั่น HORIZON รุ่น COMFORT R', 'กีฬา', 1, 29900, 261),
(123, 'ถุงทรายยกน้ำหนัก', '_5_3__1.jpg', '_5_1__2.jpg', '', 'ถุงทรายยกน้ำหนัก 10 กก.', 'กีฬา', 1, 1450, 261),
(125, 'Leica M11', '20220113_085933_leicam11__0009.jpg', '20220113_085933_leicam11__0011.jpg', '', '60MP Full-Frame BSI CMOS Sensor\r\nTriple Resolution Technology\r\nOptical 0.73x-Magnification Viewfinder\r\n2.95\" 2.3m-Dot Touchscreen LCD\r\nInternal 64GB Memory and SD UHS-II Slot\r\nISO 64-50000, Up to 4.5-fps Shooting\r\nWi-Fi & USB Type-C, Dedicated FOTOS App\r\nLightweight Aluminum Top Plate\r\nElectronic Shutter, Multi-Field Metering\r\nLive View Stabilization', 'กล้อง', 1, 327200, 261),
(126, 'Blackmagic Pocket Cinema Camera 6K Pro', 'camera-6k-pro-1.jpg', 'camera-6k-pro-2.jpg', '', 'The Blackmagic Pocket Cinema Camera 6K Pro includes additional pro features such as built in 2, 4 and 6 stop ND filters, adjustable tilt HDR LCD with a bright 1500 nits that’s ideal for use in bright sunlight. It also includes two mini XLR audio inputs and a larger NP-F570 style battery.', 'กล้อง', 1, 97800, 261),
(127, 'COACH', '_b53.jpg', '_b54.jpg', '', 'ตัวกระเป่าข้าง:\r\nมีช่องใส่ของต่างๆด้านใน\r\nมีซิปปิดด้านนอก ,มีซับในผ้า\r\n13.5cm (L) x 16cm (H) x 4cm (W)\r\nมีกระเป๋าเล็ก\r\nมีช่องใส่ของต่างๆด้านใน\r\nมีซิปปิดด้านนอก ,มีซับในผ้า\r\nที่เก็บสายกระเป๋า\r\n8.5cm (L) x 11cm (H) x 2.5cm (W)\r\nสายสามารถปรับได้ ยาว 63 cmใ สำหรับสะพาย้างหรือสะพายไหล่', 'กระเป๋า', 1, 14725, 261),
(128, 'BALLY Mavrick ', '_b5.jpg', '_b52.jpg', '', '- Width: 30cm/11.8in\r\n- Height: 42cm/16.5in\r\n- Depth: 10.5cm/4.1in', 'กระเป๋า', 1, 34300, 261),
(170, 'ไก่พริกไทยดำ', 'Celine-Mini-Ava-in-Tromphe-Canvas-and-Calfskin-Tan-Shoulder-Bag.jpg', 'Celine-Mini-Ava-in-Tromphe-Canvas-and-Calfskin-Tan-Shoulder-Bag.jpg', '', 'สสสสสสสสสสสส', 'รองเท้า', 1, 300, 276),
(172, 'ภาพจาก AI 3', '1aa7ae13-8107-41f2-9668-e1cebdcd78ca.jpg', '3fd86884-92c6-48e8-89ba-c5d78e240f38.jpg', '32735418-a46c-4bab-8966-a73c36519c0a.jpg', '3333', 'เสื้อผ้า', 1, 320, 257),
(173, 'ภาพจาก AI 1', '5668baaf-e2e6-44a1-ba4a-f525f8d1fad0.jpg', '493994da-4c2a-4d38-a1fd-828d8e0e3fd7.jpg', 'c140d84d-3645-45af-914a-8a68c92e1545.jpg', '111', 'หนังสือ', 1, 100, 257),
(174, 'ภาพจาก AI 2', '4fceb647-0171-4900-b861-0ef5b206cc4f.jpg', '5c01cbc1-be80-403e-a01f-b9b2d5623846.jpg', 'd64b0d12-c21f-4ced-ac55-de39a180cc18.jpg', '222', 'หนังสือ', 1, 30, 257),
(175, 'ภาพจาก AI 4', '4fcd9b3b-3975-40d5-99ad-35674ab4ac49.jpg', '7b2aa55a-d35e-4577-b696-20e9681d4de9.jpg', '40781f80-6eee-44a5-a2da-51d8009ffc32.jpg', '4444', 'หนังสือ', 1, 300, 257),
(176, 'ภาพจาก AI 5', '34adb6a0-785a-4b81-a91e-effb4c765e6a.jpg', '824512ee-3efb-4492-97d7-7eec2756e1c1.jpg', '', '555', 'หนังสือ', 1, 200, 257),
(177, 'ภาพจาก AI 6', '9c6bf868-8fb7-411a-be50-4d5b0fef3703.jpg', 'ad9e3b13-8ea2-4107-998f-2e119cc148e8.jpg', 'c96ec5d6-6843-49d3-a722-a3a576b39851.jpg', '66666', 'หนังสือ', 1, 900, 257),
(178, 'ภาพจาก AI 7', 'd2bce437-223d-4e96-a05d-6ef51368802c.jpg', '4baa97bd-3d9d-488d-a0a9-4b825140361a.jpg', '8d2d0c9b-582c-46be-a258-ae36eeda2156.jpg', '777777', 'หนังสือ', 1, 600, 257),
(179, 'Ai', '0f231b30-e04a-4182-9e2f-e4b0fb99169d.jpg', '42894a0b-3a31-41bf-a759-4d01620f0d7a.jpg', 'af2c03bb-853f-4191-a88b-e502086afe8f.jpg', 'ภาพวาดจาก AI', 'หนังสือ', 1, 300, 277);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(20) NOT NULL,
  `message` text NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `member_email` varchar(50) NOT NULL,
  `member_image` text NOT NULL,
  `report_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `message`, `member_name`, `member_email`, `member_image`, `report_image`) VALUES
(145, 'test', 'Ai', 'sssss@gmail.com', '6d2d8a76-3bef-4d67-9ee3-630bfeb215fb.jpg', '9c783f27-2b66-4e26-8b8c-3ec18fe75261.jpg'),
(146, 'เบื่อหน้าคิว', 'Ai', 'sssss@gmail.com', '6d2d8a76-3bef-4d67-9ee3-630bfeb215fb.jpg', '58fb25f2-b662-4cc1-947e-a5ed3e4433b0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(10) NOT NULL,
  `staff_email` varchar(100) NOT NULL,
  `staff_password` varchar(50) NOT NULL,
  `staff_name` varchar(50) NOT NULL,
  `staff_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_email`, `staff_password`, `staff_name`, `staff_image`) VALUES
(1, 'admin@gmail.com', '12345678', 'admin', 'cat3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `statistic`
--

CREATE TABLE `statistic` (
  `statistic_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `product_price/piece` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statistic`
--

INSERT INTO `statistic` (`statistic_id`, `category_name`, `product_price/piece`) VALUES
(6, 'อะไหล่รถ', 3335),
(7, 'หนังสือ', 300),
(8, 'หนังสือ', 300),
(9, 'เครื่องสำอาง', 620),
(10, 'หนังสือ', 900),
(11, 'หนังสือ', 900),
(12, 'หนังสือ', 600),
(13, 'หนังสือ', 300),
(14, 'เสื้อผ้า', 320),
(15, 'โทรศัพท์', 250),
(16, 'โทรศัพท์', 250),
(17, 'โทรศัพท์', 250),
(18, 'เสื้อผ้า', 469),
(19, 'เสื้อผ้า', 469),
(21, 'เครื่องสำอาง', 150),
(22, 'เครื่องประดับ', 20),
(23, 'เครื่องประดับ', 1090),
(24, 'หนังสือ', 30),
(25, 'หนังสือ', 300),
(26, 'นาฬิกา', 2900),
(27, 'อุปกรณ์สัตว์เลี้ยง', 8744),
(28, 'บ้านและสวน', 1999999),
(29, 'เครื่องสำอาง', 620),
(30, 'เสื้อผ้า', 320),
(31, 'เสื้อผ้า', 400),
(32, 'นาฬิกา', 1600),
(33, 'กล้อง', 97800),
(34, 'เสื้อผ้า', 400),
(35, 'เสื้อผ้า', 400),
(36, 'เสื้อผ้า', 400),
(37, 'ของใช้ในครัว', 689),
(38, 'พระเครื่อง', 1200),
(39, 'หนังสือ', 300),
(40, 'เสื้อผ้า', 400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`basket_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `check_product`
--
ALTER TABLE `check_product`
  ADD PRIMARY KEY (`product_id_check`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`,`member_id`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`orderlist_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `order_his`
--
ALTER TABLE `order_his`
  ADD PRIMARY KEY (`his_id`);

--
-- Indexes for table `payment_check`
--
ALTER TABLE `payment_check`
  ADD PRIMARY KEY (`payment_check_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `statistic`
--
ALTER TABLE `statistic`
  ADD PRIMARY KEY (`statistic_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `basket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `check_product`
--
ALTER TABLE `check_product`
  MODIFY `product_id_check` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `orderlist_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `order_his`
--
ALTER TABLE `order_his`
  MODIFY `his_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payment_check`
--
ALTER TABLE `payment_check`
  MODIFY `payment_check_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statistic`
--
ALTER TABLE `statistic`
  MODIFY `statistic_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
