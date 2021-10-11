-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Січ 18 2021 р., 18:54
-- Версія сервера: 10.3.13-MariaDB-log
-- Версія PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `apres`
--

-- --------------------------------------------------------

--
-- Структура таблиці `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-12-28 20:59:54', '2020-12-28 17:59:54', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wp-apres', 'yes'),
(2, 'home', 'http://wp-apres', 'yes'),
(3, 'blogname', 'apres', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rudolif@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:120:{s:6:\"new/?$\";s:23:\"index.php?post_type=new\";s:36:\"new/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=new&feed=$matches[1]\";s:31:\"new/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=new&feed=$matches[1]\";s:23:\"new/page/([0-9]{1,})/?$\";s:41:\"index.php?post_type=new&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:31:\"new/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"new/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"new/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"new/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"new/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"new/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"new/([^/]+)/embed/?$\";s:36:\"index.php?new=$matches[1]&embed=true\";s:24:\"new/([^/]+)/trackback/?$\";s:30:\"index.php?new=$matches[1]&tb=1\";s:44:\"new/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?new=$matches[1]&feed=$matches[2]\";s:39:\"new/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?new=$matches[1]&feed=$matches[2]\";s:32:\"new/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?new=$matches[1]&paged=$matches[2]\";s:39:\"new/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?new=$matches[1]&cpage=$matches[2]\";s:28:\"new/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?new=$matches[1]&page=$matches[2]\";s:20:\"new/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"new/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"new/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"new/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"new/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"new/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"wp-translitera/wp-translitera.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'apres', 'yes'),
(41, 'stylesheet', 'apres', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1624730392', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'ru_RU', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:6:{i:1610272795;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610301595;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610301610;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610301612;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610474395;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(136, 'can_compress_scripts', '1', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(150, 'theme_mods_twentytwentyone', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1609178713;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(151, 'current_theme', 'Notary', 'yes'),
(152, 'theme_mods_apres', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(154, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'wp_translitera', 'a:1:{s:7:\"version\";s:6:\"p1.2.5\";}', 'yes'),
(156, 'acf_version', '5.7.3', 'yes'),
(187, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(188, 'options_facebook', 'https://www.facebook.com/APRES-Technology-110892057506960/', 'no'),
(189, '_options_facebook', 'field_5feb011313612', 'no'),
(190, 'options_instagram', 'https://www.instagram.com/apres_technology/', 'no'),
(191, '_options_instagram', 'field_5feb013813613', 'no'),
(192, 'options_email', 'biuro@apres-tehnology.pl', 'no'),
(193, '_options_email', 'field_5feb014c13614', 'no'),
(194, 'options_phone', '+80123456789', 'no'),
(195, '_options_phone', 'field_5feb01f263c2a', 'no'),
(200, 'options_map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2451.3597584087706!2d20.678684915894866!3d52.091383875656746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4719486e9ba790ed%3A0xac19b178949ded88!2zUG9sbmVqIFLDs8W8eSA1LCAwNS04MjUgT3B5cHksINCf0L7Qu9GM0YjQsA!5e0!3m2!1sru!2sua!4v1608739515812!5m2!1sru!2sua\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'no'),
(201, '_options_map', 'field_5feb5b95cef67', 'no'),
(202, 'options_place', 'Opypy 05-825, ul. Polnej Róży 5', 'no'),
(203, '_options_place', 'field_5feb5bd8b5a21', 'no'),
(212, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":4,\"critical\":1}', 'yes'),
(238, '_transient_timeout_acf_plugin_updates', '1610445358', 'no'),
(239, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.3\";}}', 'no'),
(240, '_site_transient_timeout_theme_roots', '1610274359', 'no'),
(241, '_site_transient_theme_roots', 'a:2:{s:5:\"apres\";s:7:\"/themes\";s:12:\"node_modules\";s:7:\"/themes\";}', 'no'),
(243, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.6.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1610272565;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}', 'no'),
(244, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1610272565;s:7:\"checked\";a:1:{s:5:\"apres\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(245, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1610272566;s:7:\"checked\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.3\";s:33:\"wp-translitera/wp-translitera.php\";s:6:\"p1.2.5\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"wp-translitera/wp-translitera.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-translitera\";s:4:\"slug\";s:14:\"wp-translitera\";s:6:\"plugin\";s:33:\"wp-translitera/wp-translitera.php\";s:11:\"new_version\";s:6:\"p1.2.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-translitera/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-translitera.p1.2.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/wp-translitera.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(246, '_site_transient_timeout_php_check_a5b4d2808570efd012607394df5c6fa9', '1610877368', 'no'),
(247, '_site_transient_php_check_a5b4d2808570efd012607394df5c6fa9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 7, '_edit_lock', '1609235954:1'),
(10, 7, '_edit_last', '1'),
(12, 11, '_edit_lock', '1609263458:1'),
(13, 11, '_wp_page_template', 'template/faq.php'),
(14, 13, '_edit_lock', '1609246952:1'),
(15, 13, '_wp_page_template', 'template/about.php'),
(16, 15, '_edit_lock', '1609247466:1'),
(17, 15, '_wp_page_template', 'template/contacts.php'),
(18, 19, '_edit_lock', '1609266595:1'),
(19, 19, '_wp_page_template', 'template/project.php'),
(29, 22, '_menu_item_type', 'post_type'),
(30, 22, '_menu_item_menu_item_parent', '0'),
(31, 22, '_menu_item_object_id', '11'),
(32, 22, '_menu_item_object', 'page'),
(33, 22, '_menu_item_target', ''),
(34, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 22, '_menu_item_xfn', ''),
(36, 22, '_menu_item_url', ''),
(38, 23, '_menu_item_type', 'post_type'),
(39, 23, '_menu_item_menu_item_parent', '0'),
(40, 23, '_menu_item_object_id', '15'),
(41, 23, '_menu_item_object', 'page'),
(42, 23, '_menu_item_target', ''),
(43, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 23, '_menu_item_xfn', ''),
(45, 23, '_menu_item_url', ''),
(47, 24, '_menu_item_type', 'post_type'),
(48, 24, '_menu_item_menu_item_parent', '0'),
(49, 24, '_menu_item_object_id', '13'),
(50, 24, '_menu_item_object', 'page'),
(51, 24, '_menu_item_target', ''),
(52, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 24, '_menu_item_xfn', ''),
(54, 24, '_menu_item_url', ''),
(56, 25, '_menu_item_type', 'post_type'),
(57, 25, '_menu_item_menu_item_parent', '0'),
(58, 25, '_menu_item_object_id', '19'),
(59, 25, '_menu_item_object', 'page'),
(60, 25, '_menu_item_target', ''),
(61, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 25, '_menu_item_xfn', ''),
(63, 25, '_menu_item_url', ''),
(65, 29, '_edit_lock', '1609328233:1'),
(66, 29, '_wp_page_template', 'template/oferta.php'),
(67, 31, '_menu_item_type', 'post_type'),
(68, 31, '_menu_item_menu_item_parent', '0'),
(69, 31, '_menu_item_object_id', '29'),
(70, 31, '_menu_item_object', 'page'),
(71, 31, '_menu_item_target', ''),
(72, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 31, '_menu_item_xfn', ''),
(74, 31, '_menu_item_url', ''),
(76, 32, '_menu_item_type', 'post_type'),
(77, 32, '_menu_item_menu_item_parent', '0'),
(78, 32, '_menu_item_object_id', '29'),
(79, 32, '_menu_item_object', 'page'),
(80, 32, '_menu_item_target', ''),
(81, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 32, '_menu_item_xfn', ''),
(83, 32, '_menu_item_url', ''),
(84, 32, '_menu_item_orphaned', '1609236256'),
(85, 33, '_menu_item_type', 'post_type'),
(86, 33, '_menu_item_menu_item_parent', '0'),
(87, 33, '_menu_item_object_id', '19'),
(88, 33, '_menu_item_object', 'page'),
(89, 33, '_menu_item_target', ''),
(90, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 33, '_menu_item_xfn', ''),
(92, 33, '_menu_item_url', ''),
(94, 34, '_menu_item_type', 'post_type'),
(95, 34, '_menu_item_menu_item_parent', '0'),
(96, 34, '_menu_item_object_id', '15'),
(97, 34, '_menu_item_object', 'page'),
(98, 34, '_menu_item_target', ''),
(99, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 34, '_menu_item_xfn', ''),
(101, 34, '_menu_item_url', ''),
(103, 35, '_menu_item_type', 'post_type'),
(104, 35, '_menu_item_menu_item_parent', '0'),
(105, 35, '_menu_item_object_id', '13'),
(106, 35, '_menu_item_object', 'page'),
(107, 35, '_menu_item_target', ''),
(108, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 35, '_menu_item_xfn', ''),
(110, 35, '_menu_item_url', ''),
(112, 36, '_menu_item_type', 'post_type'),
(113, 36, '_menu_item_menu_item_parent', '0'),
(114, 36, '_menu_item_object_id', '11'),
(115, 36, '_menu_item_object', 'page'),
(116, 36, '_menu_item_target', ''),
(117, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 36, '_menu_item_xfn', ''),
(119, 36, '_menu_item_url', ''),
(120, 36, '_menu_item_orphaned', '1609236257'),
(121, 37, '_menu_item_type', 'post_type'),
(122, 37, '_menu_item_menu_item_parent', '0'),
(123, 37, '_menu_item_object_id', '7'),
(124, 37, '_menu_item_object', 'page'),
(125, 37, '_menu_item_target', ''),
(126, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 37, '_menu_item_xfn', ''),
(128, 37, '_menu_item_url', ''),
(130, 38, '_edit_lock', '1609321563:1'),
(131, 38, '_wp_page_template', 'template/info.php'),
(132, 40, '_edit_lock', '1609261189:1'),
(133, 40, '_wp_page_template', 'template/info.php'),
(134, 42, '_edit_lock', '1609260899:1'),
(135, 42, '_wp_page_template', 'template/oferta.php'),
(136, 44, '_menu_item_type', 'post_type'),
(137, 44, '_menu_item_menu_item_parent', '0'),
(138, 44, '_menu_item_object_id', '38'),
(139, 44, '_menu_item_object', 'page'),
(140, 44, '_menu_item_target', ''),
(141, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(142, 44, '_menu_item_xfn', ''),
(143, 44, '_menu_item_url', ''),
(145, 45, '_menu_item_type', 'post_type'),
(146, 45, '_menu_item_menu_item_parent', '0'),
(147, 45, '_menu_item_object_id', '40'),
(148, 45, '_menu_item_object', 'page'),
(149, 45, '_menu_item_target', ''),
(150, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 45, '_menu_item_xfn', ''),
(152, 45, '_menu_item_url', ''),
(154, 46, '_menu_item_type', 'post_type'),
(155, 46, '_menu_item_menu_item_parent', '0'),
(156, 46, '_menu_item_object_id', '42'),
(157, 46, '_menu_item_object', 'page'),
(158, 46, '_menu_item_target', ''),
(159, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 46, '_menu_item_xfn', ''),
(161, 46, '_menu_item_url', ''),
(163, 47, '_edit_last', '1'),
(164, 47, '_edit_lock', '1609263191:1'),
(165, 52, '_edit_last', '1'),
(166, 52, '_edit_lock', '1609246529:1'),
(167, 55, '_wp_attached_file', '2020/12/slider__item1.png'),
(168, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:322;s:4:\"file\";s:25:\"2020/12/slider__item1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"slider__item1-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"slider__item1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 56, '_wp_attached_file', '2020/12/slider__item2.png'),
(170, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:322;s:4:\"file\";s:25:\"2020/12/slider__item2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"slider__item2-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"slider__item2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 57, '_wp_attached_file', '2020/12/slider__item3.png'),
(172, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:322;s:4:\"file\";s:25:\"2020/12/slider__item3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"slider__item3-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"slider__item3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 13, '_edit_last', '1'),
(174, 13, 'certificates_0_img', '55'),
(175, 13, '_certificates_0_img', 'field_5feb274469b0e'),
(176, 13, 'certificates_1_img', '56'),
(177, 13, '_certificates_1_img', 'field_5feb274469b0e'),
(178, 13, 'certificates_2_img', '57'),
(179, 13, '_certificates_2_img', 'field_5feb274469b0e'),
(180, 13, 'certificates_3_img', '56'),
(181, 13, '_certificates_3_img', 'field_5feb274469b0e'),
(182, 13, 'certificates', '4'),
(183, 13, '_certificates', 'field_5feb26f169b0d'),
(184, 58, 'certificates_0_img', '55'),
(185, 58, '_certificates_0_img', 'field_5feb274469b0e'),
(186, 58, 'certificates_1_img', '56'),
(187, 58, '_certificates_1_img', 'field_5feb274469b0e'),
(188, 58, 'certificates_2_img', '57'),
(189, 58, '_certificates_2_img', 'field_5feb274469b0e'),
(190, 58, 'certificates_3_img', '56'),
(191, 58, '_certificates_3_img', 'field_5feb274469b0e'),
(192, 58, 'certificates', '4'),
(193, 58, '_certificates', 'field_5feb26f169b0d'),
(194, 59, 'certificates_0_img', '55'),
(195, 59, '_certificates_0_img', 'field_5feb274469b0e'),
(196, 59, 'certificates_1_img', '56'),
(197, 59, '_certificates_1_img', 'field_5feb274469b0e'),
(198, 59, 'certificates_2_img', '57'),
(199, 59, '_certificates_2_img', 'field_5feb274469b0e'),
(200, 59, 'certificates_3_img', '56'),
(201, 59, '_certificates_3_img', 'field_5feb274469b0e'),
(202, 59, 'certificates', '4'),
(203, 59, '_certificates', 'field_5feb26f169b0d'),
(204, 29, '_edit_last', '1'),
(205, 40, '_edit_last', '1'),
(206, 71, '_edit_last', '1'),
(207, 71, '_edit_lock', '1609261267:1'),
(208, 11, '_edit_last', '1'),
(209, 11, 'faq_0_question', 'Jak długo trwa montaż paneli fotowoltaicznych?'),
(210, 11, '_faq_0_question', 'field_5feb614a0a915'),
(211, 11, 'faq_0_answer', 'Czynniki, które warunkują czas wykonania to: wielkość instalacji, rodzaj poszycia oraz kąt nachylenia dachu. W zależności od tych czynników montaż trwa od 1 do 3 dni.'),
(212, 11, '_faq_0_answer', 'field_5feb61510a916'),
(213, 11, 'faq_1_question', 'Jaki jest czas zwrotu instalacji fotowoltaicznej?'),
(214, 11, '_faq_1_question', 'field_5feb614a0a915'),
(215, 11, 'faq_1_answer', 'Przy obecnym postępie technologicznym związanym z rozwojem fotowoltaiki, średni czas zwrotu wynosi około 7-8 lat. Dzięki temu przez kolejne 20 lat możemy cieszyć się z oszczędności, jakie daje instalacja fotowoltaiczna.'),
(216, 11, '_faq_1_answer', 'field_5feb61510a916'),
(217, 11, 'faq_2_question', 'Jak jest czas oczekiwania na podłączenie licznika dwukierunkowego?'),
(218, 11, '_faq_2_question', 'field_5feb614a0a915'),
(219, 11, 'faq_2_answer', 'Podłączenie licznika dwukierunkowego należy do obowiązków zakładu energetycznego i jest wykonywane w ciągu 30 dni od złożenia wniosku.'),
(220, 11, '_faq_2_answer', 'field_5feb61510a916'),
(221, 11, 'faq_3_question', 'Jaka wielkość instalacji będzie odpowiednia dla mnie?'),
(222, 11, '_faq_3_question', 'field_5feb614a0a915'),
(223, 11, 'faq_3_answer', 'Polecamy skorzystać z naszego kalkulatora fotowoltaicznego, który znajdą Państwo na naszej stronie. Na podstawie swojego miesięcznego rachunku za prąd będziecie Państwo w stanie sprawdzić szacunkową wielkość instalacji oraz pozostałe parametry. Dla przykładu, jeśli Państwa roczne zużycie energii wynosi 3300 kWh, to instalacja będzie miała wielkość 3,5 kWp.'),
(224, 11, '_faq_3_answer', 'field_5feb61510a916'),
(225, 11, 'faq_4_question', 'Kto ponosi koszty przyłączenia instalacji fotowoltaicznej do sieci energetycznej?'),
(226, 11, '_faq_4_question', 'field_5feb614a0a915'),
(227, 11, 'faq_4_answer', 'Całkowity koszt przyłączenia instalacji jest po stronie zakładu energetycznego. Należy złożyć odpowiednie dokumenty wraz ze specyfikacją techniczną, ale proszę się nie martwić - od tego macie Państwo nas.'),
(228, 11, '_faq_4_answer', 'field_5feb61510a916'),
(229, 11, 'faq_5_question', 'Czy panele fotowoltaiczne trzeba czyścić/serwisować?'),
(230, 11, '_faq_5_question', 'field_5feb614a0a915'),
(231, 11, 'faq_5_answer', 'Jedną z wielu zalet instalacji fotowoltaicznej jest jej praktycznie bezobsługowa konstrukcja. Co za tym idzie, nie ma szczególnej potrzeby serwisowania. W szczególnych przypadkach, gdy instalacja znajduję się w miejscu, gdzie może wystąpić duże zapylenie lub panele mogą zostać pokryte nalotem, który spowoduje zmniejszenie produkcji energii, zalecane jest mycie paneli.'),
(232, 11, '_faq_5_answer', 'field_5feb61510a916'),
(233, 11, 'faq_6_question', 'Czy instalacja fotowoltaiczna wymaga obsługi?'),
(234, 11, '_faq_6_question', 'field_5feb614a0a915'),
(235, 11, 'faq_6_answer', 'Instalacja działa całkowicie bezobsługowo. Dobrze jest kontrolować, czy przypadkiem nie pojawia się jakiś „nowy cień”, który może spowodować spadek produkcji. Mamy tutaj na myśli np. rosnące drzewa.'),
(236, 11, '_faq_6_answer', 'field_5feb61510a916'),
(237, 11, 'faq', '7'),
(238, 11, '_faq', 'field_5feb612e0a914'),
(239, 75, 'faq_0_question', 'Jak długo trwa montaż paneli fotowoltaicznych?'),
(240, 75, '_faq_0_question', 'field_5feb614a0a915'),
(241, 75, 'faq_0_answer', 'Czynniki, które warunkują czas wykonania to: wielkość instalacji, rodzaj poszycia oraz kąt nachylenia dachu. W zależności od tych czynników montaż trwa od 1 do 3 dni.'),
(242, 75, '_faq_0_answer', 'field_5feb61510a916'),
(243, 75, 'faq_1_question', 'Jaki jest czas zwrotu instalacji fotowoltaicznej?'),
(244, 75, '_faq_1_question', 'field_5feb614a0a915'),
(245, 75, 'faq_1_answer', 'Przy obecnym postępie technologicznym związanym z rozwojem fotowoltaiki, średni czas zwrotu wynosi około 7-8 lat. Dzięki temu przez kolejne 20 lat możemy cieszyć się z oszczędności, jakie daje instalacja fotowoltaiczna.'),
(246, 75, '_faq_1_answer', 'field_5feb61510a916'),
(247, 75, 'faq_2_question', 'Jak jest czas oczekiwania na podłączenie licznika dwukierunkowego?'),
(248, 75, '_faq_2_question', 'field_5feb614a0a915'),
(249, 75, 'faq_2_answer', 'Podłączenie licznika dwukierunkowego należy do obowiązków zakładu energetycznego i jest wykonywane w ciągu 30 dni od złożenia wniosku.'),
(250, 75, '_faq_2_answer', 'field_5feb61510a916'),
(251, 75, 'faq_3_question', 'Jaka wielkość instalacji będzie odpowiednia dla mnie?'),
(252, 75, '_faq_3_question', 'field_5feb614a0a915'),
(253, 75, 'faq_3_answer', 'Polecamy skorzystać z naszego kalkulatora fotowoltaicznego, który znajdą Państwo na naszej stronie. Na podstawie swojego miesięcznego rachunku za prąd będziecie Państwo w stanie sprawdzić szacunkową wielkość instalacji oraz pozostałe parametry. Dla przykładu, jeśli Państwa roczne zużycie energii wynosi 3300 kWh, to instalacja będzie miała wielkość 3,5 kWp.'),
(254, 75, '_faq_3_answer', 'field_5feb61510a916'),
(255, 75, 'faq_4_question', 'Kto ponosi koszty przyłączenia instalacji fotowoltaicznej do sieci energetycznej?'),
(256, 75, '_faq_4_question', 'field_5feb614a0a915'),
(257, 75, 'faq_4_answer', 'Całkowity koszt przyłączenia instalacji jest po stronie zakładu energetycznego. Należy złożyć odpowiednie dokumenty wraz ze specyfikacją techniczną, ale proszę się nie martwić - od tego macie Państwo nas.'),
(258, 75, '_faq_4_answer', 'field_5feb61510a916'),
(259, 75, 'faq_5_question', 'Czy panele fotowoltaiczne trzeba czyścić/serwisować?'),
(260, 75, '_faq_5_question', 'field_5feb614a0a915'),
(261, 75, 'faq_5_answer', 'Jedną z wielu zalet instalacji fotowoltaicznej jest jej praktycznie bezobsługowa konstrukcja. Co za tym idzie, nie ma szczególnej potrzeby serwisowania. W szczególnych przypadkach, gdy instalacja znajduję się w miejscu, gdzie może wystąpić duże zapylenie lub panele mogą zostać pokryte nalotem, który spowoduje zmniejszenie produkcji energii, zalecane jest mycie paneli.'),
(262, 75, '_faq_5_answer', 'field_5feb61510a916'),
(263, 75, 'faq_6_question', 'Czy instalacja fotowoltaiczna wymaga obsługi?'),
(264, 75, '_faq_6_question', 'field_5feb614a0a915'),
(265, 75, 'faq_6_answer', 'Instalacja działa całkowicie bezobsługowo. Dobrze jest kontrolować, czy przypadkiem nie pojawia się jakiś „nowy cień”, który może spowodować spadek produkcji. Mamy tutaj na myśli np. rosnące drzewa.'),
(266, 75, '_faq_6_answer', 'field_5feb61510a916'),
(267, 75, 'faq', '7'),
(268, 75, '_faq', 'field_5feb612e0a914'),
(269, 77, '_edit_last', '1'),
(270, 77, '_edit_lock', '1609263479:1'),
(271, 82, '_wp_attached_file', '2020/12/news1.jpg'),
(272, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:290;s:4:\"file\";s:17:\"2020/12/news1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news1-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(273, 83, '_wp_attached_file', '2020/12/news2.jpg'),
(274, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:290;s:4:\"file\";s:17:\"2020/12/news2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news2-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(275, 84, '_wp_attached_file', '2020/12/news3.jpg'),
(276, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:290;s:4:\"file\";s:17:\"2020/12/news3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news3-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(277, 85, '_wp_attached_file', '2020/12/news4.jpg'),
(278, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:290;s:4:\"file\";s:17:\"2020/12/news4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news4-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(279, 86, '_wp_attached_file', '2020/12/news5.jpg'),
(280, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:290;s:4:\"file\";s:17:\"2020/12/news5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news5-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(281, 87, '_wp_attached_file', '2020/12/news6.jpg'),
(282, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:290;s:4:\"file\";s:17:\"2020/12/news6.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news6-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 19, '_edit_last', '1'),
(284, 19, 'list_0_img', '82'),
(285, 19, '_list_0_img', 'field_5feb691b6b453'),
(286, 19, 'list_0_title', '19,84 kW | Knyszyn – Fotowoltaika dla firm'),
(287, 19, '_list_0_title', 'field_5feb69286b454'),
(288, 19, 'list_0_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(289, 19, '_list_0_text', 'field_5feb69346b455'),
(290, 19, 'list_1_img', '83'),
(291, 19, '_list_1_img', 'field_5feb691b6b453'),
(292, 19, 'list_1_title', '29,84 kW | Knyszyn – Fotowoltaika dla firm'),
(293, 19, '_list_1_title', 'field_5feb69286b454'),
(294, 19, 'list_1_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(295, 19, '_list_1_text', 'field_5feb69346b455'),
(296, 19, 'list_2_img', '84'),
(297, 19, '_list_2_img', 'field_5feb691b6b453'),
(298, 19, 'list_2_title', '39,84 kW | Knyszyn – Fotowoltaika dla firm'),
(299, 19, '_list_2_title', 'field_5feb69286b454'),
(300, 19, 'list_2_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(301, 19, '_list_2_text', 'field_5feb69346b455'),
(302, 19, 'list_3_img', '85'),
(303, 19, '_list_3_img', 'field_5feb691b6b453'),
(304, 19, 'list_3_title', '49,84 kW | Knyszyn – Fotowoltaika dla firm'),
(305, 19, '_list_3_title', 'field_5feb69286b454'),
(306, 19, 'list_3_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(307, 19, '_list_3_text', 'field_5feb69346b455'),
(308, 19, 'list_4_img', '86'),
(309, 19, '_list_4_img', 'field_5feb691b6b453'),
(310, 19, 'list_4_title', '59,84 kW | Knyszyn – Fotowoltaika dla firm'),
(311, 19, '_list_4_title', 'field_5feb69286b454'),
(312, 19, 'list_4_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(313, 19, '_list_4_text', 'field_5feb69346b455'),
(314, 19, 'list_5_img', '87'),
(315, 19, '_list_5_img', 'field_5feb691b6b453'),
(316, 19, 'list_5_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(317, 19, '_list_5_title', 'field_5feb69286b454'),
(318, 19, 'list_5_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(319, 19, '_list_5_text', 'field_5feb69346b455'),
(320, 19, 'list', '12'),
(321, 19, '_list', 'field_5feb68fd6b452'),
(322, 88, 'list_0_img', '82'),
(323, 88, '_list_0_img', 'field_5feb691b6b453'),
(324, 88, 'list_0_title', '19,84 kW | Knyszyn – Fotowoltaika dla firm'),
(325, 88, '_list_0_title', 'field_5feb69286b454'),
(326, 88, 'list_0_text', ''),
(327, 88, '_list_0_text', 'field_5feb69346b455'),
(328, 88, 'list_1_img', '83'),
(329, 88, '_list_1_img', 'field_5feb691b6b453'),
(330, 88, 'list_1_title', '29,84 kW | Knyszyn – Fotowoltaika dla firm'),
(331, 88, '_list_1_title', 'field_5feb69286b454'),
(332, 88, 'list_1_text', ''),
(333, 88, '_list_1_text', 'field_5feb69346b455'),
(334, 88, 'list_2_img', '84'),
(335, 88, '_list_2_img', 'field_5feb691b6b453'),
(336, 88, 'list_2_title', '39,84 kW | Knyszyn – Fotowoltaika dla firm'),
(337, 88, '_list_2_title', 'field_5feb69286b454'),
(338, 88, 'list_2_text', ''),
(339, 88, '_list_2_text', 'field_5feb69346b455'),
(340, 88, 'list_3_img', '85'),
(341, 88, '_list_3_img', 'field_5feb691b6b453'),
(342, 88, 'list_3_title', '49,84 kW | Knyszyn – Fotowoltaika dla firm'),
(343, 88, '_list_3_title', 'field_5feb69286b454'),
(344, 88, 'list_3_text', ''),
(345, 88, '_list_3_text', 'field_5feb69346b455'),
(346, 88, 'list_4_img', '86'),
(347, 88, '_list_4_img', 'field_5feb691b6b453'),
(348, 88, 'list_4_title', '59,84 kW | Knyszyn – Fotowoltaika dla firm'),
(349, 88, '_list_4_title', 'field_5feb69286b454'),
(350, 88, 'list_4_text', ''),
(351, 88, '_list_4_text', 'field_5feb69346b455'),
(352, 88, 'list_5_img', '87'),
(353, 88, '_list_5_img', 'field_5feb691b6b453'),
(354, 88, 'list_5_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(355, 88, '_list_5_title', 'field_5feb69286b454'),
(356, 88, 'list_5_text', ''),
(357, 88, '_list_5_text', 'field_5feb69346b455'),
(358, 88, 'list', '6'),
(359, 88, '_list', 'field_5feb68fd6b452'),
(360, 89, 'list_0_img', '82'),
(361, 89, '_list_0_img', 'field_5feb691b6b453'),
(362, 89, 'list_0_title', '19,84 kW | Knyszyn – Fotowoltaika dla firm'),
(363, 89, '_list_0_title', 'field_5feb69286b454'),
(364, 89, 'list_0_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(365, 89, '_list_0_text', 'field_5feb69346b455'),
(366, 89, 'list_1_img', '83'),
(367, 89, '_list_1_img', 'field_5feb691b6b453'),
(368, 89, 'list_1_title', '29,84 kW | Knyszyn – Fotowoltaika dla firm'),
(369, 89, '_list_1_title', 'field_5feb69286b454'),
(370, 89, 'list_1_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(371, 89, '_list_1_text', 'field_5feb69346b455'),
(372, 89, 'list_2_img', '84'),
(373, 89, '_list_2_img', 'field_5feb691b6b453'),
(374, 89, 'list_2_title', '39,84 kW | Knyszyn – Fotowoltaika dla firm'),
(375, 89, '_list_2_title', 'field_5feb69286b454'),
(376, 89, 'list_2_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(377, 89, '_list_2_text', 'field_5feb69346b455'),
(378, 89, 'list_3_img', '85'),
(379, 89, '_list_3_img', 'field_5feb691b6b453'),
(380, 89, 'list_3_title', '49,84 kW | Knyszyn – Fotowoltaika dla firm'),
(381, 89, '_list_3_title', 'field_5feb69286b454'),
(382, 89, 'list_3_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(383, 89, '_list_3_text', 'field_5feb69346b455'),
(384, 89, 'list_4_img', '86'),
(385, 89, '_list_4_img', 'field_5feb691b6b453'),
(386, 89, 'list_4_title', '59,84 kW | Knyszyn – Fotowoltaika dla firm'),
(387, 89, '_list_4_title', 'field_5feb69286b454'),
(388, 89, 'list_4_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(389, 89, '_list_4_text', 'field_5feb69346b455'),
(390, 89, 'list_5_img', '87'),
(391, 89, '_list_5_img', 'field_5feb691b6b453'),
(392, 89, 'list_5_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(393, 89, '_list_5_title', 'field_5feb69286b454'),
(394, 89, 'list_5_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(395, 89, '_list_5_text', 'field_5feb69346b455'),
(396, 89, 'list', '6'),
(397, 89, '_list', 'field_5feb68fd6b452'),
(398, 19, 'list_6_img', '87'),
(399, 19, '_list_6_img', 'field_5feb691b6b453'),
(400, 19, 'list_6_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(401, 19, '_list_6_title', 'field_5feb69286b454'),
(402, 19, 'list_6_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(403, 19, '_list_6_text', 'field_5feb69346b455'),
(404, 19, 'list_7_img', '86'),
(405, 19, '_list_7_img', 'field_5feb691b6b453'),
(406, 19, 'list_7_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(407, 19, '_list_7_title', 'field_5feb69286b454'),
(408, 19, 'list_7_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(409, 19, '_list_7_text', 'field_5feb69346b455'),
(410, 19, 'list_8_img', '85'),
(411, 19, '_list_8_img', 'field_5feb691b6b453'),
(412, 19, 'list_8_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(413, 19, '_list_8_title', 'field_5feb69286b454'),
(414, 19, 'list_8_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(415, 19, '_list_8_text', 'field_5feb69346b455'),
(416, 19, 'list_9_img', '84'),
(417, 19, '_list_9_img', 'field_5feb691b6b453'),
(418, 19, 'list_9_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(419, 19, '_list_9_title', 'field_5feb69286b454'),
(420, 19, 'list_9_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(421, 19, '_list_9_text', 'field_5feb69346b455'),
(422, 19, 'list_10_img', '83'),
(423, 19, '_list_10_img', 'field_5feb691b6b453'),
(424, 19, 'list_10_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(425, 19, '_list_10_title', 'field_5feb69286b454'),
(426, 19, 'list_10_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(427, 19, '_list_10_text', 'field_5feb69346b455'),
(428, 19, 'list_11_img', '82'),
(429, 19, '_list_11_img', 'field_5feb691b6b453'),
(430, 19, 'list_11_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(431, 19, '_list_11_title', 'field_5feb69286b454'),
(432, 19, 'list_11_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(433, 19, '_list_11_text', 'field_5feb69346b455'),
(434, 90, 'list_0_img', '82'),
(435, 90, '_list_0_img', 'field_5feb691b6b453'),
(436, 90, 'list_0_title', '19,84 kW | Knyszyn – Fotowoltaika dla firm'),
(437, 90, '_list_0_title', 'field_5feb69286b454'),
(438, 90, 'list_0_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(439, 90, '_list_0_text', 'field_5feb69346b455'),
(440, 90, 'list_1_img', '83'),
(441, 90, '_list_1_img', 'field_5feb691b6b453'),
(442, 90, 'list_1_title', '29,84 kW | Knyszyn – Fotowoltaika dla firm'),
(443, 90, '_list_1_title', 'field_5feb69286b454'),
(444, 90, 'list_1_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(445, 90, '_list_1_text', 'field_5feb69346b455'),
(446, 90, 'list_2_img', '84'),
(447, 90, '_list_2_img', 'field_5feb691b6b453'),
(448, 90, 'list_2_title', '39,84 kW | Knyszyn – Fotowoltaika dla firm'),
(449, 90, '_list_2_title', 'field_5feb69286b454'),
(450, 90, 'list_2_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(451, 90, '_list_2_text', 'field_5feb69346b455'),
(452, 90, 'list_3_img', '85'),
(453, 90, '_list_3_img', 'field_5feb691b6b453'),
(454, 90, 'list_3_title', '49,84 kW | Knyszyn – Fotowoltaika dla firm'),
(455, 90, '_list_3_title', 'field_5feb69286b454'),
(456, 90, 'list_3_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(457, 90, '_list_3_text', 'field_5feb69346b455'),
(458, 90, 'list_4_img', '86'),
(459, 90, '_list_4_img', 'field_5feb691b6b453'),
(460, 90, 'list_4_title', '59,84 kW | Knyszyn – Fotowoltaika dla firm'),
(461, 90, '_list_4_title', 'field_5feb69286b454'),
(462, 90, 'list_4_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\n						inwerter Growatt, 20 kW, panele monokrystaliczne.'),
(463, 90, '_list_4_text', 'field_5feb69346b455'),
(464, 90, 'list_5_img', '87'),
(465, 90, '_list_5_img', 'field_5feb691b6b453'),
(466, 90, 'list_5_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(467, 90, '_list_5_title', 'field_5feb69286b454'),
(468, 90, 'list_5_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(469, 90, '_list_5_text', 'field_5feb69346b455'),
(470, 90, 'list', '12'),
(471, 90, '_list', 'field_5feb68fd6b452'),
(472, 90, 'list_6_img', '87'),
(473, 90, '_list_6_img', 'field_5feb691b6b453'),
(474, 90, 'list_6_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(475, 90, '_list_6_title', 'field_5feb69286b454'),
(476, 90, 'list_6_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(477, 90, '_list_6_text', 'field_5feb69346b455'),
(478, 90, 'list_7_img', '86'),
(479, 90, '_list_7_img', 'field_5feb691b6b453'),
(480, 90, 'list_7_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(481, 90, '_list_7_title', 'field_5feb69286b454'),
(482, 90, 'list_7_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(483, 90, '_list_7_text', 'field_5feb69346b455'),
(484, 90, 'list_8_img', '85'),
(485, 90, '_list_8_img', 'field_5feb691b6b453'),
(486, 90, 'list_8_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(487, 90, '_list_8_title', 'field_5feb69286b454'),
(488, 90, 'list_8_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(489, 90, '_list_8_text', 'field_5feb69346b455'),
(490, 90, 'list_9_img', '84'),
(491, 90, '_list_9_img', 'field_5feb691b6b453'),
(492, 90, 'list_9_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(493, 90, '_list_9_title', 'field_5feb69286b454'),
(494, 90, 'list_9_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(495, 90, '_list_9_text', 'field_5feb69346b455'),
(496, 90, 'list_10_img', '83'),
(497, 90, '_list_10_img', 'field_5feb691b6b453'),
(498, 90, 'list_10_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(499, 90, '_list_10_title', 'field_5feb69286b454'),
(500, 90, 'list_10_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(501, 90, '_list_10_text', 'field_5feb69346b455'),
(502, 90, 'list_11_img', '82'),
(503, 90, '_list_11_img', 'field_5feb691b6b453'),
(504, 90, 'list_11_title', '69,84 kW | Knyszyn – Fotowoltaika dla firm'),
(505, 90, '_list_11_title', 'field_5feb69286b454'),
(506, 90, 'list_11_text', 'Instalacja fotowoltaiczna na firm, woj. podlaskie, blachodachówka, panele Longi Solar, \r\ninwerter Growatt, 20 kW, panele monokrystaliczne.'),
(507, 90, '_list_11_text', 'field_5feb69346b455'),
(508, 38, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-12-28 20:59:54', '2020-12-28 17:59:54', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2020-12-28 20:59:54', '2020-12-28 17:59:54', '', 0, 'http://wp-apres/?p=1', 0, 'post', '', 1),
(7, 1, '2020-12-28 21:15:58', '2020-12-28 18:15:58', '', 'Główna', '', 'publish', 'closed', 'closed', '', 'glavnaja', '', '', '2020-12-29 13:01:13', '2020-12-29 10:01:13', '', 0, 'http://wp-apres/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-12-28 21:15:58', '2020-12-28 18:15:58', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-28 21:15:58', '2020-12-28 18:15:58', '', 7, 'http://wp-apres/2020/12/28/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-12-28 21:24:47', '2020-12-28 18:24:47', '', 'Main', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-28 21:24:47', '2020-12-28 18:24:47', '', 7, 'http://wp-apres/2020/12/28/7-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-12-28 21:25:16', '2020-12-28 18:25:16', '', 'Faq', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2020-12-29 20:12:39', '2020-12-29 17:12:39', '', 0, 'http://wp-apres/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-12-28 21:25:16', '2020-12-28 18:25:16', '', 'Faq', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-12-28 21:25:16', '2020-12-28 18:25:16', '', 11, 'http://wp-apres/2020/12/28/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-12-28 21:26:51', '2020-12-28 18:26:51', '', 'O nas', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-12-29 16:00:53', '2020-12-29 13:00:53', '', 0, 'http://wp-apres/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-12-28 21:26:51', '2020-12-28 18:26:51', '', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-12-28 21:26:51', '2020-12-28 18:26:51', '', 13, 'http://wp-apres/2020/12/28/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-12-28 21:29:44', '2020-12-28 18:29:44', '', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2020-12-28 21:29:51', '2020-12-28 18:29:51', '', 0, 'http://wp-apres/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-12-28 21:29:44', '2020-12-28 18:29:44', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-12-28 21:29:44', '2020-12-28 18:29:44', '', 15, 'http://wp-apres/2020/12/28/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-12-28 21:29:51', '2020-12-28 18:29:51', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-12-28 21:29:51', '2020-12-28 18:29:51', '', 15, 'http://wp-apres/2020/12/28/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-12-28 21:30:19', '2020-12-28 18:30:19', '', 'O NAS', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-12-28 21:30:19', '2020-12-28 18:30:19', '', 13, 'http://wp-apres/2020/12/28/13-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-12-28 21:32:45', '2020-12-28 18:32:45', '', 'Realizacje', '', 'publish', 'closed', 'closed', '', 'project', '', '', '2020-12-29 21:06:57', '2020-12-29 18:06:57', '', 0, 'http://wp-apres/?page_id=19', 0, 'page', '', 0),
(20, 1, '2020-12-28 21:32:45', '2020-12-28 18:32:45', '', 'Project', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-12-28 21:32:45', '2020-12-28 18:32:45', '', 19, 'http://wp-apres/2020/12/28/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-12-29 13:00:41', '2020-12-29 10:00:41', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2020-12-29 13:03:54', '2020-12-29 10:03:54', '', 0, 'http://wp-apres/?p=22', 4, 'nav_menu_item', '', 0),
(23, 1, '2020-12-29 13:00:41', '2020-12-29 10:00:41', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2020-12-29 13:03:54', '2020-12-29 10:03:54', '', 0, 'http://wp-apres/?p=23', 5, 'nav_menu_item', '', 0),
(24, 1, '2020-12-29 13:00:41', '2020-12-29 10:00:41', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2020-12-29 13:03:54', '2020-12-29 10:03:54', '', 0, 'http://wp-apres/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2020-12-29 13:00:41', '2020-12-29 10:00:41', ' ', '', '', 'publish', 'closed', 'closed', '', 'realizacje', '', '', '2020-12-29 13:03:54', '2020-12-29 10:03:54', '', 0, 'http://wp-apres/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2020-12-29 13:01:01', '2020-12-29 10:01:01', '', 'Realizacje', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-12-29 13:01:01', '2020-12-29 10:01:01', '', 19, 'http://wp-apres/2020/12/29/19-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-12-29 13:01:13', '2020-12-29 10:01:13', '', 'Główna', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-29 13:01:13', '2020-12-29 10:01:13', '', 7, 'http://wp-apres/2020/12/29/7-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-12-29 13:01:47', '2020-12-29 10:01:47', '', 'O nas', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-12-29 13:01:47', '2020-12-29 10:01:47', '', 13, 'http://wp-apres/2020/12/29/13-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-12-29 13:03:14', '2020-12-29 10:03:14', '<!-- wp:heading {\"level\":3} -->\n<h3></h3>\n<!-- /wp:heading -->', 'Oferta', '', 'publish', 'closed', 'closed', '', 'oferta', '', '', '2020-12-30 12:45:38', '2020-12-30 09:45:38', '', 0, 'http://wp-apres/?page_id=29', 0, 'page', '', 0),
(30, 1, '2020-12-29 13:03:14', '2020-12-29 10:03:14', '', 'Oferta', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-12-29 13:03:14', '2020-12-29 10:03:14', '', 29, 'http://wp-apres/2020/12/29/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-12-29 13:03:54', '2020-12-29 10:03:54', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2020-12-29 13:03:54', '2020-12-29 10:03:54', '', 0, 'http://wp-apres/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2020-12-29 13:04:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-12-29 13:04:16', '0000-00-00 00:00:00', '', 0, 'http://wp-apres/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2020-12-29 13:04:48', '2020-12-29 10:04:48', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2020-12-29 13:04:48', '2020-12-29 10:04:48', '', 0, 'http://wp-apres/?p=33', 4, 'nav_menu_item', '', 0),
(34, 1, '2020-12-29 13:04:48', '2020-12-29 10:04:48', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2020-12-29 13:04:48', '2020-12-29 10:04:48', '', 0, 'http://wp-apres/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2020-12-29 13:04:48', '2020-12-29 10:04:48', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2020-12-29 13:04:48', '2020-12-29 10:04:48', '', 0, 'http://wp-apres/?p=35', 3, 'nav_menu_item', '', 0),
(36, 1, '2020-12-29 13:04:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-12-29 13:04:17', '0000-00-00 00:00:00', '', 0, 'http://wp-apres/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2020-12-29 13:04:48', '2020-12-29 10:04:48', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2020-12-29 13:04:48', '2020-12-29 10:04:48', '', 0, 'http://wp-apres/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2020-12-29 13:06:08', '2020-12-29 10:06:08', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. <a href=\"https://www.youtube.com/\" data-type=\"URL\" data-id=\"https://www.youtube.com/\">Maecenas eget ante</a> ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. Maecenas eget ante ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</li><li>Integer nec velit quis tellus bibendum semper id id felis.</li><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et.</li><li>Mauris et tristique dolor</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol id=\"block-5025c5b9-7147-4b35-9561-1bc143911184\"><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</li><li>Integer nec velit quis tellus bibendum semper id id felis.</li><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et.</li><li>Mauris et tristique dolor.</li></ol>\n<!-- /wp:list -->', 'Warunki korzystania', '', 'publish', 'closed', 'closed', '', 'warunki-korzystania', '', '', '2020-12-30 12:46:03', '2020-12-30 09:46:03', '', 0, 'http://wp-apres/?page_id=38', 0, 'page', '', 0),
(39, 1, '2020-12-29 13:06:08', '2020-12-29 10:06:08', '', 'Warunki korzystania', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-12-29 13:06:08', '2020-12-29 10:06:08', '', 38, 'http://wp-apres/2020/12/29/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-12-29 13:06:27', '2020-12-29 10:06:27', '<!-- wp:heading -->\n<h2><strong>1. POSTANOWIENIA OGÓLNE</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Administratorem danych osobowych zbieranych za pośrednictwem strony internetowej flex-design.pl jest FlexDesign&nbsp;, dalej „Administrator”, będący/a jednocześnie Usługodawcą. Adres e-mail: <a href=\"mailto:flexdesigne.pl@gmail.com\">flexdesigne.pl@gmail.com</a> .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Dane osobowe zbierane przez Administratora za pośrednictwem strony internetowej są przetwarzane zgodnie z&nbsp;Rozporządzeniem Parlamentu Europejskiego i&nbsp;Rady (UE) 2016/679 z&nbsp;dnia 27 kwietnia 2016 r. w&nbsp;sprawie ochrony osób fizycznych w&nbsp;związku z&nbsp;przetwarzaniem danych osobowych i&nbsp;w sprawie swobodnego przepływu takich danych oraz uchylenia dyrektywy 95/46/WE (ogólne rozporządzenie o&nbsp;ochronie danych), zwane dalej RODO oraz ustawą o ochronie danych osobowych z dnia 10 maja 2018 r.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>2. RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH, CEL I ZAKRES ZBIERANIA DANYCH</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. CEL PRZETWARZANIA I PODSTAWA PRAWNA.&nbsp;Administrator przetwarza dane osobowe za pośrednictwem strony flex-design.pl &nbsp;w przypadku:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. skorzystania przez użytkownika z formularza kontaktowego. Dane osobowe są przetwarzane na podstawie art. 6 ust. 1 lit. f) RODO jako prawnie usprawiedliwiony interes Administratora.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH.&nbsp;Administrator przetwarza następujące kategorie danych osobowych użytkownika:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Adres e-mail,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Numer telefonu,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. OKRES ARCHIWIZACJI DANYCH OSOBOWYCH.&nbsp;Dane osobowe użytkowników przechowywane są przez Administratora:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. w przypadku, gdy podstawą przetwarzania danych jest wykonanie umowy, tak długo, jak jest to niezbędne do wykonania umowy, a&nbsp;po tym czasie przez okres odpowiadający okresowi przedawnienia roszczeń. Jeżeli przepis szczególny nie stanowi inaczej, termin przedawnienia wynosi lat sześć, a&nbsp;dla roszczeń o&nbsp;świadczenia okresowe oraz roszczeń związanych z&nbsp;prowadzeniem działalności gospodarczej – trzy lata.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. w przypadku, gdy podstawą przetwarzania danych jest zgoda, tak długo, aż zgoda nie zostanie odwołana, a&nbsp;po odwołaniu zgody przez okres czasu odpowiadający okresowi przedawnienia roszczeń jakie może podnosić Administrator i&nbsp;jakie mogą być podnoszone wobec niego. Jeżeli przepis szczególny nie stanowi inaczej, termin przedawnienia wynosi lat sześć, a&nbsp;dla roszczeń o&nbsp;świadczenia okresowe oraz roszczeń związanych z&nbsp;prowadzeniem działalności gospodarczej – trzy lata.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 4. Podczas korzystania ze strony internetowej mogą być pobierane dodatkowe informacje, w&nbsp;szczególności: adres IP przypisany do komputera użytkownika lub zewnętrzny adres IP dostawcy Internetu, nazwa domeny, rodzaj przeglądarki, czas dostępu, typ systemu operacyjnego.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 5. Od użytkowników mogą być także gromadzone dane nawigacyjne, w&nbsp;tym informacje o&nbsp;linkach i&nbsp;odnośnikach, w&nbsp;które zdecydują się kliknąć lub innych czynnościach, podejmowanych na stronie internetowej. Podstawą prawną tego rodzaju czynności jest prawnie uzasadniony interes Administratora (art. 6 ust. 1 lit. f RODO), polegający na ułatwieniu korzystania z&nbsp;usług świadczonych drogą elektroniczną oraz na poprawie funkcjonalności tych usług.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 6. Podanie danych osobowych przez użytkownika jest dobrowolne.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 7. Dane osobowe będą przetwarzane także w sposób zautomatyzowany w formie profilowania, o ile użytkownik wyrazi na to zgodę na podstawie art. 6 ust. 1 lit. a) RODO. Konsekwencją profilowania będzie przypisanie danej osobie profilu w celu podejmowania dotyczących jej decyzji bądź analizy lub przewidywania jej preferencji, zachowań i postaw.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 8. Administrator dokłada szczególnej staranności w celu ochrony interesów osób, których dane dotyczą, a w szczególności zapewnia, że zbierane przez niego dane są:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. przetwarzane zgodnie z prawem,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. zbierane dla oznaczonych, zgodnych z prawem celów i niepoddawane dalszemu przetwarzaniu niezgodnemu z tymi celami,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. merytorycznie poprawne i adekwatne w stosunku do celów, w jakich są przetwarzane oraz przechowywane w postaci umożliwiającej identyfikację osób, których dotyczą, nie dłużej niż jest to niezbędne do osiągnięcia celu przetwarzania.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>3. UDOSTĘPNIENIE DANYCH OSOBOWYCH</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Dane osobowe użytkowników przekazywane są dostawcom usług, z&nbsp;których korzysta Administrator przy prowadzeniu strony internetowej. Dostawcy usług, którym przekazywane są dane osobowe, w&nbsp;zależności od uzgodnień umownych i&nbsp;okoliczności, albo podlegają poleceniom Administratora co do celów i&nbsp;sposobów przetwarzania tych danych (podmioty przetwarzające) albo samodzielnie określają cele i&nbsp;sposoby ich przetwarzania (administratorzy).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Dane osobowe użytkowników są przechowywane wyłącznie na terenie Europejskiego Obszaru Gospodarczego (EOG).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>4. PRAWO KONTROLI, DOSTĘPU DO TREŚCI WŁASNYCH DANYCH ORAZ ICH POPRAWIANIA</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Osoba, której dane dotyczą, ma prawo dostępu do treści swoich danych osobowych oraz prawo ich sprostowania, usunięcia, ograniczenia przetwarzania, prawo do przenoszenia danych, prawo wniesienia sprzeciwu, prawo do cofnięcia zgody w dowolnym momencie bez wpływu na zgodność z prawem przetwarzania, którego dokonano na podstawie zgody przed jej cofnięciem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Podstawy prawne żądania użytkownika:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Dostęp do danych&nbsp;– art. 15 RODO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Sprostowanie danych&nbsp;– art. 16 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Usunięcie danych (tzw. prawo do bycia zapomnianym)&nbsp;– art. 17 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Ograniczenie przetwarzania&nbsp;– art. 18 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Przeniesienie danych&nbsp;– art. 20 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Sprzeciw&nbsp;– art. 21 RODO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Cofnięcie zgody&nbsp;– art. 7 ust. 3 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. W celu realizacji uprawnień, o których mowa w pkt 2 można wysłać stosowną wiadomość e-mail na adres: <a href=\"mailto:flexdesigne.pl@gmail.com\">flexdesigne.pl@gmail.com</a> .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 4. W sytuacji wystąpienia przez użytkownika z&nbsp;uprawnieniem wynikającym z&nbsp;powyższych praw, Administrator spełnia żądanie albo odmawia jego spełnienia niezwłocznie, nie później jednak niż w&nbsp;ciągu miesiąca po jego otrzymaniu. Jeżeli jednak – z&nbsp;uwagi na skomplikowany charakter żądania lub liczbę żądań – Administrator nie będzie mógł spełnić żądania w&nbsp;ciągu miesiąca, spełni je w&nbsp;ciągu kolejnych dwóch miesięcy informując użytkownika uprzednio w&nbsp;terminie miesiąca od otrzymania żądania – o&nbsp;zamierzonym przedłużeniu terminu oraz jego przyczynach.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 5. W przypadku stwierdzenia, że przetwarzanie danych osobowych narusza przepisy RODO, osoba, której dane dotyczą, ma prawo wnieść skargę do Prezesa Urzędu Ochrony Danych Osobowych.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>5. PLIKI „COOKIES”</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Strona Administratora&nbsp;używa plików&nbsp;„cookies”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Instalacja plików „cookies” jest konieczna do prawidłowego świadczenia usług na stronie internetowej. W plikach „cookies” znajdują się informacje niezbędne do prawidłowego funkcjonowania strony, a także dają one także możliwość opracowywania ogólnych statystyk odwiedzin strony internetowej.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. W ramach strony stosowane są rodzaje plików „cookies”: sesyjne i stałe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. „Cookies” „sesyjne” są plikami tymczasowymi, które przechowywane są w urządzeniu końcowym użytkownika do czasu wylogowania (opuszczenia strony).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. „Stałe” pliki „cookies” przechowywane są w urządzeniu końcowym użytkownika przez czas określony w parametrach plików „cookies” lub do czasu ich usunięcia przez użytkownika.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 4. Administrator wykorzystuje własne pliki cookies w celu lepszego poznania sposobu interakcji użytkownika w zakresie zawartości strony. Pliki gromadzą informacje o sposobie korzystania ze strony internetowej przez użytkownika, typie strony, z jakiej użytkownik został przekierowany oraz liczbie odwiedzin i czasie wizyty użytkownika na stronie internetowej. Informacje te nie rejestrują konkretnych danych osobowych użytkownika, lecz służą do opracowania statystyk korzystania ze strony.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 5. Użytkownik ma prawo zadecydowania w zakresie dostępu plików „cookies” do swojego komputera poprzez ich uprzedni wybór w oknie swojej przeglądarki. &nbsp;Szczegółowe informacje o możliwości i sposobach obsługi plików „cookies” dostępne są w ustawieniach oprogramowania (przeglądarki internetowej).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>6. POSTANOWIENIA KOŃCOWE</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Administrator stosuje środki techniczne i organizacyjne zapewniające ochronę przetwarzanych danych osobowych odpowiednią do zagrożeń oraz kategorii danych objętych ochroną, a w szczególności zabezpiecza dane przed ich udostępnieniem osobom nieupoważnionym, zabraniem przez osobę nieuprawnioną, przetwarzaniem z naruszeniem obowiązujących przepisów oraz zmianą, utratą, uszkodzeniem lub zniszczeniem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Administrator udostępnia odpowiednie środki techniczne zapobiegające pozyskiwaniu i modyfikowaniu przez osoby nieuprawnione, danych osobowych przesyłanych drogą elektroniczną.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. W sprawach nieuregulowanych niniejszą Polityką prywatności stosuje się odpowiednio przepisy RODO oraz inne właściwe przepisy prawa polskiego.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>DANE KONTAKTOWE</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>email: <a href=\"mailto:flexdesigne.pl@gmail.com\">flexdesigne.pl@gmail.com</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>tel.: <a href=\"tel:+48792088499\">+48&nbsp;792&nbsp;088 499</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Warszawa | Cała Polska</p>\n<!-- /wp:paragraph -->', 'Polityka prywatności', '', 'publish', 'closed', 'closed', '', 'polityka-prywatnosci', '', '', '2020-12-29 19:57:56', '2020-12-29 16:57:56', '', 0, 'http://wp-apres/?page_id=40', 0, 'page', '', 0),
(41, 1, '2020-12-29 13:06:27', '2020-12-29 10:06:27', '', 'Polityka prywatności', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-12-29 13:06:27', '2020-12-29 10:06:27', '', 40, 'http://wp-apres/2020/12/29/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-12-29 13:06:38', '2020-12-29 10:06:38', '', 'Cookies', '', 'publish', 'closed', 'closed', '', 'cookies', '', '', '2020-12-29 13:06:38', '2020-12-29 10:06:38', '', 0, 'http://wp-apres/?page_id=42', 0, 'page', '', 0),
(43, 1, '2020-12-29 13:06:38', '2020-12-29 10:06:38', '', 'Cookies', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-12-29 13:06:38', '2020-12-29 10:06:38', '', 42, 'http://wp-apres/2020/12/29/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-12-29 13:07:24', '2020-12-29 10:07:24', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2020-12-29 13:07:24', '2020-12-29 10:07:24', '', 0, 'http://wp-apres/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2020-12-29 13:07:24', '2020-12-29 10:07:24', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-12-29 13:07:24', '2020-12-29 10:07:24', '', 0, 'http://wp-apres/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2020-12-29 13:07:24', '2020-12-29 10:07:24', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2020-12-29 13:07:24', '2020-12-29 10:07:24', '', 0, 'http://wp-apres/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2020-12-29 13:13:42', '2020-12-29 10:13:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Dostosowywanie motywu', 'dostosowywanie-motywu', 'publish', 'closed', 'closed', '', 'group_5feb00f65b6ce', '', '', '2020-12-29 19:40:30', '2020-12-29 16:40:30', '', 0, 'http://wp-apres/?post_type=acf-field-group&#038;p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2020-12-29 13:13:42', '2020-12-29 10:13:42', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5feb011313612', '', '', '2020-12-29 13:13:42', '2020-12-29 10:13:42', '', 47, 'http://wp-apres/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2020-12-29 13:13:42', '2020-12-29 10:13:42', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5feb013813613', '', '', '2020-12-29 13:13:42', '2020-12-29 10:13:42', '', 47, 'http://wp-apres/?post_type=acf-field&p=49', 1, 'acf-field', '', 0),
(50, 1, '2020-12-29 13:13:42', '2020-12-29 10:13:42', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'email', 'email', 'publish', 'closed', 'closed', '', 'field_5feb014c13614', '', '', '2020-12-29 13:13:42', '2020-12-29 10:13:42', '', 47, 'http://wp-apres/?post_type=acf-field&p=50', 2, 'acf-field', '', 0),
(51, 1, '2020-12-29 13:16:42', '2020-12-29 10:16:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'phone', 'phone', 'publish', 'closed', 'closed', '', 'field_5feb01f263c2a', '', '', '2020-12-29 13:16:42', '2020-12-29 10:16:42', '', 47, 'http://wp-apres/?post_type=acf-field&p=51', 3, 'acf-field', '', 0),
(52, 1, '2020-12-29 15:55:50', '2020-12-29 12:55:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'O nas', 'o-nas', 'publish', 'closed', 'closed', '', 'group_5feb26d437fb4', '', '', '2020-12-29 15:57:49', '2020-12-29 12:57:49', '', 0, 'http://wp-apres/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2020-12-29 15:55:50', '2020-12-29 12:55:50', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'certificates', 'certificates', 'publish', 'closed', 'closed', '', 'field_5feb26f169b0d', '', '', '2020-12-29 15:55:50', '2020-12-29 12:55:50', '', 52, 'http://wp-apres/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2020-12-29 15:55:50', '2020-12-29 12:55:50', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_5feb274469b0e', '', '', '2020-12-29 15:55:50', '2020-12-29 12:55:50', '', 53, 'http://wp-apres/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2020-12-29 15:58:10', '2020-12-29 12:58:10', '', 'slider__item1', '', 'inherit', 'open', 'closed', '', 'slider__item1', '', '', '2020-12-29 15:58:10', '2020-12-29 12:58:10', '', 13, 'http://wp-apres/wp-content/uploads/2020/12/slider__item1.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2020-12-29 15:58:12', '2020-12-29 12:58:12', '', 'slider__item2', '', 'inherit', 'open', 'closed', '', 'slider__item2', '', '', '2020-12-29 15:58:12', '2020-12-29 12:58:12', '', 13, 'http://wp-apres/wp-content/uploads/2020/12/slider__item2.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2020-12-29 15:58:13', '2020-12-29 12:58:13', '', 'slider__item3', '', 'inherit', 'open', 'closed', '', 'slider__item3', '', '', '2020-12-29 15:58:13', '2020-12-29 12:58:13', '', 13, 'http://wp-apres/wp-content/uploads/2020/12/slider__item3.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2020-12-29 15:58:22', '2020-12-29 12:58:22', '', 'O nas', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-12-29 15:58:22', '2020-12-29 12:58:22', '', 13, 'http://wp-apres/2020/12/29/13-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-12-29 16:00:53', '2020-12-29 13:00:53', '', 'O nas', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-12-29 16:00:53', '2020-12-29 13:00:53', '', 13, 'http://wp-apres/2020/12/29/13-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-12-29 19:38:53', '2020-12-29 16:38:53', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'map', 'map', 'publish', 'closed', 'closed', '', 'field_5feb5b95cef67', '', '', '2020-12-29 19:40:05', '2020-12-29 16:40:05', '', 47, 'http://wp-apres/?post_type=acf-field&#038;p=60', 5, 'acf-field', '', 0),
(61, 1, '2020-12-29 19:40:05', '2020-12-29 16:40:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'place', 'place', 'publish', 'closed', 'closed', '', 'field_5feb5bd8b5a21', '', '', '2020-12-29 19:40:05', '2020-12-29 16:40:05', '', 47, 'http://wp-apres/?post_type=acf-field&p=61', 4, 'acf-field', '', 0),
(62, 1, '2020-12-29 19:49:55', '2020-12-29 16:49:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. Maecenas eget ante ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. Maecenas eget ante ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->', 'Oferta', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-12-29 19:49:55', '2020-12-29 16:49:55', '', 29, 'http://wp-apres/2020/12/29/29-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-12-29 19:50:43', '2020-12-29 16:50:43', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. <a href=\"https://www.youtube.com/\" data-type=\"URL\" data-id=\"https://www.youtube.com/\">Maecenas eget ante</a> ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. Maecenas eget ante ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->', 'Oferta', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-12-29 19:50:43', '2020-12-29 16:50:43', '', 29, 'http://wp-apres/2020/12/29/29-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-12-29 19:52:00', '2020-12-29 16:52:00', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. <a href=\"https://www.youtube.com/\" data-type=\"URL\" data-id=\"https://www.youtube.com/\">Maecenas eget ante</a> ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. Maecenas eget ante ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</li><li>Integer nec velit quis tellus bibendum semper id id felis.</li><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et.</li><li>Mauris et tristique dolor.</li></ul>\n<!-- /wp:list -->', 'Oferta', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-12-29 19:52:00', '2020-12-29 16:52:00', '', 29, 'http://wp-apres/2020/12/29/29-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-12-29 19:53:25', '2020-12-29 16:53:25', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. <a href=\"https://www.youtube.com/\" data-type=\"URL\" data-id=\"https://www.youtube.com/\">Maecenas eget ante</a> ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. Maecenas eget ante ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</li><li>Integer nec velit quis tellus bibendum semper id id felis.</li><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et.</li><li>Mauris et tristique dolor</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol id=\"block-5025c5b9-7147-4b35-9561-1bc143911184\"><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</li><li>Integer nec velit quis tellus bibendum semper id id felis.</li><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et.</li><li>Mauris et tristique dolor.</li></ol>\n<!-- /wp:list -->', 'Oferta', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-12-29 19:53:25', '2020-12-29 16:53:25', '', 29, 'http://wp-apres/2020/12/29/29-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(67, 1, '2020-12-29 19:55:42', '2020-12-29 16:55:42', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. <a href=\"https://www.youtube.com/\" data-type=\"URL\" data-id=\"https://www.youtube.com/\">Maecenas eget ante</a> ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. Maecenas eget ante ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</li><li>Integer nec velit quis tellus bibendum semper id id felis.</li><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et.</li><li>Mauris et tristique dolor</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol id=\"block-5025c5b9-7147-4b35-9561-1bc143911184\"><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</li><li>Integer nec velit quis tellus bibendum semper id id felis.</li><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et.</li><li>Mauris et tristique dolor.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3></h3>\n<!-- /wp:heading -->', 'Oferta', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-12-29 19:55:42', '2020-12-29 16:55:42', '', 29, 'http://wp-apres/2020/12/29/29-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-12-29 19:57:13', '2020-12-29 16:57:13', '<!-- wp:paragraph -->\n<p id=\"block-0a8fc52a-95b2-451f-aad0-71342238a7af\"><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. <a href=\"https://www.youtube.com/\">Maecenas eget ante</a> ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-31afb724-11b0-4958-be99-5a3d20573c1f\">Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-4c89651f-86a2-4cec-84c7-f6660d6a5b1f\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. Maecenas eget ante ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p id=\"block-0f1df3d0-7bad-4fda-a4a4-049f2fe5a5bd\">Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"block-1ac32d44-903e-4edc-9d5f-b5fcfb3cec6e\">Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul id=\"block-56b9a0d4-4637-4cb3-9abb-7224dd18d23f\"><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</li><li>Integer nec velit quis tellus bibendum semper id id felis.</li><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et.</li><li>Mauris et tristique dolor</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 id=\"block-428546e9-3a1d-4777-b9a9-116d060e3702\">Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol id=\"block-a700ddc3-588d-4cd3-a9b5-21e9cb1ce4a1\"><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</li><li>Integer nec velit quis tellus bibendum semper id id felis.</li><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et.</li><li>Mauris et tristique dolor.</li></ol>\n<!-- /wp:list -->', 'Cookies', '', 'inherit', 'closed', 'closed', '', '42-autosave-v1', '', '', '2020-12-29 19:57:13', '2020-12-29 16:57:13', '', 42, 'http://wp-apres/2020/12/29/42-autosave-v1/', 0, 'revision', '', 0),
(69, 1, '2020-12-29 19:57:36', '2020-12-29 16:57:36', '<!-- wp:heading -->\n<h2>POLITYKA PRYWATNOŚCI</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>1. POSTANOWIENIA OGÓLNE</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Administratorem danych osobowych zbieranych za pośrednictwem strony internetowej flex-design.pl jest FlexDesign&nbsp;, dalej „Administrator”, będący/a jednocześnie Usługodawcą. Adres e-mail: <a href=\"mailto:flexdesigne.pl@gmail.com\">flexdesigne.pl@gmail.com</a> .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Dane osobowe zbierane przez Administratora za pośrednictwem strony internetowej są przetwarzane zgodnie z&nbsp;Rozporządzeniem Parlamentu Europejskiego i&nbsp;Rady (UE) 2016/679 z&nbsp;dnia 27 kwietnia 2016 r. w&nbsp;sprawie ochrony osób fizycznych w&nbsp;związku z&nbsp;przetwarzaniem danych osobowych i&nbsp;w sprawie swobodnego przepływu takich danych oraz uchylenia dyrektywy 95/46/WE (ogólne rozporządzenie o&nbsp;ochronie danych), zwane dalej RODO oraz ustawą o ochronie danych osobowych z dnia 10 maja 2018 r.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>2. RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH, CEL I ZAKRES ZBIERANIA DANYCH</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. CEL PRZETWARZANIA I PODSTAWA PRAWNA.&nbsp;Administrator przetwarza dane osobowe za pośrednictwem strony flex-design.pl &nbsp;w przypadku:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. skorzystania przez użytkownika z formularza kontaktowego. Dane osobowe są przetwarzane na podstawie art. 6 ust. 1 lit. f) RODO jako prawnie usprawiedliwiony interes Administratora.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH.&nbsp;Administrator przetwarza następujące kategorie danych osobowych użytkownika:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Adres e-mail,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Numer telefonu,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. OKRES ARCHIWIZACJI DANYCH OSOBOWYCH.&nbsp;Dane osobowe użytkowników przechowywane są przez Administratora:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. w przypadku, gdy podstawą przetwarzania danych jest wykonanie umowy, tak długo, jak jest to niezbędne do wykonania umowy, a&nbsp;po tym czasie przez okres odpowiadający okresowi przedawnienia roszczeń. Jeżeli przepis szczególny nie stanowi inaczej, termin przedawnienia wynosi lat sześć, a&nbsp;dla roszczeń o&nbsp;świadczenia okresowe oraz roszczeń związanych z&nbsp;prowadzeniem działalności gospodarczej – trzy lata.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. w przypadku, gdy podstawą przetwarzania danych jest zgoda, tak długo, aż zgoda nie zostanie odwołana, a&nbsp;po odwołaniu zgody przez okres czasu odpowiadający okresowi przedawnienia roszczeń jakie może podnosić Administrator i&nbsp;jakie mogą być podnoszone wobec niego. Jeżeli przepis szczególny nie stanowi inaczej, termin przedawnienia wynosi lat sześć, a&nbsp;dla roszczeń o&nbsp;świadczenia okresowe oraz roszczeń związanych z&nbsp;prowadzeniem działalności gospodarczej – trzy lata.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 4. Podczas korzystania ze strony internetowej mogą być pobierane dodatkowe informacje, w&nbsp;szczególności: adres IP przypisany do komputera użytkownika lub zewnętrzny adres IP dostawcy Internetu, nazwa domeny, rodzaj przeglądarki, czas dostępu, typ systemu operacyjnego.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 5. Od użytkowników mogą być także gromadzone dane nawigacyjne, w&nbsp;tym informacje o&nbsp;linkach i&nbsp;odnośnikach, w&nbsp;które zdecydują się kliknąć lub innych czynnościach, podejmowanych na stronie internetowej. Podstawą prawną tego rodzaju czynności jest prawnie uzasadniony interes Administratora (art. 6 ust. 1 lit. f RODO), polegający na ułatwieniu korzystania z&nbsp;usług świadczonych drogą elektroniczną oraz na poprawie funkcjonalności tych usług.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 6. Podanie danych osobowych przez użytkownika jest dobrowolne.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 7. Dane osobowe będą przetwarzane także w sposób zautomatyzowany w formie profilowania, o ile użytkownik wyrazi na to zgodę na podstawie art. 6 ust. 1 lit. a) RODO. Konsekwencją profilowania będzie przypisanie danej osobie profilu w celu podejmowania dotyczących jej decyzji bądź analizy lub przewidywania jej preferencji, zachowań i postaw.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 8. Administrator dokłada szczególnej staranności w celu ochrony interesów osób, których dane dotyczą, a w szczególności zapewnia, że zbierane przez niego dane są:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. przetwarzane zgodnie z prawem,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. zbierane dla oznaczonych, zgodnych z prawem celów i niepoddawane dalszemu przetwarzaniu niezgodnemu z tymi celami,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. merytorycznie poprawne i adekwatne w stosunku do celów, w jakich są przetwarzane oraz przechowywane w postaci umożliwiającej identyfikację osób, których dotyczą, nie dłużej niż jest to niezbędne do osiągnięcia celu przetwarzania.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>3. UDOSTĘPNIENIE DANYCH OSOBOWYCH</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Dane osobowe użytkowników przekazywane są dostawcom usług, z&nbsp;których korzysta Administrator przy prowadzeniu strony internetowej. Dostawcy usług, którym przekazywane są dane osobowe, w&nbsp;zależności od uzgodnień umownych i&nbsp;okoliczności, albo podlegają poleceniom Administratora co do celów i&nbsp;sposobów przetwarzania tych danych (podmioty przetwarzające) albo samodzielnie określają cele i&nbsp;sposoby ich przetwarzania (administratorzy).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Dane osobowe użytkowników są przechowywane wyłącznie na terenie Europejskiego Obszaru Gospodarczego (EOG).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>4. PRAWO KONTROLI, DOSTĘPU DO TREŚCI WŁASNYCH DANYCH ORAZ ICH POPRAWIANIA</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Osoba, której dane dotyczą, ma prawo dostępu do treści swoich danych osobowych oraz prawo ich sprostowania, usunięcia, ograniczenia przetwarzania, prawo do przenoszenia danych, prawo wniesienia sprzeciwu, prawo do cofnięcia zgody w dowolnym momencie bez wpływu na zgodność z prawem przetwarzania, którego dokonano na podstawie zgody przed jej cofnięciem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Podstawy prawne żądania użytkownika:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Dostęp do danych&nbsp;– art. 15 RODO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Sprostowanie danych&nbsp;– art. 16 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Usunięcie danych (tzw. prawo do bycia zapomnianym)&nbsp;– art. 17 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Ograniczenie przetwarzania&nbsp;– art. 18 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Przeniesienie danych&nbsp;– art. 20 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Sprzeciw&nbsp;– art. 21 RODO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Cofnięcie zgody&nbsp;– art. 7 ust. 3 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. W celu realizacji uprawnień, o których mowa w pkt 2 można wysłać stosowną wiadomość e-mail na adres: <a href=\"mailto:flexdesigne.pl@gmail.com\">flexdesigne.pl@gmail.com</a> .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 4. W sytuacji wystąpienia przez użytkownika z&nbsp;uprawnieniem wynikającym z&nbsp;powyższych praw, Administrator spełnia żądanie albo odmawia jego spełnienia niezwłocznie, nie później jednak niż w&nbsp;ciągu miesiąca po jego otrzymaniu. Jeżeli jednak – z&nbsp;uwagi na skomplikowany charakter żądania lub liczbę żądań – Administrator nie będzie mógł spełnić żądania w&nbsp;ciągu miesiąca, spełni je w&nbsp;ciągu kolejnych dwóch miesięcy informując użytkownika uprzednio w&nbsp;terminie miesiąca od otrzymania żądania – o&nbsp;zamierzonym przedłużeniu terminu oraz jego przyczynach.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 5. W przypadku stwierdzenia, że przetwarzanie danych osobowych narusza przepisy RODO, osoba, której dane dotyczą, ma prawo wnieść skargę do Prezesa Urzędu Ochrony Danych Osobowych.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>5. PLIKI „COOKIES”</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Strona Administratora&nbsp;używa plików&nbsp;„cookies”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Instalacja plików „cookies” jest konieczna do prawidłowego świadczenia usług na stronie internetowej. W plikach „cookies” znajdują się informacje niezbędne do prawidłowego funkcjonowania strony, a także dają one także możliwość opracowywania ogólnych statystyk odwiedzin strony internetowej.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. W ramach strony stosowane są rodzaje plików „cookies”: sesyjne i stałe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. „Cookies” „sesyjne” są plikami tymczasowymi, które przechowywane są w urządzeniu końcowym użytkownika do czasu wylogowania (opuszczenia strony).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. „Stałe” pliki „cookies” przechowywane są w urządzeniu końcowym użytkownika przez czas określony w parametrach plików „cookies” lub do czasu ich usunięcia przez użytkownika.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 4. Administrator wykorzystuje własne pliki cookies w celu lepszego poznania sposobu interakcji użytkownika w zakresie zawartości strony. Pliki gromadzą informacje o sposobie korzystania ze strony internetowej przez użytkownika, typie strony, z jakiej użytkownik został przekierowany oraz liczbie odwiedzin i czasie wizyty użytkownika na stronie internetowej. Informacje te nie rejestrują konkretnych danych osobowych użytkownika, lecz służą do opracowania statystyk korzystania ze strony.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 5. Użytkownik ma prawo zadecydowania w zakresie dostępu plików „cookies” do swojego komputera poprzez ich uprzedni wybór w oknie swojej przeglądarki. &nbsp;Szczegółowe informacje o możliwości i sposobach obsługi plików „cookies” dostępne są w ustawieniach oprogramowania (przeglądarki internetowej).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>6. POSTANOWIENIA KOŃCOWE</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Administrator stosuje środki techniczne i organizacyjne zapewniające ochronę przetwarzanych danych osobowych odpowiednią do zagrożeń oraz kategorii danych objętych ochroną, a w szczególności zabezpiecza dane przed ich udostępnieniem osobom nieupoważnionym, zabraniem przez osobę nieuprawnioną, przetwarzaniem z naruszeniem obowiązujących przepisów oraz zmianą, utratą, uszkodzeniem lub zniszczeniem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Administrator udostępnia odpowiednie środki techniczne zapobiegające pozyskiwaniu i modyfikowaniu przez osoby nieuprawnione, danych osobowych przesyłanych drogą elektroniczną.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. W sprawach nieuregulowanych niniejszą Polityką prywatności stosuje się odpowiednio przepisy RODO oraz inne właściwe przepisy prawa polskiego.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>DANE KONTAKTOWE</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>email: <a href=\"mailto:flexdesigne.pl@gmail.com\">flexdesigne.pl@gmail.com</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>tel.: <a href=\"tel:+48792088499\">+48&nbsp;792&nbsp;088 499</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Warszawa | Cała Polska</p>\n<!-- /wp:paragraph -->', 'Polityka prywatności', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-12-29 19:57:36', '2020-12-29 16:57:36', '', 40, 'http://wp-apres/2020/12/29/40-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-12-29 19:57:56', '2020-12-29 16:57:56', '<!-- wp:heading -->\n<h2><strong>1. POSTANOWIENIA OGÓLNE</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Administratorem danych osobowych zbieranych za pośrednictwem strony internetowej flex-design.pl jest FlexDesign&nbsp;, dalej „Administrator”, będący/a jednocześnie Usługodawcą. Adres e-mail: <a href=\"mailto:flexdesigne.pl@gmail.com\">flexdesigne.pl@gmail.com</a> .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Dane osobowe zbierane przez Administratora za pośrednictwem strony internetowej są przetwarzane zgodnie z&nbsp;Rozporządzeniem Parlamentu Europejskiego i&nbsp;Rady (UE) 2016/679 z&nbsp;dnia 27 kwietnia 2016 r. w&nbsp;sprawie ochrony osób fizycznych w&nbsp;związku z&nbsp;przetwarzaniem danych osobowych i&nbsp;w sprawie swobodnego przepływu takich danych oraz uchylenia dyrektywy 95/46/WE (ogólne rozporządzenie o&nbsp;ochronie danych), zwane dalej RODO oraz ustawą o ochronie danych osobowych z dnia 10 maja 2018 r.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>2. RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH, CEL I ZAKRES ZBIERANIA DANYCH</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. CEL PRZETWARZANIA I PODSTAWA PRAWNA.&nbsp;Administrator przetwarza dane osobowe za pośrednictwem strony flex-design.pl &nbsp;w przypadku:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. skorzystania przez użytkownika z formularza kontaktowego. Dane osobowe są przetwarzane na podstawie art. 6 ust. 1 lit. f) RODO jako prawnie usprawiedliwiony interes Administratora.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH.&nbsp;Administrator przetwarza następujące kategorie danych osobowych użytkownika:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Adres e-mail,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Numer telefonu,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. OKRES ARCHIWIZACJI DANYCH OSOBOWYCH.&nbsp;Dane osobowe użytkowników przechowywane są przez Administratora:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. w przypadku, gdy podstawą przetwarzania danych jest wykonanie umowy, tak długo, jak jest to niezbędne do wykonania umowy, a&nbsp;po tym czasie przez okres odpowiadający okresowi przedawnienia roszczeń. Jeżeli przepis szczególny nie stanowi inaczej, termin przedawnienia wynosi lat sześć, a&nbsp;dla roszczeń o&nbsp;świadczenia okresowe oraz roszczeń związanych z&nbsp;prowadzeniem działalności gospodarczej – trzy lata.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. w przypadku, gdy podstawą przetwarzania danych jest zgoda, tak długo, aż zgoda nie zostanie odwołana, a&nbsp;po odwołaniu zgody przez okres czasu odpowiadający okresowi przedawnienia roszczeń jakie może podnosić Administrator i&nbsp;jakie mogą być podnoszone wobec niego. Jeżeli przepis szczególny nie stanowi inaczej, termin przedawnienia wynosi lat sześć, a&nbsp;dla roszczeń o&nbsp;świadczenia okresowe oraz roszczeń związanych z&nbsp;prowadzeniem działalności gospodarczej – trzy lata.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 4. Podczas korzystania ze strony internetowej mogą być pobierane dodatkowe informacje, w&nbsp;szczególności: adres IP przypisany do komputera użytkownika lub zewnętrzny adres IP dostawcy Internetu, nazwa domeny, rodzaj przeglądarki, czas dostępu, typ systemu operacyjnego.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 5. Od użytkowników mogą być także gromadzone dane nawigacyjne, w&nbsp;tym informacje o&nbsp;linkach i&nbsp;odnośnikach, w&nbsp;które zdecydują się kliknąć lub innych czynnościach, podejmowanych na stronie internetowej. Podstawą prawną tego rodzaju czynności jest prawnie uzasadniony interes Administratora (art. 6 ust. 1 lit. f RODO), polegający na ułatwieniu korzystania z&nbsp;usług świadczonych drogą elektroniczną oraz na poprawie funkcjonalności tych usług.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 6. Podanie danych osobowych przez użytkownika jest dobrowolne.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 7. Dane osobowe będą przetwarzane także w sposób zautomatyzowany w formie profilowania, o ile użytkownik wyrazi na to zgodę na podstawie art. 6 ust. 1 lit. a) RODO. Konsekwencją profilowania będzie przypisanie danej osobie profilu w celu podejmowania dotyczących jej decyzji bądź analizy lub przewidywania jej preferencji, zachowań i postaw.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 8. Administrator dokłada szczególnej staranności w celu ochrony interesów osób, których dane dotyczą, a w szczególności zapewnia, że zbierane przez niego dane są:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. przetwarzane zgodnie z prawem,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. zbierane dla oznaczonych, zgodnych z prawem celów i niepoddawane dalszemu przetwarzaniu niezgodnemu z tymi celami,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. merytorycznie poprawne i adekwatne w stosunku do celów, w jakich są przetwarzane oraz przechowywane w postaci umożliwiającej identyfikację osób, których dotyczą, nie dłużej niż jest to niezbędne do osiągnięcia celu przetwarzania.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>3. UDOSTĘPNIENIE DANYCH OSOBOWYCH</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Dane osobowe użytkowników przekazywane są dostawcom usług, z&nbsp;których korzysta Administrator przy prowadzeniu strony internetowej. Dostawcy usług, którym przekazywane są dane osobowe, w&nbsp;zależności od uzgodnień umownych i&nbsp;okoliczności, albo podlegają poleceniom Administratora co do celów i&nbsp;sposobów przetwarzania tych danych (podmioty przetwarzające) albo samodzielnie określają cele i&nbsp;sposoby ich przetwarzania (administratorzy).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Dane osobowe użytkowników są przechowywane wyłącznie na terenie Europejskiego Obszaru Gospodarczego (EOG).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>4. PRAWO KONTROLI, DOSTĘPU DO TREŚCI WŁASNYCH DANYCH ORAZ ICH POPRAWIANIA</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Osoba, której dane dotyczą, ma prawo dostępu do treści swoich danych osobowych oraz prawo ich sprostowania, usunięcia, ograniczenia przetwarzania, prawo do przenoszenia danych, prawo wniesienia sprzeciwu, prawo do cofnięcia zgody w dowolnym momencie bez wpływu na zgodność z prawem przetwarzania, którego dokonano na podstawie zgody przed jej cofnięciem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Podstawy prawne żądania użytkownika:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Dostęp do danych&nbsp;– art. 15 RODO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Sprostowanie danych&nbsp;– art. 16 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Usunięcie danych (tzw. prawo do bycia zapomnianym)&nbsp;– art. 17 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Ograniczenie przetwarzania&nbsp;– art. 18 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Przeniesienie danych&nbsp;– art. 20 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. Sprzeciw&nbsp;– art. 21 RODO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. Cofnięcie zgody&nbsp;– art. 7 ust. 3 RODO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. W celu realizacji uprawnień, o których mowa w pkt 2 można wysłać stosowną wiadomość e-mail na adres: <a href=\"mailto:flexdesigne.pl@gmail.com\">flexdesigne.pl@gmail.com</a> .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 4. W sytuacji wystąpienia przez użytkownika z&nbsp;uprawnieniem wynikającym z&nbsp;powyższych praw, Administrator spełnia żądanie albo odmawia jego spełnienia niezwłocznie, nie później jednak niż w&nbsp;ciągu miesiąca po jego otrzymaniu. Jeżeli jednak – z&nbsp;uwagi na skomplikowany charakter żądania lub liczbę żądań – Administrator nie będzie mógł spełnić żądania w&nbsp;ciągu miesiąca, spełni je w&nbsp;ciągu kolejnych dwóch miesięcy informując użytkownika uprzednio w&nbsp;terminie miesiąca od otrzymania żądania – o&nbsp;zamierzonym przedłużeniu terminu oraz jego przyczynach.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 5. W przypadku stwierdzenia, że przetwarzanie danych osobowych narusza przepisy RODO, osoba, której dane dotyczą, ma prawo wnieść skargę do Prezesa Urzędu Ochrony Danych Osobowych.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>5. PLIKI „COOKIES”</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Strona Administratora&nbsp;używa plików&nbsp;„cookies”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Instalacja plików „cookies” jest konieczna do prawidłowego świadczenia usług na stronie internetowej. W plikach „cookies” znajdują się informacje niezbędne do prawidłowego funkcjonowania strony, a także dają one także możliwość opracowywania ogólnych statystyk odwiedzin strony internetowej.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. W ramach strony stosowane są rodzaje plików „cookies”: sesyjne i stałe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. „Cookies” „sesyjne” są plikami tymczasowymi, które przechowywane są w urządzeniu końcowym użytkownika do czasu wylogowania (opuszczenia strony).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. „Stałe” pliki „cookies” przechowywane są w urządzeniu końcowym użytkownika przez czas określony w parametrach plików „cookies” lub do czasu ich usunięcia przez użytkownika.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 4. Administrator wykorzystuje własne pliki cookies w celu lepszego poznania sposobu interakcji użytkownika w zakresie zawartości strony. Pliki gromadzą informacje o sposobie korzystania ze strony internetowej przez użytkownika, typie strony, z jakiej użytkownik został przekierowany oraz liczbie odwiedzin i czasie wizyty użytkownika na stronie internetowej. Informacje te nie rejestrują konkretnych danych osobowych użytkownika, lecz służą do opracowania statystyk korzystania ze strony.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 5. Użytkownik ma prawo zadecydowania w zakresie dostępu plików „cookies” do swojego komputera poprzez ich uprzedni wybór w oknie swojej przeglądarki. &nbsp;Szczegółowe informacje o możliwości i sposobach obsługi plików „cookies” dostępne są w ustawieniach oprogramowania (przeglądarki internetowej).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>6. POSTANOWIENIA KOŃCOWE</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 1. Administrator stosuje środki techniczne i organizacyjne zapewniające ochronę przetwarzanych danych osobowych odpowiednią do zagrożeń oraz kategorii danych objętych ochroną, a w szczególności zabezpiecza dane przed ich udostępnieniem osobom nieupoważnionym, zabraniem przez osobę nieuprawnioną, przetwarzaniem z naruszeniem obowiązujących przepisów oraz zmianą, utratą, uszkodzeniem lub zniszczeniem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 2. Administrator udostępnia odpowiednie środki techniczne zapobiegające pozyskiwaniu i modyfikowaniu przez osoby nieuprawnione, danych osobowych przesyłanych drogą elektroniczną.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp; 3. W sprawach nieuregulowanych niniejszą Polityką prywatności stosuje się odpowiednio przepisy RODO oraz inne właściwe przepisy prawa polskiego.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>DANE KONTAKTOWE</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>email: <a href=\"mailto:flexdesigne.pl@gmail.com\">flexdesigne.pl@gmail.com</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>tel.: <a href=\"tel:+48792088499\">+48&nbsp;792&nbsp;088 499</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Warszawa | Cała Polska</p>\n<!-- /wp:paragraph -->', 'Polityka prywatności', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-12-29 19:57:56', '2020-12-29 16:57:56', '', 40, 'http://wp-apres/2020/12/29/40-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-12-29 20:03:21', '2020-12-29 17:03:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"11\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Faq', 'faq', 'publish', 'closed', 'closed', '', 'group_5feb6129bfcfe', '', '', '2020-12-29 20:03:30', '2020-12-29 17:03:30', '', 0, 'http://wp-apres/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2020-12-29 20:03:21', '2020-12-29 17:03:21', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'faq', 'faq', 'publish', 'closed', 'closed', '', 'field_5feb612e0a914', '', '', '2020-12-29 20:03:21', '2020-12-29 17:03:21', '', 71, 'http://wp-apres/?post_type=acf-field&p=72', 0, 'acf-field', '', 0),
(73, 1, '2020-12-29 20:03:21', '2020-12-29 17:03:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'question', 'question', 'publish', 'closed', 'closed', '', 'field_5feb614a0a915', '', '', '2020-12-29 20:03:21', '2020-12-29 17:03:21', '', 72, 'http://wp-apres/?post_type=acf-field&p=73', 0, 'acf-field', '', 0),
(74, 1, '2020-12-29 20:03:21', '2020-12-29 17:03:21', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'answer', 'answer', 'publish', 'closed', 'closed', '', 'field_5feb61510a916', '', '', '2020-12-29 20:03:21', '2020-12-29 17:03:21', '', 72, 'http://wp-apres/?post_type=acf-field&p=74', 1, 'acf-field', '', 0),
(75, 1, '2020-12-29 20:12:39', '2020-12-29 17:12:39', '', 'Faq', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-12-29 20:12:39', '2020-12-29 17:12:39', '', 11, 'http://wp-apres/2020/12/29/11-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-12-29 20:37:05', '2020-12-29 17:37:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"19\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Realizacje', 'realizacje', 'publish', 'closed', 'closed', '', 'group_5feb68ea0b79a', '', '', '2020-12-29 20:40:18', '2020-12-29 17:40:18', '', 0, 'http://wp-apres/?post_type=acf-field-group&#038;p=77', 0, 'acf-field-group', '', 0),
(78, 1, '2020-12-29 20:37:05', '2020-12-29 17:37:05', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'list', 'list', 'publish', 'closed', 'closed', '', 'field_5feb68fd6b452', '', '', '2020-12-29 20:37:05', '2020-12-29 17:37:05', '', 77, 'http://wp-apres/?post_type=acf-field&p=78', 0, 'acf-field', '', 0),
(79, 1, '2020-12-29 20:37:05', '2020-12-29 17:37:05', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_5feb691b6b453', '', '', '2020-12-29 20:37:05', '2020-12-29 17:37:05', '', 78, 'http://wp-apres/?post_type=acf-field&p=79', 0, 'acf-field', '', 0),
(80, 1, '2020-12-29 20:37:05', '2020-12-29 17:37:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5feb69286b454', '', '', '2020-12-29 20:37:05', '2020-12-29 17:37:05', '', 78, 'http://wp-apres/?post_type=acf-field&p=80', 1, 'acf-field', '', 0),
(81, 1, '2020-12-29 20:37:05', '2020-12-29 17:37:05', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_5feb69346b455', '', '', '2020-12-29 20:37:05', '2020-12-29 17:37:05', '', 78, 'http://wp-apres/?post_type=acf-field&p=81', 2, 'acf-field', '', 0),
(82, 1, '2020-12-29 20:40:35', '2020-12-29 17:40:35', '', 'news1', '', 'inherit', 'open', 'closed', '', 'news1', '', '', '2020-12-29 20:40:35', '2020-12-29 17:40:35', '', 19, 'http://wp-apres/wp-content/uploads/2020/12/news1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2020-12-29 20:40:38', '2020-12-29 17:40:38', '', 'news2', '', 'inherit', 'open', 'closed', '', 'news2', '', '', '2020-12-29 20:40:38', '2020-12-29 17:40:38', '', 19, 'http://wp-apres/wp-content/uploads/2020/12/news2.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2020-12-29 20:40:39', '2020-12-29 17:40:39', '', 'news3', '', 'inherit', 'open', 'closed', '', 'news3', '', '', '2020-12-29 20:40:39', '2020-12-29 17:40:39', '', 19, 'http://wp-apres/wp-content/uploads/2020/12/news3.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2020-12-29 20:40:39', '2020-12-29 17:40:39', '', 'news4', '', 'inherit', 'open', 'closed', '', 'news4', '', '', '2020-12-29 20:40:39', '2020-12-29 17:40:39', '', 19, 'http://wp-apres/wp-content/uploads/2020/12/news4.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2020-12-29 20:40:40', '2020-12-29 17:40:40', '', 'news5', '', 'inherit', 'open', 'closed', '', 'news5', '', '', '2020-12-29 20:40:40', '2020-12-29 17:40:40', '', 19, 'http://wp-apres/wp-content/uploads/2020/12/news5.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2020-12-29 20:40:40', '2020-12-29 17:40:40', '', 'news6', '', 'inherit', 'open', 'closed', '', 'news6', '', '', '2020-12-29 20:40:40', '2020-12-29 17:40:40', '', 19, 'http://wp-apres/wp-content/uploads/2020/12/news6.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2020-12-29 20:41:29', '2020-12-29 17:41:29', '', 'Realizacje', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-12-29 20:41:29', '2020-12-29 17:41:29', '', 19, 'http://wp-apres/2020/12/29/19-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-12-29 20:41:44', '2020-12-29 17:41:44', '', 'Realizacje', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-12-29 20:41:44', '2020-12-29 17:41:44', '', 19, 'http://wp-apres/2020/12/29/19-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-12-29 21:06:57', '2020-12-29 18:06:57', '', 'Realizacje', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-12-29 21:06:57', '2020-12-29 18:06:57', '', 19, 'http://wp-apres/2020/12/29/19-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-12-30 12:45:37', '2020-12-30 09:45:37', '<!-- wp:heading {\"level\":3} -->\n<h3></h3>\n<!-- /wp:heading -->', 'Oferta', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-12-30 12:45:37', '2020-12-30 09:45:37', '', 29, 'http://wp-apres/2020/12/30/29-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-12-30 12:45:48', '2020-12-30 09:45:48', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. <a href=\"https://www.youtube.com/\" data-type=\"URL\" data-id=\"https://www.youtube.com/\">Maecenas eget ante</a> ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum metus nec tortor tristique malesuada. Maecenas ut lectus fringilla dolor placerat eleifend in id nulla. Maecenas eget ante ante. Duis tincidunt vestibulum sem, at lacinia sapien ultrices vel. Mauris vitae tempus sem. Fusce sollicitudin, sem in laoreet luctus, odio sapien finibus erat, id eleifend sapien purus bibendum dolor. Sed ac nunc odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et. Vestibulum nec diam accumsan massa venenatis tincidunt. Curabitur et luctus nunc. Mauris blandit blandit rutrum. Praesent dictum ornare varius. Sed auctor nunc sit amet lectus tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan viverra eros. Ut condimentum tristique mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</li><li>Integer nec velit quis tellus bibendum semper id id felis.</li><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et.</li><li>Mauris et tristique dolor</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol id=\"block-5025c5b9-7147-4b35-9561-1bc143911184\"><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec.</li><li>Integer nec velit quis tellus bibendum semper id id felis.</li><li>Maecenas luctus sapien eros, vitae aliquam nisi dictum nec. Integer nec velit quis tellus bibendum semper id id felis. Mauris et tristique dolor. Pellentesque ut convallis tortor. In pulvinar tincidunt euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac tellus sollicitudin elit fringilla dictum. Ut pellentesque dui nulla, ut imperdiet ipsum posuere et.</li><li>Mauris et tristique dolor.</li></ol>\n<!-- /wp:list -->', 'Warunki korzystania', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-12-30 12:45:48', '2020-12-30 09:45:48', '', 38, 'http://wp-apres/2020/12/30/38-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'menu', 'menu', 0),
(3, 'menu-footer', 'menu-footer', 0),
(4, 'menu-footer2', 'menu-footer2', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(31, 2, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(37, 3, 0),
(44, 4, 0),
(45, 4, 0),
(46, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ff71a84a368ed6a9970c4613d42f849306fddf30945bb217b6cab4d1ba0209e1\";a:4:{s:10:\"expiration\";i:1609351210;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609178410;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_page', 'a:0:{}'),
(20, 1, 'metaboxhidden_page', 'a:1:{i:0;s:23:\"acf-group_5fae579909dd5\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(23, 1, 'nav_menu_recently_edited', '4'),
(24, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(25, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(27, 1, 'wp_user-settings-time', '1609259943');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJVlZCBg8OgQbHocRoRHf0ag60flyP/', 'admin', 'rudolif@gmail.com', 'http://wp-apres', '2020-12-28 17:59:53', '', 0, 'admin');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Індекси таблиці `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Індекси таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT для таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT для таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT для таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблиці `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
