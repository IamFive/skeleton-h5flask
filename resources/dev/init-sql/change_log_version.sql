DROP TABLE IF EXISTS `change_log_version`;
CREATE TABLE `change_log_version` ( `id` INT(10) NOT NULL PRIMARY KEY, `major_version` VARCHAR(8) NULL DEFAULT NULL, `minor_version` VARCHAR(8) NULL DEFAULT NULL, `release_time` DATE NULL DEFAULT NULL );

INSERT INTO `change_log_version` (`id`, `major_version`, `minor_version`, `release_time`) VALUES (1, '6.74', NULL, NULL);
INSERT INTO `change_log_version` (`id`, `major_version`, `minor_version`, `release_time`) VALUES (2, '6.74', 'b', NULL);
INSERT INTO `change_log_version` (`id`, `major_version`, `minor_version`, `release_time`) VALUES (3, '6.74', 'c', NULL);
INSERT INTO `change_log_version` (`id`, `major_version`, `minor_version`, `release_time`) VALUES (4, '6.75', NULL, NULL);
INSERT INTO `change_log_version` (`id`, `major_version`, `minor_version`, `release_time`) VALUES (5, '6.75', 'b', NULL);

