USE testing;

DROP TABLE IF EXISTS 4Story;
DROP TABLE IF EXISTS 8_Ball_Pool;
DROP TABLE IF EXISTS 9DS;
DROP TABLE IF EXISTS Albion_Online;
DROP TABLE IF EXISTS Animal_Crossing_NH;
DROP TABLE IF EXISTS Animal_Jam;
DROP TABLE IF EXISTS Arcane_Legends;
DROP TABLE IF EXISTS Archeage_Unchained;
DROP TABLE IF EXISTS Aura_Kingdom;
DROP TABLE IF EXISTS Black_Desert;
DROP TABLE IF EXISTS Blade_Soul;
DROP TABLE IF EXISTS Bless_Unleashed;
DROP TABLE IF EXISTS coins.txt;
DROP TABLE IF EXISTS Conquerors_Blade;
DROP TABLE IF EXISTS Crowfall;
DROP TABLE IF EXISTS D2;
DROP TABLE IF EXISTS D2R;
DROP TABLE IF EXISTS DCUO;
DROP TABLE IF EXISTS DDO;
DROP TABLE IF EXISTS Dead_Frontier_2;
DROP TABLE IF EXISTS DFO;
DROP TABLE IF EXISTS Diablo_2_Resurrected;
DROP TABLE IF EXISTS Digimon_Masters;
DROP TABLE IF EXISTS Dofus;
DROP TABLE IF EXISTS DOFUS;
DROP TABLE IF EXISTS Dofus_Touch;
DROP TABLE IF EXISTS Dragon_Nest;
DROP TABLE IF EXISTS Dual_Universe;
DROP TABLE IF EXISTS Elder_Scrolls_Online;
DROP TABLE IF EXISTS EQ2;
DROP TABLE IF EXISTS Escape_From_Tarkov;
DROP TABLE IF EXISTS ESO;
DROP TABLE IF EXISTS EVE;
DROP TABLE IF EXISTS EVE_Echoes;
DROP TABLE IF EXISTS Fallout_76;
DROP TABLE IF EXISTS FFXIV;
DROP TABLE IF EXISTS FIFA_22;
DROP TABLE IF EXISTS FIFA_Mobile;
DROP TABLE IF EXISTS Forza_Horizon_4;
DROP TABLE IF EXISTS Gaia;
DROP TABLE IF EXISTS Gloria_Victis;
DROP TABLE IF EXISTS GTA;
DROP TABLE IF EXISTS Guild_Wars_2;
DROP TABLE IF EXISTS GW;
DROP TABLE IF EXISTS Habbo;
DROP TABLE IF EXISTS IMVU;
DROP TABLE IF EXISTS L2;
DROP TABLE IF EXISTS Last_Oasis;
DROP TABLE IF EXISTS Legends_of_Aria;
DROP TABLE IF EXISTS Lords_Mobile;
DROP TABLE IF EXISTS Lost_Ark;
DROP TABLE IF EXISTS LOTRO;
DROP TABLE IF EXISTS M2;
DROP TABLE IF EXISTS Mabinogi;
DROP TABLE IF EXISTS Madden_21;
DROP TABLE IF EXISTS Madden_22;
DROP TABLE IF EXISTS Madden_NFL_Mobile;
DROP TABLE IF EXISTS MapleStory_2;
DROP TABLE IF EXISTS MapleStory_M;
DROP TABLE IF EXISTS MCSCK;
DROP TABLE IF EXISTS Minecraft;
DROP TABLE IF EXISTS MIR4;
DROP TABLE IF EXISTS MLB_The_Show_21;
DROP TABLE IF EXISTS NBA_2K20;
DROP TABLE IF EXISTS NBA_2K21;
DROP TABLE IF EXISTS NBA_2K22;
DROP TABLE IF EXISTS NBA_Live_Mobile;
DROP TABLE IF EXISTS Neopets;
DROP TABLE IF EXISTS Never_Winter;
DROP TABLE IF EXISTS New_World;
DROP TABLE IF EXISTS NHL_21;
DROP TABLE IF EXISTS OSRS;
DROP TABLE IF EXISTS Path_of_Exile;
DROP TABLE IF EXISTS PokeMMO;
DROP TABLE IF EXISTS PSO2;
DROP TABLE IF EXISTS PSO2NGS;
DROP TABLE IF EXISTS RDR2;
DROP TABLE IF EXISTS render_graph.py;
DROP TABLE IF EXISTS Revelation_Online;
DROP TABLE IF EXISTS Rift;
DROP TABLE IF EXISTS ROBLOX;
DROP TABLE IF EXISTS Rocket_League;
DROP TABLE IF EXISTS RO;
DROP TABLE IF EXISTS RuneScape;
DROP TABLE IF EXISTS SL;
DROP TABLE IF EXISTS Smite;
DROP TABLE IF EXISTS Starbase;
DROP TABLE IF EXISTS stats_queries.py;
DROP TABLE IF EXISTS STO;
DROP TABLE IF EXISTS style.mplstyle;
DROP TABLE IF EXISTS sussy.py;
DROP TABLE IF EXISTS Swords_of_Legends;
DROP TABLE IF EXISTS SWTOR;
DROP TABLE IF EXISTS Temtem;
DROP TABLE IF EXISTS Tera;
DROP TABLE IF EXISTS Tibia;
DROP TABLE IF EXISTS Toram_Online;
DROP TABLE IF EXISTS Tree_of_Savior;
DROP TABLE IF EXISTS Trove;
DROP TABLE IF EXISTS V4;
DROP TABLE IF EXISTS Vindictus;
DROP TABLE IF EXISTS Wakfu;
DROP TABLE IF EXISTS Warframe;
DROP TABLE IF EXISTS Wildstar;
DROP TABLE IF EXISTS Wild_Terra_2;
DROP TABLE IF EXISTS Wizard101;
DROP TABLE IF EXISTS Wolcen;
DROP TABLE IF EXISTS WoW_Classic;
DROP TABLE IF EXISTS WoW_Classic_TBC;
DROP TABLE IF EXISTS WoW;
DROP TABLE IF EXISTS WoW_EU;
DROP TABLE IF EXISTS BTC;
DROP TABLE IF EXISTS BNB;
DROP TABLE IF EXISTS ETH;
DROP TABLE IF EXISTS ADA;
DROP TABLE IF EXISTS SOL;
DROP TABLE IF EXISTS DOT;
DROP TABLE IF EXISTS XRP;
DROP TABLE IF EXISTS DOGE;
DROP TABLE IF EXISTS SHIB;

CREATE TABLE BTC (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE BNB (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE ETH (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE ADA (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE SOL (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE DOT (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE XRP (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE DOGE (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE SHIB (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE 4Story (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE 8_Ball_Pool (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE 9DS (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Albion_Online (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Animal_Crossing_NH (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Animal_Jam (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Arcane_Legends (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Archeage_Unchained (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Aura_Kingdom (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Black_Desert (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Blade_Soul (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Bless_Unleashed (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE coins.txt (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Conquerors_Blade (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Crowfall (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE D2 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE D2R (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE DCUO (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE DDO (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Dead_Frontier_2 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE DFO (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Diablo_2_Resurrected (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Digimon_Masters (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Dofus (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE DOFUS (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Dofus_Touch (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Dragon_Nest (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Dual_Universe (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Elder_Scrolls_Online (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE EQ2 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Escape_From_Tarkov (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE ESO (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE EVE (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE EVE_Echoes (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Fallout_76 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE FFXIV (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE FIFA_22 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE FIFA_Mobile (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Forza_Horizon_4 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Gaia (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Gloria_Victis (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE GTA (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Guild_Wars_2 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE GW (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Habbo (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE IMVU (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE L2 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Last_Oasis (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Legends_of_Aria (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Lords_Mobile (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Lost_Ark (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE LOTRO (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE M2 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Mabinogi (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Madden_21 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Madden_22 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Madden_NFL_Mobile (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE MapleStory_2 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE MapleStory_M (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE MCSCK (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Minecraft (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE MIR4 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE MLB_The_Show_21 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE NBA_2K20 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE NBA_2K21 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE NBA_2K22 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE NBA_Live_Mobile (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Neopets (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Never_Winter (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE New_World (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE NHL_21 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE OSRS (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Path_of_Exile (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE PokeMMO (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE PSO2 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE PSO2NGS (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE RDR2 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE render_graph.py (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Revelation_Online (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Rift (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE ROBLOX (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Rocket_League (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE RO (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE RuneScape (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE SL (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Smite (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Starbase (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE stats_queries.py (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE STO (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE style.mplstyle (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE sussy.py (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Swords_of_Legends (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE SWTOR (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Temtem (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Tera (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Tibia (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Toram_Online (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Tree_of_Savior (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Trove (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE V4 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Vindictus (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Wakfu (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Warframe (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Wildstar (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Wild_Terra_2 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Wizard101 (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE Wolcen (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE WoW_Classic (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE WoW_Classic_TBC (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE WoW (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );
CREATE TABLE WoW_EU (   Date DATE,   Price Decimal(18, 2),   PRIMARY KEY(Date, Price) );

LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/BTCUSDT.csv' INTO TABLE BTC FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/BNBUSDT.csv' INTO TABLE BNB FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/ETHUSDT.csv' INTO TABLE ETH FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/ADAUSDT.csv' INTO TABLE ADA FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/SOLUSDT.csv' INTO TABLE SOL FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/DOTUSDT.csv' INTO TABLE DOT FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/XRPUSDT.csv' INTO TABLE XRP FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/DOGEUSDT.csv' INTO TABLE DOGE FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/crypto/SHIBUSDT.csv' INTO TABLE SHIB FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/4Story.csv' INTO TABLE 4Story FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/8_Ball_Pool.csv' INTO TABLE 8_Ball_Pool FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/9DS.csv' INTO TABLE 9DS FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Albion_Online.csv' INTO TABLE Albion_Online FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Animal_Crossing_NH.csv' INTO TABLE Animal_Crossing_NH FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Animal_Jam.csv' INTO TABLE Animal_Jam FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Arcane_Legends.csv' INTO TABLE Arcane_Legends FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Archeage_Unchained.csv' INTO TABLE Archeage_Unchained FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Aura_Kingdom.csv' INTO TABLE Aura_Kingdom FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Black_Desert.csv' INTO TABLE Black_Desert FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Blade_Soul.csv' INTO TABLE Blade_Soul FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Bless_Unleashed.csv' INTO TABLE Bless_Unleashed FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/coins.txt.csv' INTO TABLE coins.txt FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Conquerors_Blade.csv' INTO TABLE Conquerors_Blade FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Crowfall.csv' INTO TABLE Crowfall FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/D2.csv' INTO TABLE D2 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/D2R.csv' INTO TABLE D2R FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/DCUO.csv' INTO TABLE DCUO FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/DDO.csv' INTO TABLE DDO FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Dead_Frontier_2.csv' INTO TABLE Dead_Frontier_2 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/DFO.csv' INTO TABLE DFO FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Diablo_2_Resurrected.csv' INTO TABLE Diablo_2_Resurrected FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Digimon_Masters.csv' INTO TABLE Digimon_Masters FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Dofus.csv' INTO TABLE Dofus FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/DOFUS.csv' INTO TABLE DOFUS FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Dofus_Touch.csv' INTO TABLE Dofus_Touch FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Dragon_Nest.csv' INTO TABLE Dragon_Nest FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Dual_Universe.csv' INTO TABLE Dual_Universe FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Elder_Scrolls_Online.csv' INTO TABLE Elder_Scrolls_Online FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/EQ2.csv' INTO TABLE EQ2 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Escape_From_Tarkov.csv' INTO TABLE Escape_From_Tarkov FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/ESO.csv' INTO TABLE ESO FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/EVE.csv' INTO TABLE EVE FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/EVE_Echoes.csv' INTO TABLE EVE_Echoes FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Fallout_76.csv' INTO TABLE Fallout_76 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/FFXIV.csv' INTO TABLE FFXIV FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/FIFA_22.csv' INTO TABLE FIFA_22 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/FIFA_Mobile.csv' INTO TABLE FIFA_Mobile FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Forza_Horizon_4.csv' INTO TABLE Forza_Horizon_4 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Gaia.csv' INTO TABLE Gaia FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Gloria_Victis.csv' INTO TABLE Gloria_Victis FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/GTA.csv' INTO TABLE GTA FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Guild_Wars_2.csv' INTO TABLE Guild_Wars_2 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/GW.csv' INTO TABLE GW FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Habbo.csv' INTO TABLE Habbo FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/IMVU.csv' INTO TABLE IMVU FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/L2.csv' INTO TABLE L2 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Last_Oasis.csv' INTO TABLE Last_Oasis FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Legends_of_Aria.csv' INTO TABLE Legends_of_Aria FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Lords_Mobile.csv' INTO TABLE Lords_Mobile FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Lost_Ark.csv' INTO TABLE Lost_Ark FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/LOTRO.csv' INTO TABLE LOTRO FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/M2.csv' INTO TABLE M2 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Mabinogi.csv' INTO TABLE Mabinogi FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Madden_21.csv' INTO TABLE Madden_21 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Madden_22.csv' INTO TABLE Madden_22 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Madden_NFL_Mobile.csv' INTO TABLE Madden_NFL_Mobile FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/MapleStory_2.csv' INTO TABLE MapleStory_2 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/MapleStory_M.csv' INTO TABLE MapleStory_M FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/MCSCK.csv' INTO TABLE MCSCK FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Minecraft.csv' INTO TABLE Minecraft FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/MIR4.csv' INTO TABLE MIR4 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/MLB_The_Show_21.csv' INTO TABLE MLB_The_Show_21 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/NBA_2K20.csv' INTO TABLE NBA_2K20 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/NBA_2K21.csv' INTO TABLE NBA_2K21 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/NBA_2K22.csv' INTO TABLE NBA_2K22 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/NBA_Live_Mobile.csv' INTO TABLE NBA_Live_Mobile FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Neopets.csv' INTO TABLE Neopets FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Never_Winter.csv' INTO TABLE Never_Winter FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/New_World.csv' INTO TABLE New_World FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/NHL_21.csv' INTO TABLE NHL_21 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/OSRS.csv' INTO TABLE OSRS FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Path_of_Exile.csv' INTO TABLE Path_of_Exile FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/PokeMMO.csv' INTO TABLE PokeMMO FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/PSO2.csv' INTO TABLE PSO2 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/PSO2NGS.csv' INTO TABLE PSO2NGS FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/RDR2.csv' INTO TABLE RDR2 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/render_graph.py.csv' INTO TABLE render_graph.py FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Revelation_Online.csv' INTO TABLE Revelation_Online FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Rift.csv' INTO TABLE Rift FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/ROBLOX.csv' INTO TABLE ROBLOX FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Rocket_League.csv' INTO TABLE Rocket_League FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/RO.csv' INTO TABLE RO FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/RuneScape.csv' INTO TABLE RuneScape FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/SL.csv' INTO TABLE SL FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Smite.csv' INTO TABLE Smite FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Starbase.csv' INTO TABLE Starbase FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/stats_queries.py.csv' INTO TABLE stats_queries.py FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/STO.csv' INTO TABLE STO FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/style.mplstyle.csv' INTO TABLE style.mplstyle FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/sussy.py.csv' INTO TABLE sussy.py FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Swords_of_Legends.csv' INTO TABLE Swords_of_Legends FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/SWTOR.csv' INTO TABLE SWTOR FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Temtem.csv' INTO TABLE Temtem FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Tera.csv' INTO TABLE Tera FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Tibia.csv' INTO TABLE Tibia FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Toram_Online.csv' INTO TABLE Toram_Online FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Tree_of_Savior.csv' INTO TABLE Tree_of_Savior FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Trove.csv' INTO TABLE Trove FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/V4.csv' INTO TABLE V4 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Vindictus.csv' INTO TABLE Vindictus FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Wakfu.csv' INTO TABLE Wakfu FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Warframe.csv' INTO TABLE Warframe FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Wildstar.csv' INTO TABLE Wildstar FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Wild_Terra_2.csv' INTO TABLE Wild_Terra_2 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Wizard101.csv' INTO TABLE Wizard101 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/Wolcen.csv' INTO TABLE Wolcen FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/WoW_Classic.csv' INTO TABLE WoW_Classic FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/WoW_Classic_TBC.csv' INTO TABLE WoW_Classic_TBC FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/WoW.csv' INTO TABLE WoW FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '../../data/processed/prices/coins/WoW_EU.csv' INTO TABLE WoW_EU FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
