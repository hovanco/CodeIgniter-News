-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 09:25 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `content`) VALUES
(29, 21, 21, 'the second post'),
(30, 21, 21, 'I am comment'),
(149, 21, 42, 'City of colors'),
(151, 21, 42, 'Beautiful, I love you'),
(154, 18, 42, 'Have you gone NewYork'),
(155, 19, 42, 'waiting me'),
(156, 19, 42, 'I want to go here with you'),
(157, 19, 42, 'Moden city'),
(158, 18, 42, 'Great city!'),
(159, 19, 42, 'Big city'),
(160, 18, 42, 'Update comment function it\'s work'),
(162, 18, 21, 'Comment by han vu'),
(164, 21, 21, 'CRUD comment function success         '),
(166, 19, 41, 'gia cat luong tien sinh            '),
(167, 22, 41, 'Gia Cat Luong comment            '),
(168, 23, 41, '            Gia Cat Luong read this post'),
(169, 24, 41, 'I want to visit here            '),
(170, 25, 41, 'Taiwan 2021            '),
(171, 26, 41, 'Beijing is the capital Chinese            '),
(172, 27, 41, 'Thailand is a neighbor Vietnam            '),
(173, 28, 41, 'I have worked at Jakarta            '),
(174, 29, 41, 'The country famous about model            '),
(175, 29, 41, 'comment at 10:35 pm'),
(176, 18, 41, 'gia cat luong at 9:53 am'),
(177, 18, NULL, 'âdaaddad'),
(178, 48, 21, 'comment at 9:40 am');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(18, 'New York City Ison The Brink', '2021 offers New Yorkers an important opportunity to reimagine who represents us in city government, with the Mayor, Public Advocate, Comptroller, Borough Presidents and all 51 City Council seats up for election this June. With vaccines in motion and recovery within reach, New Yorkers have everything to gain by restoring common sense, problem solvers and bipartisan thinking to our city hall. Join us and help us rebuild New York City.', 'http://localhost:8080/blog/Fileupload/cedric-letsch-pWyX-tVYMXI-unsplash.jpg', 41, '2021-03-31 10:10:48', '2021-03-31 10:10:48'),
(19, 'London Is The Best City In The World for 2021', 'Resonance’s Best Cities rankings quantify and benchmark the quality of place, reputation and competitive identity for the world’s principal cities with metropolitan populations of one million or more.\r\n\r\nResonance President & CEO Chris Fair said: “The World’s Best Cities rankings are composed of experiential factors that people consider most important in choosing a city to live and visit, as well as empirical factors that business decision-makers consider important for business or investment”.', 'http://localhost:8080/blog/Fileupload/post4.jpg', 21, '2021-03-31 10:10:48', '2021-03-31 10:10:48'),
(21, 'One Young World Announces Tokyo as 2021 Host City', 'One Young World is the global forum for young leaders. It identifies, promotes and connects the world’s most impactful young leaders – from every country and sector – to create a better world, with more responsible, more effective leadership. The 2021 Summit promises to be the largest gathering of the One Young World community in its 12-year history, with more than 2,000 young leaders from over 190 countries due to attend. Tokyo will be the second Asian city to have hosted the One Young World Summit, after Bangkok in 2015. ', 'http://localhost:8080/blog/Fileupload/post6.jpg', 21, '2021-03-31 10:10:48', '2021-03-31 10:10:48'),
(22, 'Vẻ đẹp của ruộng bậc thang Sapa', 'Có đôi khi, con người ta cứ mê mải những ánh đèn sáng rực ở thành phố, những nhộn nhịp, ồn ã của đô thị mà quên đi những nét giản dị, đơn sơ của quê hương như những thửa ruộng, cánh cò, những vách nhà, gian bếp. Và thỉnh thoảng, khi muốn sống chậm lại, người ta mới chợt nghĩ đến những nơi như thế và địa điểm du lịch Sa Pa là nơi mà nhiều người lựa chọn để tìm về một chốn bình yên trong tâm hồn.  Có cảnh sắc nơi đâu đẹp bằng Sa Pa, và nơi đâu có thể thấy được sự kỳ vĩ trong khung cảnh bình yên như ruộng bậc thang ở Sa Pa? Những người sành sỏi, các nhà nhiếp ảnh luôn chọn Sa Pa mùa lúa chín là thời gian lý tưởng để tới du lịch thành phố này. Vào mùa lúa chín, những bậc thang cứ từng lớp, từng lớp vàng ươm lên đến tận chân trời. Tạo hóa đã khéo léo ban tặng cho thiên nhiên Sa pa một cảnh quan mà không phải nơi đâu cũng có.', 'http://localhost:8080/blog/Fileupload/post1.jpg', 41, '2021-03-31 10:10:48', '2021-03-31 10:10:48'),
(23, 'Hà Nội', 'Hà Nội (chữ Hán: 河內) là thủ đô của nước Cộng hòa Xã hội chủ nghĩa Việt Nam, cũng là kinh đô của hầu hết các vương triều phong kiến tại Việt Nam trước đây. Do đó, lịch sử Hà Nội gắn liền với sự thăng trầm của lịch sử Việt Nam qua các thời kỳ.[5] Hà Nội là thành phố trực thuộc trung ương và là thành phố có diện tích lớn nhất cả nước từ khi tỉnh Hà Tây sáp nhập vào, đồng thời cũng là địa phương đứng thứ nhì về dân số với hơn 8 triệu người (năm 2019). Tuy nhiên, nếu tính những người cư trú không đăng ký thì dân số thực tế của thành phố này năm 2019 là gần 10 triệu người. Mật độ dân số của Hà Nội là 2.398 người/km², mật độ giao thông là 105,2 xe/km² mặt đường. Hiện nay, Hà Nội là một đô thị loại đặc biệt của Việt Nam.', 'http://localhost:8080/blog/Fileupload/post2.jpg', 41, '2021-03-31 10:10:48', '2021-03-31 10:10:48'),
(24, 'Seoul', 'Seoul (Hangul: 서울Về âm thanh nàynghe (trợ giúp·thông tin), phiên âm tiếng Việt: Xơ-un, Xo-un hoặc Xê-un, phiên âm Hán – Việt: Thủ Nhĩ, tên chính thức là Thành phố Đặc biệt Seoul (Hangul: 서울특별시), là thủ đô kiêm đô thị lớn nhất của Đại Hàn Dân Quốc, nằm bên dòng Sông Hán ở phía tây bắc Hàn Quốc, được xếp hạng là một thành phố toàn cầu hạng Alpha (α) và có GDP danh nghĩa đạt mức 433,5 tỷ USD[9] - tương đương với GDP của Argentina (thống kê năm 2019)[10]. Đây là một trong những thành phố có mức bình quân chi phí sinh hoạt đắt đỏ nhất tại châu Á nói riêng cũng như trên thế giới nói chung,[11] xếp thứ 3 trong khu vực châu Á (sau thủ đô Tokyo của Nhật Bản và Singapore), hạng 8 thế giới về chỉ số \'Thành phố quyền lực toàn cầu\' năm 2020 (Global Power City Index - GPCI).[12]', 'http://localhost:8080/blog/Fileupload/post9.jpg', 41, '2021-03-31 10:10:48', '2021-03-31 10:10:48'),
(25, 'Taiwan', 'Taiwan (traditional Chinese: 臺灣/台灣; simplified Chinese: 台湾; pinyin: Táiwān),[II] officially the Republic of China (ROC),[I][f] is a country in East Asia.[15][16] Neighbouring countries include the People\'s Republic of China (PRC) to the northwest, Japan to the northeast, and the Philippines to the south. The main island of Taiwan has an area of 35,808 square kilometres (13,826 sq mi), with mountain ranges dominating the eastern two-thirds and plains in the western third, where its highly urbanised population is concentrated. The capital is Taipei, which, along with New Taipei and Keelung, forms the largest metropolitan area of Taiwan. Other major cities include Kaohsiung, Taichung, Tainan and Taoyuan. With 23.57 million inhabitants, Taiwan is among the most densely populated countries.', 'http://localhost:8080/blog/Fileupload/post10.jpg', 41, '2021-03-31 10:10:48', '2021-03-31 10:10:48'),
(26, 'Beijing', 'Beijing, China’s sprawling capital, has history stretching back 3 millennia. Yet it’s known as much for modern architecture as its ancient sites such as the grand Forbidden City complex, the imperial palace during the Ming and Qing dynasties. Nearby, the massive Tiananmen Square pedestrian plaza is the site of Mao Zedong’s mausoleum and the National Museum of China, displaying a vast collection of cultural relics.', 'http://localhost:8080/blog/Fileupload/post11.jpg', 41, '2021-03-31 10:10:48', '2021-03-31 10:10:48'),
(27, 'Bangkok', 'Bangkok, Thailand’s capital, is a large city known for ornate shrines and vibrant street life. The boat-filled Chao Phraya River feeds its network of canals, flowing past the Rattanakosin royal district, home to opulent Grand Palace and its sacred Wat Phra Kaew Temple. Nearby is Wat Pho Temple with an enormous reclining Buddha and, on the opposite shore, Wat Arun Temple with its steep steps and Khmer-style spire.', 'http://localhost:8080/blog/Fileupload/post12.jpg', 41, '2021-03-31 10:10:48', '2021-03-31 10:10:48'),
(28, 'Jakarta', 'Jakarta, Indonesia\'s massive capital, sits on the northwest coast of the island of Java. A historic mix of cultures – Javanese, Malay, Chinese, Arab, Indian and European – has influenced its architecture, language and cuisine. The old town, Kota Tua, is home to Dutch colonial buildings, Glodok (Jakarta’s Chinatown) and the old port of Sunda Kelapa, where traditional wooden schooners dock.', 'http://localhost:8080/blog/Fileupload/post15.jpg', 41, '2021-03-31 10:10:48', '2021-03-31 10:10:48'),
(29, 'Manila', 'Manila, the capital of the Philippines, is a densely populated bayside city on the island of Luzon, which mixes Spanish colonial architecture with modern skyscrapers. Intramuros, a walled city in colonial times, is the heart of Old Manila. It’s home to the baroque 16th-century San Agustin Church as well as Fort Santiago, a storied citadel and former military prison. ', 'http://localhost:8080/blog/Fileupload/post16.jpg', 41, '2021-03-31 10:10:48', '2021-03-31 10:10:48'),
(44, 'Dubai', 'Dubai is a city and emirate in the United Arab Emirates known for luxury shopping, ultramodern architecture and a lively nightlife scene. Burj Khalifa, an 830m-tall tower, dominates the skyscraper-filled skyline. At its foot lies Dubai Fountain, with jets and lights choreographed to music. On artificial islands just offshore is Atlantis, The Palm, a resort with water and marine-animal parks.', 'http://localhost:8080/blog/Fileupload/post17.jpg', 21, '2021-03-31 15:11:43', '2021-03-31 15:11:43'),
(47, 'Ruộng bậc thang Sapa', 'Có đôi khi, con người ta cứ mê mải những ánh đèn sáng rực ở thành phố, những nhộn nhịp, ồn ã của đô thị mà quên đi những nét giản dị, đơn sơ của quê hương như những thửa ruộng, cánh cò, những vách nhà, gian bếp. Và thỉnh thoảng, khi muốn sống chậm lại, người ta mới chợt nghĩ đến những nơi như thế và địa điểm du lịch Sa Pa là nơi mà nhiều người lựa chọn để tìm về một chốn bình yên trong tâm hồn.  Có cảnh sắc nơi đâu đẹp bằng Sa Pa, và nơi đâu có thể thấy được sự kỳ vĩ trong khung cảnh bình yên như ruộng bậc thang ở Sa Pa? Những người sành sỏi, các nhà nhiếp ảnh luôn chọn Sa Pa mùa lúa chín là thời gian lý tưởng để tới du lịch thành phố này. Vào mùa lúa chín, những bậc thang cứ từng lớp, từng lớp vàng ươm lên đến tận chân trời. Tạo hóa đã khéo léo ban tặng cho thiên nhiên Sa pa một cảnh quan mà không phải nơi đâu cũng có.', 'http://localhost:8080/blog/Fileupload/post1.jpg', 21, '2021-04-01 04:14:05', '2021-04-01 04:14:05'),
(48, 'Taiwan Có đôi khi, con người ta cứ mê mải những ánh đèn sáng rực ở thành phố, những nhộn nhịp, ồn ã của đô thị mà quên đi', 'Có đôi khi, con người ta cứ mê mải những ánh đèn sáng rực ở thành phố, những nhộn nhịp, ồn ã của đô thị mà quên đi những nét giản dị, đơn sơ của quê hương như những thửa ruộng, cánh cò, những vách nhà, gian bếp. Và thỉnh thoảng, khi muốn sống chậm lại, người ta mới chợt nghĩ đến những nơi như thế và địa điểm du lịch Sa Pa là nơi mà nhiều người lựa chọn để tìm về một chốn bình yên trong tâm hồn.  Có cảnh sắc nơi đâu đẹp bằng Sa Pa, và nơi đâu có thể thấy được sự kỳ vĩ trong khung cảnh bình yên như ruộng bậc thang ở Sa Pa? Những người sành sỏi, các nhà nhiếp ảnh luôn chọn Sa Pa mùa lúa chín là thời gian lý tưởng để tới du lịch thành phố này. Vào mùa lúa chín, những bậc thang cứ từng lớp, từng lớp vàng ươm lên đến tận chân trời. Tạo hóa đã khéo léo ban tặng cho thiên nhiên Sa pa một cảnh quan mà không phải nơi đâu cũng có.', 'http://localhost:8080/blog/Fileupload/post2.jpg', 21, '2021-04-01 04:19:48', '2021-04-01 04:19:48'),
(49, 'New York City Ison The Brink', 'Dubai is a city and emirate in the United Arab Emirates known for luxury shopping, ultramodern architecture and a lively nightlife scene. Burj Khalifa, an 830m-tall tower, dominates the skyscraper-filled skyline. At its foot lies Dubai Fountain, with jets and lights choreographed to music. On artificial islands just offshore is Atlantis, The Palm, a resort with water and marine-animal parks.', 'http://localhost:8080/blog/Fileupload/post12.jpg', 21, '2021-04-01 02:01:23', '2021-04-01 02:01:23'),
(50, 'Berlin', 'Berlin, Germany’s capital, dates to the 13th century. Reminders of the city\'s turbulent 20th-century history include its Holocaust memorial and the Berlin Wall\'s graffitied remains. Divided during the Cold War, its 18th-century Brandenburg Gate has become a symbol of reunification. The city\'s also known for its art scene and modern landmarks like the gold-colored, swoop-roofed Berliner Philharmonie, built in 1963.', 'http://localhost:8080/blog/Fileupload/berlin..jpg', 21, '2021-04-01 02:51:23', '2021-04-01 02:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `avatar`, `user_name`, `password`) VALUES
(19, 'Be', 'Rain', '0987654321', 'username@gmail.com', 'http://localhost:8080/blog/Fileupload/user2.jpg', 'username', '4a7d1ed414474e4033ac29ccb8653d9b'),
(20, 'Khổng Minh', 'Tiên SInh', '1234567890', 'khongminh@gmail.com', 'http://localhost:8080/blog/Fileupload/user4.jpg', '', ''),
(21, 'Trần', 'Cao Vân', '430', 'hanvu@gmail.com', 'http://localhost:8080/blog/Fileupload/user7.jpg', 'hanvu', '4a7d1ed414474e4033ac29ccb8653d9b'),
(40, 'Lữ Bố', 'Tam Quốc Diễn Nghĩa', '1900561275', 'lubo@gmail.com', 'http://localhost:8080/blog/Fileupload/user9.jpg', 'lubo', '4a7d1ed414474e4033ac29ccb8653d9b'),
(41, 'Hán Vũ', 'Mặt Đỏ Râu Dài', '18001898', 'giacatluong@gmail.com', 'http://localhost:8080/blog/Fileupload/user6.jpeg', 'giacatluong', '4a7d1ed414474e4033ac29ccb8653d9b'),
(42, 'Tô', 'Hiến Thành', '99', 'taothao@gmail.com', 'http://localhost:8080/blog/Fileupload/user3.jpg', 'taothao', '4a7d1ed414474e4033ac29ccb8653d9b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Test3` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `Test3` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `test` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
