SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `spectacus` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `spectacus`;

CREATE TABLE IF NOT EXISTS `stock` (
  `idStock` int(11) NOT NULL AUTO_INCREMENT,
  `idTitre` int(11) NOT NULL,
  `format` enum('CD-ROM','K7','DVD','BLU-RAY') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DVD',
  `stock` int(11) NOT NULL,
  `dispo` int(11) NOT NULL,
  PRIMARY KEY (`idStock`),
  KEY `idTitre` (`idTitre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `titre` (
  `idTitre` int(11) NOT NULL AUTO_INCREMENT,
  `libTitre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anParution` smallint(6) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idTitre`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `Theme`(
  `idTitre` int(11) NOT NULL AUTO_INCREMENT,
  `theme`
)

INSERT INTO `titre` (`idTitre`, `libTitre`, `anParution`, `title`,`theme`) VALUES
(280, 'AVRIL ET LE MONDE TRUQUÉ', 2015, '','Cinémas nationaux'),
(281, 'BARRY LINDON', 1976, '','Histoire'),
(282, 'SPARTACUS', 1961, '','Guerres'),
(283, 'MYSTIC RIVER', 2003, '','Fantastique/Science-fiction'),
(284, 'IMPITOYABLE', 1992, '','Guerres'),
(285, 'EN MAI FAIS CE QU\'IL TE PLAÎT', 2015, ''),
(286, 'SHINING', 1980, ''),
(287, 'LE PRIX DU DANGER', 1985, ''),
(288, 'TWO JAKES', 1990, ''),
(289, 'LES INFILTRÉS', 2006, ''),
(290, 'ANATOMIE 2', 2003, ''),
(291, 'AND SOON THE DARKNESS', 1970, ''),
(292, 'ANGEL EYES', 1993, ''),
(293, 'ANGLE MORT', 2012, ''),
(294, 'ANGOISSES', 1983, ''),
(295, 'ANTIBODIES', 2006, ''),
(296, 'ANTIVIRAL', 2012, ''),
(297, 'APARTMENT ZERO', 1988, ''),
(298, 'APOLOGY', 1986, ''),
(299, 'APPARTEMENT 512', 1994, ''),
(300, 'APPELEZ NORD 777', 1948, ''),
(301, 'APPETITE', 1997, ''),
(302, 'ARBITRAGE', 2011, ''),
(303, 'ARGO', 2011, ''),
(304, 'ASSASSINS', 1995, ''),
(305, 'ASSOCIATION CRIMINELLE', 1955, ''),
(306, 'ASSURANCE SUR LA MORT', 1944, ''),
(307, 'AU BENEFICE DU DOUTE', 1993, ''),
(308, 'AU NOM DE LA LOI', 1986, ''),
(309, 'AU PAIR', 1990, ''),
(310, 'AUX YEUX DE TOUS', 2011, ''),
(311, 'AVANT D\'ALLER DORMIR', 2014, ''),
(312, 'AVANT L\'AUBE', 2010, ''),
(313, 'BACK IN THE U.S.S.R.', 1992, ''),
(314, 'BACKSLIDING', 1991, ''),
(315, 'BAD INFLUENCE', 1990, ''),
(316, 'BAGARRE AU-DESSUS DE L\'ATLANTIQUE', 1959, ''),
(317, 'BAJA', 1995, ''),
(318, 'BALADE ENTRE LES TOMBES', 2014, ''),
(319, 'BANTER', 1986, ''),
(320, 'BAS LES MASQUES', 1952, ''),
(321, 'BASIC INSTINCT', 1992, ''),
(322, 'BASSI ISTINTI', 1991, ''),
(323, 'BEAUCOUP DE BRUIT POUR RIEN', 2012, ''),
(324, 'BEDROOM EYES II', 1986, ''),
(325, 'BEHIND THE MASK', 1946, ''),
(326, 'BEIJING EXPRESS', 1995, ''),
(327, 'BETRAYAL OF THE DOVE', 1993, ''),
(328, 'BEWARE MY LOVELY', 1952, ''),
(329, 'BEZETEN - HET GAT IN DE MUUR', 1968, ''),
(330, 'HEAR NO EVIL', 1993, ''),
(331, 'HELLHOLE', 1985, ''),
(332, 'HIDER IN THE HOUSE', 1988, ''),
(333, 'HIPOTESIS', 2013, ''),
(334, 'HITCHER IN THE DARK', 1990, ''),
(335, 'HOLD-UP', 2011, ''),
(336, 'HORS D\'HALEINE', 1987, ''),
(337, 'HORS DE CONTROLE', 2009, ''),
(338, 'HOSTILE TAKEOVER', 1988, ''),
(339, 'HOT SPOT', 1990, ''),
(340, 'HOT TARGET', 1985, ''),
(341, 'HOUR OF THE ASSASSIN', 1987, ''),
(342, 'HOUSE OF DARKNESS', 1948, ''),
(343, 'HUNTING', 1990, ''),
(344, 'HYSTERIA', 1964, ''),
(345, 'I CORPI PRESENTANO TRACCE DI VIOLENZA CARNALE', 1973, ''),
(346, 'I LOVE YOU BABY', 2000, ''),
(347, 'ICI COMMENCE L\'ENFER', 1997, ''),
(348, 'IDENTIKIT', 1974, ''),
(349, 'IDENTITY', 2003, ''),
(350, 'IL ETAIT UNE FOIS BROADWAY', 1989, ''),
(351, 'IL SESSO DEL DIAVOLO', 1971, ''),
(352, 'ILL MANORS', 2012, ''),
(353, 'ILLEGAL TRAFFIC', 2008, ''),
(354, 'IMAGEMAKER', 1986, ''),
(355, 'IN A MOMENT OF PASSION', 1993, ''),
(356, 'IN THE COLD LIGHT OF DAY', 1995, ''),
(357, 'IN THE CUT', 2003, ''),
(358, 'INCIDENT AT RAVEN\'S GATE', 1988, ''),
(359, 'INDECENT BEHAVIOR', 1993, ''),
(360, 'INDECENT BEHAVIOR III', 1995, ''),
(361, 'INFERNAL AFFAIRS', 2002, ''),
(362, 'INNOCENT VICTIM', 1990, ''),
(363, 'INSAISISSABLES', 2013, ''),
(364, 'INSIDE', 2011, ''),
(365, 'INSIDE MAN', 2006, ''),
(366, 'INSOMNIA', 2002, ''),
(367, 'INSOUPCONNABLE', 1995, ''),
(368, 'INSOUPCONNABLE', 2010, ''),
(369, 'INTERSECTIONS', 2012, ''),
(370, 'MALICE', 1993, ''),
(371, 'MALVEILLANCE', 2010, ''),
(372, 'MANDAT D\'ARRET', 1968, ''),
(373, 'MANIAC COP', 1988, ''),
(374, 'MARCHE DE BRUTES', 1948, ''),
(375, 'MARGE D\'ERREUR', 1943, ''),
(376, 'MASTERMINDS', 1997, ''),
(377, 'MAX PAYNE', 2008, ''),
(378, 'MELANCHOLIA', 1990, ''),
(379, 'MELODY OF MURDER', 1944, ''),
(380, 'MEME LES ASSASSINS TREMBLENT', 1953, ''),
(381, 'MEMOIRE TRAQUEE', 1991, ''),
(382, 'MEMOIRES SUSPECTES', 1997, ''),
(383, 'MEMORIAL DAY', 1998, ''),
(384, 'MENACES DANS LA NUIT', 1951, ''),
(385, 'MES ENLLA DE LA PASSIO', 1987, ''),
(386, 'MESRINE : L\'INSTINCT DE MORT', 2008, ''),
(387, 'MEURTRE A LA MAISON BLANCHE', 1997, ''),
(388, 'MEURTRE AU SUNSET HOTEL', 1990, ''),
(389, 'MEURTRE PAR INTERIM', 1971, ''),
(390, 'MEURTRE PAR INTERIM', 1993, ''),
(391, 'MEURTRES EN DIRECT', 1982, ''),
(392, 'MEURTRES PAR TELEPHONES', 1980, ''),
(393, 'MIAMI BLUES', 1990, ''),
(394, 'MICHAEL CLAYTON', 2007, ''),
(395, 'MIDNIGHT CONFESSIONS', 1993, ''),
(396, 'MIDNIGHT CROSSING', 1988, ''),
(397, 'MIDNIGHT GLOBE', 2013, ''),
(398, 'MIDNIGHT HORROR', 1985, ''),
(399, 'MIDNIGHT RIDE', 1990, ''),
(400, 'MIDNIGHT WITNESS', 1992, ''),
(401, 'MIKEY', 1991, ''),
(402, 'MILLENIUM 3 : LA REINE DANS LE PALAIS DES COURANTS D\'AIR', 2009, ''),
(403, 'MILLENIUM : LES HOMMES QUI N\'AIMAIENT PAS LES FEMMES', 2011, ''),
(404, 'MILLENIUM LE FILM', 2009, ''),
(405, 'MIND GAMES', 1989, ''),
(406, 'MIRAGE', 1965, ''),
(407, 'MISSION PERILLEUSE', 1954, ''),
(408, 'MODUS ANOMALI : LE REVEIL DE LA PROIE', 2011, ''),
(409, 'MON PROPRE BOURREAU', 1947, ''),
(410, 'INTIMATE STRANGER', 1991, ''),
(411, 'INTIMES CONFESSIONS', 1992, ''),
(412, 'ISSUE DE SECOURS', 1999, ''),
(413, 'J.F. PARTAGERAIT APPARTEMENT', 1992, ''),
(414, 'JACK', 2015, ''),
(415, 'JACK REACHER', 2011, ''),
(416, 'JADE', 1995, ''),
(417, 'JASON BOURNE', 2016, ''),
(418, 'JASON BOURNE : L\'HERITAGE', 2012, ''),
(419, 'JE DOIS TUER', 1954, ''),
(420, 'JENNIFER 8', 1992, ''),
(421, 'JEU DANGEREUX', 1994, ''),
(422, 'JEU DE FAMILLE', 1988, ''),
(423, 'JEU DE PISTE', 2005, ''),
(424, 'JEUX D\'ADULTES', 1992, ''),
(425, 'JEUX DE GUERRE', 1992, ''),
(426, 'JEZEBEL', 1952, ''),
(427, 'JUGATSU', 1990, ''),
(428, 'JULIA', 2007, ''),
(429, 'K-SHOP', 2016, ''),
(430, 'KAFKA', 1991, ''),
(431, 'KALIFORNIA', 1992, ''),
(432, 'KENNER', 1969, ''),
(433, 'KIDNAPPES', 2010, ''),
(434, 'KILL ME AGAIN', 1989, ''),
(435, 'KILLER INSTINCT', 1991, ''),
(436, 'KILLER JOE', 2011, ''),
(437, 'KILLERS', 1997, ''),
(438, 'KILLERS', 2014, ''),
(439, 'KILLING FIELDS', 2011, ''),
(440, 'KISS DADDY GOODNIGHT', 1987, ''),
(441, 'KISS ME A KILLER', 1991, ''),
(442, 'KISS OR KILL', 1997, ''),
(443, 'KLUTE', 1971, ''),
(444, 'KRACH', 2010, ''),
(445, 'KURO NO TESUTO KAA', 1962, ''),
(446, 'L\'ADIEU AU PRESIDENT', 1987, ''),
(447, 'L\'AFFAIRE', 1993, ''),
(448, 'L\'AFFAIRE DE LA 99E RUE', 1953, ''),
(449, 'L\'AFFAIRE PELICAN', 1993, ''),
(450, 'POUVOIR INTIME', 1985, ''),
(451, 'PREMIUM RUSH', 2011, ''),
(452, 'PREMONITIONS', 2014, ''),
(453, 'PRESIDENT', 2005, ''),
(454, 'PRESUME COUPABLE', 1992, ''),
(455, 'PRIORITE ABSOLUE', 2000, ''),
(456, 'PRIS AU PIEGE', 1974, ''),
(457, 'PRISONERS', 2013, ''),
(458, 'PROTECTION RAPPROCHEE', 2001, ''),
(459, 'PSYCHO', 1998, ''),
(460, 'PSYCHO KILLER', 1989, ''),
(461, 'PSYCHOSE 3', 1986, ''),
(462, 'PSYCHOSE MEURTRIERE', 1991, ''),
(463, 'PUBLIC ENEMIES', 2009, ''),
(464, 'QUALCOSA STRISCIA NEL BUIO', 1971, ''),
(465, 'QUAND VIENT LA NUIT', 2014, ''),
(466, 'QUATRE MOUCHES DE VELOURS GRIS', 1971, ''),
(467, 'QUI A TUE VICKY LYNN ?', 1941, ''),
(468, 'QUICK', 1992, ''),
(469, 'QUICKSAND', 2001, ''),
(470, 'RANDONNEE POUR UN TUEUR', 1987, ''),
(471, 'REACTIONS EN CHAINE', 1996, ''),
(472, 'REAL MOVIE', 2003, ''),
(473, 'RED CORNER', 1997, ''),
(474, 'REDHEADS FEMMES TRAQUEES', 1992, ''),
(475, 'REPRESAILLES', 1985, ''),
(476, 'RESURRECTION', 1999, ''),
(477, 'REWIND', 1997, ''),
(478, 'RIPPER : LETTER FROM HELL', 2001, ''),
(479, 'ROADGAMES', 1981, ''),
(480, 'ROMEO IS BLEEDING', 1993, ''),
(481, 'ROSEBUD', 1975, ''),
(482, 'RUN', 2014, ''),
(483, 'RUN FOR YOUR LIFE', 1997, ''),
(484, 'S.W.A.T. UNITE D\'ELITE', 2003, ''),
(485, 'SABOTAGE', 2013, ''),
(486, 'SANG CHAUD POUR MEURTRE DE SANG-FROID', 1991, ''),
(487, 'SANG POUR SANG', 1984, ''),
(488, 'SANS AUCUNE DEFENSE', 1991, ''),
(489, 'SANS ISSUE', 2011, ''),
(490, 'CARNAGE', 1972, ''),
(491, 'CARNIVAL OF CRIME', 1961, ''),
(492, 'CAROLE', 1971, ''),
(493, 'CASSANDRA', 1986, ''),
(494, 'CAT CHASER', 1988, ''),
(495, 'CATTIVE RAGAZZE', 1992, ''),
(496, 'CAVALE SANS ISSUE', 1992, ''),
(497, 'CELLOFAN - MED DODEN TIL FOLGE', 1998, ''),
(498, 'CHAMBRE AVEC CRI', 1991, ''),
(499, 'CHARLIE COUNTRYMAN', 2013, ''),
(500, 'CHINATOWN', 1974, ''),
(501, 'CHLOE', 2009, ''),
(502, 'CHUTE MORTELLE', 1996, ''),
(503, 'CIRCUITO CHIUSO', 1978, ''),
(504, 'CITY OF GHOSTS', 2002, ''),
(505, 'CLIFFHANGER', 1993, ''),
(506, 'CLOSED CIRCUIT', 2013, ''),
(507, 'CLOSET LAND', 1991, ''),
(508, 'COEUR D\'ACIER', 1990, ''),
(509, 'COGAN', 2012, ''),
(510, 'COHEN AND TATE', 1988, ''),
(511, 'COLD COMFORT', 1989, ''),
(512, 'COLD HEAVEN', 1992, ''),
(513, 'COLERE NOIRE', 1955, ''),
(514, 'COLT 45', 2014, ''),
(515, 'COMPLIANCE', 2011, ''),
(516, 'COMPLICATIONS DANS LA NUIT', 1992, ''),
(517, 'COMPLICES', 2009, ''),
(518, 'COMPLICITE FATALE', 2002, ''),
(519, 'COMPTE A REBOURS', 1995, ''),
(520, 'CONFESSION A UN CADAVRE', 1965, ''),
(521, 'CONTAGION', 2010, ''),
(522, 'CONTRAT SUR UN TERRORISTE', 1997, ''),
(523, 'CONTREBANDE', 2011, ''),
(524, 'COPYCAT', 1995, ''),
(525, 'CORRESPONDANT 17', 1940, ''),
(526, 'CORTEX', 2006, ''),
(527, 'COSMOPOLIS', 2011, ''),
(528, 'COVER STORY', 1993, ''),
(529, 'CRAZY JOE', 2013, ''),
(530, 'SPECIALE PREMIERE', 1974, 'The front page'),
(531, 'AVANTI ! Avanti !', 1972, ''),
(532, 'VOYAGES AVEC MA TANTE Travels with my aunt', 1972, ''),
(533, 'LA PARTY The party', 1968, ''),
(534, 'JERRY LA GRANDE GUEULE The big mouth', 1967, ''),
(535, 'EMBRASSE-MOI IDIOT Kiss me stupid', 1964, ''),
(536, 'LE SPORT FAVORI DE L\'HOMME Man\'s favorite sport ?', 1964, ''),
(537, 'LE PIMENT DE LA VIE The thrill of it all', 1963, ''),
(538, 'IRMA LA DOUCE Irma la douce', 1963, ''),
(539, 'DOCTEUR JERRY ET MISTER LOVE The nutty professor', 1963, ''),
(540, 'UN, DEUX, TROIS One, two, three', 1961, ''),
(541, 'LA GARCONNIERE The apartment', 1960, ''),
(542, 'OPERATION JUPONS Operation petticoat', 1959, ''),
(543, 'CERTAINS L\'AIMENT CHAUD Some like it hot', 1959, ''),
(544, 'ARIANE Love in the afternoon', 1957, ''),
(545, 'CHERIE, JE ME SENS RAJEUNIR Monkey business', 1952, ''),
(546, 'ALLONS DONC PAPA Father\'s little dividend', 1951, ''),
(547, 'LE PERE DE LA MARIEE Father of the bride', 1950, ''),
(548, 'COMMENT L\'ESPRIT VIENT AUX FEMMES Born yesterday', 1950, ''),
(549, 'MADAME PORTE LA CULOTTE Adam\'s rib', 1949, ''),
(550, 'INFIDELEMENT VOTRE Unfaithfully yours', 1948, ''),
(551, 'LA FOLLE INGENUE Cluny Brown', 1946, ''),
(552, 'LA VIE EST BELLE It\'s a wonderful life', 1946, ''),
(553, 'ARSENIC ET VIEILLES DENTELLES Arsenic and old lace', 1944, ''),
(554, 'LE CIEL PEUT ATTENDRE Heaven can wait', 1943, ''),
(555, 'UNIFORMES ET JUPONS COURTS The major and the minor', 1942, ''),
(556, 'JEUX DANGEREUX To be or not to be', 1942, ''),
(557, 'UN COEUR PRIS AU PIEGE The lady Eve', 1941, ''),
(558, 'HELLZAPOPPIN Hellzapoppin', 1941, ''),
(559, 'LE DIABLE S\'EN MELE The devil and miss Jones', 1941, ''),
(560, 'BOULE DE FEU Ball of fire', 1941, ''),
(561, 'RENDEZ', 1940, 'VOUS The shop around the corner'),
(562, 'INDISCRETIONS The Philadelphia story', 1940, ''),
(563, 'NINOTCHKA Ninotchka', 1939, ''),
(564, 'LA BARONNE DE MINUIT Midnight', 1939, ''),
(565, 'MADEMOISELLE ET SON BEBE Bachelor mother', 1939, ''),
(566, 'MONSIEUR SMITH AU SENAT Mr Smith goes to Washington', 1939, ''),
(567, 'VOUS NE L\'EMPORTEREZ PAS AVEC VOUS You can\'t take it with you', 1938, ''),
(568, 'L\'IMPOSSIBLE MONSIEUR BEBE Bringing up baby', 1938, ''),
(569, 'LA HUITIEME FEMME DE BARBE', 1938, 'BLEUE Bluebeard\'s eighth wife'),
(570, 'TETES DE PIOCHE Blockheads', 1938, ''),
(571, 'PLACE AUX JEUNES Make way for tomorrow', 1937, ''),
(572, 'LES MONTAGNARDS SONT LA Swiss miss', 1937, ''),
(573, 'CETTE SACREE VERITE The awful truth', 1937, ''),
(574, 'L\'EXTRAVAGANT MONSIEUR DEEDS Mr. Deeds goes to town', 1936, ''),
(575, 'L\'EXTRAVAGANT MONSIEUR RUGGLES Ruggles of Red Gap', 1935, ''),
(576, 'NEW YORK ', 1934, ' MIAMI It happened one night'),
(577, 'CEUX DE LA ZONE A man\'s castle', 1933, ''),
(578, 'SERENADE A TROIS Design for living', 1933, ''),
(579, 'LA SOUPE AU CANARD Duck soup', 1933, ''),
(580, 'GRANDE DAME D\'UN JOUR Lady for a day', 1933, ''),
(581, 'HAUTE PEGRE Trouble in paradise', 1932, ''),
(582, 'CHICKENS COME HOME Chickens come home', 1931, ''),
(583, 'DROLES DE LOCATAIRES Another fine mess', 1930, ''),
(584, 'QUELLE BRINGUE ! Blotto', 1930, ''),
(585, 'LE FIGURANT Spite marriage', 1929, ''),
(586, 'LA FLOTTE EST DANS LE LAC Men o\'war', 1929, ''),
(587, 'Y A ERREUR ! Wrong again', 1929, ''),
(588, 'PASS THE GRAVY Pass the gravy', 1928, ''),
(589, 'LES VACANCES DE MONSIEUR DAVIDSON Flaming fathers', 1927, ''),
(590, 'LE PRINCE ETUDIANT The student prince in old Heidelberg', 1927, ''),
(591, 'LES SURPRISES DE LA T.S.F. So this is Paris', 1926, ''),
(592, 'A VISAGE DECOUVERT Mighty like a moose', 1926, ''),
(593, 'WHAT PRICE GOOFY ? What price Goofy ?', 1925, ''),
(594, 'CHARLEY RATE SON MARIAGE His wooden wedding', 1925, ''),
(595, 'LA CROISIERE DU NAVIGATOR The Navigator', 1924, ''),
(596, 'MONTE LA-DESSUS !', 1923, ' Safety last'),
(597, 'JOUR DE PAYE Pay day', 1922, ''),
(598, 'MALEC CHEZ LES INDIENS The paleface', 1921, ''),
(599, 'SEPT ANS DE MALHEUR Seven years bad luck', 1921, ''),
(600, 'UNE JOURNEE DE PLAISIR A day\'s pleasure', 1919, ''),
(601, 'CAUCHEMARS ET SUPERSTITIONS When the clouds roll by', 1919, ''),
(602, 'UNE VIE DE CHIEN A dog\'s life', 1918, ''),
(603, 'L\'EMIGRANT The immigrant', 1917, '');


ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`idTitre`) REFERENCES `titre` (`idTitre`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
