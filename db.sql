/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	11.7.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `districts_95`
--

DROP TABLE IF EXISTS `districts_95`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `districts_95` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `info` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `districts_95_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states_95` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts_95`
--

LOCK TABLES `districts_95` WRITE;
/*!40000 ALTER TABLE `districts_95` DISABLE KEYS */;
INSERT INTO `districts_95` VALUES
(1,1,'Pune','Pune is a cultural and educational hub of Maharashtra.'),
(2,1,'Mumbai','Mumbai is the financial capital of India.'),
(3,1,'Nagpur','Nagpur is famous for oranges.'),
(4,2,'Bengaluru','Bengaluru is the IT capital of India.'),
(5,2,'Mysuru','Mysuru is known for its heritage and palaces.'),
(6,3,'Chennai','Chennai is a major cultural, economic and educational center.'),
(7,3,'Coimbatore','Coimbatore is known for textile and industry.'),
(8,4,'Lucknow','Lucknow is known for its historical and cultural heritage.'),
(9,4,'Varanasi','Varanasi is one of the oldest cities in the world.'),
(63,5,'Jaipur','Jaipur is known for its rich cultural heritage and historical monuments.'),
(64,5,'Udaipur','Udaipur is famous for its lakes and royal palaces.'),
(65,6,'Patna','Patna is the capital of Bihar and has historical significance.'),
(66,6,'Bhagalpur','Bhagalpur is known as the Silk City of India.'),
(67,7,'Kolkata','Kolkata is a major cultural, commercial, and educational hub in Eastern India.'),
(68,7,'Howrah','Howrah is a city located near Kolkata and is known for its industries.'),
(69,8,'Bhopal','Bhopal is known as the City of Lakes and is the capital of Madhya Pradesh.'),
(70,8,'Indore','Indore is a commercial hub and known for its food culture.'),
(71,9,'Ahmedabad','Ahmedabad is known for its textile industries and rich cultural history.'),
(72,9,'Surat','Surat is a major commercial center in Gujarat, famous for its diamond industry.'),
(73,10,'Hyderabad','Hyderabad is known as the City of Pearls and is a major IT hub in India.'),
(74,10,'Warangal','Warangal is a historical city known for its ancient fort and temples.'),
(75,11,'Dehradun','Dehradun is known for its educational institutions and scenic beauty.'),
(76,11,'Haridwar','Haridwar is a famous pilgrimage city located on the banks of the Ganges River.'),
(77,12,'Chandigarh','Chandigarh is the capital of both Haryana and Punjab, known for its architecture.'),
(78,12,'Amritsar','Amritsar is home to the Golden Temple, the holiest place for Sikhs.'),
(79,13,'Gurgaon','Gurgaon is a major financial and technology hub in Haryana.'),
(80,13,'Faridabad','Faridabad is an industrial city near Delhi, known for its manufacturing industries.'),
(81,14,'Shimla','Shimla is the capital of Himachal Pradesh, known for its scenic beauty.'),
(82,14,'Kullu','Kullu is known for its picturesque landscape and adventure sports.'),
(83,15,'Bhubaneswar','Bhubaneswar is the capital of Odisha and known for its ancient temples.'),
(84,15,'Cuttack','Cuttack is known for its historical significance and as a business hub in Odisha.'),
(85,16,'Kochi','Kochi is a major port city in Kerala and known for its backwaters and seafood.'),
(86,16,'Thiruvananthapuram','Thiruvananthapuram is the capital of Kerala and known for its beaches and museums.'),
(87,17,'Panaji','Panaji is the capital of Goa, known for its beaches and vibrant culture.'),
(88,17,'Vasco da Gama','Vasco da Gama is a coastal city in Goa, known for its maritime significance.'),
(89,18,'Guwahati','Guwahati is the largest city in Assam and a major cultural and economic hub.'),
(90,18,'Dibrugarh','Dibrugarh is known as the gateway to the tea gardens of Assam.'),
(91,19,'Srinagar','Srinagar is known for its scenic beauty and houseboats on Dal Lake in Jammu & Kashmir.'),
(92,19,'Jammu','Jammu is known for its temples and as the winter capital of Jammu & Kashmir.'),
(93,20,'Raipur','Raipur is the capital of Chhattisgarh and known for its industrial growth.'),
(94,20,'Bilaspur','Bilaspur is a major commercial and industrial city in Chhattisgarh.');
/*!40000 ALTER TABLE `districts_95` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_95`
--

DROP TABLE IF EXISTS `questions_95`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_95` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(100) DEFAULT NULL,
  `opt_a` varchar(100) DEFAULT NULL,
  `opt_b` varchar(100) DEFAULT NULL,
  `opt_c` varchar(100) DEFAULT NULL,
  `opt_d` varchar(100) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_95`
--

LOCK TABLES `questions_95` WRITE;
/*!40000 ALTER TABLE `questions_95` DISABLE KEYS */;
INSERT INTO `questions_95` VALUES
(4,'What is the capital of France?','A. Berlin','B. Madrid','C. Paris','D. Rome','C'),
(5,'Which planet is known as the Red Planet?','A. Earth','B. Mars','C. Jupiter','D. Venus','B'),
(6,'Who wrote \"Hamlet\"?','A. Charles Dickens','B. Mark Twain','C. William Shakespeare','D. Jane Austen','C'),
(7,'What is the capital of Germany?','A. Berlin','B. Paris','C. Madrid','D. Rome','A'),
(8,'Which element has the chemical symbol O?','A. Oxygen','B. Osmium','C. Ozone','D. Oganesson','A'),
(9,'What is the largest planet in our solar system?','A. Earth','B. Mars','C. Jupiter','D. Saturn','C'),
(10,'Who is known as the father of computers?','A. Charles Babbage','B. Alan Turing','C. Thomas Edison','D. Steve Jobs','A'),
(11,'Which year did World War I begin?','A. 1912','B. 1914','C. 1916','D. 1920','B'),
(12,'What is the smallest country in the world?','A. Monaco','B. Vatican City','C. Nauru','D. San Marino','B'),
(13,'Which country is the largest by land area?','A. United States','B. Canada','C. China','D. Russia','D'),
(14,'Who painted the Mona Lisa?','A. Vincent van Gogh','B. Pablo Picasso','C. Leonardo da Vinci','D. Claude Monet','C'),
(15,'Which programming language is known as the \"language of the web\"?','A. Python','B. JavaScript','C. Java','D. C++','B'),
(16,'What is the boiling point of water?','A. 90°C','B. 100°C','C. 110°C','D. 120°C','B'),
(17,'In what year did the Titanic sink?','A. 1900','B. 1912','C. 1920','D. 1930','B'),
(18,'Who invented the telephone?','A. Nikola Tesla','B. Thomas Edison','C. Alexander Graham Bell','D. Henry Ford','C'),
(19,'Which organ is responsible for pumping blood throughout the body?','A. Brain','B. Lungs','C. Liver','D. Heart','D'),
(20,'What is the longest river in the world?','A. Amazon River','B. Nile River','C. Mississippi River','D. Yangtze River','B'),
(21,'Who was the first president of the United States?','A. Thomas Jefferson','B. Abraham Lincoln','C. George Washington','D. John Adams','C'),
(22,'Which country is famous for the Great Wall?','A. Japan','B. China','C. India','D. South Korea','B'),
(23,'Which gas do plants use for photosynthesis?','A. Oxygen','B. Nitrogen','C. Carbon Dioxide','D. Hydrogen','C'),
(24,'What is the hardest natural substance on Earth?','A. Gold','B. Iron','C. Diamond','D. Platinum','C'),
(25,'Which animal is known as the \"king of the jungle\"?','A. Elephant','B. Tiger','C. Lion','D. Bear','C'),
(26,'Which city is known as the \"Big Apple\"?','A. Los Angeles','B. Chicago','C. New York City','D. San Francisco','C'),
(27,'Who discovered penicillin?','A. Albert Einstein','B. Alexander Fleming','C. Louis Pasteur','D. Isaac Newton','B');
/*!40000 ALTER TABLE `questions_95` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_95`
--

DROP TABLE IF EXISTS `states_95`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_95` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_95`
--

LOCK TABLES `states_95` WRITE;
/*!40000 ALTER TABLE `states_95` DISABLE KEYS */;
INSERT INTO `states_95` VALUES
(1,'Maharashtra'),
(2,'Karnataka'),
(3,'Tamil Nadu'),
(4,'Uttar Pradesh'),
(5,'Rajasthan'),
(6,'Bihar'),
(7,'West Bengal'),
(8,'Madhya Pradesh'),
(9,'Gujarat'),
(10,'Telangana'),
(11,'Uttarakhand'),
(12,'Punjab'),
(13,'Haryana'),
(14,'Himachal Pradesh'),
(15,'Odisha'),
(16,'Kerala'),
(17,'Goa'),
(18,'Assam'),
(19,'Jammu & Kashmir'),
(20,'Chhattisgarh');
/*!40000 ALTER TABLE `states_95` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_marks_95`
--

DROP TABLE IF EXISTS `student_marks_95`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_marks_95` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roll_number` varchar(20) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_marks_95`
--

LOCK TABLES `student_marks_95` WRITE;
/*!40000 ALTER TABLE `student_marks_95` DISABLE KEYS */;
INSERT INTO `student_marks_95` VALUES
(1,'S101',1,'Mathematics-I',78),
(2,'S101',1,'Physics',82),
(3,'S101',1,'C Programming',88),
(4,'S101',1,'English',75),
(5,'S102',1,'Mathematics-I',68),
(6,'S102',1,'Physics',72),
(7,'S102',1,'C Programming',77),
(8,'S102',1,'English',69),
(9,'S103',1,'Mathematics-I',85),
(10,'S103',1,'Physics',89),
(11,'S103',1,'C Programming',91),
(12,'S103',1,'English',80),
(13,'S101',2,'Mathematics-II',74),
(14,'S101',2,'Electronics',79),
(15,'S101',2,'Data Structures',86),
(16,'S101',2,'Environmental Studies',81),
(17,'S102',2,'Mathematics-II',64),
(18,'S102',2,'Electronics',71),
(19,'S102',2,'Data Structures',76),
(20,'S102',2,'Environmental Studies',66),
(21,'S103',2,'Mathematics-II',90),
(22,'S103',2,'Electronics',85),
(23,'S103',2,'Data Structures',88),
(24,'S103',2,'Environmental Studies',79),
(25,'S101',3,'Discrete Mathematics',82),
(26,'S101',3,'Computer Architecture',78),
(27,'S101',3,'Java',89),
(28,'S101',3,'Operating Systems',80),
(29,'S102',3,'Discrete Mathematics',70),
(30,'S102',3,'Computer Architecture',65),
(31,'S102',3,'Java',75),
(32,'S102',3,'Operating Systems',68),
(33,'S103',3,'Discrete Mathematics',92),
(34,'S103',3,'Computer Architecture',87),
(35,'S103',3,'Java',94),
(36,'S103',3,'Operating Systems',88),
(37,'S101',4,'Design and Analysis of Algorithms',83),
(38,'S101',4,'Database Management Systems',85),
(39,'S101',4,'Software Engineering',79),
(40,'S101',4,'Theory of Computation',77),
(41,'S102',4,'Design and Analysis of Algorithms',72),
(42,'S102',4,'Database Management Systems',74),
(43,'S102',4,'Software Engineering',69),
(44,'S102',4,'Theory of Computation',66),
(45,'S103',4,'Design and Analysis of Algorithms',91),
(46,'S103',4,'Database Management Systems',89),
(47,'S103',4,'Software Engineering',85),
(48,'S103',4,'Theory of Computation',88),
(49,'S101',5,'Compiler Design',80),
(50,'S101',5,'Computer Networks',83),
(51,'S101',5,'Web Technologies',84),
(52,'S101',5,'Artificial Intelligence',76),
(53,'S102',5,'Compiler Design',69),
(54,'S102',5,'Computer Networks',71),
(55,'S102',5,'Web Technologies',72),
(56,'S102',5,'Artificial Intelligence',65),
(57,'S103',5,'Compiler Design',90),
(58,'S103',5,'Computer Networks',87),
(59,'S103',5,'Web Technologies',88),
(60,'S103',5,'Artificial Intelligence',86),
(61,'S101',6,'Machine Learning',82),
(62,'S101',6,'Distributed Systems',81),
(63,'S101',6,'Information Security',78),
(64,'S101',6,'Cloud Computing',80),
(65,'S102',6,'Machine Learning',70),
(66,'S102',6,'Distributed Systems',67),
(67,'S102',6,'Information Security',69),
(68,'S102',6,'Cloud Computing',71),
(69,'S103',6,'Machine Learning',93),
(70,'S103',6,'Distributed Systems',90),
(71,'S103',6,'Information Security',89),
(72,'S103',6,'Cloud Computing',91),
(73,'S101',7,'Big Data Analytics',79),
(74,'S101',7,'IoT Fundamentals',76),
(75,'S101',7,'Natural Language Processing',81),
(76,'S101',7,'Cyber Law and Ethics',82),
(77,'S102',7,'Big Data Analytics',68),
(78,'S102',7,'IoT Fundamentals',70),
(79,'S102',7,'Natural Language Processing',65),
(80,'S102',7,'Cyber Law and Ethics',67),
(81,'S103',7,'Big Data Analytics',87),
(82,'S103',7,'IoT Fundamentals',89),
(83,'S103',7,'Natural Language Processing',90),
(84,'S103',7,'Cyber Law and Ethics',88),
(85,'S101',8,'Project Work',93),
(86,'S101',8,'Seminar',89),
(87,'S101',8,'Industrial Training',90),
(88,'S101',8,'Entrepreneurship Development',85),
(89,'S102',8,'Project Work',82),
(90,'S102',8,'Seminar',80),
(91,'S102',8,'Industrial Training',78),
(92,'S102',8,'Entrepreneurship Development',76),
(93,'S103',8,'Project Work',95),
(94,'S103',8,'Seminar',92),
(95,'S103',8,'Industrial Training',94),
(96,'S103',8,'Entrepreneurship Development',90);
/*!40000 ALTER TABLE `student_marks_95` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_95`
--

DROP TABLE IF EXISTS `users_95`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_95` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_95`
--

LOCK TABLES `users_95` WRITE;
/*!40000 ALTER TABLE `users_95` DISABLE KEYS */;
INSERT INTO `users_95` VALUES
(1,'john_doe','password123'),
(2,'jane_smith','securePass!2021'),
(3,'admin_user','admin12345'),
(4,'mike_jones','qwerty098'),
(5,'susan_lee','summer2022'),
(6,'alex_williams','mySecureP@ss'),
(7,'emily_davis','emily123'),
(8,'david_brown','brownSecure#22'),
(9,'lucas_clark','lucasPass2023'),
(10,'olivia_martin','Olivia@2022');
/*!40000 ALTER TABLE `users_95` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-04-22 19:06:03
