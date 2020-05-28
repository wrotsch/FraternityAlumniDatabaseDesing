CREATE DATABASE `alumnidatabaseks`; 
use alumnidatabaseks;

CREATE TABLE `awards` (
  `BrotherID` int NOT NULL,
  `AwardNumber` int NOT NULL,
  `AwardName` varchar(45) DEFAULT NULL,
  `Organization` varchar(45) DEFAULT NULL,
  `DateAwarded` date DEFAULT NULL,
  `CashAward` enum('YES','NO') DEFAULT NULL,
  PRIMARY KEY (`BrotherID`,`AwardNumber`),
  CONSTRAINT `fk_AWARDS_BROTHERS1` FOREIGN KEY (`BrotherID`) REFERENCES `brothers` (`BrotherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `brothers` (
  `BrotherID` int NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `EmailAddress` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `InitiationYear` varchar(45) DEFAULT NULL,
  `GraduationYear` varchar(45) DEFAULT NULL,
  `BigBrotherID` varchar(45) DEFAULT NULL,
  `GreekFamilyID` int DEFAULT NULL,
  `StreetAddress` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `ZIP` varchar(45) DEFAULT NULL,
  `Nation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BrotherID`),
  KEY `fk_BROTHERS_GREEK_FAMILY_idx` (`GreekFamilyID`),
  CONSTRAINT `fk_BROTHERS_GREEK_FAMILY` FOREIGN KEY (`GreekFamilyID`) REFERENCES `greek_family` (`GreekFamilyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `donations` (
  `BrotherID` int NOT NULL,
  `DonationDate` date NOT NULL,
  `DonationAmount` decimal(13,2) DEFAULT NULL,
  `DonationDescription` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BrotherID`,`DonationDate`),
  CONSTRAINT `fk_table1_BROTHERS1` FOREIGN KEY (`BrotherID`) REFERENCES `brothers` (`BrotherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `greek_family` (
  `GreekFamilyID` int NOT NULL,
  `FamilyName` varchar(45) DEFAULT NULL,
  `FoundingBrotherID` varchar(45) DEFAULT NULL,
  `Active?` enum('TRUE','FALSE') DEFAULT NULL,
  PRIMARY KEY (`GreekFamilyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `jobs` (
  `BrotherID` int NOT NULL,
  `JobNumber` int NOT NULL,
  `Company` varchar(45) DEFAULT NULL,
  `JobTitle` varchar(45) DEFAULT NULL,
  `Industry` varchar(45) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  PRIMARY KEY (`BrotherID`,`JobNumber`),
  CONSTRAINT `fk_JOBS_BROTHERS1` FOREIGN KEY (`BrotherID`) REFERENCES `brothers` (`BrotherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `study_program` (
  `BrotherID` int NOT NULL,
  `ProgramNumber` int NOT NULL,
  `Major` enum('YES','NO') DEFAULT NULL,
  `Minor` enum('YES','NO') DEFAULT NULL,
  `Concentration` enum('YES','NO') DEFAULT NULL,
  `ProgramName` varchar(45) DEFAULT NULL,
  `HonorSocietyMember` enum('YES','NO') DEFAULT NULL,
  PRIMARY KEY (`BrotherID`,`ProgramNumber`),
  CONSTRAINT `fk_table1_BROTHERS2` FOREIGN KEY (`BrotherID`) REFERENCES `brothers` (`BrotherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `undergrad_positions` (
  `BROTHERS_BrotherID` int NOT NULL,
  `PositionNumber` int NOT NULL,
  `Organization` varchar(45) DEFAULT NULL,
  `PositionName` varchar(45) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  PRIMARY KEY (`BROTHERS_BrotherID`,`PositionNumber`),
  KEY `fk_UNDERGRAD_POSITIONS_BROTHERS1_idx` (`BROTHERS_BrotherID`),
  CONSTRAINT `fk_UNDERGRAD_POSITIONS_BROTHERS1` FOREIGN KEY (`BROTHERS_BrotherID`) REFERENCES `brothers` (`BrotherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
