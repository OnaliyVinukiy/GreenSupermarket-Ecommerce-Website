-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopping-cart
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` varchar(45) NOT NULL,
  `prodid` varchar(45) NOT NULL,
  `quantity` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `shipped` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`orderid`,`prodid`),
  KEY `productid_idx` (`prodid`),
  CONSTRAINT `productid` FOREIGN KEY (`prodid`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('T20231126084417','P20231123020701',1,570.00,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pid` varchar(45) NOT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `ptype` varchar(20) DEFAULT NULL,
  `pinfo` varchar(350) DEFAULT NULL,
  `pprice` decimal(12,2) DEFAULT NULL,
  `pquantity` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('P20231121080120','Green Apple - 1Kg','OrganicFruits','Green Apple - 1Kg',2200.00,50,'Pic924001.jpg'),('P20231121080213','Red Apple - 1Kg','OrganicFruits','Red Apple - 1Kg',2100.00,50,'Pic924007.jpg'),('P20231121080240','Yellow Apple - 1Kg','OrganicFruits','Yellow Apple - 1Kg',2400.00,50,'Pic924009.jpg'),('P20231121080338','Pineapple - 1Kg','OrganicFruits','Pineapple - 1Kg',700.00,50,'Pic923076.jpg'),('P20231121080612','Cavendish Banana - 1Kg','OrganicFruits','Cavendish Banana - 1Kg',370.00,50,'Pic923005.jpg'),('P20231121080712','Ambul Banana - 1Kg','OrganicFruits','Ambul Banana - 1Kg',250.00,50,'Pic923003.jpg'),('P20231121080733','Melon - 1Kg','OrganicFruits','Melon - 1Kg',340.00,50,'Pic923059.jpg'),('P20231121080808','Avocado - 1Kg','OrganicFruits','Avocado - 1Kg',1000.00,50,'avacado.jpg'),('P20231121080859','Mango - 1Kg','OrganicFruits','Mango - 1Kg',380.00,50,'Pic923055.jpg'),('P20231121081035','Papaya - 1Kg','OrganicFruits','Papaya - 1Kg',160.00,50,'papayapic.jpg'),('P20231121081202','Delum - 1Kg','OrganicFruits','Delum - 1Kg',2100.00,50,'Pic924032.jpg'),('P20231121081318','Dragonfruit - 1Kg','OrganicFruits','Dragonfruit - 1Kg',3100.00,50,'Pic923018.jpg'),('P20231121081519','Red Grapes - 1Kg','OrganicFruits','Red Grapes - 1Kg',2200.00,50,'Pic924019.jpg'),('P20231121081552','Black Grapes - 1Kg','OrganicFruits','Black Grapes - 1Kg',2800.00,50,'Pic924017.jpg'),('P20231121081727','Strawberry','OrganicFruits','Strawberry',1200.00,50,'Pic923068.jpg'),('P20231121081820','Jambola - 1Kg','OrganicFruits','Jambola - 1Kg',350.00,50,'Pic923034.jpg'),('P20231121082540','Passion Fruit - 1Kg','OrganicFruits','Passion Fruit - 1Kg',500.00,50,'Pic923074.jpg'),('P20231121082649','Orange - 1Kg','OrganicFruits','Orange - 1Kg',1700.00,50,'Pic924025.jpg'),('P20231121082732','Mandarin - 1Kg','OrganicFruits','Mandarin - 1Kg',2000.00,50,'Pic924022.jpg'),('P20231121082805','Woodapple - 1Kg','OrganicFruits','Woodapple - 1Kg',150.00,50,'Pic923086.jpg'),('P20231123011615','Real Tasty Cashew 200g','SnacksandBiscuits','Real Tasty Cashew 200g',1960.00,20,'18.jpg'),('P20231123020119','Munchee Marie Chocolate 400g','SnacksandBiscuits','Munchee Marie Chocolate 90g',400.00,50,'19.jpg'),('P20231123020219','Maliban Smart Cream 125g','SnacksandBiscuits','\r\n\r\n\r\n\r\nMunchee Marie Chocolate 90g\r\n',140.00,50,'20.jpg'),('P20231123020301','Maliban Biscuit Krisco 170g','SnacksandBiscuits','Munchee Marie Chocolate 90g',380.00,30,'22.jpg'),('P20231123020340','Maliban Lemon Puff 200g','SnacksandBiscuits','Munchee Marie Chocolate 90g',250.00,50,'21.jpg'),('P20231123020559','Munchee Cheese Buttons 170g','SnacksandBiscuits','Munchee Cheese Buttons 170g',180.00,50,'30.jpg'),('P20231123020701','Leeks - 1Kg','OrganicVegetables','Leeks - 1Kg',570.00,49,'01.jpg'),('P20231123123200','CBL Ramba tetos cheese 20g ','SnacksandBiscuits','CBL Ramba tetos cheese 20g ',85.00,50,'1.jpg'),('P20231123124201','CBL Ramba tetos tomato 20g ','SnacksandBiscuits','CBL Ramba tetos tomato 20g ',85.00,50,'3.jpg'),('P20231123124319','CBL Ramba tetos BBQ 20g ','SnacksandBiscuits','CBL Ramba tetos BBQ 20g ',85.00,50,'011.jpg'),('P20231123124524','Uswatta Tipi Tip Onion Stars 50g','SnacksandBiscuits','Uswatta Tipi Tip Onion Stars 50g',200.00,50,'2.jpg'),('P20231123124946','Smak Cassava Chips Hot & Spicy 100g','SnacksandBiscuits','Smak Cassava Chips Hot & Spicy 100g',310.00,50,'8.jpg'),('P20231123125227','Smak Cassava Chips Barbecue 100g','SnacksandBiscuits','Smak Cassava Chips Barbecue 100g',310.00,50,'12.jpg'),('P20231123125446','Scan Jumbo Peanut 70g','SnacksandBiscuits','Scan Jumbo Peanut 70g',279.00,50,'14.jpg'),('P20231123125538','Scan Jumbo Peanut Chillie 70g','SnacksandBiscuits','Scan Jumbo Peanut Chillie 70g',279.00,50,'15.jpg'),('P20231123125746','Smak Onion Bites 100g','SnacksandBiscuits','Scan Jumbo Peanut Chillie 70g',230.00,50,'16.jpg'),('P20231123125815','Smak Spicy Bites 100g','SnacksandBiscuits','Smak Spicy Bites 100g',230.00,50,'17.jpg'),('P20231123125932','Uswatta Tipi Tip Cheese Stars 50g','SnacksandBiscuits','Uswatta Tipi Tip Cheese Stars 50g',200.00,50,'10.jpg'),('P20231124100101','Green Chillies - 1Kg','OrganicVegetables','Green Chillies - 1Kg',1380.00,50,'Pic914017.jpg'),('P20231124100156','Pumpkin - 1Kg','OrganicVegetables','Pumpkin - 1Kg',270.00,50,'03.jpg'),('P20231124100225','Gotukola','OrganicVegetables','Gotukola',135.00,50,'04.jpg'),('P20231124100302','Carrot - 1Kg','OrganicVegetables','Carrot - 1Kg',870.00,50,'05.jpg'),('P20231124100452','Cabbage - 1Kg','OrganicVegetables','Cabbage - 1Kg',660.00,50,'Pic915005.jpg'),('P20231124100744','Dambala - 1Kg','OrganicVegetables','Dambala - 1Kg',870.00,50,'08.jpg'),('P20231124100919','Beetroot - 1Kg','OrganicVegetables','Beetroot - 1Kg',700.00,50,'Pic915002.jpg'),('P20231124101906','Brinjals - 1Kg','OrganicVegetables','Brinjals - 1Kg',880.00,50,'Pic914008.jpg'),('P20231124102007','Tomato - 1Kg','OrganicVegetables','Tomato - 1Kg',570.00,50,'0111.jpg'),('P20231124102047','Ladies Fingers - 1Kg','OrganicVegetables','Ladies Fingers - 1Kg',490.00,50,'012.jpg'),('P20231124102218','Potato - 1Kg','OrganicVegetables','Potato - 1Kg',610.00,50,'013.jpg'),('P20231124102723','Green Beans - 1Kg','OrganicVegetables','Green Beans - 1Kg',1100.00,50,'014.jpg'),('P20231124102814','Cauliflower - 1Kg','OrganicVegetables','Cauliflower - 1Kg',990.00,50,'Pic913014.jpg'),('P20231124103040','Brocolli - 1Kg','OrganicVegetables','Brocolli - 1Kg',3180.00,50,'Pic913008.jpg'),('P20231124103237','Sweet Corn - 1Kg','OrganicVegetables','Sweet Corn - 1Kg',390.00,50,'Pic914048.jpg'),('P20231125081627','Kome Salt&Pepper - 90g','SnacksandBiscuits','Kome Salt&Pepper - 90g',200.00,50,'5.jpg'),('P20231125081658','Komee BBQ - 90g','SnacksandBiscuits','Kome BBQ - 90g',200.00,50,'4.jpg'),('P20231125081722','Kome Cummin - 90g','SnacksandBiscuits','Kome Cummin - 90g',200.00,50,'6.jpg'),('P20231129093424','MD Cordial Mango 750ml','Drinks','MD Cordial Mango 750ml',990.00,50,'53.jpg'),('P20231129093521','MD Cordial Mixed Fruit 750ml','Drinks','MD Cordial Mixed Fruit 750ml',990.00,50,'54.jpg'),('P20231129093553','MD Cordial Nelli 750ml','Drinks','MD Cordial Nelli 750ml',990.00,50,'55.jpg'),('P20231129093643','MD Sherbert Syrup 750ml','Drinks','MD Sherbert Syrup 750ml',990.00,50,'57.jpg'),('P20231129093730','Monster Energy 355ml','Drinks','Monster Energy 355ml',500.00,50,'58.jpg'),('P20231129093821','Red Bull Energy Drink 250ml','Drinks','Red Bull Energy Drink 250ml',900.00,50,'59.jpg'),('P20231129093858','Red Bull Energy Drink 250ml (4 pack)','Drinks','Red Bull Energy Drink 250ml (4 pack)',3580.00,20,'60.jpg'),('P20231129093945','Red Bull Energy Drink Sugar Free 250ml ','Drinks','Red Bull Energy Drink Sugar Free 250ml ',900.00,50,'61.jpg'),('P20231129094047','Sunquick Apple Jumbo 700ml','Drinks','Sunquick Apple Jumbo 700ml',1200.00,50,'62.jpg'),('P20231129094136','Sunquick Current Jumbo 700ml','Drinks','Sunquick Current Jumbo 700ml',1200.00,50,'63.jpg'),('P20231129094301','Sunquick Mango 700ml','Drinks','Sunquick Mango 700ml',1200.00,50,'67.jpg'),('P20231129094341','Sunquick Passion Fruit 700ml','Drinks','Sunquick Passion Fruit 700ml',1200.00,50,'68.jpg'),('P20231129094516','7 Up Mage Pet 1.5L','Drinks','7 Up Mage Pet 1.5L',350.00,50,'69.jpg'),('P20231129094644','Ambewela Flavoured Milk Choco 1L','Drinks','Ambewela Flavoured Milk Choco 1L',540.00,50,'70.jpg'),('P20231129094714','Ambewela Flavoured Milk Vanilla 1L','Drinks','Ambewela Flavoured Milk Vanilla 1L',540.00,50,'71.jpg'),('P20231129095417','Coca Cola Pet 1.5L','Drinks','Coca Cola 1050ml',380.00,50,'74.jpg'),('P20231129095518','EH Cream Soda 1.5L','Drinks','EH Cream Soda 1.5L',262.00,50,'75.jpg'),('P20231129095606','EH Ginger Beer 1.5L','Drinks','EH Ginger Beer 1.5L',380.00,50,'76.jpg'),('P20231129095657','EH Necto 1.5L','Drinks','EH Necto 1.5L',350.00,50,'77.jpg'),('P20231129095745','EH Orange Crush 1.5L','Drinks','EH Orange Crush 1.5L',350.00,50,'78.jpg'),('P20231129095914','Kist Nectar Apple 1L','Drinks','Kist Nectar Apple 1L',540.00,50,'80.jpg'),('P20231129095946','Kist Nectar Mango 1L','Drinks','Kist Nectar Mango 1L',540.00,50,'81.jpg'),('P20231129105000','Mysoore Dhal - 1Kg','GroceryItem','Mysoore Dhal - 1Kg',308.00,50,'Mysoore Dhal Bulk kg.jpg'),('P20231129105112','White Kekulu Rice - 1Kg','GroceryItem','White Kekulu Rice - 1Kg',210.00,50,'white kekulu.jpg'),('P20231129105251','Red Kekulu Rice - 1Kg','GroceryItem','Red Kekulu Rice - 1Kg',198.00,50,'Rice Red Kekulu Bulk Kg - Local.jpg'),('P20231129111408','White Slender Rice - 1Kg','GroceryItem','White Slender Rice - 1Kg',510.00,50,'Cic White Slender Rice Low Gi 41 1kg.jpg'),('P20231129111542','Fragrant Red Rice - 1Kg','GroceryItem','Fragrant Red Rice - 1Kg',50.00,50,'Cic Fragrant Red Rice Low Gi 48 1kg.jpg'),('P20231129112448','Supreme Sprats - 200g','GroceryItem','Supreme Sprats - 1Kg',1040.00,50,'Supreme Sprats Ready To Cook 200g.jpg'),('P20231129112550','Organic Prunes - 250g','GroceryItem','Organic Prunes - 250g',2850.00,50,'Organic Prunes 250g.jpg'),('P20231129112648','Maldive Fish - 100g','GroceryItem','Maldive Fish - 100g',475.00,50,'Keells Maldive Fish 100g.jpg'),('P20231129112921','Brown Eggs - 10s','GroceryItem','Brown Eggs - 10s',565.00,50,'Nel Farm Brown Egg Extra Large 10S.jpg'),('P20231129113024','Raigam Rice Noodles','GroceryItem','Raigam Rice Noodles',410.00,50,'Raigam Dev 1 Suvadal Rice Ndls 350g.jpg'),('P20231129113327','SanRemo Elbows - 500g','GroceryItem','SanRemo Elbows - 500g',990.00,50,'San Remo Elbows  500g.jpg'),('P20231129113515','Harischandra Papadam - 70g','GroceryItem','Harischandra Papadam - 70g',140.00,50,'Harischandra Papadam 70g.jpg'),('P20231129113558','White Basmathi - 1Kg','GroceryItem','White Basmathi - 1Kg',625.00,50,'Cic White Basmathi Rice 1kg.jpg'),('P20231129113709','Harischandra Plain Noodles - 400g','GroceryItem','Harischandra Plain Noodles - 400g',330.00,50,'Harischandra Plain Noodles 400g.jpg'),('P20231129113758','Prima Stella Noodles - 75g','GroceryItem','Prima Stella Noodles - 75g',130.00,50,'prime stella.jpg'),('P20231129114136','Raigam Salt - 400g','GroceryItem','Raigam Salt - 400g',115.00,50,'Raigam Isi Pure Cooking Salt 400g.jpg'),('P20231129114355','Coconut Oil - 1L','GroceryItem','Coconut Oil - 1L',1053.00,50,'Silvermill Pure Coconut Oil 1L.jpg'),('P20231129114509','Kist Jam - 510g','GroceryItem','Kist Jam - 510g',490.00,50,'Kist Jam Wood Apple 510g.jpg'),('P20231129114600','Samaposha - 200g','GroceryItem','Samaposha - 200g',175.00,50,'Samaposha 200g.jpg'),('P20231129114724','Velvet Soap','GroceryItem','Velvet Soap',215.00,50,'elvet Soap Moringa & Rice Milk 95g.jpg'),('P20231130084955','Ambewela Uht Milk 1L','Drinks','Ambewela Uht Milk 1L',280.00,50,'72.jpg'),('P20231130085214','Coca Cola 1050ml','Drinks','Coca Cola 1050ml',270.00,50,'73.jpg'),('P20231130093508','Top Crust Bread 450g ','other','Top Crust Bread 450g ',150.00,50,'Top Crust Bread 450g.jpg'),('P20231130093844','Sandwich Bread 750g','other','Sandwich Bread 750g',380.00,50,'Keells Sandwich Bread 750g.jpg'),('P20231130093910','Sandwich Bread 450g','other','Sandwich Bread 450g',280.00,50,'Keells Sandwich Bread 450g.jpg'),('P20231130093942','Cheese And Onion Bread ','other','Cheese And Onion Bread ',375.00,50,'Cheese And Onion Bread.jpg'),('P20231130094023','French Bread','other','French Bread',295.00,50,'French Bread.jpg'),('P20231130094053','Kisses Large Pack','other','Kisses Large Pack',335.00,50,'Kisses Large Pack.jpg'),('P20231130094114','Roast Bread','other','Roast Bread',135.00,50,'Roast Bread.jpg'),('P20231130094138','Roast Bread With Seeni Sambol','other','Roast Bread With Seeni Sambol',120.00,50,'Roast Bread With Seeni Sambol.jpg'),('P20231130094206','Creamy Garlic Savory Doughnut','other','Creamy Garlic Savory Doughnut',100.00,50,'Creamy Garlic Savory Doughnut.jpg'),('P20231130094231','Smoky Bbq Savory Doughnut','other','Smoky Bbq Savory Doughnut',100.00,50,'Smoky Bbq Savory Doughnut.jpg'),('P20231130094314','Chicken Sandwich Baguette','other','Chicken Sandwich Baguette',325.00,50,'Chicken Sandwich Baguette.jpg'),('P20231130094357','Sausage Roll ','other',' Sausage Roll ',185.00,50,'Chicken Sausage Roll.jpg'),('P20231130094423','Fish Patty','other','Fish Patty',150.00,50,'Fish Patty.jpg'),('P20231130094512','Fish Roll','other','Fish Roll',150.00,50,'Fish Roll.jpg'),('P20231130094606','Seeni Sambol Bun','other','Seeni Sambol Bun',135.00,50,'Seeni Sambol Bun.jpg'),('P20231130094631','Samosa','other','Samosa',135.00,50,'chicken samosa.jpg'),('P20231130094651','Fish Finger Bun','other','Fish Finger Bun',250.00,50,'Fish Finger Bun.jpg'),('P20231130094714','Chocolate Doughnut','other','Chocolate Doughnut',160.00,50,'Chocolate Doughnut.jpg'),('P20231130094733','Omelette Bun','other','Omelette Bun',160.00,50,'omeleet bun.jpg'),('P20231130094754','Kimbula Bun','other','Kimbula Bun',75.00,50,'kimbula bun.jpg'),('P20231207032202','Ayush Turmeric Face Cream 50g','beauty','Ayush Turmeric Face Cream 50g',600.00,50,'100.jpg'),('P20231207032316','4Ever Venivel Face Wash 185ml','beauty','4Ever Venivel Face Wash 185ml',410.00,50,'101.jpg'),('P20231207032403','4Ever Face Wash Aloe Lavender 100ml','beauty','4Ever Face Wash Aloe Lavender 100ml',310.00,50,'102.jpg'),('P20231207032542','Nature Secrets Face Wash Lotus 100ml','beauty','Nature Secrets Face Wash Lotus 100ml',345.00,50,'103.jpg'),('P20231207032704','Ponds Bright Beauty Face Wash 50g','beauty','Ponds Bright Beauty Face Wash 50g',670.00,50,'104.jpg'),('P20231207032816','Natures S. Mult/Vitamin F/Cream 50ml','beauty','Natures S. Mult/Vitamin F/Cream 50ml',470.00,50,'105.jpg'),('P20231207032901','Flora Facial Cotton Pads 80S','beauty','Flora Facial Cotton Pads 80S',595.00,50,'106.jpg'),('P20231207032955','Ponds Face Wash Pimple Clear White 50g','beauty','Ponds Face Wash Pimple Clear White 50g',800.00,50,'107.jpg'),('P20231207033326','Frella Natural Aloe Vera Gel 100ml','beauty','Frella Natural Aloe Vera Gel 100ml',2200.00,50,'108.jpg'),('P20231207033420','Frella Natu. Aloe & Turmeric Gel 100ml','OrganicVegetables','Frella Natu. Aloe & Turmeric Gel 100ml',2200.00,50,'109.jpg'),('P20231207033510','Himalaya F/Wash Oil Clear Lemon 100ml','beauty','Himalaya F/Wash Oil Clear Lemon 100ml',845.00,50,'116.jpg'),('P20231207033608','Himalaya F/Wash Fairness Kesar 100ml','beauty','Himalaya F/Wash Fairness Kesar 100ml',845.00,50,'117.jpg'),('P20231207033826','Vivya Deep Cleanser Purifying 100ml','beauty','Vivya Deep Cleanser Purifying 100ml',650.00,50,'120.jpg'),('P20231207033906','Vivya Face Scrub 100ml','beauty','Vivya Face Scrub 100ml',975.00,50,'121.jpg'),('P20231207034002',' Pond\'s Tone Up Milk Mask Vitamin C 25g','beauty','\r\nPond\'s Tone Up Milk Mask Vitamin C 25g',350.00,50,'122.jpg'),('P20231207034048',' Misumi Radiant Whitening Gel 50ml','beauty','\r\nMisumi Radiant Whitening Gel 50ml',460.00,50,'123.jpg'),('P20231207034126','Nature S. Cucumber Skin Toner 100ml','beauty','Nature S. Cucumber Skin Toner 100ml',290.00,50,'124.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transid` varchar(45) NOT NULL,
  `username` varchar(60) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`transid`),
  KEY `truserid_idx` (`username`),
  CONSTRAINT `transorderid` FOREIGN KEY (`transid`) REFERENCES `orders` (`orderid`),
  CONSTRAINT `truserid` FOREIGN KEY (`username`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('T20231126084417','onaliy21@gmail.com','2023-11-26 20:44:17',570.00);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `email` varchar(60) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin@gmail.com','Admin User',9876543459,'ABC Colony, Newtown, West Bengal',786890,'admin'),('onaliy21@gmail.com','onaliy21@gmail.com',94775646739,'Pannipitiya',123,'123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_demand`
--

DROP TABLE IF EXISTS `user_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_demand` (
  `username` varchar(60) NOT NULL,
  `prodid` varchar(45) NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`username`,`prodid`),
  KEY `prodid_idx` (`prodid`),
  CONSTRAINT `prodid` FOREIGN KEY (`prodid`) REFERENCES `product` (`pid`),
  CONSTRAINT `userdemailemail` FOREIGN KEY (`username`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_demand`
--

LOCK TABLES `user_demand` WRITE;
/*!40000 ALTER TABLE `user_demand` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_demand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercart`
--

DROP TABLE IF EXISTS `usercart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usercart` (
  `username` varchar(60) DEFAULT NULL,
  `prodid` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  KEY `useremail_idx` (`username`),
  KEY `prodidcart_idx` (`prodid`),
  CONSTRAINT `prodidcart` FOREIGN KEY (`prodid`) REFERENCES `product` (`pid`),
  CONSTRAINT `useremail` FOREIGN KEY (`username`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercart`
--

LOCK TABLES `usercart` WRITE;
/*!40000 ALTER TABLE `usercart` DISABLE KEYS */;
INSERT INTO `usercart` VALUES ('onaliy21@gmail.com','P20231121080213',2),('onaliy21@gmail.com','P20231121080240',1),('onaliy21@gmail.com','P20231124100101',3);
/*!40000 ALTER TABLE `usercart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-20 20:40:39
