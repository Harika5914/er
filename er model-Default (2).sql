/*
 Project Name : er model
 Branch Name  : main
 Server Type  : MySQL
 
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for Author
-- ----------------------------
DROP TABLE IF EXISTS `Author`;
CREATE TABLE IF NOT EXISTS `Author` (
  `AuthorID` int(10) UNIQUE NOT NULL COMMENT 'Author ID',
  `Name` varchar(100) NOT NULL COMMENT 'Name',
  `Birthdate` date NOT NULL COMMENT 'Birthdate',
  `Nationality` varchar(50) NOT NULL COMMENT 'Nationality',
  PRIMARY KEY (`AuthorID`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Author';

-- ----------------------------
-- Table structure for Book
-- ----------------------------
DROP TABLE IF EXISTS `Book`;
CREATE TABLE IF NOT EXISTS `Book` (
  `ISBN` varchar(13) UNIQUE NOT NULL COMMENT 'ISBN',
  `Title` varchar(100) NOT NULL COMMENT 'Title',
  `Genre` varchar(50) NOT NULL COMMENT 'Genre',
  `Price` decimal(10, 2) NOT NULL COMMENT 'Price',
  `PublishedDate` date NOT NULL COMMENT 'Published Date',
  PRIMARY KEY (`ISBN`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Book';

-- ----------------------------
-- Table structure for Customer
-- ----------------------------
DROP TABLE IF EXISTS `Customer`;
CREATE TABLE IF NOT EXISTS `Customer` (
  `CustomerID` int(10) UNIQUE NOT NULL COMMENT 'Customer ID',
  `Name` varchar(100) NOT NULL COMMENT 'Name',
  `Email` varchar(100) NOT NULL COMMENT 'Email',
  `Address` varchar(200) NOT NULL COMMENT 'Address',
  PRIMARY KEY (`CustomerID`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Customer';

-- ----------------------------
-- Table structure for Order
-- ----------------------------
DROP TABLE IF EXISTS `Order`;
CREATE TABLE IF NOT EXISTS `Order` (
  `OrderID` int(10) UNIQUE NOT NULL COMMENT 'Order ID',
  `Date` date NOT NULL COMMENT 'Date',
  `TotalAmount` decimal(10, 2) NOT NULL COMMENT 'Total Amount',
  PRIMARY KEY (`OrderID`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Order';

-- ----------------------------
-- Table structure for OrderItem
-- ----------------------------
DROP TABLE IF EXISTS `OrderItem`;
CREATE TABLE IF NOT EXISTS `OrderItem` (
  `OrderItemID` int(10) UNIQUE NOT NULL COMMENT 'Order Item ID',
  `Quantity` int(10) NOT NULL COMMENT 'Quantity',
  PRIMARY KEY (`OrderItemID`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Order Item';

-- ----------------------------
-- Table structure for Publisher
-- ----------------------------
DROP TABLE IF EXISTS `Publisher`;
CREATE TABLE IF NOT EXISTS `Publisher` (
  `PublisherID` int(10) UNIQUE NOT NULL COMMENT 'Publisher ID',
  `Name` varchar(100) NOT NULL COMMENT 'Name',
  `Location` varchar(100) NOT NULL COMMENT 'Location',
  PRIMARY KEY (`PublisherID`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Publisher';

SET FOREIGN_KEY_CHECKS = 1;
