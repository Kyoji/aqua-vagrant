--
-- Table structure for `aqua_posts`
--

DROP TABLE IF EXISTS `aqua_posts`;
CREATE TABLE `aqua_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `aqua_posts` WRITE;
INSERT INTO  `aqua_posts` VALUES
  (1,1,'2016-12-10 10:32:31', 'Test Post 1', 'This is some testing text. Do not read into this.', 'test-post-one');
UNLOCK TABLES;

--
-- Table structure for `aqua_taxonomies`
--

DROP TABLE IF EXISTS `aqua_taxonomies`;
CREATE TABLE `aqua_taxonomies` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `taxonomy_slug` varchar(200) NOT NULL,
  `taxonomy_name` VARCHAR(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `taxonomy_type` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`ID`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `aqua_taxonomies` WRITE;
INSERT INTO  `aqua_taxonomies` VALUES
  (1,'test-tax','Test Taxonomy','Post');
UNLOCK TABLES;