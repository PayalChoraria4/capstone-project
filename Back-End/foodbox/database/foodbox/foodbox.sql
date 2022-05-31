-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 18, 2021 at 01:05 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `street` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `zipCode` varchar(55) NOT NULL,
  `user_id` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
drop table address;
-- --------------------------------------------------------


-- Table structure for table `cuisine`
--

CREATE TABLE `cuisine` (
  `id` bigint(11) NOT NULL,
  `cuisine_name` varchar(411) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table cuisine;
--
-- Dumping data for table `cuisine`
--

INSERT INTO `cuisine` (`id`, `cuisine_name`) VALUES
(1, 'INDIA'),
(2, 'ENGLAND '),
(3, 'RUSSIA'),
(4, 'Belgian '),
(5, 'BRAZIL');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` decimal(55,0) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `cuisine_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table product;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image_url`, `date_created`, `last_updated`, `cuisine_id`) VALUES
(1, ' Dosa or Dosai', ' Rice and wheat are the top two grains consumed by Indians, with rice topping the list. Indians have taken this humble grain and transformed it into a plethora of sweet and savory dishes unlike any other culture in the world.', '96', 'https://www.vegrecipesofindia.com/wp-content/uploads/2021/07/dosa-recipe-3.jpg', '2021-09-15 23:17:00.000000', '2021-09-13 23:17:03.000000', 1),
(2, '  Idli or Idly', ' The cakes are made by steaming a batter consisting of fermented black lentils and rice. Traditionally each region has its own version, and it is usually served with Sambar(spiced lentil stew) and coconut chutney..', '67', 'https://chakriskitchen.com/wp-content/uploads/2018/12/Idly19.jpg', '2021-07-15 23:17:00.000000', '2021-09-06 08:52:35.000000', 1), 
(3, ' Parathas', ' Parathas are flatbreads usually made from wheat flour with or without a savory vegetable stuffing. It is famous around the Indian subcontinent and can be found in the neighboring countries of Pakistan, Afghanistan, Bangladesh, Sri Lanka, and beyond', '98', 'https://vaya.in/recipes/wp-content/uploads/2018/02/Paratha.jpg',  '2021-07-15 23:17:00.000000', '2021-07-13 23:17:03.000000', 1), 
(4, 'Poha', 'Poha, also known as pauwa, chira, or aval, among many other names, is flattened rice originating from the Indian subcontinent. Rice is parboiled before flattening so that it can be consumed with very little to no cooking..', '65', 'https://i.pinimg.com/originals/71/91/ff/7191ffb8f690c5641bfa1f109b513a8e.jpg', '2021-07-15 23:17:00.000000', '2021-07-15 23:17:00.000000', 1), 
(5, 'Samosa', 'The Samosa is a deep-fried savory pastry filled with either spiced mashed potatoes, onions, peas, lentils, chicken, or other meats varying from region to region in the country..', '65', 'https://www.chefspencil.com/wp-content/uploads/Samosa.jpg.webp', '2021-01-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 1), 
(6, 'Chole Bhature,..', 'This dish is best enjoyed on an empty stomach. Rich, spicy and heavy, this is one of the most popular Punjabi dishes and is a must-try dish in Delhi. Don’t be surprised if you find it on the breakfast menu of restaurants across the capital.', '34', 'https://media.vogue.in/wp-content/uploads/2020/08/chole-bhature-recipe.jpg', '2020-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 1), 
(7, 'Fish and Chips ', 'This dish is a must try whilst you are in the UK, no matter where you are, you’ll be able to find a delicious plate of fish and chips. The very best place to eat fish and chips is in the open air, by the sea (just watch out for the seagulls), so if you are studying English at our Eastbourne school make sure you buy some and take them to the beach.', '43', 'https://www.twinenglishcentres.com/media/1000002682/fish-and-chips_400x300.jpg', '2021-03-14 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 
(8, 'Bangers and Mash', 'Also known as sausages and mash, this traditional dish consists of sausages and mashed potato, and is often accompanied with peas and gravy. This dish can usually be found on a menu in most pubs across the country, or can be made very easily at home.', '45', 'https://www.twinenglishcentres.com/media/1000002685/sausages-and-mash_400x300.jpg', '2021-08-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 
(9, 'Full English Breakfast ', 'They say that breakfast is the most important meal of the day, which is why if you are doing something physically or mentally demanding, such as the IELTs exam, you need to have a full English breakfast! This breakfast usually includes: bacon, sausages, eggs, baked beans, toast, mushrooms, tomatoes, hash browns and black puddings.', '76', 'https://www.twinenglishcentres.com/media/1000002683/full-english-breakfast_400x225.jpg', '2021-11-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 
(10, 'Sunday Roast', 'The Brits love their Sunday Roast dinners. This dish is made up of: roasted meat (beef, chicken, lamb or pork), roast potato, Yorkshire pudding, stuffing, vegetables (usually a selection of: roast parsnips, Brussels sprouts, peas, carrots, beans, broccoli and cauliflower, not necessarily all) and gravy.', '25', 'https://www.twinenglishcentres.com/media/1000002684/roast-dinner_400x287.jpg', '2021-07-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 
(11, 'Toad in the Hole', 'This hearty dish is another easy recipe you can make at home; it includes sausages in Yorkshire pudding batter and is often served with gravy and vegetables. Yes, you’ve probably guessed British people love Yorkshire puddings.', '29', 'https://www.twinenglishcentres.com/media/1000002688/toad-in-the-hole-sausages_400x267.jpg', '2021-07-15 23:17:00.000000', '2021-07-13 23:17:03.000000', 2), 
(12, ' Cottage Pie', 'These are two dishes are very similar; the only difference is the choice of meat used in the dish; in shepherd’s pie you use lamb whilst in cottage pie you use beef. And to confuse you even more, neither of these dishes are pies in the usual sense with pastry. Shepherd’s pie and cottage pie consists of: mince (lamb or beef), vegetables (such as; carrots, tomatoes, and onions), and potatoes which are on top of the meaty pie like filling.+++ ', '52' ,'https://life-in-the-lofthouse.com/wp-content/uploads/2015/03/The-Best-Shepherds-Pie3.jpg', '2022-07-29 23:17:00.000000', '2021-07-15 23:17:00.000000', 2), 
(13, ' Bliny', 'is a Russian type of pancakes or crepes. They are usually thin and big, they may be served with sour cream, jam, honey, or caviar or smokes salmon. We often eat blinis folded or rolled with all sorts of filling such as mushrooms, cottage cheese, ground meat, cabbage and many others ', '45', 'https://bridgetomoscow.com/files/200/1055.jpg', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 3), 
(14, ' Sirniki', 'Sirniki are small blinis made of cottage cheese. This is a typical food for breakfast or branch..', '49', 'https://bridgetomoscow.com/files/200/1141.jpg', '2021-08-15 23:17:00.000000', '2021-05-19 23:24:19.000000',3), 
(15, ' Kasha', 'Kasha is the most common meal in Russia. It is easy to cook, healthy.', '56', 'https://bridgetomoscow.com/files/200/1196.jpg', '2021-05-25 23:24:19.000000', '2021-05-19 23:24:19.000000', 3), 
(16, 'Pelmeni', 'Pelmeni are meat or fish dumplings originally coming from the region of Siberia. They are usually kept frozen and cooked in boiled water right before eating.', '69', 'https://bridgetomoscow.com/files/200/1028.jpg', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 3), 
(17, '  Varenniki', 'Varenniki are dumpling similar to pelmeni but theyre usually stuffed with cheese, mashed potatoes, cabbage, meat, hard-boiled eggs or different fruits (cherry or plump)..', '55', 'https://bridgetomoscow.com/files/200/1096.jpg', '2017-07-02 23:17:00.000000', '2021-07-15 23:17:00.000000', 3), 
(18, 'Pirog', ' Pirog is a big pie stuffed with fruits, mushrooms, meat or fish..', '74', 'https://bridgetomoscow.com/files/200/1123.jpg', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 3), 
(19, ' Belgian Fries', 'This is somewhat the national food of Belgium. No one calls it ‘French Fries’ there, even in English. The Belgium-perfected way of fries is a two-step frying process to perfect the inner and outer crunchiness as well as the softness. It is one from the list of Belgium vegetarian food. There is an annual voting of which restaurant or stall makes the best fries. One Belgian food fact is that the fries are a Belgian invention and not French. Although the Belgians have no actual proof they do however make the best fries in the world.', '87', 'https://img.traveltriangle.com/blog/wp-content/uploads/2018/06/belgian-fries-400x267.jpg', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 4), 
(20, ' Moules-Frites', 'Mussels of Mosselen-friet found in the North Sea are more fleshy than those in France and this traditional food in Belgium features mussels cooked either in white wine and classic vegetable broth or in traditional Belgian Beer. It is traditionally served with fries and for many dipping these in the leftover sauce after consuming the mussels is the perfect way to round off this dish.', '29', 'https://img.traveltriangle.com/blog/wp-content/uploads/2018/06/Moules-frites-400x267.jpg', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 4), 
(21, ' Stoemp', 'This creamy dish is the superior version of your regular mashed potatoes and a staple of Belgium food. The belgium traditional food is a creamy blend of mashed potatoes and other vegetables like carrots, kale, brussels sprouts, etc. and served as a side dish or as a main course with sausages. To savour the taste of traditional food in Belgium, you must try this dish!', '96', 'https://img.traveltriangle.com/blog/wp-content/uploads/2018/06/Stoemp-400x267.jpg', '2017-08-09 23:17:00.000000', '2021-08-12 23:17:00.000000', 4), 
(22, 'Speculaas', 'You can safely consider these to be the unofficial national cookies of the Belgium food culture. It is a thin, very crunchy and caramel filled biscuit baked with some figures on it. Usually consumed with coffee, it is spiced and gives a different feel to the taste buds. It is one of the most famous delights amongst a multitude of appetizing Belgium foods. ', '74', 'https://img.traveltriangle.com/blog/wp-content/uploads/2018/06/Speculaas-COVER-IMAGE-400x267.jpg', '2019-05-07 23:24:19.000000', '2021-08-12 23:17:00.000000', 4), 
(23, ' Grey shrimp Croquettes', ' This sea-food is also one of the classic Belgium food specialties. It’s a crispy delicacy, usually made from scratch in most seafood restaurants. It’s crispy from outside and molten and oozing from the inside. It makes for a perfect snack and is also amongst famous food in Belgium. ', '67', 'https://img.traveltriangle.com/blog/wp-content/uploads/2018/06/Grey-shrimp-Croquettes-400x267.jpg', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 4), 
(24, '  Waterzooi ', 'It is a stew or soup made with chicken or fish, vegetables, cream, and egg. This dish can be counted as the Belgian comfort food in your Belgium food tour. Enjoy this stew on any cold day and feel the soup warm your senses in no time!', '47', 'https://img.traveltriangle.com/blog/wp-content/uploads/2018/06/Waterzooi-400x268.jpg', '2021-05-02 23:24:19.000000', '2021-05-19 23:24:19.000000', 4), 
(25, 'Feijoada', 'The most famous of all Brazilian dishes, Feijoada is eaten in every corner of the country. This rich, hearty stew consists of black beans cooked with different cuts of pork, supplemented with tomatoes, cabbage, and carrots to round out the flavor. Traditionally, it’s made with slow-cooked offal such as trotters and ears. Brazil’s national dish is served with fried kale mixed with bacon bits, rice, farofa (toasted cassava flour), and a slice of orange.', '52', 'https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1626243749/Traditional-Brazilian-Food-Farofa/Traditional-Brazilian-Food-Farofa.jpg', '2021-05-01 23:24:19.000000', '2021-05-19 23:24:19.000000', 5),
(26, '  Farofa', 'Famous for its distinctive smoky flavor, this is a deliciously salty dish made from small pieces of bacon fried with cassava flour. It is served with rice and beans, which absorb the juices and add an extra texture to an otherwise quite mushy meal. Recipes contain varying amounts of salt, bacon, and spices and the consistency of the farofa varies greatly. It can be eaten as a main or as a side dish, which works particularly well at a barbeque.', '58', 'https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1626243747/Traditional-Brazilian-Food-Moqueca/Traditional-Brazilian-Food-Moqueca.jpg', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 5), 
(27, ' Moqueca de Camarão', 'Moqueca is a tasty slow-cooked stew typically containing prawns or fish, coconut oil and milk with added vegetables, tomatoes, onions, and coriander, and served piping hot in a clay pot. There are several regional variations of this dish. In fact, the neighboring states of Baianos and Capixabas both claim to have invented it and both serve mouthwatering versions.', '85', 'https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1626243742/Traditional-Brazilian-Food-Vatapa/Traditional-Brazilian-Food-Vatapa.jpg', '2012-07-15 23:17:00.000000', '2021-07-15 23:17:00.000000', 5), 
(28, ' Vatapá', ' A thick stew from Bahia, made from shrimp, bread, ground peanuts, coconut milk, palm oil, and a mixture of herbs, which is mashed into a smooth paste and commonly eaten with rice and acarajé − a type of fritter made from cowpeas. There are different variations of the dish, the shrimp can be replaced with tuna, chicken, cod, or just vegetables. ', '48', 'https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1626243754/Traditional-Brazilian-Food-Acaraje/Traditional-Brazilian-Food-Acaraje.jpg', '2013-07-15 23:17:00.000000', '2017-07-15 23:17:00.000000', 5), 
(29, 'Acarajé', 'Acarajé is another favorite from Bahia. This crispy fritter is made from black-eyed peas, which are mashed with chopped onions and deep-fried. It’s popular street food.', '52', 'https://truffle-assets.imgix.net/b5d30ecc-acaraje_l_thumb.jpg', '2017-05-10 23:24:19.000000', '2021-05-19 23:24:19.000000', 5), 
(30, ' Pastel', ' These pastry pockets are either curved or rectangular and filled with stuffing that might include cheese, ground beef, and chicken, along with more unusual fillings such as a heart of palm and guava jam.', '85', 'https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1626243750/Traditional-Brazilian-Food-Empadao/Traditional-Brazilian-Food-Empadao.jpg', '2021-05-19 23:24:19.000000',  '2021-05-19 23:24:19.000000', 5), 
(31, '  Empadão', 'A flaky crust pie filled with casseroled chicken and a mix of vegetables such as corn, hearts of palm, and peas. Beef and shrimp are sometimes used instead of chicken. It’s often served for family lunches and dinners at weekends and on Brazil’s public holidays. Small versions of the dish are typically sold at street stalls.', '97', 'https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1626243753/Traditional-Brazilian-Food-Bolinho/Traditional-Brazilian-Food-Bolinho.jpg', '2021-07-12 23:17:03.000000',  '2021-07-12 23:17:03.000000', 5); 




-- --------------------------------------------------------
drop table product;
--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `username` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `phone` int(22) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
drop table users;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `email`, `password`, `phone`, `street`, `city`, `zipcode`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'admin', 5555555, 'he', 'h', 'h'),
(2, 0, 'admin2', 'admin2@admin.com', 'admin2', 21, 'he', 'h', 'h'),
(4, 0, '2', 'mm@f.com', '1314', 1414, 'Al Dawhah Al Janubiyah, Dhahran 34457', 'Dahran', '34466'),
(5, 0, '1', '1', '1', 1234, 'mk', 'opk', '12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine`
--
ALTER TABLE `cuisine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuisine_id` (`cuisine_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
  commit;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuisine`
--
ALTER TABLE `cuisine`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
  commit;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table address
--

--
-- Metadata for table cuisine
--

--
-- Metadata for table product
--

--
-- Dumping data for table `pma__table_uiprefs`
--
CREATE TABLE `pma__table_uiprefs`(
username varchar(255),
db_name varchar(255),
table_name varchar(255),
last_update int ,
prefs varchar(255)
 );
drop table pma__table_uiprefs;


CREATE TABLE `pma__table_uiprefs`(
username varchar(255),
db_name varchar(255),
table_name varchar(255),
last_update TIMESTAMP ,
prefs varchar(255)
 ); 
 
INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'foodbox', 'product', '{\"sorted_col\":\"`product`.`date_created`  ASC\"}', '2021-09-17 09:43:27');

--
-- Metadata for table users
--

--
-- Metadata for database foodbox
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
