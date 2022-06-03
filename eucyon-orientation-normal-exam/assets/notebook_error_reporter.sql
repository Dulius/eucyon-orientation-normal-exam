-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reporter` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6;

-- ----------------------------
-- Records of ticket
-- ----------------------------
BEGIN;
INSERT INTO `ticket` VALUES (1, 'Egg', 'dell', '12312-1323-111', 'screen pixel error', '2020-05-22');
INSERT INTO `ticket` VALUES (2, 'Szilvi', 'dell', '4434-32-3333', 'touchpad not working', '2020-05-08');
INSERT INTO `ticket` VALUES (3, 'Kevi', 'lenovo', 'TM222-d23', 'cant boot', '2020-05-08');
INSERT INTO `ticket` VALUES (4, 'Viktor', 'Apple', 'C02R4E3RG8WP', 'Sometimes my wi-fi not working well. So I would be very happy it you fix it for me otherwise I should give a snake for you who gave me this Apple magic macbook pro.', '2020-05-25');
INSERT INTO `ticket` VALUES (5, 'Viktor', 'Green Foxy', 'VET-STA-777', 'My precious computer just was killed by my re-retake exam. I would give everything to you to give my laptop\'s life back. Please, please, please...', '2020-04-01');
COMMIT;
