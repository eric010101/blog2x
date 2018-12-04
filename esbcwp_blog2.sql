-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- 主機: localhost:3306
-- 產生時間： 2018 年 12 月 04 日 10:48
-- 伺服器版本: 5.7.24-0ubuntu0.18.10.1
-- PHP 版本： 7.2.12-1+ubuntu18.10.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `esbcwp_blog`
--

-- --------------------------------------------------------

--
-- 資料表結構 `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://www.wpnux.godaddy.com/', '', '2015-12-29 05:06:27', '2015-12-29 05:06:27', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org/', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://wordpress.org/development/', 'WordPress Blog', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wordpress.org/development/feed/'),
(3, 'http://wordpress.org/extend/ideas/', 'Suggest Ideas', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/support/', 'Support Forum', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, 'http://wordpress.org/extend/themes/', 'Themes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://planet.wordpress.org/', 'WordPress Planet', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'successmessage', 1, 1, '2016-03-17 19:41:24', NULL),
(2, NULL, NULL, 'email', 1, 1, '2016-03-17 19:41:24', NULL),
(3, NULL, NULL, 'save', 1, 1, '2016-03-17 19:41:24', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label', 'Success Message'),
(2, 1, 'message', 'Your form has been successfully submitted.'),
(3, 1, 'order', '1'),
(4, 1, 'objectType', 'Action'),
(5, 1, 'objectDomain', 'actions'),
(6, 1, 'editActive', ''),
(7, 1, 'payment_gateways', ''),
(8, 1, 'tag', ''),
(9, 1, 'to', ''),
(10, 1, 'email_subject', ''),
(11, 1, 'email_message', ''),
(12, 1, 'from_name', ''),
(13, 1, 'from_address', ''),
(14, 1, 'reply_to', ''),
(15, 1, 'email_format', 'html'),
(16, 1, 'cc', ''),
(17, 1, 'bcc', ''),
(18, 1, 'attach_csv', ''),
(19, 1, 'redirect_url', ''),
(20, 1, 'success_msg', '<p>Thank you so much for contacting us. We will get back to you shortly.</p>'),
(21, 2, 'label', 'Admin Email'),
(22, 2, 'to', 'a:1:{i:0;s:27:\"noreply@demo.wpeasymode.com\";}'),
(23, 2, 'subject', 'Ninja Forms Submission'),
(24, 2, 'message', '{field:all_fields}'),
(25, 2, 'order', '2'),
(26, 2, 'objectType', 'Action'),
(27, 2, 'objectDomain', 'actions'),
(28, 2, 'editActive', ''),
(29, 2, 'payment_gateways', ''),
(30, 2, 'tag', ''),
(31, 2, 'email_subject', ''),
(32, 2, 'email_message', ''),
(33, 2, 'from_name', ''),
(34, 2, 'from_address', ''),
(35, 2, 'reply_to', ''),
(36, 2, 'email_format', 'html'),
(37, 2, 'cc', ''),
(38, 2, 'bcc', ''),
(39, 2, 'attach_csv', ''),
(40, 3, 'label', 'Save Submission'),
(41, 3, 'order', '3'),
(42, 3, 'objectType', 'Action'),
(43, 3, 'objectDomain', 'actions'),
(44, 3, 'editActive', ''),
(45, 3, 'payment_gateways', ''),
(46, 3, 'tag', ''),
(47, 3, 'to', ''),
(48, 3, 'email_subject', ''),
(49, 3, 'email_message', ''),
(50, 3, 'from_name', ''),
(51, 3, 'from_address', ''),
(52, 3, 'reply_to', ''),
(53, 3, 'email_format', 'html'),
(54, 3, 'cc', ''),
(55, 3, 'bcc', ''),
(56, 3, 'attach_csv', ''),
(57, 3, 'redirect_url', '');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_nf3_chunks`
--

CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext CHARACTER SET utf8mb4,
  `default_label_pos` varchar(15) CHARACTER SET utf8mb4 DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`, `form_title`, `default_label_pos`, `show_title`, `clear_complete`, `hide_complete`, `logged_in`, `seq_num`) VALUES
(1, 'Contact Form', NULL, '2016-03-17 19:41:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `meta_key` longtext CHARACTER SET utf8mb4,
  `meta_value` longtext CHARACTER SET utf8mb4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'objectType', 'Form Setting', NULL, NULL),
(2, 1, 'editActive', '1', NULL, NULL),
(3, 1, 'show_title', '0', NULL, NULL),
(4, 1, 'clear_complete', '1', NULL, NULL),
(5, 1, 'hide_complete', '1', NULL, NULL),
(6, 1, 'currency', 'usd', NULL, NULL),
(7, 1, 'add_submit', '1', NULL, NULL),
(8, 1, 'logged_in', '0', NULL, NULL),
(9, 1, 'wrapper_class', '', NULL, NULL),
(10, 1, 'element_class', '', NULL, NULL),
(11, 1, 'not_logged_in_msg', '', NULL, NULL),
(12, 1, 'sub_limit_number', NULL, NULL, NULL),
(13, 1, 'sub_limit_msg', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_nf3_upgrades`
--

CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext,
  `stage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://167.179.90.100/blog', 'yes'),
(2, 'blogname', '南乡晨初 部落格', 'yes'),
(3, 'blogdescription', '全球首創區塊鏈創作發表平台', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'pengyauwang@hotmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '/%postname%/', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:3:{i:0;s:35:\"contact-widgets/contact-widgets.php\";i:1;s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";i:2;s:27:\"ninja-forms/ninja-forms.php\";}', 'yes'),
(37, 'home', 'http://167.179.90.100/blog', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '0', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', '', 'no'),
(45, 'template', 'fictive', 'yes'),
(46, 'stylesheet', 'fictive', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(51, 'html_type', 'text/html', 'yes'),
(52, 'use_trackback', '0', 'yes'),
(53, 'default_role', 'subscriber', 'yes'),
(54, 'db_version', '38590', 'yes'),
(55, 'uploads_use_yearmonth_folders', '1', 'yes'),
(56, 'upload_path', '/var/www/html/blog/wp-content/uploads', 'yes'),
(57, 'blog_public', '1', 'yes'),
(58, 'default_link_category', '2', 'yes'),
(59, 'show_on_front', 'posts', 'yes'),
(60, 'tag_base', '', 'yes'),
(61, 'show_avatars', '1', 'yes'),
(62, 'avatar_rating', 'G', 'yes'),
(63, 'upload_url_path', '', 'yes'),
(64, 'thumbnail_size_w', '150', 'yes'),
(65, 'thumbnail_size_h', '150', 'yes'),
(66, 'thumbnail_crop', '1', 'yes'),
(67, 'medium_size_w', '300', 'yes'),
(68, 'medium_size_h', '300', 'yes'),
(69, 'avatar_default', 'mystery', 'yes'),
(72, 'large_size_w', '1024', 'yes'),
(73, 'large_size_h', '1024', 'yes'),
(74, 'image_default_link_type', 'file', 'yes'),
(75, 'image_default_size', '', 'yes'),
(76, 'image_default_align', '', 'yes'),
(77, 'close_comments_for_old_posts', '0', 'yes'),
(78, 'close_comments_days_old', '14', 'yes'),
(79, 'thread_comments', '1', 'yes'),
(80, 'thread_comments_depth', '5', 'yes'),
(81, 'page_comments', '0', 'yes'),
(82, 'comments_per_page', '50', 'yes'),
(83, 'default_comments_page', 'newest', 'yes'),
(84, 'comment_order', 'asc', 'yes'),
(85, 'sticky_posts', 'a:0:{}', 'yes'),
(86, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(87, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(88, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(89, 'timezone_string', '', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(193, 'widget_widget_lovecraft_recent_comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:1:{s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:13:\"wpcw_social-2\";i:2;s:14:\"wpcw_contact-2\";}}', 'yes'),
(102, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:9:\"localhost\";s:8:\"username\";N;s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'rewrite_rules', 'a:103:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"nf_sub/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"nf_sub/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"nf_sub/([^/]+)/embed/?$\";s:39:\"index.php?nf_sub=$matches[1]&embed=true\";s:27:\"nf_sub/([^/]+)/trackback/?$\";s:33:\"index.php?nf_sub=$matches[1]&tb=1\";s:35:\"nf_sub/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&paged=$matches[2]\";s:42:\"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&cpage=$matches[2]\";s:31:\"nf_sub/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?nf_sub=$matches[1]&page=$matches[2]\";s:23:\"nf_sub/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"nf_sub/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"nf_sub/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(114, 'uninstall_plugins', 'a:1:{s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}', 'no'),
(115, 'default_post_format', '0', 'yes'),
(116, 'link_manager_enabled', '1', 'yes'),
(117, 'finished_splitting_shared_terms', '1', 'yes'),
(118, 'site_icon', '0', 'yes'),
(119, 'medium_large_size_w', '768', 'yes'),
(120, 'medium_large_size_h', '0', 'yes'),
(121, 'wp_page_for_privacy_policy', '0', 'yes'),
(122, 'show_comments_cookies_opt_in', '0', 'yes'),
(123, 'initial_db_version', '15260', 'yes'),
(127, 'WPLANG', 'en', 'yes'),
(125, 'cron', 'a:6:{i:1543911396;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1543943796;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543943940;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543959670;a:1:{s:22:\"nf_marketing_feed_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1546033270;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}', 'yes'),
(126, 'db_upgraded', '', 'yes'),
(189, 'current_theme', 'Fictive', 'yes'),
(190, 'theme_mods_fictive', 'a:5:{s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:68:\"http://167.179.90.100/blog/wp-content/uploads/2018/12/陳校長2.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:76;s:3:\"url\";s:68:\"http://167.179.90.100/blog/wp-content/uploads/2018/12/陳校長2.png\";s:13:\"thumbnail_url\";s:68:\"http://167.179.90.100/blog/wp-content/uploads/2018/12/陳校長2.png\";s:6:\"height\";i:257;s:5:\"width\";i:265;}s:16:\"header_textcolor\";s:6:\"130821\";}', 'yes'),
(191, 'theme_switched', '', 'yes'),
(192, 'wpem_theme', 'fictive', 'yes'),
(194, 'widget_widget_lovecraft_recent_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(136, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1543354855;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"secondary-widget-area\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:25:\"fourth-footer-widget-area\";a:0:{}}}}', 'yes'),
(195, 'fresh_site', '0', 'yes'),
(140, 'wpem_log', '{\"datetime\":\"2018-11-27T17:18:52+00:00\",\"fqdn\":\"sg2plcpnl0103.prod.sin2.secureserver.net\",\"site_url\":\"http:\\/\\/www.ilovemyheart.org\\/one\",\"account_id\":\"ilovemyheart\",\"user_email\":\"pengyauwang@hotmail.com\",\"locale\":\"en\",\"wp_version\":\"4.9.8\",\"wpem_version\":\"2.3.7\",\"geodata\":[],\"is_fresh_wp\":true,\"steps\":{\"start\":{\"took\":\"8.731\",\"fields\":{\"wpem_continue\":\"yes\"}},\"settings\":{\"took\":\"22.059\",\"fields\":{\"wpem_site_type\":\"blog\",\"wpem_site_industry\":\"health\",\"blogname\":\"The $host_title$&#039;s Chain Blog\",\"blogdescription\":\"Just another BlockChain Blog\",\"\":null}},\"contact\":{\"fields\":{\"wpem_contact_info\":{\"email\":\"sweettek.eric@gmail.com\",\"phone\":\"986576086\",\"fax\":\"986576086\",\"address\":\"\\u53f0\\u5357\\u5e02\\u65b0\\u71df\\u5340\\u958b\\u5143\\u8def247-1\\u865f\"}},\"took\":\"15571.691\"},\"theme\":{\"took\":\"56.981\",\"fields\":{\"wpem_selected_theme\":\"fictive\",\"wpem_selected_header_image_url\":\"http:\\/\\/isteam.wsimg.com\\/stock\\/QzYR55b\\/:\\/rs=w:2400\\/qt=q:50\",\"wpem_selected_color_scheme\":\"\"}}},\"took\":\"15659.462\",\"import_successful\":1}', 'yes'),
(206, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:2:\"en\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1543909182;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(205, 'ninja_forms_addons_feed', '[{\"title\":\"Conditional Logic\",\"image\":\"assets\\/img\\/add-ons\\/conditional-logic.png\",\"content\":\"Build smart, dynamic, interactive WordPress forms that tailor themselves to what a user needs as they fill out the form.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic\",\"plugin\":\"ninja-forms-conditionals\\/conditionals.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic+Docs\",\"version\":\"3.0.22\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"Multi-Part Forms\",\"image\":\"assets\\/img\\/add-ons\\/multi-part-forms.png\",\"content\":\"Easily break long forms into multiple pages for a huge user experience upgrade!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/multi-part-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi-Part+Forms\",\"plugin\":\"ninja-forms-multi-part\\/multi-part.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/multi-part-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi-Part+Forms+Docs\",\"version\":\"3.0.24\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"Front-End Posting\",\"image\":\"assets\\/img\\/add-ons\\/front-end-posting.png\",\"content\":\"Allow users to create their own public posts and pages without ever seeing the Dashboard!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting\",\"plugin\":\"ninja-forms-post-creation\\/ninja-forms-post-creation.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting+Docs\",\"version\":\"3.0.7\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"}]},{\"title\":\"File Uploads\",\"image\":\"assets\\/img\\/add-ons\\/file-uploads.png\",\"content\":\"Allow users to upload files and save them to your server, media library, or even Dropbox and Amazon S3!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads\",\"plugin\":\"ninja-forms-uploads\\/file-uploads.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads+Docs\",\"version\":\"3.0.20\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"Layout and Styles\",\"image\":\"assets\\/img\\/add-ons\\/layout-styles.png\",\"content\":\"Easily create multi-column form layouts and beautifully styled WordPress forms without mastering CSS.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles\",\"plugin\":\"ninja-forms-style\\/ninja-forms-style.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles+Docs\",\"version\":\"3.0.25\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"MailChimp\",\"image\":\"assets\\/img\\/add-ons\\/mail-chimp.png\",\"content\":\"Integrate MailChimp and WordPress with easy-to-create, fully customizable signup forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailChimp\",\"plugin\":\"ninja-forms-mail-chimp\\/ninja-forms-mail-chimp.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailChimp+Docs\",\"version\":\"3.1.9\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"Campaign Monitor\",\"image\":\"assets\\/img\\/add-ons\\/campaign-monitor.png\",\"content\":\"Connect your website directly with Campaign Monitor using any of your WordPress forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor\",\"plugin\":\"ninja-forms-campaign-monitor\\/ninja-forms-campaign-monitor.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"User Analytics\",\"image\":\"assets\\/img\\/add-ons\\/user-analytics.png\",\"content\":\"Collect valuable user data on form submission without the hassle of integrating with other services!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics\",\"plugin\":\"ninja-forms-user-analytics\\/ninja-forms-user-analytics.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Constant Contact\",\"image\":\"assets\\/img\\/add-ons\\/constant-contact.png\",\"content\":\"Turn any WordPress form into a beautiful, fully customizable Constant Contact signup form in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact\",\"plugin\":\"ninja-forms-constant-contact\\/ninja-forms-constant-contact.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"AWeber\",\"image\":\"assets\\/img\\/add-ons\\/aweber.png\",\"content\":\"Integrate AWeber and WordPress for fully automated email marketing in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber\",\"plugin\":\"ninja-forms-aweber\\/ninja-forms-aweber.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber+Docs\",\"version\":\"3.0.2\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"PayPal Express\",\"image\":\"assets\\/img\\/add-ons\\/paypal-express.png\",\"content\":\"Connect WordPress with PayPal Express & start collecting payments with your WordPress forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express\",\"plugin\":\"ninja-forms-paypal-express\\/ninja-forms-paypal-express.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express+Docs\",\"version\":\"3.0.14\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"Zoho CRM\",\"image\":\"assets\\/img\\/add-ons\\/zoho-crm.png\",\"content\":\"Sell smarter, better, and faster with total integration between Zoho CRM and WordPress\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/ninja-forms-zoho-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM+Docs\",\"version\":\"3.3.3\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Capsule CRM\",\"image\":\"assets\\/img\\/add-ons\\/capsule-crm.png\",\"content\":\"Save time to focus on sales with direct, flawless integration with your Capsule CRM account\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM\",\"plugin\":\"ninja-forms-capsule-crm\\/ninja-forms-capsule-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM+Docs\",\"version\":\"3.3.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Stripe\",\"image\":\"assets\\/img\\/add-ons\\/stripe.png\",\"content\":\"Accept credit cards payments securely and efficiently from your WordPress forms\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe\",\"plugin\":\"ninja-forms-stripe\\/ninja-forms-stripe.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe+Docs\",\"version\":\"3.0.19\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"}]},{\"title\":\"Insightly CRM\",\"image\":\"assets\\/img\\/add-ons\\/insightly-crm.png\",\"content\":\"Connect your WordPress forms and Insightly CRM to build better customer relationships and accelerate sales\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM\",\"plugin\":\"ninja-forms-insightly-crm\\/ninja-forms-insightly-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"PDF Form Submission\",\"image\":\"assets\\/img\\/add-ons\\/pdf-form-submission.png\",\"content\":\"Easily create standardized PDF copies of any form submission to export or email\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission\",\"plugin\":\"ninja-forms-pdf-submissions\\/nf-pdf-submissions.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"Sendy\",\"image\":\"assets\\/img\\/add-ons\\/sendy.png\",\"content\":\"Sendy extension for Ninja Forms lets you subscribe users using Ninja Forms.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/sendy\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Sendy\",\"plugin\":\"ninja-forms-sendy\\/ninja-forms-sendy.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/sendy\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Sendy+Docs\",\"version\":\"3.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Trello\",\"image\":\"assets\\/img\\/add-ons\\/trello.png\",\"content\":\"Create Trello cards from your Ninja Forms submissions.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello\",\"plugin\":\"ninja-forms-trello\\/ninja-forms-trello.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello+Docs\",\"version\":\"3.0.2\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Elavon\",\"image\":\"assets\\/img\\/add-ons\\/elavon.png\",\"content\":\"A simple, streamlined, and secure way to accept credit card payments in WordPress\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon\",\"plugin\":\"ninja-forms-elavon-payment-gateway\\/ninja-forms-elavon-payment-gateway.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Zapier\",\"image\":\"assets\\/img\\/add-ons\\/zapier.png\",\"content\":\"Integrate WordPress with virtually any service in a matter of minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier\",\"plugin\":\"ninja-forms-zapier\\/ninja-forms-zapier.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier+Docs\",\"version\":\"3.0.8\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Salesforce CRM\",\"image\":\"assets\\/img\\/add-ons\\/salesforce-crm.png\",\"content\":\"Complete, effortless integration between Salesforce and WordPress\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM\",\"plugin\":\"ninja-forms-salesforce-crm\\/ninja-forms-salesforce-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Slack\",\"image\":\"assets\\/img\\/add-ons\\/slack.png\",\"content\":\"Stay in touch with real-time notifications every time a form is submitted. Get Slack for WordPress and never miss a thing!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack\",\"plugin\":\"ninja-forms-slack\\/ninja-forms-slack.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack+Docs\",\"version\":\"3.0.2\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"CleverReach\",\"image\":\"assets\\/img\\/add-ons\\/cleverreach.png\",\"content\":\"Connect to CleverReach and turn any of your WordPress forms into a CleverReach signup form in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach\",\"plugin\":\"ninja-forms-cleverreach\\/ninja-forms-cleverreach.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Webhooks\",\"image\":\"assets\\/img\\/add-ons\\/webhooks.png\",\"content\":\"Connect your WordPress forms to virtually any external service, no code required!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks\",\"plugin\":\"ninja-forms-webhooks\\/ninja-forms-webhooks.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"}]},{\"title\":\"Excel Export\",\"image\":\"assets\\/img\\/add-ons\\/excel-export.png\",\"content\":\"Flawlessly export any number of form submissions into an Excel spreadsheet with the press of a button!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export\",\"plugin\":\"ninja-forms-excel-export\\/ninja-forms-excel-export.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export+Docs\",\"version\":\"3.3.1\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"WebMerge\",\"image\":\"assets\\/img\\/add-ons\\/webmerge.png\",\"content\":\"Populate documents in WordPress, digital or paper! Perfect for contracts, applications, government forms, patient registration, and more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=WebMerge\",\"plugin\":\"ninja-forms-webmerge\\/ninja-forms-webmerge.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=WebMerge+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"}]},{\"title\":\"Help Scout\",\"image\":\"assets\\/img\\/add-ons\\/help-scout.png\",\"content\":\"Bring excellent customer support home to your WordPress dashboard with Help Scout integration for Ninja Forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout\",\"plugin\":null,\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Emma\",\"image\":\"assets\\/img\\/add-ons\\/emma.png\",\"content\":\"Add users to Emma newsletters using Ninja Forms\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma\",\"plugin\":\"ninja-forms-emma\\/ninja-forms-emma.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"}]},{\"title\":\"ClickSend SMS\",\"image\":\"assets\\/img\\/add-ons\\/clicksend-sms.png\",\"content\":\"Send a SMS when someone submits your form via ClickSend.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS\",\"plugin\":\"ninja-forms-clicksend\\/ninja-forms-clicksend.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Twilio SMS\",\"image\":\"assets\\/img\\/add-ons\\/twilio-sms.png\",\"content\":\"Send a SMS when someone submits your form via Twilio.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS\",\"plugin\":\"ninja-forms-twilio\\/ninja-forms-twilio.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Recurly\",\"image\":\"assets\\/img\\/add-ons\\/recurly.png\",\"content\":\"Subscribe users to Recurly plans using Ninja Forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly\",\"plugin\":\"ninja-forms-recurly\\/ninja-forms-recurly.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Actions\",\"slug\":\"actions\"}]},{\"title\":\"User Management\",\"image\":\"assets\\/img\\/add-ons\\/user-management.png\",\"content\":\"User registration and management made easy using your Wordpress forms. Simple. Beautiful. Efficient.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management\",\"plugin\":\"ninja-forms-user-management\\/ninja-forms-user-management.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management+Docs\",\"version\":\"3.0.11\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Save Progress\",\"image\":\"assets\\/img\\/add-ons\\/save-progress.png\",\"content\":\"Stop losing conversions on longer WordPress forms! Give your users a way to save their progress for any incomplete form.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress\",\"plugin\":\"ninja-forms-save-progress\\/ninja-forms-save-progress.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress+Docs\",\"version\":\"3.0.16\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"}]},{\"title\":\"EmailOctopus\",\"image\":\"assets\\/img\\/add-ons\\/emailoctopus.png\",\"content\":\"Automation, integration, analytics... EmailOctopus is the email management solution that fills every need, and it\'s now available for WordPress!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus\",\"plugin\":\"ninja-forms-emailoctopus\\/ninja-forms-emailoctopus.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"}]},{\"title\":\"PipelineDeals CRM\",\"image\":\"assets\\/img\\/add-ons\\/pipelinedeals-crm.png\",\"content\":\"Automated, effortless integration with PipelineDeals CRM\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/zoho-integration.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Highrise CRM\",\"image\":\"assets\\/img\\/add-ons\\/highrise-crm.png\",\"content\":\"Combine the functional simplicity of Highrise CRM + the power to build lasting customer relationships with your WordPress website.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM\",\"plugin\":\"ninja-forms-highrise-crm\\/ninja-forms-highrise-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"ConvertKit\",\"image\":\"assets\\/img\\/add-ons\\/convertkit.png\",\"content\":\"Integrate WordPress with ConvertKit seamlessly through your WordPress forms\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit\",\"plugin\":\"ninja-forms-convertkit\\/ninja-forms-convertkit.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit+Docs\",\"version\":\"3.0.2\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"IntelligenceWP\",\"image\":\"assets\\/img\\/add-ons\\/intelligencewp.png\",\"content\":\"Complete Google Analytics Integration for Your WordPress Forms\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/intelligencewp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=IntelligenceWP\",\"plugin\":\"ninja-forms-intelligencewp\\/ninja-forms-intelligencewp.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/intelligencewp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=IntelligenceWP+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"OnePageCRM\",\"image\":\"assets\\/img\\/add-ons\\/onepage-crm.png\",\"content\":\"Integrate WordPress with OnePage CRM seamlessly through your WordPress forms\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM\",\"plugin\":\"ninja-forms-onepage-crm\\/ninja-forms-onepage-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]},{\"title\":\"Active Campaign\",\"image\":\"assets\\/img\\/add-ons\\/active-campaign.png\",\"content\":\"Discover marketing automation that\'s intelligent, powerful, and easy to use!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Active+Campaign\",\"plugin\":\"ninja-forms-active-campaign\\/ninja-forms-active-campaign.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Active+Campaign+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"}]}]', 'no'),
(207, '_site_transient_timeout_browser_88948936c8355fa92108d4448c2520d0', '1543960655', 'no'),
(208, '_site_transient_browser_88948936c8355fa92108d4448c2520d0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(211, 'can_compress_scripts', '0', 'no'),
(281, '_transient_is_multi_author', '0', 'yes'),
(200, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'wpem_started', '1', 'yes'),
(146, 'wpem_done', '1', 'yes'),
(148, 'wpem_site_type', 'blog', 'yes'),
(149, 'wpem_site_industry', 'health', 'yes'),
(307, '_site_transient_timeout_theme_roots', '1543910983', 'no'),
(308, '_site_transient_theme_roots', 'a:4:{s:7:\"fictive\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(198, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543909184;s:7:\"checked\";a:4:{s:7:\"fictive\";s:5:\"1.1.2\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(199, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543909183;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:8:\"3.3.19.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/ninja-forms.3.3.19.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=1649747\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=1649747\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:35:\"contact-widgets/contact-widgets.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/contact-widgets\";s:4:\"slug\";s:15:\"contact-widgets\";s:6:\"plugin\";s:35:\"contact-widgets/contact-widgets.php\";s:11:\"new_version\";s:5:\"1.5.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/contact-widgets/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/contact-widgets.1.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/contact-widgets/assets/icon-256x256.png?rev=1885181\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-widgets/assets/icon-128x128.png?rev=1885181\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-widgets/assets/banner-1544x500.png?rev=1885181\";s:2:\"1x\";s:70:\"https://ps.w.org/contact-widgets/assets/banner-772x250.png?rev=1885181\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/limit-login-attempts-reloaded\";s:4:\"slug\";s:29:\"limit-login-attempts-reloaded\";s:6:\"plugin\";s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";s:11:\"new_version\";s:5:\"2.7.1\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/limit-login-attempts-reloaded/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/limit-login-attempts-reloaded.2.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:74:\"https://ps.w.org/limit-login-attempts-reloaded/assets/icon.svg?rev=1472250\";s:3:\"svg\";s:74:\"https://ps.w.org/limit-login-attempts-reloaded/assets/icon.svg?rev=1472250\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(249, '_site_transient_browser_7c536d82012ce7c421315e5571540a1e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.110\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(201, 'widget_wpcw_social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'wpem_contact_info', 'a:4:{s:5:\"email\";s:23:\"sweettek.eric@gmail.com\";s:5:\"phone\";s:9:\"986576086\";s:3:\"fax\";s:9:\"986576086\";s:7:\"address\";s:35:\"台南市新營區開元路247-1號\";}', 'yes'),
(153, 'wpem_social_profiles', 'a:0:{}', 'yes'),
(164, 'ninja_forms_oauth_client_secret', '8npu7vDRdM6Use4GLvu7xJX5UC6shYOpleTtJxkX', 'yes'),
(165, 'ninja_forms_data_is_clean', 'true', 'yes'),
(166, 'ninja_forms_version', '3.3.17', 'yes'),
(167, 'ninja_forms_db_version', '1.1', 'no'),
(168, 'ninja_forms_settings', 'a:10:{s:11:\"date_format\";s:5:\"d/m/Y\";s:15:\"currency_symbol\";s:1:\"$\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:2:\"en\";s:15:\"recaptcha_theme\";s:5:\"light\";s:19:\"delete_on_uninstall\";s:1:\"0\";s:21:\"disable_admin_notices\";s:1:\"1\";s:26:\"disable_opinionated_styles\";s:1:\"0\";s:8:\"currency\";s:3:\"USD\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(169, 'wp_nf_update_fields_batch_5644a769eaa3bdca87feabb729ee4878', 'a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-11-27 21:40:54\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-11-27 21:40:54\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-11-27 21:40:54\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-11-27 21:40:54\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}', 'no'),
(173, 'wpem_plugins', 'a:2:{i:0;s:35:\"contact-widgets/contact-widgets.php\";i:1;s:27:\"ninja-forms/ninja-forms.php\";}', 'yes'),
(174, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(170, 'widget_wpcw_contact', 'a:2:{i:2;a:7:{s:5:\"title\";s:10:\"Contact Me\";s:5:\"email\";a:2:{s:5:\"value\";s:23:\"sweettek.eric@gmail.com\";s:5:\"order\";i:1;}s:5:\"phone\";a:2:{s:5:\"value\";s:9:\"986576086\";s:5:\"order\";i:2;}s:3:\"fax\";a:2:{s:5:\"value\";s:9:\"986576086\";s:5:\"order\";i:3;}s:7:\"address\";a:2:{s:5:\"value\";s:35:\"台南市新營區開元路247-1號\";s:5:\"order\";i:4;}s:3:\"map\";a:2:{s:5:\"value\";s:3:\"yes\";s:5:\"order\";i:5;}s:6:\"labels\";a:2:{s:5:\"value\";s:2:\"no\";s:5:\"order\";i:6;}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(204, 'ninja_forms_memberships_feed', '<div class=\"widget widget-memberships\">\r\n<div class=\"pricing-container\">\r\n<div class=\"pricing-block widget\">\r\n<div class=\"pricing-header\">\r\n<div class=\"pricing-title\">Agency</div>\r\n<div class=\"pricing-price\">$499</div>\r\n<div class=\"pricing-savings\">Save $2000+</div>\r\n<div class=\"pricing-cta\"><a class=\"nf-button primary\" href=\"https://ninjaforms.com/checkout/?edd_action=add_to_cart&download_id=203757&utm_medium=plugin&utm_source=plugin-dashboard&utm_campaign=Ninja+Forms+Memberships&utm_content=Agency+Membership\" target=\"_blank\" rel=\"noopener\">Buy Now</a></div>\r\n</div>\r\n<div class=\"pricing-body\">\r\n<div><i class=\"fa fa-users\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Unlimited Sites</span>\r\n<span>Updates &amp; Support</span></div>\r\n<div><i class=\"fa fa-rocket\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Fastest Support</span>\r\n<span>1 Year of Updates &amp; Support</span></div>\r\n<div><i class=\"fa fa-trophy\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">All add-ons included!</span>\r\n<ul>\r\n 	<li>Builder PRO Pack</li>\r\n 	<li>PDF Form Submissions</li>\r\n 	<li>Zapier</li>\r\n 	<li>Newsletters (MailChimp, etc.)</li>\r\n 	<li>CRMs (Saleforce, etc.)</li>\r\n 	<li>Payments (PayPal, etc.)</li>\r\n 	<li>And so much more...</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"pricing-block widget highlight\">\r\n\r\n<!--\r\n<div class=\"callout\">\r\n                    Most Popular</div>\r\n-->\r\n<div class=\"pricing-header\">\r\n<div class=\"pricing-title\">Professional</div>\r\n<div class=\"pricing-price\">$199</div>\r\n<div class=\"pricing-savings\">Save $197</div>\r\n<div class=\"pricing-cta\"><a class=\"nf-button primary\" href=\"https://ninjaforms.com/checkout/?edd_action=add_to_cart&download_id=471355&utm_medium=plugin&utm_source=plugin-dashboard&utm_campaign=Ninja+Forms+Memberships&utm_content=Professional+Membership\" target=\"_blank\" rel=\"noopener\">Buy Now</a></div>\r\n</div>\r\n<div class=\"pricing-body\">\r\n<div><i class=\"fa fa-users\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">20 Sites</span>\r\n<span>Updates &amp; Support</span></div>\r\n<div><i class=\"fa fa-plane\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Faster Support</span></div>\r\n<div><i class=\"fa fa-wrench\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Builder Pro Pack</span>\r\n<span>Layout &amp; Styles, Multi-Part Forms, Conditional Logic, File Uploads</span></div>\r\n<div><i class=\"fa fa-percent\" aria-hidden=\"true\"></i>\r\n<span>Plus <strong>40% off</strong>\r\nAdditional Add-Ons</span></div>\r\n</div>\r\n</div>\r\n<div class=\"pricing-block widget\">\r\n<div class=\"pricing-header\">\r\n<div class=\"pricing-title\">Personal</div>\r\n<div class=\"pricing-price\">$99</div>\r\n<div class=\"pricing-savings\">Save $57</div>\r\n<div class=\"pricing-cta\"><a class=\"nf-button primary\" href=\"https://ninjaforms.com/checkout/?edd_action=add_to_cart&download_id=471356&utm_medium=plugin&utm_source=plugin-dashboard&utm_campaign=Ninja+Forms+Memberships&utm_content=Personal+Membership\" target=\"_blank\" rel=\"noopener\">Buy Now</a></div>\r\n</div>\r\n<div class=\"pricing-body\">\r\n<div><i class=\"fa fa-user\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">1 Site</span>\r\n<span>Updates &amp; Support</span></div>\r\n<div><i class=\"fa fa-car\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Fast Support</span></div>\r\n<div><i class=\"fa fa-wrench\" aria-hidden=\"true\"></i>\r\n<span class=\"pricing-body-title\">Builder Pro Pack</span>\r\n<span>Layout &amp; Styles, Multi-Part Forms, Conditional Logic, File Uploads</span></div>\r\n<div><i class=\"fa fa-percent\" aria-hidden=\"true\"></i>\r\n<span>Plus <strong>20% off</strong>\r\nAdditional Add-Ons</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"widget widget-plan-notice\">\r\n<p class=\"widget-title\">That sounds amazing! What else comes with Ninja Forms?</p>\r\n<a class=\"nf-button primary feature-list-link\" href=\"https://ninjaforms.com/features/?utm_medium=plugin&utm_source=plugin-dashboard&utm_campaign=Ninja+Forms+Memberships&utm_content=Features\" target=\"_blank\" rel=\"noopener\">We\'re glad you asked! Checkout our full list of features! <i class=\"fa fa-chevron-circle-right\" aria-hidden=\"true\"></i></a>\r\n<div><em>All plans include a 14 day money back guarantee.</em></div>\r\n<div>Requires a current active license and subject to our <a href=\"https://ninjaforms.com/terms-conditions/?utm_medium=plugin&utm_source=plugin-dashboard&utm_campaign=Ninja+Forms+Memberships&utm_content=Terms+Conditions\" target=\"_blank\" rel=\"noopener\">Terms &amp; Conditions</a>.</div>\r\n</div>', 'no'),
(175, 'nf_admin_notice', 'a:3:{s:16:\"one_week_support\";a:2:{s:5:\"start\";s:9:\"3/23/2016\";s:3:\"int\";i:7;}s:15:\"two_week_review\";a:2:{s:5:\"start\";s:9:\"3/30/2016\";s:3:\"int\";i:14;}s:10:\"three_info\";a:2:{s:5:\"start\";s:9:\"3/17/2016\";s:3:\"int\";i:0;}}', 'yes'),
(176, 'nf_convert_forms_complete', '1', 'yes'),
(177, 'nf_convert_notifications_complete', '1', 'yes'),
(178, 'nf_convert_notifications_forms', 'a:1:{i:0;s:1:\"1\";}', 'yes'),
(179, 'nf_convert_subs_step', 'complete', 'yes'),
(180, 'nf_email_fav_updated', '1', 'yes'),
(181, 'nf_update_email_settings_complete', '1', 'yes'),
(182, 'nf_upgrade_email_settings_last_step', '1', 'yes'),
(183, 'nf_upgrade_notifications_last_step', '1', 'yes'),
(184, 'nf_upgrade_submissions_last_step', '1', 'yes'),
(185, 'nf_version_upgraded_from', '2.9.37', 'yes'),
(186, 'ninja_forms_freemius', '0', 'yes'),
(187, 'ninja_forms_load_deprecated', '0', 'yes'),
(188, 'ninja_forms_optin_reported', '1', 'yes'),
(223, 'category_children', 'a:0:{}', 'yes'),
(228, '_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:0;}', 'yes'),
(229, '_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:0;}', 'yes'),
(248, '_site_transient_timeout_browser_7c536d82012ce7c421315e5571540a1e', '1544353356', 'no');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 2, '_edit_last', '1'),
(5, 2, '_edit_lock', '1543357000:1'),
(6, 8, '_edit_lock', '1465230990:3'),
(7, 8, '_edit_last', '3'),
(8, 12, '_menu_item_type', 'post_type'),
(9, 12, '_menu_item_menu_item_parent', '0'),
(10, 12, '_menu_item_object_id', '8'),
(11, 12, '_menu_item_object', 'page'),
(12, 12, '_menu_item_target', ''),
(13, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 12, '_menu_item_xfn', ''),
(15, 12, '_menu_item_url', ''),
(17, 13, '_menu_item_type', 'post_type'),
(18, 13, '_menu_item_menu_item_parent', '0'),
(19, 13, '_menu_item_object_id', '2'),
(20, 13, '_menu_item_object', 'page'),
(21, 13, '_menu_item_target', ''),
(22, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 13, '_menu_item_xfn', ''),
(24, 13, '_menu_item_url', ''),
(40, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 15, '_menu_item_target', ''),
(38, 15, '_menu_item_object', 'custom'),
(37, 15, '_menu_item_object_id', '15'),
(35, 15, '_menu_item_type', 'custom'),
(36, 15, '_menu_item_menu_item_parent', '0'),
(41, 15, '_menu_item_xfn', ''),
(42, 15, '_menu_item_url', 'http://www.ilovemyheart.org/one'),
(44, 1, '_edit_lock', '1543755213:1'),
(45, 1, '_edit_last', '1'),
(97, 2, 'wpem_page', 'about'),
(98, 8, 'wpem_page', 'contact'),
(117, 1, 'wpnux_page', 'blog_post'),
(125, 1, '_wp_old_date', '2015-12-29'),
(126, 12, '_wp_old_date', '2015-12-29'),
(127, 13, '_wp_old_date', '2015-12-29'),
(128, 15, '_wp_old_date', '2016-01-02'),
(129, 65, '_wp_attached_file', '2018/11/qtq50-bj4B8S.jpeg'),
(130, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1254;s:6:\"height\";i:836;s:4:\"file\";s:25:\"2018/11/qtq50-bj4B8S.jpeg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"qtq50-bj4B8S-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"qtq50-bj4B8S-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"qtq50-bj4B8S-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"qtq50-bj4B8S-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"qtq50-bj4B8S-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 80, '_wp_attached_file', '2018/11/WeChat-圖片_20181202193725.jpg'),
(157, 78, '_wp_trash_meta_time', '1543750404'),
(133, 66, '_wp_trash_meta_status', 'publish'),
(134, 66, '_wp_trash_meta_time', '1543355840'),
(138, 73, '_wp_attached_file', '2018/12/20181202190522-e1543749232739.jpg'),
(139, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:315;s:4:\"file\";s:41:\"2018/12/20181202190522-e1543749232739.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"20181202190522-e1543749174611-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"20181202190522-e1543749174611-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"20181202190522-e1543749174611-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"20181202190522-e1543749174611-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"fictive-index-thumb\";a:4:{s:4:\"file\";s:41:\"20181202190522-e1543749174611-749x999.jpg\";s:5:\"width\";i:749;s:6:\"height\";i:999;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"6\";s:8:\"keywords\";a:0:{}}}'),
(140, 73, '_edit_lock', '1543749147:1'),
(141, 73, '_wp_attachment_backup_sizes', 'a:7:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1440;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"20181202190522.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:26:\"20181202190522-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:26:\"20181202190522-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:26:\"20181202190522-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:27:\"20181202190522-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"fictive-index-thumb-orig\";a:4:{s:4:\"file\";s:26:\"20181202190522-816x612.jpg\";s:5:\"width\";i:816;s:6:\"height\";i:612;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"full-1543749232739\";a:3:{s:5:\"width\";i:1080;s:6:\"height\";i:1440;s:4:\"file\";s:33:\"20181202190522-e1543749174611.jpg\";}}'),
(142, 73, '_edit_last', '1'),
(143, 74, '_wp_attached_file', '2018/12/陳校長.png'),
(144, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:229;s:4:\"file\";s:21:\"2018/12/陳校長.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"陳校長-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 78, '_wp_trash_meta_status', 'publish'),
(155, 78, '_edit_lock', '1543750396:1'),
(147, 75, '_wp_trash_meta_status', 'publish'),
(148, 75, '_wp_trash_meta_time', '1543749568'),
(149, 76, '_wp_attached_file', '2018/12/陳校長2.png'),
(150, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:257;s:4:\"file\";s:22:\"2018/12/陳校長2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"陳校長2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 76, '_wp_attachment_custom_header_last_used_fictive', '1543749837'),
(152, 76, '_wp_attachment_is_custom_header', 'fictive'),
(153, 77, '_wp_trash_meta_status', 'publish'),
(154, 77, '_wp_trash_meta_time', '1543749837'),
(160, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1079;s:6:\"height\";i:1286;s:4:\"file\";s:40:\"2018/11/WeChat-圖片_20181202193725.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202193725-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202193725-252x300.jpg\";s:5:\"width\";i:252;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202193725-768x915.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:915;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"WeChat-圖片_20181202193725-859x1024.jpg\";s:5:\"width\";i:859;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"fictive-index-thumb\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202193725-816x973.jpg\";s:5:\"width\";i:816;s:6:\"height\";i:973;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1543779449\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(163, 83, '_wp_attached_file', '2018/11/WeChat-圖片_20181202202428.jpg'),
(164, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1156;s:4:\"file\";s:40:\"2018/11/WeChat-圖片_20181202202428.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202202428-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202202428-280x300.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202202428-768x822.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:822;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"WeChat-圖片_20181202202428-957x1024.jpg\";s:5:\"width\";i:957;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"fictive-index-thumb\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202202428-816x873.jpg\";s:5:\"width\";i:816;s:6:\"height\";i:873;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 84, '_wp_attached_file', '2018/11/WeChat-圖片_20181202202649.jpg'),
(166, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:951;s:6:\"height\";i:948;s:4:\"file\";s:40:\"2018/11/WeChat-圖片_20181202202649.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202202649-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202202649-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202202649-768x766.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:766;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"fictive-index-thumb\";a:4:{s:4:\"file\";s:40:\"WeChat-圖片_20181202202649-816x813.jpg\";s:5:\"width\";i:816;s:6:\"height\";i:813;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 87, '_wp_trash_meta_status', 'publish'),
(171, 87, '_wp_trash_meta_time', '1543755445'),
(172, 88, '_edit_lock', '1543755529:1'),
(173, 88, '_wp_trash_meta_status', 'publish'),
(174, 88, '_wp_trash_meta_time', '1543755541'),
(175, 89, '_wp_trash_meta_status', 'publish'),
(176, 89, '_wp_trash_meta_time', '1543755571'),
(177, 90, '_edit_lock', '1543755589:1'),
(178, 90, '_wp_trash_meta_status', 'publish'),
(179, 90, '_wp_trash_meta_time', '1543755593');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-27 21:40:57', '2018-11-27 21:40:57', '<strong>《大山的情怀》选段 -  </strong>作者: 陈楚彬 - 2015-12-6\r\n\r\n.............................\r\n\r\n清晨，群山万壑之间，云烟撩绕。忽浓忽密，忽淡忽轻。如缎似丝般的云雾，飘荡在峽谷，游移在山与天之间，忽明忽暗，忽隐忽现。...\r\n\r\n晨露，象晶莹璧透的数不清的大小珍珠，密密麻麻，凝结在山间茫茫竹叶上，嵌在万木草丛枝叶中。镶在绿油的梯田秧苗间，游移在各种阔叶植物之上。\r\n\r\n在里东山“知青”农舍通往太子岭蜿蜒小径的石阶，小清独自坐在一块光滑的石阶上，他府视梯田，面朝峻岭。他轻轻地，慢慢地，深情无限的拉起他心爱的曲子-《寒春风曲》。   ...........\r\n\r\n...............................\r\n\r\n<strong>作家、书法家陈楚彬先生十三岁在闽北插队多年，大学毕业后，曾任闽北建阳二中副校长，英文教师，对闽北有深厚的感情。著有《大山的情怀》、《悲壮人生》、《说说美国》、《媽媽，在天堂等等我》、《雨花情深》等作品。</strong>\r\n\r\n<strong>陈楚彬先生書法作品</strong>\r\n\r\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202428.jpg\"><img class=\"alignnone wp-image-83\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202428-280x300.jpg\" alt=\"\" width=\"337\" height=\"361\" /></a>\r\n\r\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202649.jpg\"><img class=\"alignnone size-medium wp-image-84\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202649-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" /></a>\r\n\r\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725.jpg\"><img class=\"alignnone wp-image-80\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725-252x300.jpg\" alt=\"\" width=\"281\" height=\"334\" /></a>\r\n\r\n&nbsp;', 'Hello 陈楚彬 先生!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-12-02 12:31:11', '2018-12-02 12:31:11', '', 0, 'http://www.wpnux.godaddy.com/personal-blog/?p=1', 0, 'post', '', 1),
(79, 1, '2018-12-02 12:17:41', '2018-12-02 12:17:41', '<strong>《大山的情怀》选段</strong>\r\n\r\n作者: 陈楚彬 先生\r\n\r\n2015-12-6 19:34\r\n\r\n.............................\r\n\r\n清晨，群山万壑之间，云烟撩绕。忽浓忽密，忽淡忽轻。如缎似丝般的云雾，飘荡在峽谷，游移在山与天之间，忽明忽暗，忽隐忽现。...\r\n\r\n晨露，象晶莹璧透的数不清的大小珍珠，密密麻麻，凝结在山间茫茫竹叶上，嵌在万木草丛枝叶中。镶在绿油的梯田秧苗间，游移在各种阔叶植物之上。\r\n\r\n在里东山“知青”农舍通往太子岭蜿蜒小径的石阶，小清独自坐在一块光滑的石阶上，他府视梯田，面朝峻岭。他轻轻地，慢慢地，深情无限的拉起他心爱的曲子-《寒春风曲》。   ...........\r\n\r\n...............................\r\n\r\n<strong>陈楚彬先生十三岁在闽北插队多年，大学毕业后，曾任闽北建阳二中副校长，英文教师，对闽北有深厚的感情。著有《大山的情怀》、《悲壮人生》、《说说美国》等作品。</strong>', 'Hello VERITAS!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-12-02 12:17:41', '2018-12-02 12:17:41', '', 1, 'http://167.179.90.100/blog/1-revision-v1/', 0, 'revision', '', 0),
(2, 1, '2018-11-27 21:40:57', '2018-11-27 21:40:57', 'Hi! I’m Veritas Wang. Thanks for stopping by.\r\n\r\n<strong>Here is my BIO.</strong>\r\n\r\n&nbsp;', 'About Me', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-11-27 22:16:39', '2018-11-27 22:16:39', '', 0, 'http://www.wpnux.godaddy.com/personal-blog/?page_id=2', 0, 'page', '', 0),
(12, 1, '2018-11-27 21:40:57', '2018-11-27 21:40:57', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2018-11-27 21:40:57', '2018-11-27 21:40:57', '', 0, 'http://www.wpnux.godaddy.com/personal/?p=12', 3, 'nav_menu_item', '', 0),
(13, 1, '2018-11-27 21:40:57', '2018-11-27 21:40:57', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-11-27 21:40:57', '2018-11-27 21:40:57', '', 0, 'http://www.wpnux.godaddy.com/personal/?p=13', 2, 'nav_menu_item', '', 0),
(15, 1, '2018-11-27 21:40:57', '2018-11-27 21:40:57', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-11-27 21:40:57', '2018-11-27 21:40:57', '', 0, 'http://www.ilovemyheart.org/one/?p=15', 1, 'nav_menu_item', '', 0),
(8, 1, '2018-11-27 21:40:57', '2018-11-27 21:40:57', 'Let me know what questions and/or feedback you have for me. I’ll get back to you as quickly as I can.\r\n\r\nThanks! I look forward to hearing from you.\r\n\r\n[ninja_forms id=1]', 'Contact Me', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-11-27 21:40:57', '2018-11-27 21:40:57', '', 0, 'http://www.wpnux.godaddy.com/personal/?page_id=8', 0, 'page', '', 0),
(62, 1, '2018-11-27 21:40:57', '2018-11-27 21:40:57', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-11-27 21:40:57', '2018-11-27 21:40:57', '', 1, 'http://www.ilovemyheart.org/one/1-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-11-27 21:40:57', '2018-11-27 21:40:57', 'Hi! I’m <strong>YOUR NAME</strong>. Thanks for stopping by.\r\n\r\n<strong>INSERT BIO HERE</strong>\r\n', 'About Me', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-11-27 21:40:57', '2018-11-27 21:40:57', '', 2, 'http://www.ilovemyheart.org/one/2-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-11-27 21:40:57', '2018-11-27 21:40:57', 'Let me know what questions and/or feedback you have for me. I’ll get back to you as quickly as I can.\r\n\r\nThanks! I look forward to hearing from you.\r\n\r\n[ninja_forms id=1]', 'Contact Me', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-11-27 21:40:57', '2018-11-27 21:40:57', '', 8, 'http://www.ilovemyheart.org/one/8-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-11-27 21:40:58', '2018-11-27 21:40:58', '', 'qtq50-bj4B8S', '', 'inherit', 'open', 'closed', '', 'qtq50-bj4b8s', '', '', '2018-11-27 21:40:58', '2018-11-27 21:40:58', '', 0, 'http://www.ilovemyheart.org/one/wp-content/uploads/2018/11/qtq50-bj4B8S.jpeg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-11-27 21:57:20', '2018-11-27 21:57:20', '{\n    \"blogname\": {\n        \"value\": \"The $ESBC_TITLE$\'s Chain Blog\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-27 21:57:20\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Just anaother blockchain blog\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-27 21:57:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c6b56a3a-4de7-4749-9e64-d2e4779f3d55', '', '', '2018-11-27 21:57:20', '2018-11-27 21:57:20', '', 0, 'http://www.ilovemyheart.org/one/c6b56a3a-4de7-4749-9e64-d2e4779f3d55/', 0, 'customize_changeset', '', 0),
(67, 1, '2018-11-27 21:57:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-27 21:57:35', '0000-00-00 00:00:00', '', 0, 'http://www.ilovemyheart.org/one/?p=67', 0, 'post', '', 0),
(68, 1, '2018-12-02 12:31:00', '2018-12-02 12:31:00', '<strong>《大山的情怀》选段 -  </strong>作者: 陈楚彬\n\n.............................\n\n清晨，群山万壑之间，云烟撩绕。忽浓忽密，忽淡忽轻。如缎似丝般的云雾，飘荡在峽谷，游移在山与天之间，忽明忽暗，忽隐忽现。...\n\n晨露，象晶莹璧透的数不清的大小珍珠，密密麻麻，凝结在山间茫茫竹叶上，嵌在万木草丛枝叶中。镶在绿油的梯田秧苗间，游移在各种阔叶植物之上。\n\n在里东山“知青”农舍通往太子岭蜿蜒小径的石阶，小清独自坐在一块光滑的石阶上，他府视梯田，面朝峻岭。他轻轻地，慢慢地，深情无限的拉起他心爱的曲子-《寒春风曲》。   ...........\n\n...............................\n\n<strong>作家、书法家陈楚彬先生十三岁在闽北插队多年，大学毕业后，曾任闽北建阳二中副校长，英文教师，对闽北有深厚的感情。著有《大山的情怀》、《悲壮人生》、《说说美国》、《媽媽，在天堂等等我》、《雨花情深》等作品。</strong>\n\n<strong>陈楚彬先生書法作品</strong>\n\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202428.jpg\"><img class=\"alignnone wp-image-83\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202428-280x300.jpg\" alt=\"\" width=\"337\" height=\"361\" /></a>\n\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202649.jpg\"><img class=\"alignnone size-medium wp-image-84\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202649-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" /></a>\n\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725.jpg\"><img class=\"alignnone wp-image-80\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725-252x300.jpg\" alt=\"\" width=\"281\" height=\"334\" /></a>\n\n&nbsp;', 'Hello 陈楚彬 先生!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-12-02 12:31:00', '2018-12-02 12:31:00', '', 1, 'http://www.ilovemyheart.org/one/1-autosave-v1/', 0, 'revision', '', 0),
(69, 1, '2018-11-27 22:13:28', '2018-11-27 22:13:28', 'Welcome to the world of  VERITAS.  This is my first blockchain post , then start chain blogging!\r\n\r\n「與柏拉圖為友，與亞里斯多德為友，更要與真理為友。」\r\n<h3><span id=\"校訓\" class=\"mw-headline\">哈佛校訓</span></h3>\r\n哈佛早期的校訓是「真理」（<span lang=\"en\">Veritas</span>，1643年）、「榮耀歸於基督」（<span lang=\"en\">In Christ Gloriam</span>，1650年），以及「為基督·為教會」（<span lang=\"en\">Christo et Ecclesiae</span>，1692年）；印章展示三本翻開的書本，兩本面向上，一本面向下，象徵著理性（<span lang=\"en\">reason</span>）與啟示（<span lang=\"en\">revelation</span>）之間的互動。一份最早期的文獻——1642年的學院法例寫道：「讓每一位學生都認真考慮以認識神與耶穌基督為永生之源（約17:3），作為他人生與學習的主要目標，因而以基督作為一切正統知識和學習的惟一基礎。所有人既看見主賜下智慧，便當在隱密處認真藉著禱告尋求他的智慧。」<sup id=\"cite_ref-58\" class=\"reference\"></sup>這些校訓都是在美國建國前的宗教單一時期定下的。\r\n\r\n後來，為符合聖經尊重全人類自由意志但需提供平等的知識受教權發展(學術自由)原則，美國取消了基督宗教的唯一性，以宗教中立取而代之。追求真理和發展科學文化教育的事業逐漸興旺，哈佛大學校訓最終確定為「真理」\r\n\r\nthanks to the ChainMaker, make the world equal. No matter who you are.', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-11-27 22:13:28', '2018-11-27 22:13:28', '', 1, 'http://www.ilovemyheart.org/one/1-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-11-27 22:14:08', '2018-11-27 22:14:08', 'Welcome to the world of  VERITAS.  This is my first blockchain post , then start chain blogging!\r\n\r\n「與柏拉圖為友，與亞里斯多德為友，更要與真理為友。」\r\n<h3><span id=\"校訓\" class=\"mw-headline\">哈佛校訓</span></h3>\r\n哈佛早期的校訓是「真理」（<span lang=\"en\">Veritas</span>，1643年）、「榮耀歸於基督」（<span lang=\"en\">In Christ Gloriam</span>，1650年），以及「為基督·為教會」（<span lang=\"en\">Christo et Ecclesiae</span>，1692年）；印章展示三本翻開的書本，兩本面向上，一本面向下，象徵著理性（<span lang=\"en\">reason</span>）與啟示（<span lang=\"en\">revelation</span>）之間的互動。一份最早期的文獻——1642年的學院法例寫道：「讓每一位學生都認真考慮以認識神與耶穌基督為永生之源（約17:3），作為他人生與學習的主要目標，因而以基督作為一切正統知識和學習的惟一基礎。所有人既看見主賜下智慧，便當在隱密處認真藉著禱告尋求他的智慧。」<sup id=\"cite_ref-58\" class=\"reference\"></sup>這些校訓都是在美國建國前的宗教單一時期定下的。\r\n\r\n後來，為符合聖經尊重全人類自由意志但需提供平等的知識受教權發展(學術自由)原則，美國取消了基督宗教的唯一性，以宗教中立取而代之。追求真理和發展科學文化教育的事業逐漸興旺，哈佛大學校訓最終確定為「真理」\r\n\r\nthanks to the ChainMaker, make the world equal. No matter who you are.', 'Hello VERITAS!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-11-27 22:14:08', '2018-11-27 22:14:08', '', 1, 'http://www.ilovemyheart.org/one/1-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-11-27 22:15:40', '2018-11-27 22:15:40', 'Hi! I’m Veritas Wang. Thanks for stopping by.\n\n<strong>Here is my BIO.</strong>\n\n&nbsp;', 'About Me', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-11-27 22:15:40', '2018-11-27 22:15:40', '', 2, 'http://www.ilovemyheart.org/one/2-autosave-v1/', 0, 'revision', '', 0),
(72, 1, '2018-11-27 22:16:39', '2018-11-27 22:16:39', 'Hi! I’m Veritas Wang. Thanks for stopping by.\r\n\r\n<strong>Here is my BIO.</strong>\r\n\r\n&nbsp;', 'About Me', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-11-27 22:16:39', '2018-11-27 22:16:39', '', 2, 'http://www.ilovemyheart.org/one/2-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-12-02 11:11:41', '2018-12-02 11:11:41', '', '20181202190522', '', 'inherit', 'open', 'closed', '', '20181202190522', '', '', '2018-12-02 11:14:44', '2018-12-02 11:14:44', '', 0, 'http://167.179.90.100/blog/wp-content/uploads/2018/12/20181202190522.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-12-02 11:19:13', '2018-12-02 11:19:13', '', '陳校長', '', 'inherit', 'open', 'closed', '', '%e9%99%b3%e6%a0%a1%e9%95%b7', '', '', '2018-12-02 11:19:13', '2018-12-02 11:19:13', '', 0, 'http://167.179.90.100/blog/wp-content/uploads/2018/12/陳校長.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2018-12-02 11:19:28', '2018-12-02 11:19:28', '{\n    \"fictive::header_image\": {\n        \"value\": \"http://167.179.90.100/blog/wp-content/uploads/2018/12/\\u9673\\u6821\\u9577.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-02 11:19:28\"\n    },\n    \"fictive::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://167.179.90.100/blog/wp-content/uploads/2018/12/\\u9673\\u6821\\u9577.png\",\n            \"thumbnail_url\": \"http://167.179.90.100/blog/wp-content/uploads/2018/12/\\u9673\\u6821\\u9577.png\",\n            \"timestamp\": 1543749564549,\n            \"attachment_id\": 74,\n            \"width\": 260,\n            \"height\": 229\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-02 11:19:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ea3e3c25-0615-4499-9561-ef74f1b937fe', '', '', '2018-12-02 11:19:28', '2018-12-02 11:19:28', '', 0, 'http://167.179.90.100/blog/ea3e3c25-0615-4499-9561-ef74f1b937fe/', 0, 'customize_changeset', '', 0),
(76, 1, '2018-12-02 11:23:39', '2018-12-02 11:23:39', '', '陳校長2', '', 'inherit', 'open', 'closed', '', '%e9%99%b3%e6%a0%a1%e9%95%b72', '', '', '2018-12-02 11:23:39', '2018-12-02 11:23:39', '', 0, 'http://167.179.90.100/blog/wp-content/uploads/2018/12/陳校長2.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2018-12-02 11:23:57', '2018-12-02 11:23:57', '{\n    \"fictive::header_image\": {\n        \"value\": \"http://167.179.90.100/blog/wp-content/uploads/2018/12/\\u9673\\u6821\\u95772.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-02 11:23:57\"\n    },\n    \"fictive::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://167.179.90.100/blog/wp-content/uploads/2018/12/\\u9673\\u6821\\u95772.png\",\n            \"thumbnail_url\": \"http://167.179.90.100/blog/wp-content/uploads/2018/12/\\u9673\\u6821\\u95772.png\",\n            \"timestamp\": 1543749827588,\n            \"attachment_id\": 76,\n            \"width\": 265,\n            \"height\": 257\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-02 11:23:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '137c01cb-cdbf-48dc-93de-db1db1f76c26', '', '', '2018-12-02 11:23:57', '2018-12-02 11:23:57', '', 0, 'http://167.179.90.100/blog/137c01cb-cdbf-48dc-93de-db1db1f76c26/', 0, 'customize_changeset', '', 0),
(78, 1, '2018-12-02 11:33:24', '2018-12-02 11:33:24', '{\n    \"fictive::header_textcolor\": {\n        \"value\": \"#130821\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-02 11:33:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4d2d72d5-939d-41a5-a366-6c685dff8323', '', '', '2018-12-02 11:33:24', '2018-12-02 11:33:24', '', 0, 'http://167.179.90.100/blog/?p=78', 0, 'customize_changeset', '', 0),
(80, 1, '2018-12-02 12:22:56', '2018-12-02 12:22:56', '', 'WeChat 圖片_20181202193725', '', 'inherit', 'open', 'closed', '', 'wechat-%e5%9c%96%e7%89%87_20181202193725', '', '', '2018-12-02 12:22:56', '2018-12-02 12:22:56', '', 1, 'http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-12-02 12:23:10', '2018-12-02 12:23:10', '<strong>《大山的情怀》选段</strong>\r\n\r\n作者: 陈楚彬 先生\r\n\r\n2015-12-6 19:34\r\n\r\n.............................\r\n\r\n清晨，群山万壑之间，云烟撩绕。忽浓忽密，忽淡忽轻。如缎似丝般的云雾，飘荡在峽谷，游移在山与天之间，忽明忽暗，忽隐忽现。...\r\n\r\n晨露，象晶莹璧透的数不清的大小珍珠，密密麻麻，凝结在山间茫茫竹叶上，嵌在万木草丛枝叶中。镶在绿油的梯田秧苗间，游移在各种阔叶植物之上。\r\n\r\n在里东山“知青”农舍通往太子岭蜿蜒小径的石阶，小清独自坐在一块光滑的石阶上，他府视梯田，面朝峻岭。他轻轻地，慢慢地，深情无限的拉起他心爱的曲子-《寒春风曲》。   ...........\r\n\r\n...............................\r\n\r\n<strong>作家、书法家陈楚彬先生十三岁在闽北插队多年，大学毕业后，曾任闽北建阳二中副校长，英文教师，对闽北有深厚的感情。著有《大山的情怀》、《悲壮人生》、《说说美国》、《媽媽，在天堂等等我》、《雨花情深》等作品。</strong>\r\n\r\n<strong>陈楚彬先生書法作品</strong>\r\n\r\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725.jpg\"><img class=\"alignnone size-medium wp-image-80\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725-252x300.jpg\" alt=\"\" width=\"252\" height=\"300\" /></a>', 'Hello VERITAS!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-12-02 12:23:10', '2018-12-02 12:23:10', '', 1, 'http://167.179.90.100/blog/1-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-12-02 12:23:58', '2018-12-02 12:23:58', '<strong>《大山的情怀》选段</strong>\r\n\r\n作者: 陈楚彬 先生\r\n\r\n2015-12-6 19:34\r\n\r\n.............................\r\n\r\n清晨，群山万壑之间，云烟撩绕。忽浓忽密，忽淡忽轻。如缎似丝般的云雾，飘荡在峽谷，游移在山与天之间，忽明忽暗，忽隐忽现。...\r\n\r\n晨露，象晶莹璧透的数不清的大小珍珠，密密麻麻，凝结在山间茫茫竹叶上，嵌在万木草丛枝叶中。镶在绿油的梯田秧苗间，游移在各种阔叶植物之上。\r\n\r\n在里东山“知青”农舍通往太子岭蜿蜒小径的石阶，小清独自坐在一块光滑的石阶上，他府视梯田，面朝峻岭。他轻轻地，慢慢地，深情无限的拉起他心爱的曲子-《寒春风曲》。   ...........\r\n\r\n...............................\r\n\r\n<strong>作家、书法家陈楚彬先生十三岁在闽北插队多年，大学毕业后，曾任闽北建阳二中副校长，英文教师，对闽北有深厚的感情。著有《大山的情怀》、《悲壮人生》、《说说美国》、《媽媽，在天堂等等我》、《雨花情深》等作品。</strong>\r\n\r\n<strong>陈楚彬先生書法作品</strong>\r\n\r\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725.jpg\"><img class=\"alignnone size-medium wp-image-80\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725-252x300.jpg\" alt=\"\" width=\"252\" height=\"300\" /></a>', 'Hello 陈楚彬 先生!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-12-02 12:23:58', '2018-12-02 12:23:58', '', 1, 'http://167.179.90.100/blog/1-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-12-02 12:24:46', '2018-12-02 12:24:46', '', 'WeChat 圖片_20181202202428', '', 'inherit', 'open', 'closed', '', 'wechat-%e5%9c%96%e7%89%87_20181202202428', '', '', '2018-12-02 12:24:46', '2018-12-02 12:24:46', '', 1, 'http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202428.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-12-02 12:27:07', '2018-12-02 12:27:07', '', 'WeChat 圖片_20181202202649', '', 'inherit', 'open', 'closed', '', 'wechat-%e5%9c%96%e7%89%87_20181202202649', '', '', '2018-12-02 12:27:07', '2018-12-02 12:27:07', '', 1, 'http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202649.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2018-12-02 12:27:31', '2018-12-02 12:27:31', '<strong>《大山的情怀》选段</strong>\r\n\r\n作者: 陈楚彬 先生\r\n\r\n2015-12-6 19:34\r\n\r\n.............................\r\n\r\n清晨，群山万壑之间，云烟撩绕。忽浓忽密，忽淡忽轻。如缎似丝般的云雾，飘荡在峽谷，游移在山与天之间，忽明忽暗，忽隐忽现。...\r\n\r\n晨露，象晶莹璧透的数不清的大小珍珠，密密麻麻，凝结在山间茫茫竹叶上，嵌在万木草丛枝叶中。镶在绿油的梯田秧苗间，游移在各种阔叶植物之上。\r\n\r\n在里东山“知青”农舍通往太子岭蜿蜒小径的石阶，小清独自坐在一块光滑的石阶上，他府视梯田，面朝峻岭。他轻轻地，慢慢地，深情无限的拉起他心爱的曲子-《寒春风曲》。   ...........\r\n\r\n...............................\r\n\r\n<strong>作家、书法家陈楚彬先生十三岁在闽北插队多年，大学毕业后，曾任闽北建阳二中副校长，英文教师，对闽北有深厚的感情。著有《大山的情怀》、《悲壮人生》、《说说美国》、《媽媽，在天堂等等我》、《雨花情深》等作品。</strong>\r\n\r\n<strong>陈楚彬先生書法作品</strong>\r\n\r\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202428.jpg\"><img class=\"alignnone  wp-image-83\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202428-280x300.jpg\" alt=\"\" width=\"337\" height=\"361\" /></a>\r\n\r\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202649.jpg\"><img class=\"alignnone size-medium wp-image-84\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202649-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" /></a>\r\n\r\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725.jpg\"><img class=\"alignnone  wp-image-80\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725-252x300.jpg\" alt=\"\" width=\"281\" height=\"334\" /></a>\r\n\r\n&nbsp;', 'Hello 陈楚彬 先生!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-12-02 12:27:31', '2018-12-02 12:27:31', '', 1, 'http://167.179.90.100/blog/1-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-12-02 12:31:11', '2018-12-02 12:31:11', '<strong>《大山的情怀》选段 -  </strong>作者: 陈楚彬 - 2015-12-6\r\n\r\n.............................\r\n\r\n清晨，群山万壑之间，云烟撩绕。忽浓忽密，忽淡忽轻。如缎似丝般的云雾，飘荡在峽谷，游移在山与天之间，忽明忽暗，忽隐忽现。...\r\n\r\n晨露，象晶莹璧透的数不清的大小珍珠，密密麻麻，凝结在山间茫茫竹叶上，嵌在万木草丛枝叶中。镶在绿油的梯田秧苗间，游移在各种阔叶植物之上。\r\n\r\n在里东山“知青”农舍通往太子岭蜿蜒小径的石阶，小清独自坐在一块光滑的石阶上，他府视梯田，面朝峻岭。他轻轻地，慢慢地，深情无限的拉起他心爱的曲子-《寒春风曲》。   ...........\r\n\r\n...............................\r\n\r\n<strong>作家、书法家陈楚彬先生十三岁在闽北插队多年，大学毕业后，曾任闽北建阳二中副校长，英文教师，对闽北有深厚的感情。著有《大山的情怀》、《悲壮人生》、《说说美国》、《媽媽，在天堂等等我》、《雨花情深》等作品。</strong>\r\n\r\n<strong>陈楚彬先生書法作品</strong>\r\n\r\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202428.jpg\"><img class=\"alignnone wp-image-83\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202428-280x300.jpg\" alt=\"\" width=\"337\" height=\"361\" /></a>\r\n\r\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202649.jpg\"><img class=\"alignnone size-medium wp-image-84\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202202649-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" /></a>\r\n\r\n<a href=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725.jpg\"><img class=\"alignnone wp-image-80\" src=\"http://167.179.90.100/blog/wp-content/uploads/2018/11/WeChat-圖片_20181202193725-252x300.jpg\" alt=\"\" width=\"281\" height=\"334\" /></a>\r\n\r\n&nbsp;', 'Hello 陈楚彬 先生!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-12-02 12:31:11', '2018-12-02 12:31:11', '', 1, 'http://167.179.90.100/blog/1-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-12-02 12:57:25', '2018-12-02 12:57:25', '{\n    \"blogname\": {\n        \"value\": \"\\u5357\\u4e61\\u6668\\u521d \\u5340\\u584a\\u93c8\\u90e8\\u843d\\u683c\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-02 12:57:25\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\\u5357\\u4e61\\u6668\\u521d \\u5340\\u584a\\u93c8\\u90e8\\u843d\\u683c\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-02 12:57:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a8fe091-e599-4b4f-b4c9-c645a658acd4', '', '', '2018-12-02 12:57:25', '2018-12-02 12:57:25', '', 0, 'http://167.179.90.100/blog/4a8fe091-e599-4b4f-b4c9-c645a658acd4/', 0, 'customize_changeset', '', 0),
(88, 1, '2018-12-02 12:59:01', '2018-12-02 12:59:01', '{\n    \"blogname\": {\n        \"value\": \"\\u5357\\u4e61\\u6668\\u521d \\u90e8\\u843d\\u683c\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-02 12:58:49\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\\u9996\\u5021\\u5340\\u584a\\u93c8\\u90e8\\u843d\\u683c\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-02 12:58:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '75bd16df-ae3b-442a-b15c-22f7460afe1e', '', '', '2018-12-02 12:59:01', '2018-12-02 12:59:01', '', 0, 'http://167.179.90.100/blog/?p=88', 0, 'customize_changeset', '', 0),
(89, 1, '2018-12-02 12:59:31', '2018-12-02 12:59:31', '{\n    \"blogdescription\": {\n        \"value\": \"\\u5340\\u584a\\u93c8\\u5275\\u4f5c\\u767c\\u8868\\u5e73\\u53f0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-02 12:59:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5b03fcb1-d757-4f5b-ae05-bd516a82ac27', '', '', '2018-12-02 12:59:31', '2018-12-02 12:59:31', '', 0, 'http://167.179.90.100/blog/5b03fcb1-d757-4f5b-ae05-bd516a82ac27/', 0, 'customize_changeset', '', 0),
(90, 1, '2018-12-02 12:59:53', '2018-12-02 12:59:53', '{\n    \"blogdescription\": {\n        \"value\": \"\\u5168\\u7403\\u9996\\u5275\\u5340\\u584a\\u93c8\\u5275\\u4f5c\\u767c\\u8868\\u5e73\\u53f0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-02 12:59:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '260daadd-daaa-444b-ba15-90e4025808a1', '', '', '2018-12-02 12:59:53', '2018-12-02 12:59:53', '', 0, 'http://167.179.90.100/blog/?p=90', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(12, 2, 0),
(15, 2, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'aim', ''),
(10, 1, 'yim', ''),
(11, 1, 'jabber', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";s:1:\"1\";}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'session_tokens', 'a:1:{s:64:\"776149ba6fd97fd89f24dab6d5d401506b99aff7ecaaa0d6867a769b619a4ce1\";a:4:{s:10:\"expiration\";i:1543921354;s:2:\"ip\";s:13:\"81.90.188.109\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1543748554;}}'),
(15, 1, 'dismissed_wp_pointers', 'wpem_theme_preview_1,wpem_theme_preview_2,wpem_done_step_0,wpem_done_step_2,wp496_privacy'),
(16, 1, 'sk_ignore_notice', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '67'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"81.90.188.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1543749153'),
(21, 1, '_new_email', 'a:2:{s:4:\"hash\";s:32:\"060e43d834c9ba86ac252743409c9a0d\";s:8:\"newemail\";s:22:\"sweetek.eric@gmail.com\";}'),
(22, 1, 'syntax_highlighting', 'true'),
(23, 1, 'show_admin_bar_front', 'true'),
(24, 1, 'locale', '');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ESBCadmin', '$P$BGzOBYk9VcrgK.lSHRLoCsWN22j2sm1', 'admin', 'pengyauwang@hotmail.com', '', '2018-11-27 10:16:35', '', 0, 'admin');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- 資料表索引 `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- 資料表索引 `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- 資料表索引 `wp_nf3_upgrades`
--
ALTER TABLE `wp_nf3_upgrades`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- 資料表索引 `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- 資料表索引 `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- 資料表索引 `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- 資料表索引 `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- 資料表索引 `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
--
-- 使用資料表 AUTO_INCREMENT `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- 使用資料表 AUTO_INCREMENT `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用資料表 AUTO_INCREMENT `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- 使用資料表 AUTO_INCREMENT `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用資料表 AUTO_INCREMENT `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;
--
-- 使用資料表 AUTO_INCREMENT `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
--
-- 使用資料表 AUTO_INCREMENT `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- 使用資料表 AUTO_INCREMENT `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 使用資料表 AUTO_INCREMENT `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
