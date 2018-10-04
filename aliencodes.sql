-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           5.7.19 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para aliencodes
CREATE DATABASE IF NOT EXISTS `aliencodes` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `aliencodes`;

-- Copiando estrutura para tabela aliencodes.categoria_portfolios
CREATE TABLE IF NOT EXISTS `categoria_portfolios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo_categoria` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.categoria_portfolios: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria_portfolios` DISABLE KEYS */;
REPLACE INTO `categoria_portfolios` (`id`, `titulo_categoria`, `created_at`, `updated_at`) VALUES
	(1, 'Backend', NULL, NULL),
	(2, 'Frontend', NULL, NULL),
	(3, 'Design', NULL, NULL),
	(4, 'UI', NULL, NULL),
	(5, 'UX', NULL, NULL),
	(6, 'Estrutura', NULL, NULL),
	(7, 'Marketing Digital', NULL, NULL);
/*!40000 ALTER TABLE `categoria_portfolios` ENABLE KEYS */;

-- Copiando estrutura para tabela aliencodes.categoria_portfolio__portfolios
CREATE TABLE IF NOT EXISTS `categoria_portfolio__portfolios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(10) unsigned NOT NULL,
  `categoria_portfolio_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_categoria_portfolio__portfolios_portfolios` (`portfolio_id`),
  KEY `FK_categoria_portfolio__portfolios_categoria_portfolios` (`categoria_portfolio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.categoria_portfolio__portfolios: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria_portfolio__portfolios` DISABLE KEYS */;
REPLACE INTO `categoria_portfolio__portfolios` (`id`, `portfolio_id`, `categoria_portfolio_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, NULL, NULL),
	(2, 1, 2, NULL, NULL),
	(3, 1, 6, NULL, NULL),
	(4, 1, 7, NULL, NULL),
	(5, 2, 7, NULL, NULL),
	(6, 2, 6, NULL, NULL),
	(7, 2, 5, NULL, NULL),
	(8, 2, 3, NULL, NULL),
	(9, 3, 1, NULL, NULL),
	(10, 3, 2, NULL, NULL),
	(11, 3, 6, NULL, NULL);
/*!40000 ALTER TABLE `categoria_portfolio__portfolios` ENABLE KEYS */;

-- Copiando estrutura para tabela aliencodes.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.migrations: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(32, '2018_09_27_151747_create_portfolios_table', 2),
	(33, '2018_09_27_151832_create_portfolio_images_table', 2),
	(34, '2018_09_27_181709_create_categoria_portfolios_table', 2),
	(35, '2018_09_27_193052_add_columns_categoria', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela aliencodes.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.oauth_access_tokens: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
REPLACE INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('0d6470ec8925c1d5851ea85e44f552fb06e17f02e8ed17410da22ad2a22021754c3d82621302ecda', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-09-26 14:42:37', '2018-09-26 14:42:37', '2019-09-26 14:42:37'),
	('3b1ff731773848fde6cf7e57987f7bd9dfebbcc5815e14b01a6fe589ae45ddde726743179720983a', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-09-26 14:23:34', '2018-09-26 14:23:34', '2019-09-26 14:23:34'),
	('493990e3f77c990d48f1617ebee178f2813f5a869da21dff1bb4268f08c078b957212e4f38d8b7d4', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-09-26 14:22:42', '2018-09-26 14:22:42', '2019-09-26 14:22:42'),
	('6092820af975edfa07fdd50689933554b2faa881e94e671d352d1e4c4e2cf06ae1c7e2f46d14a117', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-09-26 17:58:58', '2018-09-26 17:58:58', '2019-09-26 17:58:58'),
	('6d9018b5dfac4356614ab9ef2dc4cb24de9cfb04195ca2b95d46cc3a66290de926bc0200c713b98e', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-09-26 20:14:31', '2018-09-26 20:14:31', '2019-09-26 20:14:31'),
	('75a4efd92f57c5e491c9ab5e80e694364ddd7d16ce936aaa10164955f4b61f5bd1dcf63ef4990c96', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-09-26 14:21:09', '2018-09-26 14:21:09', '2019-09-26 14:21:09'),
	('8b15ae4357e9a715f1d7db6de4ac6644026854b2950a52a6640401def98fd14a899bccabc7da9af7', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-09-27 13:55:29', '2018-09-27 13:55:29', '2019-09-27 13:55:29'),
	('99e854efb66ca16c00779ed9a1d2ad7f5f822cd7988f42e0fe7e6357d0758b28868e6b129f2f4848', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-09-26 19:46:57', '2018-09-26 19:46:57', '2019-09-26 19:46:57'),
	('ba4b9003876ee705f23189c562d37b0d8e504d1bcab14a106234034ef668009e56cf7b1aea4dd34e', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-10-03 20:38:32', '2018-10-03 20:38:32', '2019-10-03 20:38:32'),
	('d028658feb71224f352e3e98f82ce4b33af99c2e003eddfdaf6fc6c20218890c2f7b561fc2a29f08', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-09-26 19:45:02', '2018-09-26 19:45:02', '2019-09-26 19:45:02'),
	('db0143aa39f760332cef1b91bcaa1ebce563284b7b099cec6e55c0c516027a8b8120b29511ba73ac', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-09-28 18:55:09', '2018-09-28 18:55:09', '2019-09-28 18:55:09'),
	('e61acb0309c2e2edb725189cdce9eeaa876f60ec5e2f848413eb3b1401a9477ad778d977872c11fd', 1, 1, 'vitorhugosg@gmail.com', '[]', 0, '2018-10-02 14:42:08', '2018-10-02 14:42:08', '2019-10-02 14:42:08');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Copiando estrutura para tabela aliencodes.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.oauth_auth_codes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Copiando estrutura para tabela aliencodes.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.oauth_clients: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
REPLACE INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'JkY6GHDtbZOznMZDPctEaE441Qo8XdQuMZCdGVJ6', 'http://localhost', 1, 0, 0, '2018-09-25 20:34:31', '2018-09-25 20:34:31'),
	(2, NULL, 'Laravel Password Grant Client', 'h5q0V208Vr7vuTKkgr28WZ6ULsQ6BtCQ5AFvbiCA', 'http://localhost', 0, 1, 0, '2018-09-25 20:34:31', '2018-09-25 20:34:31');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Copiando estrutura para tabela aliencodes.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.oauth_personal_access_clients: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
REPLACE INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2018-09-25 20:34:31', '2018-09-25 20:34:31');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Copiando estrutura para tabela aliencodes.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.oauth_refresh_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Copiando estrutura para tabela aliencodes.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Copiando estrutura para tabela aliencodes.portfolios
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.portfolios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;

-- Copiando estrutura para tabela aliencodes.portfolio_images
CREATE TABLE IF NOT EXISTS `portfolio_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(10) unsigned NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `portfolio_images_portfolio_id_foreign` (`portfolio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.portfolio_images: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `portfolio_images` DISABLE KEYS */;
REPLACE INTO `portfolio_images` (`id`, `portfolio_id`, `path`, `created_at`, `updated_at`) VALUES
	(1, 1, 'portfolios/db46aab02153560f1c537d762fed75ef.jpeg', '2018-09-27 19:00:10', '2018-09-27 19:00:10'),
	(2, 1, 'portfolios/1cba68d17747afaa983d3870b383bf2f.jpeg', '2018-09-27 19:00:10', '2018-09-27 19:00:10'),
	(3, 1, 'portfolios/a8fd9e28153abdadf2a736d670b75e6b.jpeg', '2018-09-27 19:00:10', '2018-09-27 19:00:10'),
	(4, 1, 'portfolios/98f5d2e4a5e2d72e1a2d4125d6d59ec4.jpeg', '2018-09-27 19:00:10', '2018-09-27 19:00:10'),
	(5, 2, 'portfolios/9bca74f7a7060c02a824e106f298fda7.jpeg', '2018-09-28 15:57:15', '2018-09-28 15:57:15'),
	(6, 2, 'portfolios/46ff1fd1b3ebeec911c9266e706acaab.jpeg', '2018-09-28 15:57:15', '2018-09-28 15:57:15'),
	(7, 2, 'portfolios/fb5afbddc15ccd2eb69155103af8d9c8.jpeg', '2018-09-28 15:57:15', '2018-09-28 15:57:15'),
	(8, 3, 'portfolios/973e34add80e7ff863c9ce1b40895b2f.jpeg', '2018-09-28 16:11:56', '2018-09-28 16:11:56'),
	(9, 3, 'portfolios/94f67a9c855be7b066c2f1c05f8e5ccd.jpeg', '2018-09-28 16:11:56', '2018-09-28 16:11:56'),
	(10, 3, 'portfolios/2443eafafeae6b030c81a104ee85e5a7.jpeg', '2018-09-28 16:11:56', '2018-09-28 16:11:56');
/*!40000 ALTER TABLE `portfolio_images` ENABLE KEYS */;

-- Copiando estrutura para tabela aliencodes.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela aliencodes.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Vitor Hugo', 'vitorhugosg@gmail.com', NULL, '$2y$10$tQSy2bzA/czv12fmfTE3leDEchupF0OauPJXqy2lC6y/m5OiOf/xi', NULL, '2018-09-26 14:21:08', '2018-09-26 14:21:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
