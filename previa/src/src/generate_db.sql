USE testing;

CREATE TABLE BTC (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE ETH (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE ADA (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );

CREATE TABLE D2R (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE DOFUS (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE EFT (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE ESO (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE FFXIV (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE GTA (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE OSRS (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE WOW (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );

LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/BTCUSDT.csv' INTO TABLE BTC FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/ETHUSDT.csv' INTO TABLE ETH FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/ADAUSDT.csv' INTO TABLE ADA FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/D2R.csv' INTO TABLE D2R FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/DOFUS.csv' INTO TABLE DOFUS FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/EFT.csv' INTO TABLE EFT FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/ESO.csv' INTO TABLE ESO FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/FFXIV.csv' INTO TABLE FFXIV FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/GTA.csv' INTO TABLE GTA FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/OSRS.csv' INTO TABLE OSRS FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/WOW.csv' INTO TABLE WOW FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
