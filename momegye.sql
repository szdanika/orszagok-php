SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE momegye (
  mid int(11) NOT NULL,
  mnev varchar(22) DEFAULT NULL,
  mnep int(7) DEFAULT NULL,
  mter int(5) DEFAULT NULL,
  szekhely varchar(14) DEFAULT NULL,
  sznep int(7) DEFAULT NULL,
  szter float DEFAULT NULL,
  regio varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(1, 'Bács-Kiskun', 503825, 8445, 'Kecskemét', 110687, 322.57, 'Dél-Alföld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(2, 'Baranya', 360704, 4430, 'Pécs', 142873, 162.77, 'Dél-Dunántúl');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(3, 'Békés', 334264, 5631, 'Békéscsaba', 58996, 193.93, 'Dél-Alföld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(4, 'Borsod-Abaúj-Zemplén', 642447, 7247, 'Miskolc', 154521, 236.66, 'Észak-Magyarország');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(5, 'Budapest', 1752286, 525, 'Budapest', 1752286, 525, 'Közép-Magyarország');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(6, 'Csongrád', 399012, 4263, 'Szeged', 160766, 281, 'Dél-Alföld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(7, 'Fejér', 417712, 4359, 'Székesfehérvár', 96940, 170.89, 'Közép-Dunántúl');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(8, 'Gyõr-Moson-Sopron', 467144, 4208, 'Gyõr', 132038, 174.62, 'Nyugat-Dunántúl');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(9, 'Hajdú-Bihar', 527989, 6211, 'Debrecen', 201432, 461.66, 'Észak-Alföld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(10, 'Heves', 294609, 3637, 'Eger', 52898, 92.21, 'Észak-Magyarország');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(11, 'Jász-Nagykun-Szolnok', 370007, 5582, 'Szolnok', 71285, 187.24, 'Észak-Alföld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(12, 'Komárom-Esztergom', 299207, 2265, 'Tatabánya', 65845, 91.42, 'Közép-Dunántúl');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(13, 'Nógrád', 189304, 2546, 'Salgótarján', 33579, 100.83, 'Észak-Magyarország');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(14, 'Pest', 1278874, 6393, 'Budapest', 0, 0, 'Közép-Magyarország');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(15, 'Somogy', 301429, 6066, 'Kaposvár', 61441, 113.59, 'Dél-Dunántúl');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(16, 'Szabolcs-Szatmár-Bereg', 552964, 5936, 'Nyíregyháza', 116799, 274.54, 'Észak-Alföld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(17, 'Tolna', 217463, 3703, 'Szekszárd', 31795, 96.28, 'Dél-Dunántúl');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(18, 'Vas', 253551, 3336, 'Szombathely', 78407, 97.5, 'Nyugat-Dunántúl');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(19, 'Veszprém', 341317, 4463, 'Veszprém', 59738, 126.9, 'Közép-Dunántúl');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(20, 'Zala', 268648, 3784, 'Zalaegerszeg', 57403, 102.41, 'Nyugat-Dunántúl');


ALTER TABLE momegye
  ADD PRIMARY KEY (mid);


ALTER TABLE momegye
  MODIFY mid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;
