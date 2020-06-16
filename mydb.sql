-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 11:00 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(1, 'men'),
(2, 'women'),
(3, 'books'),
(4, 'gadgets'),
(5, 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pid` varchar(50) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `price` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `username`, `email`, `pid`, `pname`, `price`, `quantity`, `total`, `address`, `date`) VALUES
(15, 'Prashant Verma', 'prashantverma@mail.com', '110 ', 'Proline Active', 499, 2, 998, 'Ghaziabad,India', '2020-06-09'),
(16, 'Prashant Verma', 'prashantverma@mail.com', '110 ', 'Proline Active', 499, 2, 998, 'Ghaziabad,India', '2020-06-09'),
(17, 'Prashant Verma', 'prashantverma@mail.com', '111 ', 'Calvin Klein Jeans\r\nMen Navy Blue Body Fit Solid Chinos', 7599, 1, 7599, 'Ghaziabad,India', '2020-06-09'),
(18, 'Prashant Verma', 'prashantverma@mail.com', '31 ', 'Hamsafar Everest (Hindi) Paperback', 140, 1, 140, 'Ghaziabad,India', '2020-06-09'),
(19, 'Prashant Verma', 'prashantverma@mail.com', '34 ', 'The Blue Umbrella ', 76, 1, 76, 'Ghaziabad,India', '2020-06-09'),
(20, 'Parth', 'parth@email.com', '113 ', 'Polo Ralph Lauren\r\nSlim Fit Gingham Poplin Shirt', 10690, 1, 10690, 'Indirapuram,Ghaziabad,India', '2020-06-09'),
(21, 'Prashant Verma', 'prashantverma@mail.com', '110 ', 'Proline Active', 499, 1, 499, 'Ghaziabad,India', '2020-06-09'),
(22, 'Parth', 'parth@email.com', '113 ', 'Polo Ralph Lauren\r\nSlim Fit Gingham Poplin Shirt', 10690, 1, 10690, 'Indirapuram,Ghaziabad,India', '2020-06-09'),
(23, 'Parth', 'parth@email.com', '114 ', 'Raymond\r\nMen Blue & White Contemporary Fit Self Design Formal Shirt', 900, 1, 900, 'Indirapuram,Ghaziabad,India', '2020-06-09'),
(24, 'Parth', 'parth@email.com', '32 ', 'The Lost Faith', 178, 1, 178, 'Indirapuram,Ghaziabad,India', '2020-06-09'),
(25, 'Parth', 'parth@email.com', '33 ', 'The Secret (Hardcover)', 589, 1, 589, 'Indirapuram,Ghaziabad,India', '2020-06-09'),
(26, 'Damak', 'damak@mail.com', '12 ', 'Mast & Harbour\r\nMen Green Self-Design Single-Breasted Casual Blazer', 2499, 1, 2499, 'Aligarh,India', '2020-06-09'),
(27, 'Damak', 'damak@mail.com', '13 ', 'WROGN\r\nMen Black Slim Fit Mid-Rise Jeans', 1149, 1, 1149, 'Aligarh,India', '2020-06-09'),
(28, 'Damak', 'damak@mail.com', '35 ', 'Chai, Chai: Travels in Places Where You Stop But Never Get Off', 258, 1, 258, 'Aligarh,India', '2020-06-09'),
(29, 'Damak', 'damak@mail.com', '36 ', 'A Street Cat Named Bob: How one man and his cat found hope on the streets (Paperback) ', 566, 1, 566, 'Aligarh,India', '2020-06-09'),
(30, 'Ishant Vivek', 'ishant@mail.com', '37 ', 'The SMART Balance (Paperback)', 199, 1, 199, 'Gurugram,Haryana', '2020-06-09'),
(31, 'Ishant Vivek', 'ishant@mail.com', '33 ', 'The Secret (Hardcover)', 589, 1, 589, 'Gurugram,Haryana', '2020-06-09'),
(32, 'Ishant Vivek', 'ishant@mail.com', '410 ', 'Asus Vivobook 15 Laptop', 31890, 1, 31890, 'Gurugram,Haryana', '2020-06-09'),
(33, 'Ishant Vivek', 'ishant@mail.com', '413 ', 'Redragon Gaming Mouse', 749, 1, 749, 'Gurugram,Haryana', '2020-06-09'),
(34, 'Abhishek Singh', 'Abhishek@mail.com', '16 ', 'Flying Machine\r\nMen Navy Blue Solid Polo Collar T-shirt', 499, 1, 499, 'Jamshedpur,India', '2020-06-09'),
(35, 'Abhishek Singh', 'Abhishek@mail.com', '17 ', 'Peter England Casuals', 739, 1, 739, 'Jamshedpur,India', '2020-06-09'),
(36, 'Abhishek Singh', 'Abhishek@mail.com', '35 ', 'Chai, Chai: Travels in Places Where You Stop But Never Get Off', 258, 1, 258, 'Jamshedpur,India', '2020-06-09'),
(37, 'Abhishek Singh', 'Abhishek@mail.com', '39 ', 'Wings Of Fire  (Paperback, Tiwari Arun)', 195, 1, 195, 'Jamshedpur,India', '2020-06-09'),
(38, 'Sumit', 'sumit@mail.com', '15 ', 'Breakbounce\r\nMen Grey Printed Round Neck T-shirt', 478, 1, 478, 'Kolkata', '2020-06-09'),
(39, 'Sumit', 'sumit@mail.com', '18 ', 'Levis\r\nMen White Printed Round Neck T-shirt', 799, 1, 799, 'Kolkata', '2020-06-09'),
(40, 'Sumit', 'sumit@mail.com', '414 ', 'Cosmic Byte Gaming Keyboard', 899, 1, 899, 'Kolkata', '2020-06-09'),
(41, 'Sumit', 'sumit@mail.com', '44 ', 'JBL GO Bluetooth Speaker', 1749, 1, 1749, 'Kolkata', '2020-06-09'),
(42, 'Sumit', 'sumit@mail.com', '212 ', 'Imara Yellow Printed Top', 780, 1, 780, 'Kolkata', '2020-06-09'),
(43, 'Sumit', 'sumit@mail.com', '215 ', 'RARE Blouson Top', 600, 1, 600, 'Kolkata', '2020-06-09'),
(44, 'Sumit', 'sumit@mail.com', '26 ', 'Libas Blue Straight Kurta', 1750, 1, 1750, 'Kolkata', '2020-06-09'),
(45, 'Sumit', 'sumit@mail.com', '27 ', 'Mimosa Saree', 1780, 1, 1780, 'Kolkata', '2020-06-09'),
(46, 'Sumit', 'sumit@mail.com', '28 ', 'Chennai Silks Saree', 4500, 1, 4500, 'Kolkata', '2020-06-09'),
(47, 'Prashant Verma', 'prashantverma@mail.com', '32 ', 'The Lost Faith', 178, 1, 178, 'Ghaziabad,India', '2020-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `category` int(11) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `price` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `info` varchar(500) NOT NULL,
  `rating` int(10) NOT NULL,
  `review` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`category`, `pid`, `pname`, `price`, `image`, `info`, `rating`, `review`) VALUES
(1, '110', 'Proline Active', 499, 'proline.jpg', 'Blue solid Football  T-shirt has a round neck, and short sleeves\r\nSize & Fit\r\n\r\nThe model (height 6\') is wearing a size M\r\nMaterial & Care\r\n\r\nMaterial: Polyester\r\nDry Clean', 3, ''),
(1, '111', 'Calvin Klein Jeans\r\nMen Navy Blue Body Fit Solid Chinos', 7599, 'ck.jpg', 'Navy Blue solid mid-rise trousers, button closure, and 5 pockets\r\nSize & Fit\r\n\r\nBody fit\r\nThe model (height 6\') is wearing a size 32\r\nMaterial & Care\r\n\r\n97% cotton and 3% elastane\r\nMachine-wash', 3, ''),
(1, '112', 'Louis Philippe\r\nMen Beige Slim Fit Checked Formal Trousers', 2124, 'formal.jpg', 'Beige checked low-rise trousers, button closure, and 4 pockets\r\nSize & Fit\r\n\r\nSlim fit\r\nThe model (height 6\') is wearing a size 32\r\nMaterial & Care\r\n\r\n64% polyester, 34% viscose, 2% elastane\r\nMachine-wash', 0, ''),
(1, '113', 'Polo Ralph Lauren\r\nSlim Fit Gingham Poplin Shirt', 10690, 'polo.jpg', 'A multistep process that includes high-tension yarn-spinning gives this shirt\'s pure cotton fabric a dose of stretch for ease of movement.\r\nLong sleeves with buttoned barrel cuffs\r\nSplit back yoke with a box pleat ensures a comfortable fit and a greater range of motion\r\nSignature embroidered Pony at the left chest', 3, ''),
(1, '114', 'Raymond\r\nMen Blue & White Contemporary Fit Self Design Formal Shirt', 900, 'raymond.jpg', 'Blue and White self-design formal shirt, has a spread collar, long sleeves, button placket, curved hem, and 1 patch pocket\r\nSize & Fit\r\n\r\nContemporary Fit\r\nThe model (height 6\') is wearing a size 40\r\nMaterial & Care\r\n\r\nMaterial: 100% Cotton \r\nMachine Wash', 5, ''),
(1, '115', 'LUXURAZI\r\nMen Blue Slim Fit Shawl Collar Single Breasted Grey Suit', 8160, 'suit.jpg', 'Blue suit\r\nBlue blazer, has a shawl collar, single-breasted with button closures, long sleeves, three pockets, double-vented back hem\r\nBlue and grey woven waistcoat, has a round neck, button closures, sleeveless\r\nBlue mid-rise formal trousers, has a waistband with belt loops, zip fly with a button closure', 0, ''),
(1, '12', 'Mast & Harbour\r\nMen Green Self-Design Single-Breasted Casual Blazer', 2499, 'blazer.jpg', 'Green self-design casual blazer, has a notched lapel collar, long sleeves, padded shoulders, single-breasted with button closures, three pockets, an attached lining with two in-built pockets, and a double-vented back hem', 1, ''),
(1, '13', 'WROGN\r\nMen Black Slim Fit Mid-Rise Jeans', 1149, 'wrogn.jpg', 'A pair of black 5-pocket mid-rise jeans, has zip fly with a button closure, a waistband with belt loops\r\nSize & Fit\r\n\r\nSlim fit\r\nThe model (height 6\' and waist 32\") is wearing a size 32\r\nMaterial & Care\r\n\r\n98% cotton, 2% elastane  \r\nMachine-wash', 3, ''),
(1, '14', 'Louis Philippe Jeans\r\nMen Blue Albert Super Slim Fit Low-Rise Clean Look Stretchable Jeans', 2699, 'louis.jpg', 'Blue dark wash 5-pocket low-rise jeans, clean look, light fade, has a button and zip closure, and waistband with belt loops\r\nSize & Fit\r\n\r\nt Super Slim Fit\r\nStretchable\r\nThe model (height 6\') is wearing a size 32\r\nMaterial & Care\r\n\r\n98% cotton and 25 elastane\r\nMachine-wash', 0, ''),
(1, '15', 'Breakbounce\r\nMen Grey Printed Round Neck T-shirt', 478, 'break.jpg', 'Grey printed T-shirt, has a round neck, short sleeves, and 1 pockets\r\nSize & Fit\r\n\r\nThe model (height 6\') is wearing a size M\r\nMaterial & Care\r\n\r\n100% Cotton\r\nMachine-wash', 5, ''),
(1, '16', 'Flying Machine\r\nMen Navy Blue Solid Polo Collar T-shirt', 499, 'flying.jpg', 'Navy blue solid T-shirt, has a polo collar, short sleeves\r\nSize & Fit\r\n\r\nThe model (height 6\') is wearing a size M\r\nMaterial & Care\r\n\r\n100% cotton\r\nMachine-wash', 0, ''),
(1, '17', 'Peter England Casuals', 739, 'peter.jpg', 'Maroon solid T-shirt, has a polo collar, short sleeves\r\nSize & Fit\r\n\r\nThe model (height 6\') is wearing a size M\r\nMaterial & Care\r\n\r\n52% Polyester and 48% Cotton\r\nMachine-wash', 0, ''),
(1, '18', 'Levis\r\nMen White Printed Round Neck T-shirt', 799, 'white.jpg', 'White printed T-shirt, has a round neck, short sleeves\r\nSize & Fit\r\n\r\nThe model (height 6\') is wearing a size M\r\nMaterial & Care\r\n\r\n100% cotton\r\nMachine-wash', 2, ''),
(1, '19', 'Chkokko\r\nMen Black Solid Round Neck Running T-shirt', 384, 'choko.jpg', 'Black solid T-shirt, has a round neck, and short sleeves\r\nSize & Fit\r\n\r\nThe model (height 6\') is wearing a size M\r\nMaterial & Care\r\n\r\nPolyester and elastane blend\r\nMachine-wash', 0, ''),
(2, '21', 'Soch Kurta', 1200, 'soch_kurta1.jpg', 'Stylish kurta by Soch. Available in S, M, L, XL, XXL', 0, ''),
(2, '210', 'Shree leggings', 450, 'shree_leggings.jpg', 'A pair of mustard yellow knitted churidar leggings, has an elasticated waistband', 0, ''),
(2, '211', 'plusS Olive Green Solid Top', 800, 'pluss_top.jpg', 'Olive green solid knitted regular top, has a round neck, three-quarter sleeves, button closure, has tie-up detail', 0, ''),
(2, '212', 'Imara Yellow Printed Top', 780, 'imara_top.jpg', 'Yellow printed woven top, has a round neck, short sleeves, button closure', 5, ''),
(2, '213', 'Biba Lehenga Dupatta', 4000, 'biba_lehenga.jpg', 'Green and golden embellished lehenga choli with dupatta\r\nGreen embroidered choli, has a round neck, sleeveless, a full hook-and-eye placket on the back, beaded detail.', 0, ''),
(2, '214', 'Yellow Lehenga Choli Dupatta', 1580, 'yellow_lehenga.jpg', 'Green and orange printed lehenga choli with dupatta\r\nOrange printed flared lehenga, has an elasticated waistband with a concealed zip closure on one side, lace trim along the hem, an attached lining.', 0, ''),
(2, '215', 'RARE Blouson Top', 600, 'rare_top.jpg', 'Off-white, peach-coloured and navy printed woven blouson top with pleated detail, has a round neck, sleeveless, elasticated hem, and a cut-out detail on the back', 1, ''),
(2, '22', 'Soch Saree', 1700, 'soch_saree.jpg', 'Stylish and elegant saree by Soch. Comes with blouse piece', 0, ''),
(2, '23', 'Soch Pink Salwar', 1200, 'soch_pink.jpg', 'Stylish Salwar by Soch. Available in S, M, L, XL, XXL', 0, ''),
(2, '24', 'Soch Black Salwar', 1500, 'soch_black.jpg', 'Stylish kurta by Soch. Available in S, M, L, XL, XXL', 0, ''),
(2, '25', 'Libas Grey Straight Kurta', 1200, 'libas_grey.jpg', 'Grey and navy printed straight kurta, has a round neck, three-quarter sleeves, straight hem, side slits', 0, ''),
(2, '26', 'Libas Blue Straight Kurta', 1750, 'libas_blue.jpg', 'Navy solid straight kurta, has a round neck, short sleeves, curved hem', 4, ''),
(2, '27', 'Mimosa Saree', 1780, 'mimosa_saree.jpg', 'Navy blue Kanjeevaram woven design saree, has a zari border', 3, ''),
(2, '28', 'Chennai Silks Saree', 4500, 'cs_saree.jpg', 'Beige woven design saree, has a zari border', 2, ''),
(2, '29', 'Panit leggings', 400, 'panit_leggings.jpg', 'Red knitted churidar leggings, has an elasticated waistband', 0, ''),
(3, '31', 'Hamsafar Everest (Hindi) Paperback', 140, 'hum.jpg', 'An interesting book of travelogue. ', 5, ''),
(3, '32', 'The Lost Faith', 178, 'lost.jpg', 'Protagonists are not born or made; they rise when karma provokes them. Join the thrilling journey of two friends, who go on a documentary-making assignment to a remote destination, a temple in the wilderness. The trip goes chaotic when they get caught amidst a wolf menace. How will they survive the mayhem? As the story unfolds, they come to know the murky past of the region and also meet a mysterious vigilante. Do you want to know the dark past and the strange man? ', 4, ''),
(3, '33', 'The Secret (Hardcover)', 589, 'secret.jpg', 'Regarded as a life-changing read by many readers, The Secret by Rhonda Byrne is a self-help book that embarks to motivate the reader about a universal paradigm about success that can be achieved through it remains hidden for most people. The book explores unveiling this little secret which may transform how people look at things and lead them on to the road of success and true happiness. ', 4, ''),
(3, '34', 'The Blue Umbrella ', 76, 'blue.jpg', '‘The Umbrella was like a flower, a great blue flower that had sprung up on the dry brown hillside.\'\r\n\r\nIn exchange for her lucky leopard\'s claw pendant, Binya acquires a beautiful blue umbrella that makes her the envy of everyone in her village, especially Ram Bharosa, the shop-keeper. Ruskin Bond\'s short and humorous novella, set in the picturesque hills of Garhwal, perfectly captures life in a village, where both heroism and redemption can be found.', 5, ''),
(3, '35', 'Chai, Chai: Travels in Places Where You Stop But Never Get Off', 258, 'chai.jpg', 'This narrative reveals the lives of people in towns beyond railway station yards, in an effort to discover what lay beyond the platform as one traveled across the cities.', 5, ''),
(3, '36', 'A Street Cat Named Bob: How one man and his cat found hope on the streets (Paperback) ', 566, 'bob.jpg', 'he original bestseller and uplifting true story of an unlikely friendship between a man on the streets of Covent Garden and the ginger cat who adopts him and helps him heal his life. Now a major motion picture starring Luke Treadaway.', 5, ''),
(3, '37', 'The SMART Balance (Paperback)', 199, 'smart.jpg', '\r\nIn this book, the author uses real-life examples and case studies to identify the various ways technology and the internet have changed our lives leading to the stick-to-the-screen syndrome, or commonly referred to as digital addiction and cyber addiction. The book explores methods for better tech management and principles to build a better structure for a happier and healthier life.\"', 5, ''),
(3, '38', 'The Rudest Book Ever (Paperback)', 270, 'swetabh.jpg', 'Shwetabh Gangwar is a professional problem-solver—and he’s ace at it. For the past five years, people from all over the world have contacted him with their troubles and he’s worked these out for them.\r\nA refreshing, easy-to-read, and relatable guide, The Rudest Book Ever will make you rethink everything you’ve been taught. ', 0, ''),
(3, '39', 'Wings Of Fire  (Paperback, Tiwari Arun)', 195, 'Wings.jpg', 'One of the most inspiring and popular autobiographies to read is Late Abdul Kalam’s Wings of Fire. In this book, the former president shares his personal experiences and the minutest details of his life. It narrates his life, right from the former late president’s rise from humble beginnings to his vision for the country in the year 2020. ', 0, ''),
(4, '41', 'Sennheiser CX 275 S In -Ear Headphones', 899, 'senn_ear.jpg', 'Premium comfort - ear adaptors in different sizes for excellent ear canal fit and ambient noise attenuation', 0, ''),
(4, '410', 'Asus Vivobook 15 Laptop', 31890, 'Asus_Vivobook15.jpg', 'ASUS VivoBook 15 X509UA-EJ342T Intel Core i3 7th Gen 15.6-inch FHD Compact and Light Laptop (4GB RAM/1TB HDD/Windows 10/Integrated Graphics/FP Reader/1.9 kg), Slate Gray ', 5, ''),
(4, '411', 'Lenovo Yoga Laptop', 32999, 'lenovo_yoga.jpg', '1.1GHz Intel Pentium N4200 processor. 4GB DDR3 RAM.1TB hard drive. 11.6-inch screen, Intel HD Graphics', 0, ''),
(4, '412', 'Dell Inspiron Laptop', 70999, 'dell_inspiron.jpg', 'Up to 3.5GHz Intel Core i5-7300HQ 7th Gen processor. 8GB DDR4 RAM. 1TB 5400rpm hard drive. 15.6-inch screen, Nvidia GeForce GTX 1050 4GB Graphics', 0, ''),
(4, '413', 'Redragon Gaming Mouse', 749, 'red_mouse.jpg', 'Adjustable up to 2000/3200DPI 4000 FPS 15G acceleration and an Avago sensor Omron micro switches.6 buttons and an 8-piece weight tuning set (2.4g x 8)', 1, ''),
(4, '414', 'Cosmic Byte Gaming Keyboard', 899, 'cosmic_keyboard.jpg', 'Backlight: Red Backlit, 4 Levels of Brightness Adjustment. Anti-Ghosting: 19 Anti-ghosting Keys. Scratch Resistant Keys: Easy to clean keys', 3, ''),
(4, '415', 'DragonWar Gaming Mouse', 899, 'dragon_mouse.jpg', 'High-speed USB 2.0 PC connectivity. Gaming mouse with 6 control buttons. Mouse Cable Length 1.8 meters. Suitable for almost every surface. Ergonomic Design for professional gamer', 0, ''),
(4, '42', 'JBL C100SI In-Ear Headphones', 749, 'jbl_ear.jpg', 'JBL Signature Sound.Lightweight and comfortable.One-button universal remote with mic', 0, ''),
(4, '43', 'Philips SHE1350 In-Ear Headphones', 199, 'philips_ear.jpg', 'Bass beat vents allow air movement for better sound with a deep rich bass. Small enough for optimum wearing comfort and big enough to deliver crisp, non-distorted sound', 0, ''),
(4, '44', 'JBL GO Bluetooth Speaker', 1749, 'jbl_speaker.jpg', 'Great sound and small form factor. Rechargeable Battery With Up to five hour playtime', 5, ''),
(4, '45', 'Sony SRS-XB10 EXTRA BASS Bluetooth Speaker', 3249, 'sony_speaker.jpg', 'Extra bass for deep and punchy sound. One-touch listening with NFC and Bluetooth. Up to 16 hours of battery life for longer listening hours', 0, ''),
(4, '46', 'Bose SoundLink Color II Bluetooth Speaker', 9199, 'bose_speaker.jpg', 'Innovative Bose technology packs bold sound into a small, water-resistant speaker. Up to 8 hours of playtime.', 0, ''),
(4, '47', 'SanDisk Cruzer Blade USB 2.0 Pen Drive', 399, 'sandisk_pen.jpg', 'Compact Design for Maximum Portability. Store more with capacities up to 16gb 5-year limited warranty.', 0, ''),
(4, '48', 'Seagate 1 TB External Hard Disk', 3899, 'seagate_hdd.jpg', 'Quick file transfer with USB 3.0 connectivity.Dimensions(L x W x H mm)-114,5 x 76 x 20,35 mm. Works interchangeably on PC and Mac computers-without needing to reformat', 0, ''),
(4, '49', 'Samsung 32GB MicroSD Card', 799, 'samsung_sd.jpg', 'Record and play full HD video - with ultra-fast read and write speeds up to 95mbps and 20mbps respectively, the 32GB Evo Plus lets you transfer a 3GB video to your notebook in just 38 seconds', 0, ''),
(5, '51', 'Adidas Football', 3000, 'adidas_football.jpg', 'quality ball with outer Material: Butylene (100%), Thermoplastic Polyurethane (100%)', 0, ''),
(5, '510', 'Puma studs', 1500, 'football_studs.jpg', 'High tear resistance shoes with light weight', 0, ''),
(5, '511', 'Bayern Munich jersey', 6000, 'bayern_munich_jersey.jpg', 'High quality cotton t-shirt by adidas, available size:L,M,S', 0, ''),
(5, '512', 'Leather ball set', 1600, 'cric_leather_ball.jpg', 'Smooth surface quality leather ball', 0, ''),
(5, '513', 'Running shoes', 1000, 'running_light.jpg', 'soft running material shoes with better grip', 0, ''),
(5, '514', 'Sneakers', 300, 'sneakers.jpeg', 'black sneakers with grippy sole', 0, ''),
(5, '52', 'Barcelona Home Jersey', 5500, 'barcelona_jersey.jpg', 'High quality cotton T shirt by Nike. Available in S,M,L,XL,XXL', 0, ''),
(5, '53', 'Baseball bat', 1000, 'baseball_bat.jpg', 'Top quality wood easton bat', 0, ''),
(5, '54', 'Basketball', 800, 'basket_ball.jpg', 'Rubber outer material and built for max output', 0, ''),
(5, '55', 'Puma Football', 2500, 'puma_football.jpg', 'Quality material light ball', 0, ''),
(5, '56', 'Kookabura bat', 800, 'kookabura_bat.jpeg', 'light weight bat made with quality wood', 0, ''),
(5, '57', 'Home workouts', 18000, 'home_workout_equipment.jpeg', 'Sport Type: Home Gym Ideal For: Junior, Senior,Color: Multicolor', 0, ''),
(5, '58', 'Adidas Hockey stick', 1300, 'hockey_stick_adidas.jpg', 'Adidas Practice Field Hockey Sticks Hockey Stick - 36 inch  (Green)', 0, ''),
(5, '59', 'Chess', 400, 'chess.jpg', 'Glossy surface with metal shiny pieces', 0, ''),
(1, '62', 'H&M Green Solid Long T-shirt', 699, 'H&M.jpg', 'Long, straight T-shirt in soft jersey in a relaxed fit with ribbing around the neckline and a very rounded hem.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rid` int(11) NOT NULL,
  `pid` varchar(30) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `review` text NOT NULL,
  `ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rid`, `pid`, `pname`, `username`, `email`, `review`, `ip`) VALUES
(19, '15  ', 'Breakbounce\r\nMen Grey Printed Round Neck T-shirt', 'Sumit', 'sumit@mail.com ', 'Good quality material is used. Highly recommended', '::1'),
(20, '110  ', 'Proline Active', 'Prashant Verma', 'prashantverma@mail.com ', 'An average quality T-shirt, Comfortable to wear all-day.', '::1'),
(21, '111  ', 'Calvin Klein Jeans\r\nMen Navy Blue Body Fit Solid Chinos', 'Prashant Verma', 'prashantverma@mail.com ', 'Too tight to wear, Not satisfied with this jeans', '::1'),
(22, '31  ', 'Hamsafar Everest (Hindi) Paperback', 'Prashant Verma', 'prashantverma@mail.com ', 'Best travelogue I have ever read.', '::1'),
(23, '34  ', 'The Blue Umbrella ', 'Prashant Verma', 'prashantverma@mail.com ', 'What a story.One of the best stories written by Ruskin bond.\r\nI feel very good after reading it.', '::1'),
(24, '113  ', 'Polo Ralph Lauren\r\nSlim Fit Gingham Poplin Shirt', 'Parth', 'parth@email.com ', 'Color is different from the picture shown on website, otherwise, it is good.', '::1'),
(25, '114  ', 'Raymond\r\nMen Blue & White Contemporary Fit Self Design Formal Shirt', 'Parth', 'parth@email.com ', 'It is made for a slim body. the shirt is very lightweight and breathable.Buy if you want a perfect shirt for the office.', '::1'),
(26, '32  ', 'The Lost Faith', 'Parth', 'parth@email.com ', 'Adventure plus fiction.Best combo for the adventure lovers.', '::1'),
(27, '12  ', 'Mast & Harbour\r\nMen Green Self-Design Single-Breasted Casual Blazer', 'Damak', 'damak@mail.com ', 'Worst product...I think worst word also small.. looking so cheap material cheap.', '::1'),
(28, '13  ', 'WROGN\r\nMen Black Slim Fit Mid-Rise Jeans', 'Damak', 'damak@mail.com ', 'It is nice if you see it but after wearing you would realize it is noway good.', '::1'),
(29, '35  ', 'Chai, Chai: Travels in Places Where You Stop But Never Get Off', 'Damak', 'damak@mail.com ', 'It is written for travel lovers. Excellent book to read during travel.', '::1'),
(30, '36  ', 'A Street Cat Named Bob: How one man and his cat found hope on the streets (Paperback) ', 'Damak', 'damak@mail.com ', 'It is written for cat lovers.If you love cats you must read it.', '::1'),
(31, '33  ', 'The Secret (Hardcover)', 'Ishant Vivek', 'ishant@mail.com ', 'Mindblowing book.Superb ', '::1'),
(32, '37  ', 'The SMART Balance (Paperback)', 'Ishant Vivek', 'ishant@mail.com ', 'The author has changed the way of life I live.\r\nMost recommended for all smartphone users.', '::1'),
(33, '410  ', 'Asus Vivobook 15 Laptop', 'Ishant Vivek', 'ishant@mail.com ', 'One who is interested in doing basic daily tasks can go for it.\r\nNot recommended for heavy use.', '::1'),
(34, '413  ', 'Redragon Gaming Mouse', 'Ishant Vivek', 'ishant@mail.com ', 'Very bad mouse for gaming.', '::1'),
(35, '15  ', 'Breakbounce\r\nMen Grey Printed Round Neck T-shirt', 'Sumit', 'sumit@mail.com ', 'It is perfect for slim people but for large man not good', '::1'),
(36, '18  ', 'Levis\r\nMen White Printed Round Neck T-shirt', 'Sumit', 'sumit@mail.com ', 'Not expected this type of poor quality from this brand.', '::1'),
(37, '212  ', 'Imara Yellow Printed Top', 'Sumit', 'sumit@mail.com ', 'It is Orange in color different product recieved', '::1'),
(38, '215  ', 'RARE Blouson Top', 'Sumit', 'sumit@mail.com ', 'Not too good ', '::1'),
(39, '26  ', 'Libas Blue Straight Kurta', 'Sumit', 'sumit@mail.com ', 'Blue color is awesome', '::1'),
(40, '27  ', 'Mimosa Saree', 'Sumit', 'sumit@mail.com ', 'Blac plus gold color combo looks nice', '::1'),
(41, '28  ', 'Chennai Silks Saree', 'Sumit', 'sumit@mail.com ', 'Dull color ', '::1'),
(42, '414  ', 'Cosmic Byte Gaming Keyboard', 'Sumit', 'sumit@mail.com ', 'Some keys got damaged within 10 days.Feeling very sad', '::1'),
(43, '44  ', 'JBL GO Bluetooth Speaker', 'Sumit', 'sumit@mail.com ', 'Soud output is very loud.Enjoyed while listening music on it', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(70) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` char(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `phone`, `address`) VALUES
('Abhishek Singh', 'Abhishek@mail.com', 'bitnoida', '9430000000', 'Jamshedpur,India'),
('Damak', 'damak@mail.com', 'bitnoida', '7292000000', 'Aligarh,India'),
('Ishant Vivek', 'ishant@mail.com', 'bitnoida', '7827000000', 'Gurugram,Haryana'),
('Parth', 'parth@email.com', 'bitnoida', '8077000000', 'Indirapuram,Ghaziabad,India'),
('Prashant Verma', 'prashantverma@mail.com', 'bitnoida', '8527000000', 'Ghaziabad,India'),
('Sumit', 'sumit@mail.com', 'bitnoida', '8800000000', 'Kolkata');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `email` (`email`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
