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

INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(1, 'B�cs-Kiskun', 503825, 8445, 'Kecskem�t', 110687, 322.57, 'D�l-Alf�ld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(2, 'Baranya', 360704, 4430, 'P�cs', 142873, 162.77, 'D�l-Dun�nt�l');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(3, 'B�k�s', 334264, 5631, 'B�k�scsaba', 58996, 193.93, 'D�l-Alf�ld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(4, 'Borsod-Aba�j-Zempl�n', 642447, 7247, 'Miskolc', 154521, 236.66, '�szak-Magyarorsz�g');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(5, 'Budapest', 1752286, 525, 'Budapest', 1752286, 525, 'K�z�p-Magyarorsz�g');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(6, 'Csongr�d', 399012, 4263, 'Szeged', 160766, 281, 'D�l-Alf�ld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(7, 'Fej�r', 417712, 4359, 'Sz�kesfeh�rv�r', 96940, 170.89, 'K�z�p-Dun�nt�l');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(8, 'Gy�r-Moson-Sopron', 467144, 4208, 'Gy�r', 132038, 174.62, 'Nyugat-Dun�nt�l');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(9, 'Hajd�-Bihar', 527989, 6211, 'Debrecen', 201432, 461.66, '�szak-Alf�ld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(10, 'Heves', 294609, 3637, 'Eger', 52898, 92.21, '�szak-Magyarorsz�g');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(11, 'J�sz-Nagykun-Szolnok', 370007, 5582, 'Szolnok', 71285, 187.24, '�szak-Alf�ld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(12, 'Kom�rom-Esztergom', 299207, 2265, 'Tatab�nya', 65845, 91.42, 'K�z�p-Dun�nt�l');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(13, 'N�gr�d', 189304, 2546, 'Salg�tarj�n', 33579, 100.83, '�szak-Magyarorsz�g');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(14, 'Pest', 1278874, 6393, 'Budapest', 0, 0, 'K�z�p-Magyarorsz�g');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(15, 'Somogy', 301429, 6066, 'Kaposv�r', 61441, 113.59, 'D�l-Dun�nt�l');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(16, 'Szabolcs-Szatm�r-Bereg', 552964, 5936, 'Ny�regyh�za', 116799, 274.54, '�szak-Alf�ld');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(17, 'Tolna', 217463, 3703, 'Szeksz�rd', 31795, 96.28, 'D�l-Dun�nt�l');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(18, 'Vas', 253551, 3336, 'Szombathely', 78407, 97.5, 'Nyugat-Dun�nt�l');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(19, 'Veszpr�m', 341317, 4463, 'Veszpr�m', 59738, 126.9, 'K�z�p-Dun�nt�l');
INSERT INTO momegye (mid, mnev, mnep, mter, szekhely, sznep, szter, regio) VALUES(20, 'Zala', 268648, 3784, 'Zalaegerszeg', 57403, 102.41, 'Nyugat-Dun�nt�l');


ALTER TABLE momegye
  ADD PRIMARY KEY (mid);


ALTER TABLE momegye
  MODIFY mid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;
