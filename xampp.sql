-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2020 at 03:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci3blog`
--
CREATE DATABASE IF NOT EXISTS `ci3blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ci3blog`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Technology'),
(2, 'Business'),
(5, 'Entertainment'),
(6, 'Lifestyle');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 18, 'John Osim', 'calabarplaylist@gmail.com', 'The Email field must contain a valid email', '2020-10-11'),
(2, 18, 'Mike Osim', 'playlist@gmail.com', 'The Body field is required', '2020-10-11'),
(3, 6, 'Takon Ajie', 'nkimajie2@gmail.com', 'Surely i will get there, with commitment and devotion', '2020-10-11'),
(4, 18, 'ajetee', 'calabarplaylist@gmail.com', 'omooo is plenty\r\n', '2020-10-11'),
(5, 20, 'Takon Ajie', 'calabarplaylist@gmail.com', 'ajie is a boy\r\n', '2020-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `postimage` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `postimage`, `created_at`) VALUES
(5, 2, 'Post Two', 'Post-Two', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro perspiciatis autem laudantium veniam iusto? Vitae iure soluta in minus praesentium culpa id maiores numquam! Cumque rerum velit laudantium provident odit.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Porro perspiciatis autem laudantium veniam iusto? Vitae iure soluta in minus praesentium culpa id maiores numquam! Cumque rerum velit laudantium provident odit.', 'noimage.jpg', '2020-10-07 13:23:25'),
(6, 2, 'Post Three', 'Post-Three', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro perspiciatis autem laudantium veniam iusto? Vitae iure soluta in minus praesentium culpa id maiores numquam! Cumque rerum velit laudantium provident odit.</p>\r\n', 'noimage.jpg', '2020-10-07 13:23:55'),
(18, 1, 'Post nine', 'Post-nine', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim</p>\r\n', 'My-Native-fashion-Latest-senator-wears-1.jpg', '2020-10-08 13:31:51'),
(19, 1, 'Lorem ipsum dolor sit', 'Lorem-ipsum-dolor-sit', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim&nbsp;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim&nbsp;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim</p>\r\n', '118263640_3270548076372391_5790121726762672936_n.jpg', '2020-10-12 16:51:51'),
(20, 5, 'We want SARS', 'We-want-SARS', '<p>Moments after the Inspector General of Police, Adamu Mohammed, announced the disbandment of SARS some Nigerian parents have come out, to kick against the decision.</p>\r\n\r\n<p>In a viral video on social media, the parents were seen raising their placards, and screaming&nbsp;<em>&ldquo;we want SARS&rdquo;</em></p>\r\n\r\n<p>According to the parents the disbandment of the Special Anti Robbery Squad is not a wise decision, adding that it would increase crime rate in the country.</p>\r\n\r\n<p>Meanwhile many other Nigerians, especially youths who tirelessly fought for the cause, have dragged them for taking such action, and refusing to consider the feelings of the general public, stating that their sons and daughters may be the next victims</p>\r\n', 'c1.JPG', '2020-10-12 17:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'Ajie', 'Takon', 'nkimajie2@gmail.com', 'a3269244cec64a32c1222933c988d91b'),
(2, 'okon', 'John', 'calabarplaylist@gmail.com', 'c4dd95d0b264043e4ca6f6cddfe5689e'),
(3, 'mike', 'osim', 'xtremenaija2@gmail.com', 'bf3b2290e229da2ba272a81c602ea88d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `ci4blog`
--
CREATE DATABASE IF NOT EXISTS `ci4blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ci4blog`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Ajie', 'Takon', 'nkimajie2@gmail.com', '$2y$10$TzH48/PwWdIYm8V9.tSoLe/u54aPwWxZ3pvNlmgURbx.zMlFhc2Iu', '2020-09-23 06:09:34', '2020-09-23 06:09:34'),
(2, 'okon', 'John', 'calabarplaylist@gmail.com', '$2y$10$4G/scfAtbFFGhMqg1lq7UOn.yV9EDcNV6G08AZ5aARUIcFb9jhyP.', '2020-09-23 06:17:22', '2020-09-23 06:17:22'),
(3, 'nkim', 'ajie', 'xtremenaija2@gmail.com', '$2y$10$OyQ91OHEs5WprBNAwt3aCublh6R3y7d8NPEG5deZdmpGOBRaJgtuq', '2020-09-24 01:58:22', '2020-09-24 01:58:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `ciblog`
--
CREATE DATABASE IF NOT EXISTS `ciblog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ciblog`;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `p_title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `p_title`, `slug`, `body`) VALUES
(1, 'Elvis sighted a goat', 'elvis-sighted', 'Elvis was sighted at the Podunk internet cafe. It looked like he was writing a CodeIgniter app.'),
(2, 'Say it isn\'t so and let it be so', 'say-it-isnt-so', 'Scientists conclude that some programmers have a sense of humor of man'),
(3, 'Caffeination, Yes ohh', 'caffeination-yes', 'World\'s largest coffee shop open onsite nested coffee shop for staff only you'),
(4, 'john is a boy', 'john-is-a-boy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis iste asperiores, '),
(9, 'john is a boy', 'john-is-a-boy', '<p>awsdfghjnlkszgdxy6dt5t5d</p>\r\n'),
(10, 'john is a boy', 'john-is-a-boy', '<p>awsdfghjnlkszgdxy6dt5t5d</p>\r\n'),
(12, 'boss takon', 'boss-takon', '<p>ajie is a boy</p>\r\n'),
(13, 'Lorem ipsum dolor sit am', 'lorem-ipsum-dolor-sit-am', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>\r\n'),
(14, 'amet consectetur adipisicing elit.', 'amet-consectetur-adipisicing-elit', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit.&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit.&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>\r\n'),
(15, '1 1 1Lorem ipsum dolor sit amet consectetur adipisicing elit.', '1-1-1lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit', '1 1 1Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n1 1 1Lorem ipsum dolor sit amet consectetur adipisicing elit.'),
(16, 'let us work together', 'let-us-work-together', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(3, 'mike', 'John', 'john@gmail.com', '$2y$10$oSBTZOYQN9miTEMCH7Ja7.sVAUpPozhE5UV3mhXY0Eh3SKsIWXBxq'),
(5, 'Ajie', 'Takon', 'nkimajie2@gmail.com', '$2y$10$pVTa8JIyNgHypoLOwD25FuGyskiNF6J4ypyasTdYOw7ppzV.8UNI.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `firstci4`
--
CREATE DATABASE IF NOT EXISTS `firstci4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `firstci4`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_author` int(11) NOT NULL,
  `post_created_at` datetime NOT NULL,
  `post_updated_at` datetime NOT NULL,
  `post_deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_content`, `post_author`, `post_created_at`, `post_updated_at`, `post_deleted_at`) VALUES
(9, 'ajie is a boss', '\'Take some more bread-and-butter--\' \'But what am.', 4, '1979-06-26 06:39:41', '2020-09-09 08:20:06', '2016-01-25 14:55:28'),
(10, 'Voluptas officia voluptas consectetur eos.', 'Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be a letter, written by the soldiers, who of course you know that you\'re mad?\' \'To begin with,\' said the Mock Turtle angrily: \'really you.', 5, '1989-02-27 12:59:35', '1979-11-04 06:04:28', '1989-10-22 12:59:02'),
(11, 'Sit repudiandae et sed sunt quisquam.', 'I\'ll manage better this time,\' she said, as politely as she could see it trot away quietly into the wood for fear of their wits!\' So she stood still where she was, and waited. When the sands are all.', 6, '1988-10-23 15:42:37', '2002-07-03 03:11:27', '1997-09-11 17:52:49'),
(12, 'Sed eum facere aliquid incidunt expedita.', 'I would talk on such a neck as that! No, no! You\'re a serpent; and there\'s no use now,\' thought poor Alice, who was sitting on a little way out of the sort!\' said Alice. \'Why not?\' said the King,.', 7, '2009-09-03 20:23:31', '1986-12-09 19:24:16', '2015-10-31 00:00:07'),
(13, 'Esse autem sequi est molestiae.', 'Mock Turtle had just begun \'Well, of all this time, sat down and saying to herself how this same little sister of hers would, in the house down!\' said the Hatter. He had been all the jurymen are.', 8, '1995-06-08 20:29:03', '2012-08-22 13:59:08', '1997-03-03 18:35:45'),
(14, 'Harum tenetur similique fugiat non quaerat aut eaque.', 'Queen furiously, throwing an inkstand at the jury-box, or they would call after her: the last few minutes, and she put them into a conversation. \'You don\'t know where Dinn may be,\' said the Rabbit\'s.', 9, '2002-11-12 15:18:54', '1974-10-19 13:56:31', '2005-10-25 00:18:58'),
(15, 'Itaque aperiam et iste assumenda.', 'Alice, that she still held the pieces of mushroom in her head, and she felt that she never knew so much contradicted in her hand, and Alice was too much of it had lost something; and she tried to.', 10, '1970-08-23 11:15:16', '2015-05-17 13:25:41', '1981-05-12 15:22:53'),
(16, 'Vitae voluptas hic non quisquam.', 'Alice noticed with some severity; \'it\'s very interesting. I never understood what it might not escape again, and Alice rather unwillingly took the regular course.\' \'What was THAT like?\' said Alice..', 11, '2000-01-18 08:07:23', '1994-03-30 09:15:57', '2011-06-25 22:20:49'),
(17, 'Asperiores qui nesciunt voluptatum exercitationem ratione provident.', 'How the Owl had the dish as its share of the teacups as the door as you say it.\' \'That\'s nothing to do: once or twice she had nothing else to say whether the pleasure of making a daisy-chain would.', 12, '1978-08-20 23:39:08', '2020-05-05 09:44:22', '1976-01-25 03:00:22'),
(18, 'Commodi quis in quod laborum.', 'However, when they arrived, with a sudden leap out of breath, and said to herself; \'his eyes are so VERY nearly at the mushroom for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said the King..', 13, '2007-08-19 09:07:22', '2000-12-25 02:59:06', '1990-06-10 10:17:55'),
(19, 'Occaecati adipisci delectus ab.', 'She had just begun \'Well, of all the creatures order one about, and called out to be ashamed of yourself,\' said Alice, and her eyes anxiously fixed on it, and found in it a violent blow underneath.', 14, '2011-09-15 07:34:35', '2010-02-23 14:10:28', '1984-06-12 07:05:37'),
(20, 'Qui ut omnis veritatis est ipsam nobis dolorem inventore.', 'HAVE tasted eggs, certainly,\' said Alice, \'I\'ve often seen them at dinn--\' she checked herself hastily, and said to herself, as she could remember about ravens and writing-desks, which wasn\'t much..', 15, '1987-04-10 09:24:58', '2016-12-14 18:59:29', '2018-01-03 19:52:16'),
(21, 'Blanditiis quibusdam non voluptas sed.', 'After a while she remembered the number of executions the Queen jumped up on to the door. \'Call the next witness!\' said the Hatter, it woke up again as quickly as she could, for the baby, the shriek.', 16, '1971-12-29 00:15:15', '1981-05-10 05:46:37', '2001-09-08 05:17:17'),
(22, 'Cupiditate dolorem et vitae recusandae laboriosam hic commodi.', 'WOULD twist itself round and look up in a thick wood. \'The first thing she heard one of the reeds--the rattling teacups would change to tinkling sheep-bells, and the pair of gloves and the words.', 17, '2012-05-10 01:25:40', '2004-10-15 20:32:25', '2016-08-06 18:53:58'),
(23, 'Est iure nisi aut distinctio cum expedita.', 'Mock Turtle said: \'no wise fish would go through,\' thought poor Alice, \'to speak to this last word two or three times over to the part about her any more questions about it, so she helped herself to.', 18, '1989-03-10 15:12:47', '1978-12-14 08:42:13', '2001-06-08 17:50:09'),
(24, 'Aut architecto et qui itaque impedit.', 'I\'ll get into her head. \'If I eat one of the day; and this Alice would not allow without knowing how old it was, even before she had this fit) An obstacle that came between Him, and ourselves, and.', 19, '1973-10-05 09:59:58', '2016-07-05 23:04:00', '1991-11-29 05:01:16'),
(25, 'Incidunt facere vero commodi in aut.', 'Stigand, the patriotic archbishop of Canterbury, found it advisable--\"\' \'Found WHAT?\' said the Queen, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that green.', 20, '2008-01-01 07:18:19', '1994-05-30 23:32:51', '1990-05-29 20:08:54'),
(26, 'Aliquid odit dicta architecto dolorem et error ut esse.', 'This answer so confused poor Alice, that she had asked it aloud; and in his sleep, \'that \"I like what I get\" is the capital of Paris, and Paris is the same thing,\' said the Cat. \'--so long as there.', 21, '2002-02-18 04:02:44', '1986-07-18 22:49:42', '1972-12-04 23:50:19'),
(27, 'Id facere fuga ipsum eligendi est fugit.', 'Alice. \'I\'m glad they don\'t give birthday presents like that!\' \'I couldn\'t afford to learn it.\' said the King said to herself, as she tucked it away under her arm, that it was all dark overhead;.', 2, '2002-07-22 11:19:55', '1989-05-22 09:58:50', '1992-04-29 15:38:06'),
(28, 'Nostrum sit et amet sint eos quis.', 'Dormouse\'s place, and Alice joined the procession, wondering very much of it at last, and managed to put everything upon Bill! I wouldn\'t say anything about it, even if my head would go anywhere.', 3, '2013-01-26 09:13:53', '1977-01-20 07:20:34', '2007-08-21 01:35:27'),
(29, 'Dolorem quasi aut ullam voluptas placeat.', 'Miss, we\'re doing our best, afore she comes, to--\' At this moment the door and went on to the Mock Turtle a little timidly, for she had succeeded in bringing herself down to nine inches high..', 4, '1976-01-28 22:50:50', '1982-03-17 23:17:05', '2006-06-07 08:56:16'),
(30, 'Non doloribus nihil reprehenderit minus.', 'I grow at a reasonable pace,\' said the White Rabbit, with a growl, And concluded the banquet--] \'What IS a long tail, certainly,\' said Alice, \'but I haven\'t had a VERY unpleasant state of mind, she.', 5, '1993-04-13 14:10:36', '1975-10-31 06:58:08', '2017-09-24 11:47:15'),
(31, 'Deleniti repudiandae qui ex sint magni eligendi ut.', 'King. (The jury all brightened up again.) \'Please your Majesty,\' said the King put on her hand, watching the setting sun, and thinking of little Alice was thoroughly puzzled. \'Does the boots and.', 6, '2019-06-07 19:56:10', '2015-01-16 03:24:34', '1994-04-12 08:51:13'),
(32, 'Amet repellendus qui culpa ipsum accusantium excepturi ipsa qui.', 'King said to herself; \'I should like to see the Queen. An invitation from the Gryphon, and the happy summer days. THE.', 7, '2007-04-11 20:12:13', '1984-06-20 14:05:25', '2009-06-05 12:48:43'),
(33, 'Ut inventore vel et iure.', 'Alice. \'Why not?\' said the Queen had never forgotten that, if you could see her after the rest waited in silence. At last the Mock Turtle said: \'advance twice, set to work very diligently to write.', 8, '1995-12-20 13:54:31', '1986-03-30 18:10:34', '2003-11-15 04:03:06'),
(34, 'Ut molestiae provident soluta qui hic eveniet.', 'Alice a good deal on where you want to see what was on the floor: in another moment it was good practice to say when I sleep\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I.', 9, '1975-11-05 13:15:02', '1991-08-13 09:04:51', '1971-03-21 03:59:23'),
(35, 'Perspiciatis aliquid non accusamus.', 'Who ever saw one that size? Why, it fills the whole cause, and condemn you to set them free, Exactly as we were. My notion was that she could not help bursting out laughing: and when she went on.', 10, '2008-08-04 18:52:06', '1975-05-29 03:54:20', '2019-04-04 03:32:21'),
(36, 'Quod earum numquam aut sequi ut ipsum optio saepe.', 'Alice could hardly hear the name of nearly everything there. \'That\'s the first to break the silence. \'What day of the door with his tea spoon at the March Hare. \'I didn\'t write it, and on both sides.', 11, '2015-04-20 15:40:01', '1997-09-29 11:15:33', '1976-10-20 10:38:31'),
(37, 'Autem voluptatum earum quam doloribus laudantium sed.', 'I can\'t show it you myself,\' the Mock Turtle. \'No, no! The adventures first,\' said the one who got any advantage from the trees had a head could be beheaded, and that in some book, but I shall be.', 12, '1987-12-22 16:04:28', '2002-10-02 13:28:24', '2004-01-15 19:05:45'),
(38, 'Numquam non natus occaecati non.', 'Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at this moment Five, who had not attended to this mouse? Everything is so out-of-the-way down here,.', 13, '2014-06-02 19:10:45', '2020-03-26 16:19:55', '2009-09-01 05:20:32'),
(39, 'Sapiente voluptas amet fuga laborum nostrum odit occaecati.', 'I to get out again. Suddenly she came upon a time there were any tears. No, there were ten of them, with her head! Off--\' \'Nonsense!\' said Alice, \'how am I to get an opportunity of showing off a.', 14, '1986-10-16 01:19:12', '1995-06-29 15:00:12', '1999-01-25 08:53:31'),
(40, 'Praesentium occaecati dolore ratione.', 'As she said this, she was now about two feet high, and was a real Turtle.\' These words were followed by a very pretty dance,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she began very.', 15, '1970-10-07 06:56:24', '1984-04-28 23:24:22', '2011-05-10 14:40:07'),
(41, 'Optio distinctio magnam amet quia odio mollitia sequi.', 'That your eye was as much use in saying anything more till the eyes appeared, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can remember feeling a little of it?\' said.', 16, '2014-02-18 17:39:57', '2008-04-19 16:05:07', '2010-05-02 23:10:32'),
(42, 'Odio inventore et et voluptas.', 'Alice. \'That\'s the most curious thing I ever heard!\' \'Yes, I think it would make with the Queen, who was sitting on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS.', 17, '1977-09-29 05:55:44', '1996-03-22 03:08:06', '2008-06-13 09:20:04'),
(43, 'Voluptatem est et quos dolores occaecati expedita rerum.', 'I used to it in time,\' said the Mock Turtle is.\' \'It\'s the oldest rule in the pool was getting very sleepy; \'and they all cheered. Alice thought to herself \'That\'s quite enough--I hope I shan\'t go,.', 18, '1986-05-29 13:21:30', '2008-12-14 04:01:02', '2014-07-07 20:06:56'),
(44, 'Blanditiis similique eum occaecati itaque vel placeat.', 'Let me see: that would happen: \'\"Miss Alice! Come here directly, and get in at once.\' However, she got used to it as a lark, And will talk in contemptuous tones of the way the people that walk with.', 19, '1997-08-08 11:11:38', '2004-08-24 19:57:27', '1973-09-04 05:31:05'),
(45, 'Sed voluptas voluptate ut qui ducimus qui explicabo eius.', 'I would talk on such a long way. So they began moving about again, and we won\'t talk about her and to hear it say, as it turned round and swam slowly back again, and that\'s all I can kick a little!\'.', 20, '2016-05-13 07:05:13', '1989-05-12 03:43:30', '1984-09-16 23:39:55'),
(46, 'Unde iure sapiente voluptatibus non ut unde enim.', 'I\'ve got to grow here,\' said the Caterpillar took the place where it had VERY long claws and a pair of boots every Christmas.\' And she tried the roots of trees, and I\'ve tried hedges,\' the Pigeon in.', 21, '2008-10-25 21:55:39', '2019-01-31 23:21:02', '1970-02-25 08:21:58'),
(47, 'Non alias explicabo eligendi dolores perspiciatis consequatur et ut.', 'This seemed to be talking in a low, hurried tone. He looked at the door-- Pray, what is the capital of Paris, and Paris is the capital of Paris, and Paris is the capital of Paris, and Paris is the.', 2, '1987-10-25 10:23:18', '2005-11-05 08:51:38', '1976-06-27 07:42:43'),
(48, 'Velit eveniet rerum sint a.', 'I COULD NOT SWIM--\" you can\'t think! And oh, my poor little feet, I wonder if I shall have somebody to talk to.\' \'How are you thinking of?\' \'I beg your pardon!\' cried Alice in a great hurry. \'You.', 3, '2002-08-04 12:05:47', '1983-04-09 21:42:15', '1992-11-23 08:07:12'),
(49, 'Veritatis est ut unde.', 'The only things in the distance would take the hint; but the three were all crowded round her, about the twentieth time that day. \'No, no!\' said the Mock Turtle. So she went on eagerly. \'That\'s.', 4, '1998-02-03 15:10:09', '1981-07-24 12:52:18', '2001-06-08 06:56:12'),
(50, 'Labore quas quibusdam explicabo sunt.', 'I was a different person then.\' \'Explain all that,\' he said do. Alice looked all round the neck of the reeds--the rattling teacups would change to dull reality--the grass would be as well to say but.', 5, '2018-07-13 07:34:57', '1970-04-18 22:01:46', '1985-10-14 00:32:59'),
(51, 'Non quia natus neque saepe ut optio possimus.', 'Alice, \'shall I NEVER get any older than I am now? That\'ll be a book written about me, that there ought! And when I find a thing,\' said the March Hare. Visit either you like: they\'re both mad.\' \'But.', 6, '2009-09-09 20:36:48', '2017-10-08 07:00:24', '1983-08-05 03:03:37'),
(52, 'Aspernatur voluptas id aut eum ratione quasi qui.', 'The first witness was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I wish I hadn\'t drunk quite so much!\' said Alice, surprised at this, she came rather late, and.', 7, '2010-05-31 20:39:00', '1995-06-19 16:16:21', '1993-09-09 07:04:37'),
(53, 'Omnis est eveniet et et.', 'Caterpillar decidedly, and there she saw in another moment, splash! she was peering about anxiously among the people near the house till she was peering about anxiously among the trees upon her.', 8, '2006-03-23 06:07:56', '1983-07-26 22:58:50', '1996-05-24 10:52:59'),
(54, 'Debitis fuga voluptatem ea dolorum.', 'He looked anxiously round, to make ONE respectable person!\' Soon her eye fell upon a time she had been found and handed them round as prizes. There was a long sleep you\'ve had!\' \'Oh, I\'ve had such a.', 9, '1988-04-11 05:00:06', '1988-10-28 04:55:23', '2017-12-30 05:46:02'),
(55, 'Et officiis omnis voluptatem voluptatem sit.', 'Queen\'s voice in the long hall, and close to them, and then I\'ll tell him--it was for bringing the cook was busily stirring the soup, and seemed to have wondered at this, but at last turned sulky,.', 10, '1978-12-19 12:18:54', '2003-08-09 09:45:39', '2002-03-28 22:22:04'),
(56, 'Sequi fugit et ullam aut.', 'King said to herself as she went on, turning to the Knave. The Knave of Hearts, and I had it written up somewhere.\' Down, down, down. Would the fall NEVER come to the rose-tree, she went on. \'Or.', 11, '2008-06-13 20:54:16', '2017-05-03 05:00:00', '2009-04-23 17:51:43'),
(57, 'Repellendus adipisci voluptatibus et itaque.', 'There was certainly English. \'I don\'t see how he did not like the Queen?\' said the Caterpillar. Alice folded her hands, and she crossed her hands on her lap as if it began ordering people about like.', 12, '1981-07-10 09:36:13', '2017-06-14 00:50:19', '2002-01-22 16:19:34'),
(58, 'Magni amet velit ipsa eos enim accusantium debitis.', 'Wonderland of long ago: and how she would get up and ran till she fancied she heard the King and the Hatter began, in a fight with another dig of her childhood: and how she would gather about her.', 13, '1997-07-03 03:38:57', '2002-07-18 12:59:18', '2020-03-23 21:39:03'),
(59, 'Repellendus voluptatem in possimus ullam est iure nihil.', 'Dinah stop in the middle, nursing a baby; the cook had disappeared. \'Never mind!\' said the young lady to see that she let the jury--\' \'If any one left alive!\' She was looking for eggs, I know I have.', 14, '1978-10-31 00:37:54', '2012-03-19 23:56:08', '2020-08-28 06:29:58'),
(60, 'Consequatur culpa qui quis excepturi.', 'I\'ve often seen them so shiny?\' Alice looked all round the thistle again; then the other, and making faces at him as he spoke. \'UNimportant, of course, I meant,\' the King said to a farmer, you know,.', 15, '1971-07-08 19:07:12', '1982-12-28 18:11:07', '2000-10-31 23:46:08'),
(61, 'Deserunt porro qui cum tenetur delectus facilis.', 'The Dormouse slowly opened his eyes very wide on hearing this; but all he SAID was, \'Why is a very difficult game indeed. The players all played at once and put it to speak first, \'why your cat.', 16, '1971-10-07 10:08:08', '1997-01-24 00:14:59', '1992-08-15 00:44:57'),
(62, 'Possimus porro mollitia sed accusantium voluptatem optio distinctio modi.', 'For instance, if you drink much from a Caterpillar The Caterpillar and Alice thought to herself. At this moment the door began sneezing all at once. \'Give your evidence,\' said the Caterpillar. Alice.', 17, '1992-10-12 22:26:36', '2018-07-04 19:26:25', '1979-04-03 11:53:18'),
(63, 'Dolor veritatis consequatur aut laboriosam odio error voluptas veniam.', 'WHAT things?\' said the youth, \'one would hardly suppose That your eye was as long as I tell you!\' said Alice. The poor little thing sat down with her arms round it as you might knock, and I shall.', 18, '2008-03-12 19:12:45', '2005-11-19 17:29:12', '1970-06-01 15:57:16'),
(64, 'Explicabo assumenda aut aut ab architecto omnis optio.', 'Dinah, tell me the list of the garden: the roses growing on it but tea. \'I don\'t believe you do either!\' And the moral of that dark hall, and close to them, they set to work, and very nearly carried.', 19, '1976-01-04 14:40:02', '1975-08-26 07:33:24', '1994-06-04 00:14:59'),
(65, 'Ratione ut ratione tenetur adipisci velit id.', 'Alice (she was so small as this before, never! And I declare it\'s too bad, that it is!\' \'Why should it?\' muttered the Hatter. \'He won\'t stand beating. Now, if you wouldn\'t keep appearing and.', 20, '2006-01-16 19:57:08', '2002-11-24 18:15:51', '1979-12-12 05:16:11'),
(66, 'Earum quis rerum earum porro.', 'Queen of Hearts, she made her so savage when they saw her, they hurried back to them, and then hurried on, Alice started to her in such long ringlets, and mine doesn\'t go in at all?\' said Alice, and.', 21, '1985-08-14 10:10:57', '1981-11-17 02:32:57', '2001-07-28 09:35:11'),
(67, 'Ut tempore aliquam vel nesciunt quo quidem est.', 'She generally gave herself very good advice, (though she very seldom followed it), and sometimes shorter, until she had to pinch it to make out exactly what they said. The executioner\'s argument.', 2, '1994-06-30 21:57:10', '1972-05-06 13:15:02', '1982-10-16 05:45:28'),
(68, 'Cumque placeat iure et quo aut possimus.', 'I can\'t quite follow it as well wait, as she spoke--fancy CURTSEYING as you\'re falling through the wood. \'It\'s the stupidest tea-party I ever saw one that size? Why, it fills the whole cause, and.', 3, '2009-01-30 16:52:23', '2014-01-24 16:15:23', '1978-02-12 20:37:38'),
(69, 'Voluptas ut dolor fugiat in quod expedita veritatis.', 'Dormouse followed him: the March Hare. The Hatter looked at it, busily painting them red. Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' said Alice. \'Well, then,\' the Cat again,.', 4, '2000-11-01 05:23:38', '1981-11-04 07:28:04', '2010-10-31 14:26:11'),
(70, 'Itaque laudantium totam eum sequi sit quod facere.', 'I wonder what Latitude or Longitude either, but thought they were getting so thin--and the twinkling of the fact. \'I keep them to be ashamed of yourself for asking such a fall as this, I shall have.', 5, '1989-03-15 13:01:48', '1983-11-09 02:56:29', '2006-09-27 01:45:23'),
(71, 'Corporis officia sint non totam praesentium natus ex.', 'Dormouse shook itself, and began staring at the mushroom (she had grown in the schoolroom, and though this was of very little use without my shoulders. Oh, how I wish I had not long to doubt, for.', 6, '1997-11-07 20:57:59', '1991-02-25 14:35:55', '1972-04-20 12:46:53'),
(72, 'Ratione voluptatibus soluta perspiciatis.', 'HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, always ready to talk to.\' \'How are you getting on now, my dear?\' it continued, turning to the door, and tried.', 7, '1996-06-27 11:45:41', '2017-02-20 20:03:07', '2011-03-06 21:16:44'),
(73, 'Aut occaecati vel debitis.', 'Alice: \'three inches is such a thing before, and she hurried out of the lefthand bit of stick, and tumbled head over heels in its hurry to change the subject. \'Go on with the glass table and the.', 8, '2019-07-02 06:00:47', '1983-04-13 06:58:11', '1999-02-06 01:06:02'),
(74, 'Aut qui veritatis nihil commodi quam harum hic.', 'Queen. \'I haven\'t opened it yet,\' said the King, with an air of great dismay, and began by taking the little golden key was too much frightened to say which), and they can\'t prove I did: there\'s no.', 9, '1987-10-24 11:38:00', '1986-12-23 02:12:10', '2011-09-09 17:39:27'),
(75, 'Enim nulla ipsum fugit aut.', 'Alice; \'it\'s laid for a minute, nurse! But I\'ve got back to yesterday, because I was sent for.\' \'You ought to be seen: she found to be sure, this generally happens when one eats cake, but Alice had.', 10, '1987-12-05 11:48:43', '1993-01-06 18:16:13', '1993-11-06 11:17:49'),
(76, 'Saepe voluptas occaecati voluptatem porro.', 'Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice sadly. \'Hand it over here,\' said the King, the Queen, turning purple. \'I won\'t!\' said Alice. \'I don\'t know what to do, so Alice ventured to say..', 11, '2019-10-09 23:36:56', '1981-02-10 18:58:28', '1993-02-19 10:43:54'),
(77, 'Qui occaecati omnis veritatis quis qui.', 'I? Ah, THAT\'S the great concert given by the soldiers, who of course had to be seen--everything seemed to be found: all she could get to the part about her and to wonder what they said. The.', 12, '2006-12-02 20:03:59', '2015-06-22 09:09:55', '2018-03-19 03:27:28'),
(78, 'Et perferendis non qui veniam ut quo voluptatem quaerat.', 'Alice called out as loud as she was peering about anxiously among the people that walk with their heads!\' and the Hatter said, tossing his head sadly. \'Do I look like one, but it did not look at me.', 13, '2016-08-20 12:42:54', '1976-08-02 20:22:05', '2017-06-06 23:05:35'),
(79, 'Architecto sint qui mollitia sit praesentium.', 'I can guess that,\' she added aloud. \'Do you play croquet?\' The soldiers were always getting up and said, very gravely, \'I think, you ought to be no doubt that it made no mark; but he could think of.', 14, '1993-12-30 18:07:14', '1976-04-13 03:39:18', '2002-01-21 21:19:47'),
(80, 'Incidunt esse eos mollitia.', 'The moment Alice felt a little shriek, and went to the croquet-ground. The other guests had taken his watch out of the way the people that walk with their fur clinging close to them, and the.', 15, '2019-05-19 05:46:23', '1993-04-19 09:40:12', '2012-11-05 05:43:08'),
(81, 'Corrupti corporis et laudantium perspiciatis quia cumque illo quaerat.', 'Now, if you were or might have been a holiday?\' \'Of course not,\' said Alice in a coaxing tone, and she had someone to listen to me! When I used to it in large letters. It was high time you were or.', 16, '1973-09-08 16:27:09', '1977-12-26 12:35:43', '1985-12-22 09:47:43'),
(82, 'Molestiae sit ea officia sit.', 'Has lasted the rest of my life.\' \'You are old,\' said the Queen merely remarking as it went. So she set the little door, so she began nibbling at the window, I only wish people knew that: then they.', 17, '2000-07-27 12:57:20', '2011-03-18 08:34:21', '2014-04-12 11:32:49'),
(83, 'Et omnis voluptas laudantium voluptate et.', 'And here Alice began telling them her adventures from the sky! Ugh, Serpent!\' \'But I\'m not looking for it, while the rest of the suppressed guinea-pigs, filled the air, I\'m afraid, sir\' said Alice,.', 18, '2013-07-20 13:18:55', '2018-07-05 14:16:39', '2004-09-14 22:04:53'),
(84, 'Vel eveniet sunt nam repellat aut voluptatem et.', 'Alice went timidly up to the Mock Turtle yet?\' \'No,\' said Alice. \'I\'ve read that in the grass, merely remarking that a red-hot poker will burn you if you please! \"William the Conqueror, whose cause.', 19, '2012-08-07 23:05:09', '2013-12-19 22:32:03', '1977-08-31 09:24:14'),
(85, 'Doloremque quia suscipit in libero vero vero.', 'The first question of course you don\'t!\' the Hatter and the Gryphon went on to himself as he found it very nice, (it had, in fact, I didn\'t know how to set them free, Exactly as we were. My notion.', 20, '2004-02-24 23:43:55', '1971-05-17 17:38:32', '2015-05-29 14:45:58'),
(86, 'Aut eaque nulla temporibus molestiae eaque iste.', 'White Rabbit hurried by--the frightened Mouse splashed his way through the door, and the words all coming different, and then a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the.', 21, '2013-05-11 10:16:08', '1997-09-11 15:08:28', '2001-12-05 06:09:16'),
(87, 'Est sed vel occaecati officiis voluptatem.', 'White Rabbit read out, at the bottom of a tree. By the time at the frontispiece if you were INSIDE, you might like to go near the door opened inwards, and Alice\'s first thought was that it was the.', 2, '1995-08-30 11:43:45', '1974-04-22 19:08:05', '1978-12-24 13:04:35'),
(88, 'Autem iure qui voluptatem quia quo nihil.', 'And argued each case with MINE,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was close.', 3, '1993-08-10 12:17:07', '1992-09-12 21:46:30', '2000-02-13 08:03:03'),
(89, 'Dolorem consequatur aut aliquam est exercitationem et.', 'Footman. \'That\'s the judge,\' she said this, she noticed that the Mouse was speaking, so that by the Queen left off, quite out of the Lobster Quadrille?\' the Gryphon remarked: \'because they lessen.', 4, '1993-04-08 00:17:44', '2007-04-22 21:17:59', '2002-07-17 03:40:08'),
(90, 'Laudantium eaque molestias praesentium.', 'I\'ll look first,\' she said, by way of nursing it, (which was to twist it up into the sky all the unjust things--\' when his eye chanced to fall upon Alice, as she could. The next thing is, to get.', 5, '1987-11-02 08:27:36', '1995-08-13 09:23:15', '2004-03-10 00:12:18'),
(91, 'Aliquam quidem veritatis qui facere rerum.', 'I\'LL soon make you dry enough!\' They all made of solid glass; there was mouth enough for it flashed across her mind that she let the Dormouse shook itself, and was going off into a tidy little room.', 6, '1978-05-02 03:50:17', '2017-04-13 05:12:35', '1988-01-29 03:48:20'),
(92, 'Ipsam ut voluptas in quam.', 'Alice. \'You are,\' said the Dodo. Then they all moved off, and found quite a commotion in the grass, merely remarking as it was getting so thin--and the twinkling of the thing yourself, some winter.', 7, '2017-12-09 03:47:30', '2009-10-21 02:39:21', '1998-08-01 06:54:39'),
(93, 'Facere molestias debitis quaerat.', 'Alice, \'it would be like, but it had lost something; and she trembled till she was a good deal until she had somehow fallen into the jury-box, and saw that, in her lessons in here? Why, there\'s.', 8, '1981-03-02 09:24:19', '1994-02-26 11:09:29', '1975-10-10 09:58:42'),
(94, 'Perspiciatis fugiat magni iste reprehenderit id necessitatibus omnis.', 'Said the mouse doesn\'t get out.\" Only I don\'t believe there\'s an atom of meaning in it,\' but none of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell him--it was.', 9, '2006-01-21 08:01:50', '2009-11-09 05:16:35', '2009-08-27 00:10:25'),
(95, 'Voluptatem dolores recusandae et mollitia et.', 'Gryphon. \'Do you take me for a rabbit! I suppose it doesn\'t matter which way I ought to speak, but for a minute, trying to box her own mind (as well as she could. The next witness was the cat.) \'I.', 10, '1983-02-27 14:18:26', '2018-09-03 20:12:18', '1997-10-27 06:47:58'),
(96, 'Reiciendis ea minima neque incidunt maxime.', 'Dormouse, who seemed to be sure, she had wept when she found to be said. At last the Gryphon hastily. \'Go on with the game,\' the Queen said--\' \'Get to your little boy, And beat him when he sneezes;.', 11, '2007-08-20 22:17:02', '2014-11-10 08:32:03', '2015-05-24 10:51:08'),
(97, 'Possimus et sed et.', 'CHAPTER III. A Caucus-Race and a piece of bread-and-butter in the other: the Duchess was sitting on the whole head appeared, and then she had but to her in an encouraging tone. Alice looked down at.', 12, '2010-08-15 00:31:33', '2016-03-12 05:52:44', '1976-12-01 11:12:11'),
(98, 'Ducimus tenetur provident rem.', 'I\'ll tell him--it was for bringing the cook tulip-roots instead of onions.\' Seven flung down his cheeks, he went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice.', 13, '1996-06-08 15:47:21', '1975-08-02 05:51:34', '1987-08-21 02:32:40'),
(99, 'Ab temporibus et non qui culpa.', 'WOULD twist itself round and swam slowly back to her: first, because the Duchess asked, with another dig of her going, though she looked at it, busily painting them red. Alice thought to herself as.', 14, '1984-10-18 06:40:22', '1978-08-11 19:33:01', '1970-12-11 21:59:04'),
(100, 'Optio sint est eius nemo voluptas soluta.', 'King, \'unless it was just in time to be sure, she had put on one of them can explain it,\' said the March Hare, who had spoken first. \'That\'s none of YOUR business, Two!\' said Seven. \'Yes, it IS his.', 15, '1987-02-18 18:56:04', '1998-10-21 10:25:11', '2002-03-13 05:55:48'),
(101, 'Consequuntur quod excepturi ea dolorem consequatur ipsum soluta in.', 'Alice had no idea what Latitude or Longitude either, but thought they were all talking together: she made out what it meant till now.\' \'If that\'s all you know the way the people that walk with their.', 16, '1977-12-06 18:30:04', '2009-01-28 03:30:32', '1985-04-18 12:30:23'),
(102, 'Possimus velit magnam voluptatem architecto non voluptatum tenetur.', 'So she began very cautiously: \'But I don\'t care which happens!\' She ate a little startled when she caught it, and they can\'t prove I did: there\'s no use in the court!\' and the procession came.', 17, '2005-05-08 09:54:44', '1973-12-27 07:11:14', '2019-01-21 08:41:33'),
(103, 'Ratione quo facere asperiores dolorem.', 'YOU must cross-examine the next witness. It quite makes my forehead ache!\' Alice watched the White Rabbit, \'but it doesn\'t matter which way you go,\' said the Rabbit\'s voice; and Alice was not quite.', 18, '1981-03-16 23:24:57', '2007-05-01 16:31:53', '1988-06-09 06:05:38'),
(104, 'Ut possimus quas maxime et esse.', 'The twelve jurors were writing down \'stupid things!\' on their throne when they liked, and left foot, so as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course was,.', 19, '1980-08-10 15:42:46', '1993-06-14 08:58:36', '2003-05-12 13:16:10'),
(105, 'Eveniet et autem voluptatem.', 'King. (The jury all looked puzzled.) \'He must have been that,\' said the Mouse. \'Of course,\' the Gryphon said, in a hoarse, feeble voice: \'I heard the Rabbit actually TOOK A WATCH OUT OF ITS.', 20, '2010-04-26 12:18:45', '2007-04-25 13:54:02', '1991-07-05 08:32:01'),
(106, 'Rerum non quia dolores voluptate.', 'Duchess and the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'Well, it\'s got no sorrow, you know. Come on!\' So they got thrown out to sea as you are; secondly, because.', 21, '1995-02-11 15:17:02', '1977-05-02 02:50:25', '1972-06-15 10:16:16'),
(107, 'oboy ohhh Extra Features', 'what are you doing', 0, '2020-09-18 05:12:30', '2020-09-18 05:12:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_created_at` datetime NOT NULL,
  `user_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `user_created_at`, `user_updated_at`) VALUES
(2, 'kassandra.weber@example.com', 'cd3ac20df7b087594c0c53196c54efe1d80f9284', '1974-07-18 16:38:27', '2016-03-07 10:23:04'),
(3, 'lilly12@example.org', 'd21271fb53a4cd3e28fdeac5d2c614e0bc2b8107', '1977-03-06 03:37:06', '1973-01-30 09:13:00'),
(4, 'stamm.melvin@example.org', 'c601ecb04ed4c10f11329fb32c22f72841c34773', '1987-02-07 19:33:05', '2013-03-20 18:59:26'),
(5, 'zieme.michaela@example.org', 'dd7fa541e6b908b521a0c318bcfea6474a59afdd', '1999-03-01 06:45:46', '1980-08-08 22:29:15'),
(6, 'cremin.jamil@example.org', '4daae26a65beacc6c9d3d63e3d55bd6e0eeff08c', '2020-06-16 00:07:02', '1996-07-23 13:49:06'),
(7, 'nfisher@example.net', '229b18eb1b902a5597371ee6fc4f2a11c9d711e6', '2001-11-06 07:02:43', '1977-04-16 14:42:48'),
(8, 'kkertzmann@example.com', '532f3b6529cd220d71b676ac435521feb1881026', '2011-04-05 14:20:30', '1976-09-04 13:46:27'),
(9, 'kaylah.pacocha@example.com', '5400ee1fb5faaf4e9473956cae81d1caabd8d6d6', '1992-11-12 23:11:42', '1999-09-22 10:06:59'),
(10, 'zvolkman@example.com', '63f4ec0c8e7a2b70809602beb757c6753ba11df3', '1985-09-30 01:32:31', '1985-04-05 09:57:09'),
(11, 'zrodriguez@example.org', 'b95d207f3901df9de97e498cb60f7bdd5e38ad3d', '1986-12-31 07:09:13', '1991-02-15 08:21:42'),
(12, 'daugherty.kobe@example.net', 'c6e93351d8be5e3893ff1c926bbbf279d02a655b', '1995-02-03 23:05:35', '1998-03-04 20:31:06'),
(13, 'carter.nils@example.org', '2597ab6cd57fff439879e99bca6594545c368005', '2017-06-20 07:11:45', '1997-04-11 08:56:22'),
(14, 'leo67@example.net', '33eae2ccf7f9d723634e60bc0623b4f62f2343b8', '2014-04-04 17:19:26', '1989-12-30 08:51:00'),
(15, 'elwin.okuneva@example.org', '66f0eb9aa37d056a74c22eb15386274322a405b4', '1980-04-20 03:44:12', '1996-05-29 21:18:01'),
(16, 'jake.o\'reilly@example.net', 'a3a550a697112ed96d3c123318c84d871abe255b', '2005-12-19 17:05:07', '2012-07-26 18:50:19'),
(17, 'qdare@example.org', 'd88f33fbb1dbccdfe2673e0a4151e1ea5cd917cb', '1993-09-29 08:06:59', '2004-03-20 03:08:49'),
(18, 'theathcote@example.com', 'a0c15a6c68d896ba7cb8f80c0e6e9fc2d2fb7253', '2004-06-03 12:50:47', '1994-04-21 19:16:56'),
(19, 'awintheiser@example.com', '5d3308b4f5c5c15d498a4dd5390fc20f8afdb2c5', '1996-03-20 18:56:19', '2016-07-16 06:49:36'),
(20, 'kzemlak@example.org', 'cb43fc24059c850e8307aca0d7b98a7fa74ffb6e', '2008-01-01 02:32:40', '2005-04-01 19:39:07'),
(21, 'samson.leannon@example.net', '6e8fbb8c2ac53047d6934caa82b2ef6f7c66e6c8', '1987-03-24 02:07:18', '1998-09-12 01:02:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Database: `oopblog`
--
CREATE DATABASE IF NOT EXISTS `oopblog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oopblog`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `ytb` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `oppcrud`
--
CREATE DATABASE IF NOT EXISTS `oppcrud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oppcrud`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`) VALUES
(1, 'ajie', 'obi', 'nkimajie2', 'nkim@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `ticket`
--
CREATE DATABASE IF NOT EXISTS `ticket` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ticket`;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `message`, `created_at`) VALUES
(1, 9, 8, 'hello mike', '2020-10-19 11:14:49'),
(2, 8, 9, 'guy free me', '2020-10-19 11:14:49'),
(3, 9, 8, 'whats happening', '2020-10-19 12:41:15'),
(4, 8, 9, 'nothing ohhh', '2020-10-19 12:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `bio`, `password`, `image`, `slug`) VALUES
(8, 'mike', 'John', 'mikeajie@gmail.com', 'Please tell us about you', '1bbd886460827015e5d605ed44252251', 'defult.jpg', 'mikeajiegmailcom'),
(9, 'Ajie', 'Takon', 'nkimajie2@gmail.com', 'Please tell us about you', 'a3269244cec64a32c1222933c988d91b', 'defult.jpg', 'nkimajie2gmailcom'),
(10, 'okon', 'John', 'okonjohn@gmail.com', 'Please tell us about you', '1bbd886460827015e5d605ed44252251', 'defult.jpg', 'okonjohngmailcom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `todo`
--
CREATE DATABASE IF NOT EXISTS `todo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `todo`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'john', '123'),
(2, 'obi', 'abc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `witech`
--
CREATE DATABASE IF NOT EXISTS `witech` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `witech`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(4, 'JJ JAMES', 'cf1b88a63ce8693e4511c236065d1063'),
(7, 'Takon', 'ffbc6fcc02610c2d8e0495ee5171ae1a'),
(6, 'Joseph Tete', '4d53f52d0fe7b7e9827428b25b223657');

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `a_email` varchar(255) NOT NULL,
  `a_phone` varchar(100) NOT NULL,
  `a_course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`a_id`, `a_name`, `a_email`, `a_phone`, `a_course`) VALUES
(5, 'AJIE', 'calabarplaylist@gmail.com', '08168496216', 'Mobile & App Development');

-- --------------------------------------------------------

--
-- Table structure for table `certified`
--

CREATE TABLE `certified` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `reg_num` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certified`
--

INSERT INTO `certified` (`s_id`, `s_name`, `reg_num`) VALUES
(5, 'john obi', '12/32/ere'),
(6, 'KIRIAN MONJOK', '12/32/221'),
(7, 'takon ajie', '12/32/360'),
(8, 'NKIM NJAR', '11/22/33');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(6) UNSIGNED NOT NULL,
  `surname` varchar(15) NOT NULL,
  `otherNames` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `maritalStatus` varchar(15) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `studentAddress` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `studentType` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `combo` varchar(100) NOT NULL,
  `trio` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `actualAmount` varchar(100) NOT NULL,
  `amountPayed` varchar(100) NOT NULL,
  `dueDate` varchar(100) NOT NULL,
  `paymentMode` varchar(100) NOT NULL,
  `stateOfOrigin` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `guardianName` varchar(100) NOT NULL,
  `guardianPhoneNumber` varchar(100) NOT NULL,
  `targetDir` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `regNumber` varchar(100) NOT NULL,
  `previousTransactions` varchar(3000) NOT NULL,
  `staff` varchar(15) NOT NULL,
  `dateOfRegistration` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `surname`, `otherNames`, `gender`, `maritalStatus`, `phoneNumber`, `studentAddress`, `occupation`, `studentType`, `course`, `combo`, `trio`, `duration`, `actualAmount`, `amountPayed`, `dueDate`, `paymentMode`, `stateOfOrigin`, `remark`, `guardianName`, `guardianPhoneNumber`, `targetDir`, `balance`, `regNumber`, `previousTransactions`, `staff`, `dateOfRegistration`) VALUES
(89, 'takon', 'ajie', 'Male', 'Single', '08168496216', 'Calabar International Convention Centre', 'student', 'Scholarship', 'Website Design', '', '', '3', '12000', '10000', '2020-08-29', 'Cash', 'Cross River', 'Cleared', '', '', 'ugomonye.official-20200818-0004.jpg', '2000', 'sdcp/20/08/w96', '', 'Takon', '20/08/2020'),
(95, 'john', 'ajie', 'Female', 'Single', '08168496216', 'Calabar International Convention Centre', 'student', 'Regular', '', '', '', '6', '200', '200', '2020-09-26', 'Transfer', 'Ebonyi', 'Cleared', '', '', 'ugomonye.official-20200818-0003.jpg', '0', 'dcp/20/09/w110', '', 'takon', '01/09/2020'),
(98, 'john', 'mike', 'Male', 'Married', '08168496216', 'Calabar International Convention Centre', 'student', 'Regular', 'Programming', 'Website Design', 'Digital Marketting', '7', '600', '400', '2020-09-10', 'Cash', 'Gombe', 'Outstanding', '', '', 'ugomonye.official-20200818-0003.jpg', '200', 'dcp/20/09/w113', '', 'takon', '01/09/2020');

-- --------------------------------------------------------

--
-- Table structure for table `studentstype`
--

CREATE TABLE `studentstype` (
  `id` int(6) UNSIGNED NOT NULL,
  `Typename` varchar(150) NOT NULL,
  `numberType` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentstype`
--

INSERT INTO `studentstype` (`id`, `Typename`, `numberType`) VALUES
(1, 'NYSC', 104),
(2, 'Executive', 99),
(3, 'Scholarship', 97),
(4, 'Teenagers', 95),
(5, 'Jamb', 154),
(6, 'Regular', 114),
(7, 'NYSC', 104),
(8, 'Executive', 99),
(9, 'Scholarship', 97),
(10, 'Teenagers', 95),
(11, 'Jamb', 154),
(12, 'Regular', 114);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `certified`
--
ALTER TABLE `certified`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentstype`
--
ALTER TABLE `studentstype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `apply`
--
ALTER TABLE `apply`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `certified`
--
ALTER TABLE `certified`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `studentstype`
--
ALTER TABLE `studentstype`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
