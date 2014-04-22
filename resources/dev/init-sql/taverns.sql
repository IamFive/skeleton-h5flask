DROP TABLE IF EXISTS `taverns`;
CREATE TABLE `taverns` ( `id` INT(11) NOT NULL PRIMARY KEY, `type` INT(11) NOT NULL, `name` VARCHAR(40) NOT NULL );

INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (1, 1, '力量(近卫酒馆 - 1)');
INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (2, 1, '力量(近卫酒馆 - 2)');
INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (3, 1, '力量(天灾酒馆 - 1)');
INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (4, 1, '力量(天灾酒馆 - 2)');
INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (5, 2, '敏捷(近卫酒馆 - 1)');
INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (6, 2, '敏捷(近卫酒馆 - 2)');
INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (7, 2, '敏捷(天灾酒馆 - 1)');
INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (8, 2, '敏捷(天灾酒馆 - 2)');
INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (9, 3, '智力(近卫酒馆 - 1)');
INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (10, 3, '智力(近卫酒馆 - 2)');
INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (11, 3, '智力(天灾酒馆 - 1)');
INSERT INTO `taverns` (`id`, `type`, `name`) VALUES (12, 3, '智力(天灾酒馆 - 2)');
