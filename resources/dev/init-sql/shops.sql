DROP TABLE IF EXISTS `shops`;

CREATE TABLE `shops` ( `id` INT(11) NOT NULL PRIMARY KEY, `name` VARCHAR(32) NOT NULL, `shop_type` INT(1) NOT NULL, `sub_type` VARCHAR(32) NOT NULL, `ord` INT(2) NOT NULL );

INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (1, '圣物关口', 2, '合成 - 普通', 1);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (2, '支援法衣', 2, '合成 - 辅助', 2);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (3, '秘法圣所', 2, '合成 - 法器', 3);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (4, '保护领地', 2, '合成 - 防具', 4);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (5, '魅惑遗物', 2, '合成 - 圣物', 5);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (6, '远古兵器', 2, '合成 - 武器', 6);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (7, '武器商人比泽', 1, '基础 - 军备', 1);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (8, '饰品商人希娜', 1, '基础 - 属性', 2);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (9, '奎尔瑟兰的密室', 1, '基础 - 奥术', 3);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (10, '奇迹古树/坟场', 1, '基础 - 消耗品', 4);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (11, '黑市商人雷拉格斯', 3, '神秘商店', 3);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (12, '野外商店', 3, '地精实验室', 2);
INSERT INTO `shops` (`id`, `name`, `shop_type`, `sub_type`, `ord`) VALUES (13, '野外商店', 3, '地精商人', 1);

