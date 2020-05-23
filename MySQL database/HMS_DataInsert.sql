-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_system
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `customerinfo`
--

LOCK TABLES `customerinfo` WRITE;
/*!40000 ALTER TABLE `customerinfo` DISABLE KEYS */;
INSERT INTO `customerinfo` VALUES (3,'huy','123123','Male','561561',NULL,'huyhuy','123'),(4,'My','Tran','Female','2131566',NULL,'my','123'),(5,'huyyy','hkhk','Male','123545','','nubh','123'),(7,'toannn','toannnnn','Male','123213213','ititiu@gmail.com','toann','123');
/*!40000 ALTER TABLE `customerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Lois','Walker','Female','lois.walker@hotmail.com','303-572-8492','272 Denver',12,'LoisWalker12','LoisWalker12'),(2,'Brenda','Robinson','Female','brenda.robinson@gmail.com','225-945-4954','994 Stonewall',9,'BrendaRobinson9','BrendaRobinson9'),(3,'Joe','Robinson','Male','joe.robinson@gmail.com','219-904-2161','552 Michigantown',8,'JoeRobinson8','JoeRobinson8'),(4,'Diane','Evans','Female','diane.evans@yahoo.com','215-793-6791','525 Hydetown',6,'DianeEvans6','DianeEvans6'),(5,'Benjamin','Russell','Male','benjamin.russell@charter.net','262-404-2252','982 Fremont',8,'BenjaminRussell8','BenjaminRussell8'),(6,'Patrick','Bailey','Male','patrick.bailey@aol.com','319-812-6957','371 Macksburg',6,'PatrickBailey6','PatrickBailey6'),(7,'Nancy','Baker','Female','nancy.baker@bp.com','229-336-5117','833 Atlanta',6,'NancyBaker6','NancyBaker6'),(8,'Carol','Murphy','Female','carol.murphy@gmail.com','216-336-0009','138 Blanchester',11,'CarolMurphy11','CarolMurphy11'),(9,'Frances','Young','Female','frances.young@gmail.com','210-819-9765','982 Delmita',5,'FrancesYoung5','FrancesYoung5'),(10,'Diana','Peterson','Female','diana.peterson@hotmail.co.uk','479-783-5656','440 Eureka Springs',9,'DianaPeterson9','DianaPeterson9'),(11,'Ralph','Flores','Male','ralph.flores@yahoo.com','316-280-2864','181 Sabetha',7,'RalphFlores7','RalphFlores7'),(12,'Jack','Alexander','Male','jack.alexander@gmail.com','702-603-3769','434 Las Vegas',3,'JackAlexander3','JackAlexander3'),(13,'Melissa','King','Female','melissa.king@comcast.net','216-605-3731','544 New Matamoras',3,'MelissaKing3','MelissaKing3'),(14,'Wayne','Watson','Male','wayne.watson@gmail.com','701-231-9370','723 Maida',4,'WayneWatson4','WayneWatson4'),(15,'Cheryl','Scott','Female','cheryl.scott@gmail.com','215-288-9345','879 Quecreek',13,'CherylScott13','CherylScott13'),(16,'Paula','Diaz','Female','paula.diaz@gmail.com','252-531-7641','301 Beulaville',2,'PaulaDiaz2','PaulaDiaz2'),(17,'Joshua','Stewart','Male','joshua.stewart@yahoo.ca','217-279-9342','442 New Douglas',6,'JoshuaStewart6','JoshuaStewart6'),(18,'Theresa','Lee','Female','theresa.lee@gmail.com','319-553-8919','481 Toeterville',4,'TheresaLee4','TheresaLee4'),(19,'Julia','Scott','Female','julia.scott@apple.com','423-939-1010','802 Primm Springs',9,'JuliaScott9','JuliaScott9'),(20,'Thomas','Lewis','Male','thomas.lewis@gmail.com','314-679-3697','471 Dutchtown',2,'ThomasLewis2','ThomasLewis2'),(21,'Carol','Edwards','Female','carol.edwards@msn.com','225-283-4295','207 Shreveport',3,'CarolEdwards3','CarolEdwards3'),(22,'Matthew','Turner','Male','matthew.turner@gmail.com','236-972-7624','866 Heathsville',8,'MatthewTurner8','MatthewTurner8'),(23,'Joan','Stewart','Female','joan.stewart@yahoo.com','216-637-6800','693 Middleport',14,'JoanStewart14','JoanStewart14'),(24,'Ruby','Rogers','Female','ruby.rogers@gmail.com','423-231-6507','544 Woodbury',4,'RubyRogers4','RubyRogers4'),(25,'Carolyn','Hayes','Female','carolyn.hayes@hotmail.co.uk','239-882-8784','675 Saint Cloud',7,'CarolynHayes7','CarolynHayes7'),(26,'Anne','Russell','Female','anne.russell@ibm.com','605-635-1306','341 Stockholm',3,'AnneRussell3','AnneRussell3'),(27,'Daniel','Cooper','Male','daniel.cooper@yahoo.com','701-510-8162','742 Manning',4,'DanielCooper4','DanielCooper4'),(28,'Roger','Roberts','Male','roger.roberts@gmail.com','206-497-3141','648 Mount Vernon',5,'RogerRoberts5','RogerRoberts5'),(29,'Maria','Walker','Female','maria.walker@microsoft.com','423-668-5506','882 Lawrenceburg',5,'MariaWalker5','MariaWalker5'),(30,'Brenda','Butler','Female','brenda.butler@gmail.com','480-814-8284','811 Mesa',13,'BrendaButler13','BrendaButler13'),(31,'Lillian','Brown','Female','lillian.brown@aol.com','239-812-9041','292 Panacea',5,'LillianBrown5','LillianBrown5'),(32,'Amy','Howard','Female','amy.howard@aol.com','803-613-3168','474 Kline',12,'AmyHoward12','AmyHoward12'),(33,'Gregory','Edwards','Male','gregory.edwards@outlook.com','503-256-9654','671 Bonanza',8,'GregoryEdwards8','GregoryEdwards8'),(34,'Roy','Griffin','Male','roy.griffin@yahoo.com','219-506-9378','585 Liberty',10,'RoyGriffin10','RoyGriffin10'),(35,'Richard','Mitchell','Male','richard.mitchell@verizon.net','205-621-5884','756 Ohatchee',4,'RichardMitchell4','RichardMitchell4'),(36,'Mary','Wilson','Female','mary.wilson@sbcglobal.net','423-937-8660','345 Nashville',2,'MaryWilson2','MaryWilson2'),(37,'Aaron','Price','Male','aaron.price@bp.com','219-287-8926','561 Eckerty',5,'AaronPrice5','AaronPrice5'),(38,'Donna','Brown','Female','donna.brown@aol.com','212-434-7910','670 Lima',10,'DonnaBrown10','DonnaBrown10'),(39,'Carl','Collins','Male','carl.collins@yahoo.com','479-740-7633','916 Wright',7,'CarlCollins7','CarlCollins7'),(40,'Joyce','Jenkins','Female','joyce.jenkins@aol.com','262-455-4187','987 Ellsworth',7,'JoyceJenkins7','JoyceJenkins7'),(41,'Mary','Bryant','Female','mary.bryant@verizon.net','319-827-3516','993 Conroy',8,'MaryBryant8','MaryBryant8'),(42,'Amanda','Hughes','Female','amanda.hughes@rediffmail.com','225-544-9700','291 Lake Charles',5,'AmandaHughes5','AmandaHughes5'),(43,'Jack','Campbell','Male','jack.campbell@gmail.com','316-499-5737','192 Kalvesta',14,'JackCampbell14','JackCampbell14'),(44,'Alan','Rivera','Male','alan.rivera@apple.com','423-277-6819','196 Knoxville',12,'AlanRivera12','AlanRivera12'),(45,'Elizabeth','Jackson','Female','elizabeth.jackson@aol.com','603-568-6118','439 Rochester',5,'ElizabethJackson5','ElizabethJackson5'),(46,'Nancy','Davis','Female','nancy.davis@ibm.com','219-610-3067','686 Bowling Green',10,'NancyDavis10','NancyDavis10'),(47,'Ernest','Martinez','Male','ernest.martinez@gmail.com','479-951-4138','112 Uniontown',3,'ErnestMartinez3','ErnestMartinez3'),(48,'Judy','Hernandez','Female','judy.hernandez@gmail.com','316-736-6126','700 Topeka',14,'JudyHernandez14','JudyHernandez14'),(49,'Nancy','Jones','Female','nancy.jones@gmail.com','212-825-1930','369 New York City',5,'NancyJones5','NancyJones5'),(50,'Pamela','Wright','Female','pamela.wright@aol.com','307-329-8832','142 Banner',1,'PamelaWright1','PamelaWright1'),(51,'Larry','Miller','Male','larry.miller@shell.com','217-574-9283','201 East Saint Louis',4,'LarryMiller4','LarryMiller4'),(52,'Ann','Coleman','Female','ann.coleman@ibm.com','319-994-4179','330 Hancock',3,'AnnColeman3','AnnColeman3'),(53,'Judy','Gonzales','Female','judy.gonzales@gmail.com','201-640-8645','479 Eatontown',8,'JudyGonzales8','JudyGonzales8'),(54,'Peter','Washington','Male','peter.washington@bp.com','231-322-0316','146 Portage',4,'PeterWashington4','PeterWashington4'),(55,'Clarence','Ross','Male','clarence.ross@apple.com','423-772-0118','339 Oneida',3,'ClarenceRoss3','ClarenceRoss3'),(56,'Sharon','Lopez','Female','sharon.lopez@gmail.com','304-934-5548','322 Bartley',10,'SharonLopez10','SharonLopez10'),(57,'Ann','Cooper','Female','ann.cooper@exxonmobil.com','406-278-6460','142 Arlee',3,'AnnCooper3','AnnCooper3'),(58,'Anne','Perez','Female','anne.perez@sbcglobal.net','423-837-3338','263 Cookeville',2,'AnnePerez2','AnnePerez2'),(59,'Nancy','Howard','Female','nancy.howard@gmail.com','236-973-8086','819 Saxe',3,'NancyHoward3','NancyHoward3'),(60,'Antonio','Roberts','Male','antonio.roberts@hotmail.com','205-267-7304','960 Mc Calla',14,'AntonioRoberts14','AntonioRoberts14'),(61,'Frances','Watson','Female','frances.watson@outlook.com','406-530-8069','791 Trego',9,'FrancesWatson9','FrancesWatson9'),(62,'Debra','Wood','Female','debra.wood@hotmail.com','308-646-6219','563 Blair',12,'DebraWood12','DebraWood12'),(63,'Henry','Jenkins','Male','henry.jenkins@hotmail.com','314-731-7135','668 Riverside',14,'HenryJenkins14','HenryJenkins14'),(64,'Melissa','Butler','Female','melissa.butler@hotmail.com','308-827-9016','477 Maxwell',2,'MelissaButler2','MelissaButler2'),(65,'Todd','Hall','Male','todd.hall@yahoo.com','240-513-8668','806 Randallstown',12,'ToddHall12','ToddHall12'),(66,'Christopher','Nelson','Male','christopher.nelson@aol.com','480-946-9780','362 Willow Beach',4,'ChristopherNelson4','ChristopherNelson4'),(67,'Andrea','Garcia','Female','andrea.garcia@aol.com','219-624-3708','770 Granger',6,'AndreaGarcia6','AndreaGarcia6'),(68,'Jeremy','Sanchez','Male','jeremy.sanchez@hotmail.com','423-974-2755','554 Alcoa',7,'JeremySanchez7','JeremySanchez7'),(69,'Steven','Phillips','Male','steven.phillips@hotmail.com','225-968-5952','234 Baton Rouge',6,'StevenPhillips6','StevenPhillips6'),(70,'Cynthia','Ramirez','Female','cynthia.ramirez@btinternet.com','406-961-7340','488 Browning',2,'CynthiaRamirez2','CynthiaRamirez2'),(71,'Jason','Anderson','Male','jason.anderson@gmail.com','217-856-6752','779 Hudson',3,'JasonAnderson3','JasonAnderson3'),(72,'Cynthia','White','Female','cynthia.white@gmail.com','314-593-3092','485 Kansas City',13,'CynthiaWhite13','CynthiaWhite13'),(73,'Margaret','Brooks','Female','margaret.brooks@gmail.com','303-960-0117','664 Haswell',2,'MargaretBrooks2','MargaretBrooks2'),(74,'Douglas','Flores','Male','douglas.flores@gmail.com','303-836-4721','554 Eckert',5,'DouglasFlores5','DouglasFlores5'),(75,'Paul','Watson','Male','paul.watson@hotmail.com','270-556-7711','458 Blue River',11,'PaulWatson11','PaulWatson11'),(76,'Linda','Moore','Female','linda.moore@gmail.com','215-793-7095','432 Albion',7,'LindaMoore7','LindaMoore7'),(77,'Cheryl','Miller','Female','cheryl.miller@ntlworld.com','270-880-3858','793 Bays',13,'CherylMiller13','CherylMiller13'),(78,'Martha','Washington','Female','martha.washington@aol.com','405-945-0242','262 Nardin',4,'MarthaWashington4','MarthaWashington4'),(79,'William','Hernandez','Male','william.hernandez@rediffmail.com','239-276-0532','707 Mary Esther',8,'WilliamHernandez8','WilliamHernandez8'),(80,'Carolyn','Price','Female','carolyn.price@yahoo.com','217-409-4338','947 Wheaton',13,'CarolynPrice13','CarolynPrice13'),(81,'Ruby','Stewart','Female','ruby.stewart@gmail.com','218-445-2369','821 Margie',2,'RubyStewart2','RubyStewart2'),(82,'Paul','Cooper','Male','paul.cooper@gmail.com','210-984-4722','515 Glidden',1,'PaulCooper1','PaulCooper1'),(83,'Ernest','Washington','Male','ernest.washington@msn.com','212-596-1659','691 Saranac Lake',6,'ErnestWashington6','ErnestWashington6'),(84,'Dorothy','Edwards','Female','dorothy.edwards@hotmail.co.uk','215-902-6888','220 Philadelphia',12,'DorothyEdwards12','DorothyEdwards12'),(85,'Ryan','Alexander','Male','ryan.alexander@shell.com','225-395-3347','611 Jarreau',11,'RyanAlexander11','RyanAlexander11'),(86,'Lillian','Mitchell','Female','lillian.mitchell@shaw.ca','316-876-1484','124 Wichita',14,'LillianMitchell14','LillianMitchell14'),(87,'Kelly','Adams','Female','kelly.adams@bp.com','405-418-0037','397 Meno',9,'KellyAdams9','KellyAdams9'),(88,'Jimmy','Howard','Male','jimmy.howard@yahoo.com','212-855-9316','147 Oriskany',12,'JimmyHoward12','JimmyHoward12'),(89,'Margaret','Allen','Female','margaret.allen@gmail.com','216-697-6987','721 Richmond Dale',5,'MargaretAllen5','MargaretAllen5'),(90,'Janet','Henderson','Female','janet.henderson@ntlworld.com','239-769-6347','444 Miami',11,'JanetHenderson11','JanetHenderson11'),(91,'Eugene','Perez','Male','eugene.perez@exxonmobil.com','262-472-7112','915 Racine',3,'EugenePerez3','EugenePerez3'),(92,'Deborah','Smith','Female','deborah.smith@yahoo.com','907-279-8694','719 Atqasuk',6,'DeborahSmith6','DeborahSmith6'),(93,'Janice','Parker','Female','janice.parker@yahoo.com','314-842-5984','436 Whiteman Air Force Base',9,'JaniceParker9','JaniceParker9'),(94,'Rebecca','Stewart','Female','rebecca.stewart@gmail.com','209-233-7631','315 Independence',4,'RebeccaStewart4','RebeccaStewart4'),(95,'Phillip','White','Male','phillip.white@gmail.com','503-668-6592','580 Mapleton',11,'PhillipWhite11','PhillipWhite11'),(96,'Jose','Hill','Male','jose.hill@hotmail.com','228-245-5000','482 Biloxi',7,'JoseHill7','JoseHill7'),(97,'Harold','Nelson','Male','harold.nelson@gmail.com','217-555-9216','474 Carol Stream',4,'HaroldNelson4','HaroldNelson4'),(98,'Nicole','Ward','Female','nicole.ward@yahoo.com','231-761-7861','839 Detroit',9,'NicoleWard9','NicoleWard9'),(99,'Theresa','Murphy','Female','theresa.murphy@gmail.com','907-356-1555','905 Mc Grath',4,'TheresaMurphy4','TheresaMurphy4'),(100,'Tammy','Young','Female','tammy.young@comcast.net','231-290-3075','314 Alma',8,'TammyYoung8','TammyYoung8'),(101,'James','Harden','Male','james.harden@rockets.com','123-456-789','102 Houston Ave',15,'JamesHarden15','JamesHarden15');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('tientai','123');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `postion`
--

LOCK TABLES `postion` WRITE;
/*!40000 ALTER TABLE `postion` DISABLE KEYS */;
INSERT INTO `postion` VALUES (1,'General Manager',30000000),(2,'Sales',15000000),(3,'Spa Manager',14000000),(4,'Event Planner',10000000),(5,'Event Manager',14000000),(6,'Chef',14000000),(7,'Cook',7000000),(8,'Beverage Manager',8000000),(9,'Front Desk',8000000),(10,'Concierge',5000000),(11,'Bellhop',4000000),(12,'Housekepping Manager',10000000),(13,'Housekeeper',3000000),(14,'Server',3000000);
/*!40000 ALTER TABLE `postion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,3,1,'2015-01-02','2015-01-05'),(2,4,2,'2015-02-11','2015-02-14'),(3,5,3,'2015-02-20','2015-02-23'),(4,7,4,'2015-06-02','2015-06-05'),(5,3,5,'2015-08-02','2015-08-05'),(6,4,6,'2015-12-14','2015-12-17'),(7,5,7,'2015-04-05','2015-04-08'),(8,7,8,'2015-02-18','2015-02-21'),(9,4,9,'2015-04-10','2015-04-13'),(10,4,10,'2015-03-12','2015-03-15'),(11,5,11,'2015-07-27','2015-07-30'),(12,7,12,'2015-03-21','2015-03-24'),(13,3,13,'2015-06-19','2015-06-22'),(14,4,14,'2015-04-23','2015-04-26'),(15,5,15,'2015-12-27','2015-12-30'),(16,7,16,'2015-08-03','2015-08-06'),(17,3,17,'2015-08-13','2015-08-16'),(18,4,18,'2015-06-06','2015-06-09'),(19,5,19,'2015-11-27','2015-11-30'),(20,7,20,'2015-02-14','2015-02-17'),(21,3,21,'2015-08-22','2015-08-25'),(22,4,22,'2015-01-06','2015-01-09'),(23,5,23,'2015-12-21','2015-12-24'),(24,7,24,'2015-11-26','2015-11-29'),(25,3,25,'2015-06-05','2015-06-08'),(26,4,26,'2015-12-17','2015-12-20'),(27,5,27,'2015-06-22','2015-06-25'),(28,7,28,'2015-03-25','2015-03-28'),(29,4,29,'2015-05-24','2015-05-27'),(30,3,30,'2015-04-02','2015-04-05'),(35,3,1,'2020-05-22','2020-05-23'),(37,4,1,'2020-06-10','2020-06-18'),(39,5,28,'2020-05-23','2020-05-23'),(41,3,20,'2020-05-23','2020-05-31'),(43,3,26,'2020-05-23','2020-05-31'),(44,3,34,'2020-05-23','2020-05-31');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,'','Yes'),(2,1,' ','No'),(3,2,' ','No'),(4,2,' 3333','No'),(5,3,' 2','No'),(6,3,'1 ','No'),(7,4,' ','No'),(8,4,' ','No'),(9,5,' ','No'),(10,5,'12','No'),(11,1,'  ','No'),(12,1,' ','No'),(13,2,' ','No'),(14,2,' ','No'),(15,3,' ','No'),(16,3,' ','No'),(17,4,' ','No'),(18,4,' ','No'),(19,5,' ','No'),(20,5,' ','Yes'),(21,1,' ','No'),(22,1,' ','No'),(23,2,' ','No'),(24,2,' ','No'),(25,3,' ','No'),(26,3,' ','Yes'),(27,4,' ','No'),(28,4,' ','Yes'),(29,5,' ','No'),(30,5,' ','No'),(31,1,'','No'),(32,1,'','No'),(33,2,'','No'),(34,2,'11111','Yes');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Single',100),(2,'Double',200),(3,'Triple',300),(4,'Family',400),(5,'Suite',500);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-23 15:00:53
