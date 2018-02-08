-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: pod-120164.wpengine.com:13306
-- Generation Time: Feb 06, 2018 at 03:29 AM
-- Server version: 5.7.20-19-log
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_therotechlab1`
--
DROP DATABASE IF EXISTS `wp_therotechlab1`;
CREATE DATABASE IF NOT EXISTS `wp_therotechlab1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wp_therotechlab1`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_buddyboss_media`
--
-- Creation: Feb 04, 2018 at 02:41 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_buddyboss_media`;
CREATE TABLE `wp_cjdqnd_2_buddyboss_media` (
  `id` bigint(20) NOT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `media_id` bigint(20) NOT NULL,
  `media_author` bigint(20) NOT NULL,
  `media_title` text,
  `album_id` bigint(20) DEFAULT NULL,
  `activity_id` bigint(20) DEFAULT NULL,
  `privacy` varchar(50) DEFAULT 'public',
  `favorites` bigint(20) DEFAULT '0',
  `upload_date` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_buddyboss_media_albums`
--
-- Creation: Feb 04, 2018 at 02:41 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_buddyboss_media_albums`;
CREATE TABLE `wp_cjdqnd_2_buddyboss_media_albums` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `title` text NOT NULL,
  `description` text,
  `total_items` mediumint(9) DEFAULT '0',
  `privacy` varchar(50) DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_commentmeta`
--
-- Creation: Feb 04, 2018 at 02:41 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_commentmeta`;
CREATE TABLE `wp_cjdqnd_2_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_comments`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_comments`;
CREATE TABLE `wp_cjdqnd_2_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_gf_addon_feed`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_gf_addon_feed`;
CREATE TABLE `wp_cjdqnd_2_gf_addon_feed` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `feed_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `addon_slug` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_give_customermeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_give_customermeta`;
CREATE TABLE `wp_cjdqnd_2_give_customermeta` (
  `meta_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_give_customers`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_give_customers`;
CREATE TABLE `wp_cjdqnd_2_give_customers` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` mediumtext NOT NULL,
  `purchase_value` mediumtext NOT NULL,
  `purchase_count` bigint(20) NOT NULL,
  `payment_ids` longtext NOT NULL,
  `notes` longtext NOT NULL,
  `date_created` datetime NOT NULL,
  `token` varchar(255) NOT NULL,
  `verify_key` varchar(255) NOT NULL,
  `verify_throttle` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_give_subscriptions`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_give_subscriptions`;
CREATE TABLE `wp_cjdqnd_2_give_subscriptions` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `period` varchar(20) NOT NULL,
  `initial_amount` mediumtext NOT NULL,
  `recurring_amount` mediumtext NOT NULL,
  `bill_times` bigint(20) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `parent_payment_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL,
  `expiration` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `profile_id` varchar(60) NOT NULL,
  `notes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_links`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_links`;
CREATE TABLE `wp_cjdqnd_2_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_options`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_options`;
CREATE TABLE `wp_cjdqnd_2_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_postmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_postmeta`;
CREATE TABLE `wp_cjdqnd_2_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_posts`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_posts`;
CREATE TABLE `wp_cjdqnd_2_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_rg_form`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_rg_form`;
CREATE TABLE `wp_cjdqnd_2_rg_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_rg_form_meta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_rg_form_meta`;
CREATE TABLE `wp_cjdqnd_2_rg_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_rg_form_view`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_rg_form_view`;
CREATE TABLE `wp_cjdqnd_2_rg_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_rg_incomplete_submissions`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_rg_incomplete_submissions`;
CREATE TABLE `wp_cjdqnd_2_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_rg_lead`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_rg_lead`;
CREATE TABLE `wp_cjdqnd_2_rg_lead` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_rg_lead_detail`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_rg_lead_detail`;
CREATE TABLE `wp_cjdqnd_2_rg_lead_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_rg_lead_detail_long`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_rg_lead_detail_long`;
CREATE TABLE `wp_cjdqnd_2_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_rg_lead_meta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_rg_lead_meta`;
CREATE TABLE `wp_cjdqnd_2_rg_lead_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_rg_lead_notes`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_rg_lead_notes`;
CREATE TABLE `wp_cjdqnd_2_rg_lead_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_smush_dir_images`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_smush_dir_images`;
CREATE TABLE `wp_cjdqnd_2_smush_dir_images` (
  `id` mediumint(9) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int(10) UNSIGNED DEFAULT NULL,
  `orig_size` int(10) UNSIGNED DEFAULT NULL,
  `file_time` int(10) UNSIGNED DEFAULT NULL,
  `last_scan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_snippets`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_snippets`;
CREATE TABLE `wp_cjdqnd_2_snippets` (
  `id` bigint(20) NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `code` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tags` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scope` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'global',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_termmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_termmeta`;
CREATE TABLE `wp_cjdqnd_2_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_terms`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_terms`;
CREATE TABLE `wp_cjdqnd_2_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_term_relationships`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_term_relationships`;
CREATE TABLE `wp_cjdqnd_2_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_2_term_taxonomy`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_2_term_taxonomy`;
CREATE TABLE `wp_cjdqnd_2_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_ajaxsearchpro`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_ajaxsearchpro`;
CREATE TABLE `wp_cjdqnd_ajaxsearchpro` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_ajaxsearchpro_priorities`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_ajaxsearchpro_priorities`;
CREATE TABLE `wp_cjdqnd_ajaxsearchpro_priorities` (
  `post_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_ajaxsearchpro_statistics`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_ajaxsearchpro_statistics`;
CREATE TABLE `wp_cjdqnd_ajaxsearchpro_statistics` (
  `id` int(11) NOT NULL,
  `search_id` int(11) NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL,
  `last_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_arete_buddypress_smileys_manage`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_arete_buddypress_smileys_manage`;
CREATE TABLE `wp_cjdqnd_arete_buddypress_smileys_manage` (
  `id` mediumint(11) NOT NULL,
  `smiley_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `activity_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `timestamp` varchar(11) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_blogs`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_blogs`;
CREATE TABLE `wp_cjdqnd_blogs` (
  `blog_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT '1',
  `archived` tinyint(2) NOT NULL DEFAULT '0',
  `mature` tinyint(2) NOT NULL DEFAULT '0',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_blog_versions`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_blog_versions`;
CREATE TABLE `wp_cjdqnd_blog_versions` (
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `db_version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_activity`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 05, 2018 at 04:00 PM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_activity`;
CREATE TABLE `wp_cjdqnd_bp_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `component` varchar(75) NOT NULL,
  `type` varchar(75) NOT NULL,
  `action` text NOT NULL,
  `content` longtext NOT NULL,
  `primary_link` text NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `date_recorded` datetime NOT NULL,
  `hide_sitewide` tinyint(1) DEFAULT '0',
  `mptt_left` int(11) NOT NULL DEFAULT '0',
  `mptt_right` int(11) NOT NULL DEFAULT '0',
  `is_spam` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_activity_meta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 03:03 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_activity_meta`;
CREATE TABLE `wp_cjdqnd_bp_activity_meta` (
  `id` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_friends`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_friends`;
CREATE TABLE `wp_cjdqnd_bp_friends` (
  `id` bigint(20) NOT NULL,
  `initiator_user_id` bigint(20) NOT NULL,
  `friend_user_id` bigint(20) NOT NULL,
  `is_confirmed` tinyint(1) DEFAULT '0',
  `is_limited` tinyint(1) DEFAULT '0',
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_groups`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_groups`;
CREATE TABLE `wp_cjdqnd_bp_groups` (
  `id` bigint(20) NOT NULL,
  `creator_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'public',
  `enable_forum` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_groups_groupmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_groups_groupmeta`;
CREATE TABLE `wp_cjdqnd_bp_groups_groupmeta` (
  `id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_groups_members`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_groups_members`;
CREATE TABLE `wp_cjdqnd_bp_groups_members` (
  `id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `inviter_id` bigint(20) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_mod` tinyint(1) NOT NULL DEFAULT '0',
  `user_title` varchar(100) NOT NULL,
  `date_modified` datetime NOT NULL,
  `comments` longtext NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `invite_sent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_links`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_links`;
CREATE TABLE `wp_cjdqnd_bp_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cloud_id` char(32) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `url_hash` char(32) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  `rel` varchar(25) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `vote_count` smallint(6) NOT NULL DEFAULT '0',
  `vote_total` smallint(6) NOT NULL DEFAULT '0',
  `popularity` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `embed_service` char(32) DEFAULT NULL,
  `embed_status` tinyint(1) DEFAULT '0',
  `embed_data` text,
  `date_created` datetime NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_links_categories`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_links_categories`;
CREATE TABLE `wp_cjdqnd_bp_links_categories` (
  `id` tinyint(4) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `priority` smallint(6) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_links_linkmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_links_linkmeta`;
CREATE TABLE `wp_cjdqnd_bp_links_linkmeta` (
  `id` bigint(20) NOT NULL,
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_links_votes`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_links_votes`;
CREATE TABLE `wp_cjdqnd_bp_links_votes` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vote` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_messages_drafts`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_messages_drafts`;
CREATE TABLE `wp_cjdqnd_bp_messages_drafts` (
  `bbm_draft_id` bigint(20) NOT NULL,
  `thread_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `recipients` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `draft_subject` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `draft_content` longtext COLLATE utf8mb4_unicode_520_ci,
  `draft_attachment` longtext COLLATE utf8mb4_unicode_520_ci,
  `draft_date` datetime NOT NULL,
  `draft_uniqid` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_messages_labels`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_messages_labels`;
CREATE TABLE `wp_cjdqnd_bp_messages_labels` (
  `bbm_label_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `label_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `label_class` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_messages_label_message`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_messages_label_message`;
CREATE TABLE `wp_cjdqnd_bp_messages_label_message` (
  `bbm_label_msg_id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `label_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_messages_messages`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 03:04 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_messages_messages`;
CREATE TABLE `wp_cjdqnd_bp_messages_messages` (
  `id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `date_sent` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_messages_meta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 03:03 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_messages_meta`;
CREATE TABLE `wp_cjdqnd_bp_messages_meta` (
  `id` bigint(20) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_messages_notices`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 03:04 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_messages_notices`;
CREATE TABLE `wp_cjdqnd_bp_messages_notices` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `date_sent` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_messages_recipients`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_messages_recipients`;
CREATE TABLE `wp_cjdqnd_bp_messages_recipients` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `unread_count` int(10) NOT NULL DEFAULT '0',
  `sender_only` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_notifications`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_notifications`;
CREATE TABLE `wp_cjdqnd_bp_notifications` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `component_name` varchar(75) NOT NULL,
  `component_action` varchar(75) NOT NULL,
  `date_notified` datetime NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_notifications_meta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_notifications_meta`;
CREATE TABLE `wp_cjdqnd_bp_notifications_meta` (
  `id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_user_blogs`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_user_blogs`;
CREATE TABLE `wp_cjdqnd_bp_user_blogs` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_user_blogs_blogmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 03:03 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_user_blogs_blogmeta`;
CREATE TABLE `wp_cjdqnd_bp_user_blogs_blogmeta` (
  `id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_xprofile_data`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 03:03 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_xprofile_data`;
CREATE TABLE `wp_cjdqnd_bp_xprofile_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_xprofile_fields`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_xprofile_fields`;
CREATE TABLE `wp_cjdqnd_bp_xprofile_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_default_option` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` bigint(20) NOT NULL DEFAULT '0',
  `option_order` bigint(20) NOT NULL DEFAULT '0',
  `order_by` varchar(15) NOT NULL DEFAULT '',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_xprofile_groups`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_xprofile_groups`;
CREATE TABLE `wp_cjdqnd_bp_xprofile_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` mediumtext NOT NULL,
  `group_order` bigint(20) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_bp_xprofile_meta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_bp_xprofile_meta`;
CREATE TABLE `wp_cjdqnd_bp_xprofile_meta` (
  `id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `object_type` varchar(150) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_buddyboss_media`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_buddyboss_media`;
CREATE TABLE `wp_cjdqnd_buddyboss_media` (
  `id` bigint(20) NOT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `media_id` bigint(20) NOT NULL,
  `media_author` bigint(20) NOT NULL,
  `media_title` text,
  `album_id` bigint(20) DEFAULT NULL,
  `activity_id` bigint(20) DEFAULT NULL,
  `privacy` varchar(50) DEFAULT 'public',
  `favorites` bigint(20) DEFAULT '0',
  `upload_date` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_buddyboss_media_albums`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_buddyboss_media_albums`;
CREATE TABLE `wp_cjdqnd_buddyboss_media_albums` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `title` text NOT NULL,
  `description` text,
  `total_items` mediumint(9) DEFAULT '0',
  `privacy` varchar(50) DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_commentmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_commentmeta`;
CREATE TABLE `wp_cjdqnd_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_comments`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_comments`;
CREATE TABLE `wp_cjdqnd_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_duplicator_packages`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_duplicator_packages`;
CREATE TABLE `wp_cjdqnd_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_email_log`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_email_log`;
CREATE TABLE `wp_cjdqnd_email_log` (
  `id` mediumint(9) NOT NULL,
  `to_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subject` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sent_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_et_bloom_stats`
--
-- Creation: Feb 04, 2018 at 05:09 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_et_bloom_stats`;
CREATE TABLE `wp_cjdqnd_et_bloom_stats` (
  `id` int(11) NOT NULL,
  `record_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_type` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `optin_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `removed_flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_et_social_stats`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_et_social_stats`;
CREATE TABLE `wp_cjdqnd_et_social_stats` (
  `id` mediumint(9) NOT NULL,
  `sharing_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `network` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_url` varchar(2083) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_ewwwio_images`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_ewwwio_images`;
CREATE TABLE `wp_cjdqnd_ewwwio_images` (
  `id` mediumint(9) NOT NULL,
  `path` text NOT NULL,
  `image_md5` varchar(55) DEFAULT NULL,
  `results` varchar(55) NOT NULL,
  `gallery` varchar(30) DEFAULT NULL,
  `image_size` int(10) UNSIGNED DEFAULT NULL,
  `orig_size` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_frontend_post_forms`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_frontend_post_forms`;
CREATE TABLE `wp_cjdqnd_frontend_post_forms` (
  `id` mediumint(9) NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_type` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_frontend_post_form_meta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_frontend_post_form_meta`;
CREATE TABLE `wp_cjdqnd_frontend_post_form_meta` (
  `id` mediumint(9) NOT NULL,
  `form_id` mediumint(9) NOT NULL,
  `meta_key` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_attachments`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_attachments`;
CREATE TABLE `wp_cjdqnd_geodir_attachments` (
  `ID` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `caption` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_520_ci,
  `file` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mime_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `is_featured` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `is_approved` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  `metadata` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_claim`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_claim`;
CREATE TABLE `wp_cjdqnd_geodir_claim` (
  `pid` int(11) NOT NULL,
  `list_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `list_title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_position` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_comments` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `admin_comments` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `claim_date` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `org_author` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `org_authorid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rand_string` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_ip` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `upgrade_pkg_id` int(11) NOT NULL,
  `upgrade_pkg_data` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_countries`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_countries`;
CREATE TABLE `wp_cjdqnd_geodir_countries` (
  `CountryId` smallint(6) NOT NULL,
  `Country` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `FIPS104` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ISO2` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ISO3` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ISON` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Internet` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Capital` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `MapReference` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `NationalitySingular` varchar(35) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `NationalityPlural` varchar(35) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Currency` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `CurrencyCode` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Population` bigint(20) DEFAULT NULL,
  `Title` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Comment` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_coupons`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_coupons`;
CREATE TABLE `wp_cjdqnd_geodir_coupons` (
  `cid` int(11) NOT NULL,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_types` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `recurring` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `discount_type` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `discount_amount` float NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `usage_limit` varchar(11) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `usage_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_custom_advance_search_fields`
--
-- Creation: Feb 04, 2018 at 05:09 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_custom_advance_search_fields`;
CREATE TABLE `wp_cjdqnd_geodir_custom_advance_search_fields` (
  `id` int(11) NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_site_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_site_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `site_htmlvar_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expand_custom_value` int(11) NOT NULL,
  `searching_range_mode` int(11) NOT NULL,
  `expand_search` int(11) NOT NULL,
  `front_search_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `first_search_value` int(11) NOT NULL,
  `first_search_text` varchar(255) CHARACTER SET utf8 NOT NULL,
  `last_search_text` varchar(255) CHARACTER SET utf8 NOT NULL,
  `search_min_value` int(11) NOT NULL,
  `search_max_value` int(11) NOT NULL,
  `search_diff_value` int(11) NOT NULL DEFAULT '0',
  `search_condition` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_input_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_data_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `main_search` int(11) NOT NULL,
  `main_search_priority` int(11) NOT NULL,
  `field_desc` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `extra_fields` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_custom_fields`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_custom_fields`;
CREATE TABLE `wp_cjdqnd_geodir_custom_fields` (
  `id` int(11) NOT NULL,
  `post_type` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data_type` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `field_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'text,checkbox,radio,select,textarea',
  `field_type_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `admin_desc` text COLLATE utf8mb4_unicode_520_ci,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `htmlvar_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_value` text COLLATE utf8mb4_unicode_520_ci,
  `sort_order` int(11) NOT NULL,
  `option_values` text COLLATE utf8mb4_unicode_520_ci,
  `clabels` text COLLATE utf8mb4_unicode_520_ci,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `is_default` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `is_admin` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `is_required` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `required_msg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `show_on_listing` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `show_in` text COLLATE utf8mb4_unicode_520_ci,
  `show_on_detail` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `show_as_tab` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `for_admin_use` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `packages` text COLLATE utf8mb4_unicode_520_ci,
  `cat_sort` text COLLATE utf8mb4_unicode_520_ci,
  `cat_filter` text COLLATE utf8mb4_unicode_520_ci,
  `extra_fields` text COLLATE utf8mb4_unicode_520_ci,
  `field_icon` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `css_class` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `decimal_point` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `validation_pattern` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `validation_msg` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_custom_sort_fields`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_custom_sort_fields`;
CREATE TABLE `wp_cjdqnd_geodir_custom_sort_fields` (
  `id` int(11) NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `htmlvar_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `is_default` int(11) NOT NULL,
  `default_order` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sort_asc` int(11) NOT NULL,
  `sort_desc` int(11) NOT NULL,
  `asc_title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `desc_title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_event_schedule`
--
-- Creation: Feb 04, 2018 at 05:09 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_event_schedule`;
CREATE TABLE `wp_cjdqnd_geodir_event_schedule` (
  `schedule_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `event_date` datetime NOT NULL,
  `event_enddate` date NOT NULL,
  `event_starttime` time DEFAULT NULL,
  `event_endtime` time DEFAULT NULL,
  `all_day` tinyint(1) NOT NULL DEFAULT '0',
  `recurring` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_gd_clinics_detail`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_gd_clinics_detail`;
CREATE TABLE `wp_cjdqnd_geodir_gd_clinics_detail` (
  `post_id` int(11) NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_category` int(11) DEFAULT NULL,
  `post_tags` text COLLATE utf8mb4_unicode_520_ci,
  `post_location_id` int(11) NOT NULL,
  `geodir_link_business` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `marker_json` text COLLATE utf8mb4_unicode_520_ci,
  `claimed` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `businesses` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `is_featured` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `featured_image` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `package_id` int(11) NOT NULL DEFAULT '0',
  `alive_days` int(11) NOT NULL DEFAULT '0',
  `paymentmethod` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_date` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_time` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_ip` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `overall_rating` float DEFAULT NULL,
  `rating_count` int(11) DEFAULT '0',
  `post_locations` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_notification` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gd_clinicscategory` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_address` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_city` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_region` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_country` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_zip` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_longitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapview` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapzoom` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latlng` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  `geodir_timing` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_contact` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_email` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_website` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_twitter` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_facebook` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_video` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_special_offers` text COLLATE utf8mb4_unicode_520_ci,
  `post_dummy` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `geodir_get_directions` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'Get Directions',
  `geodir_blog_address` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_twitterusername` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_linkedin` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_instagram` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_county` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_googleplus` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_clinic_setting` varchar(694) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_currently_accepting_clients` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'Yes',
  `geodir_days_available` varchar(56) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_specialties` varchar(1671) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_teletherapy` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'No',
  `geodir_services_offered` varchar(995) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_ages_accepted` varchar(65) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_npi_number` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_bio_extended` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_theoretical_orientation` varchar(740) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_languages` varchar(1581) COLLATE utf8mb4_unicode_520_ci DEFAULT 'English',
  `geodir_youtube` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_accept_health_insurance` varchar(539) COLLATE utf8mb4_unicode_520_ci DEFAULT 'Not Accepted',
  `geodir_sliding_scale` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'No',
  `geodir_low_fee_no_fee` varchar(14) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_public_transportation` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'No',
  `geodir_bus_train_stop` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_ada_accessible` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'No',
  `geodir_smoking_allowed` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_intake1` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_intake2` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_hotline1` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_hotline2` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_director_prefix` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_director_firstname` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_director_lastname` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_director_suffix` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_director_title` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_director_phone` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_director_email` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_mail_street1` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_mail_street2` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_mail_city` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_mail_state` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_mail_zip` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_last_update` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_gender_accepted` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_treatment_focus` varchar(37) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_additional_certifications` varchar(41) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_neighbourhood` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `franchise` int(11) NOT NULL DEFAULT '0',
  `geodir_price` decimal(11,2) DEFAULT NULL,
  `exp2` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false',
  `exp3` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_gd_crisis_line_detail`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_gd_crisis_line_detail`;
CREATE TABLE `wp_cjdqnd_geodir_gd_crisis_line_detail` (
  `post_id` int(11) NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_category` int(11) DEFAULT NULL,
  `post_tags` text COLLATE utf8mb4_unicode_520_ci,
  `post_location_id` int(11) NOT NULL,
  `geodir_link_business` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `marker_json` text COLLATE utf8mb4_unicode_520_ci,
  `claimed` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `businesses` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `is_featured` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `featured_image` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `package_id` int(11) NOT NULL DEFAULT '0',
  `alive_days` int(11) NOT NULL DEFAULT '0',
  `paymentmethod` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_date` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_time` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_ip` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `overall_rating` float DEFAULT NULL,
  `rating_count` int(11) DEFAULT '0',
  `post_locations` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_notification` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gd_crisis_linecategory` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_address` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_city` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_region` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_country` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_zip` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_longitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapview` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapzoom` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latlng` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  `geodir_timing` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_contact` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_email` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_website` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_twitter` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_facebook` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_video` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_special_offers` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_specialties` varchar(1671) COLLATE utf8mb4_unicode_520_ci DEFAULT 'Phone support',
  `geodir_languages` varchar(1581) COLLATE utf8mb4_unicode_520_ci DEFAULT 'English',
  `geodir_days_available` varchar(56) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_crisis_text` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_chat_url` text COLLATE utf8mb4_unicode_520_ci,
  `post_dummy` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `post_neighbourhood` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_twitterusername` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_tty` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `exp2` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false',
  `exp3` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_gd_event_detail`
--
-- Creation: Feb 04, 2018 at 05:09 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_gd_event_detail`;
CREATE TABLE `wp_cjdqnd_geodir_gd_event_detail` (
  `post_id` int(11) NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_category` int(11) DEFAULT NULL,
  `post_tags` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_link_business` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_location_id` int(11) NOT NULL,
  `marker_json` text COLLATE utf8mb4_unicode_520_ci,
  `claimed` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `businesses` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `is_featured` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `featured_image` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `package_id` int(11) NOT NULL DEFAULT '1',
  `alive_days` int(11) NOT NULL DEFAULT '0',
  `paymentmethod` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_date` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_dates` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `event_reg_desc` text COLLATE utf8mb4_unicode_520_ci,
  `event_reg_fees` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_time` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_ip` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `overall_rating` float DEFAULT NULL,
  `rating_count` int(11) DEFAULT '0',
  `rsvp_count` int(11) DEFAULT '0',
  `post_locations` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_longitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_dummy` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `gd_eventcategory` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_address` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_city` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_region` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_country` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_zip` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapview` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapzoom` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latlng` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  `geodir_timing` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_contact` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_email` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_website` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_twitter` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_facebook` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_video` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_special_offers` text COLLATE utf8mb4_unicode_520_ci,
  `expire_notification` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_neighbourhood` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_get_directions` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'Get Directions',
  `exp2` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false',
  `exp3` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_gd_gd_job_detail`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_gd_gd_job_detail`;
CREATE TABLE `wp_cjdqnd_geodir_gd_gd_job_detail` (
  `post_id` int(11) NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_category` int(11) DEFAULT NULL,
  `post_tags` text COLLATE utf8mb4_unicode_520_ci,
  `post_location_id` int(11) NOT NULL,
  `geodir_link_business` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `marker_json` text COLLATE utf8mb4_unicode_520_ci,
  `claimed` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `businesses` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `is_featured` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `featured_image` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `package_id` int(11) NOT NULL DEFAULT '0',
  `alive_days` int(11) NOT NULL DEFAULT '0',
  `paymentmethod` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_date` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_time` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_ip` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `overall_rating` float DEFAULT NULL,
  `rating_count` int(11) DEFAULT '0',
  `post_locations` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_notification` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gd_gd_jobcategory` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_address` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_city` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_region` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_country` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_zip` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_longitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapview` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapzoom` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latlng` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  `geodir_timing` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_contact` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_email` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_website` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_twitter` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_facebook` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_video` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_special_offers` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_gd_job_detail`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_gd_job_detail`;
CREATE TABLE `wp_cjdqnd_geodir_gd_job_detail` (
  `post_id` int(11) NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_category` int(11) DEFAULT NULL,
  `post_tags` text COLLATE utf8mb4_unicode_520_ci,
  `post_location_id` int(11) NOT NULL,
  `geodir_link_business` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `marker_json` text COLLATE utf8mb4_unicode_520_ci,
  `claimed` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `businesses` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `is_featured` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `featured_image` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `package_id` int(11) NOT NULL DEFAULT '0',
  `alive_days` int(11) NOT NULL DEFAULT '0',
  `paymentmethod` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_date` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_time` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_ip` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `overall_rating` float DEFAULT NULL,
  `rating_count` int(11) DEFAULT '0',
  `post_locations` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_notification` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gd_jobcategory` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_address` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_city` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_region` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_country` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_zip` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_longitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapview` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapzoom` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latlng` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  `geodir_timing` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_contact` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_email` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_website` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_twitter` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_facebook` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_video` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_special_offers` text COLLATE utf8mb4_unicode_520_ci,
  `post_dummy` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `geodir_degree_required` varchar(117) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_job_pay_range` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_job_paid_unpaid` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_job_application_deadline` date DEFAULT NULL,
  `geodir_job_avg_pay` int(11) DEFAULT NULL,
  `geodir_job_description` text COLLATE utf8mb4_unicode_520_ci,
  `post_neighbourhood` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `exp2` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false',
  `exp3` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_gd_office_detail`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_gd_office_detail`;
CREATE TABLE `wp_cjdqnd_geodir_gd_office_detail` (
  `post_id` int(11) NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_category` int(11) DEFAULT NULL,
  `post_tags` text COLLATE utf8mb4_unicode_520_ci,
  `post_location_id` int(11) NOT NULL,
  `geodir_link_business` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `marker_json` text COLLATE utf8mb4_unicode_520_ci,
  `claimed` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `businesses` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `is_featured` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `featured_image` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `package_id` int(11) NOT NULL DEFAULT '0',
  `alive_days` int(11) NOT NULL DEFAULT '0',
  `paymentmethod` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_date` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_time` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_ip` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `overall_rating` float DEFAULT NULL,
  `rating_count` int(11) DEFAULT '0',
  `post_locations` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_notification` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gd_officecategory` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_address` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_city` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_region` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_country` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_zip` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_longitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapview` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapzoom` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latlng` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  `geodir_timing` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_contact` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_email` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_website` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_twitter` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_facebook` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_video` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_special_offers` text COLLATE utf8mb4_unicode_520_ci,
  `post_dummy` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `geodir_office_days_available` varchar(56) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_neighbourhood` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `exp2` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false',
  `exp3` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_gd_place_detail`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_gd_place_detail`;
CREATE TABLE `wp_cjdqnd_geodir_gd_place_detail` (
  `post_id` int(11) NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_category` int(11) DEFAULT NULL,
  `post_tags` text COLLATE utf8mb4_unicode_520_ci,
  `post_location_id` int(11) NOT NULL,
  `geodir_link_business` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `marker_json` text COLLATE utf8mb4_unicode_520_ci,
  `claimed` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `businesses` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `is_featured` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `featured_image` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `package_id` int(11) NOT NULL DEFAULT '0',
  `alive_days` int(11) NOT NULL DEFAULT '0',
  `paymentmethod` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_date` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_time` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_ip` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `overall_rating` float DEFAULT '0',
  `rating_count` int(11) DEFAULT '0',
  `post_locations` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_dummy` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `gd_placecategory` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_address` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_city` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_region` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_country` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_zip` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_longitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapview` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapzoom` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latlng` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  `geodir_timing` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_contact` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_email` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_website` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_twitter` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_facebook` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_video` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_special_offers` text COLLATE utf8mb4_unicode_520_ci,
  `expire_notification` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_neighbourhood` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_degree` varchar(121) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_currently_accepting_clients` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'Yes',
  `geodir_specialties` varchar(1727) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_services_offered` varchar(692) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_teletherapy` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'No',
  `geodir_days_available` varchar(56) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_ages_accepted` varchar(66) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_have_license` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_license` varchar(627) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_state_licensed` varchar(170) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_license_number` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_supervisor_info` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_supervisor_link` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_bio_extended` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_provider_client_role` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_theoretical_orientation` varchar(726) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_additional_certifications` varchar(2863) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_year_of_license` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_race_ethnicity1` varchar(216) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_treatment_provider_gender` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_languages` varchar(1609) COLLATE utf8mb4_unicode_520_ci DEFAULT 'English',
  `geodir_instagram` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_linkedin` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_googleplus` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_blog_address` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_youtube` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_public_transportation` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'No',
  `geodir_bus_train_stop` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_ada_accessible` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'No',
  `geodir_low_fee_no_fee` varchar(21) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_accept_health_insurance` varchar(567) COLLATE utf8mb4_unicode_520_ci DEFAULT 'Not Accepted',
  `geodir_npi_number` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_clinic_setting` varchar(694) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_smoking_allowed` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_get_directions` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT 'Get Directions',
  `franchise` int(11) NOT NULL DEFAULT '0',
  `geodir_twitterusername` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_pro_bono_type` varchar(178) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_low_fee_no_fee_description` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_price` decimal(11,2) DEFAULT NULL,
  `exp2` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false',
  `exp3` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_gd_referral_detail`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_gd_referral_detail`;
CREATE TABLE `wp_cjdqnd_geodir_gd_referral_detail` (
  `post_id` int(11) NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_category` int(11) DEFAULT NULL,
  `post_tags` text COLLATE utf8mb4_unicode_520_ci,
  `post_location_id` int(11) NOT NULL,
  `geodir_link_business` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `marker_json` text COLLATE utf8mb4_unicode_520_ci,
  `claimed` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `businesses` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `is_featured` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `featured_image` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `package_id` int(11) NOT NULL DEFAULT '0',
  `alive_days` int(11) NOT NULL DEFAULT '0',
  `paymentmethod` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_date` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_time` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_ip` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `overall_rating` float DEFAULT NULL,
  `rating_count` int(11) DEFAULT '0',
  `post_locations` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_notification` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gd_referralcategory` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_address` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_city` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_region` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_country` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_zip` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_longitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapview` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapzoom` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latlng` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  `geodir_timing` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_contact` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_email` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_website` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_twitter` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_facebook` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_video` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_special_offers` text COLLATE utf8mb4_unicode_520_ci,
  `post_dummy` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `geodir_referral_have_presenting_prob` varchar(1361) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_referral_have_description` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_referral_desired_service` varchar(653) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_referral_gender` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_referral_age` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_referral_sexual_orientation` varchar(143) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_neighbourhood` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `exp2` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false',
  `exp3` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_gd_support_detail`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_gd_support_detail`;
CREATE TABLE `wp_cjdqnd_geodir_gd_support_detail` (
  `post_id` int(11) NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_category` int(11) DEFAULT NULL,
  `post_tags` text COLLATE utf8mb4_unicode_520_ci,
  `post_location_id` int(11) NOT NULL,
  `geodir_link_business` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `marker_json` text COLLATE utf8mb4_unicode_520_ci,
  `claimed` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `businesses` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `is_featured` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `featured_image` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `package_id` int(11) NOT NULL DEFAULT '0',
  `alive_days` int(11) NOT NULL DEFAULT '0',
  `paymentmethod` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_date` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_time` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submit_ip` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `overall_rating` float DEFAULT NULL,
  `rating_count` int(11) DEFAULT '0',
  `post_locations` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expire_notification` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gd_supportcategory` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_address` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_city` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_region` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_country` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_zip` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_longitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapview` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_mapzoom` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latlng` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  `geodir_timing` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_contact` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_email` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_website` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_twitter` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_facebook` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_video` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_special_offers` text COLLATE utf8mb4_unicode_520_ci,
  `post_dummy` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `geodir_specialties` varchar(1361) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_services_offered` varchar(289) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_instagram` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_youtube` text COLLATE utf8mb4_unicode_520_ci,
  `geodir_volunteer_opportunities` varchar(115) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `geodir_languages` varchar(1581) COLLATE utf8mb4_unicode_520_ci DEFAULT 'English',
  `franchise` int(11) NOT NULL DEFAULT '0',
  `post_neighbourhood` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `exp2` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false',
  `exp3` enum('false','true') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'false',
  `geodir_twitterusername` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_invoice`
--
-- Creation: Feb 04, 2018 at 05:09 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_invoice`;
CREATE TABLE `wp_cjdqnd_geodir_invoice` (
  `id` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_action` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `invoice_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `invoice_callback` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `invoice_data` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_title` varchar(254) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `alive_days` int(11) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `coupon_usage` enum('increase','decrease') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `tax_amount` float(10,2) NOT NULL,
  `paied_amount` float DEFAULT NULL,
  `paymentmethod` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `subscription` tinyint(1) NOT NULL DEFAULT '0',
  `HTML` text COLLATE utf8mb4_unicode_520_ci,
  `is_current` enum('1','0') COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_updated` datetime NOT NULL,
  `invoice_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_location_seo`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_location_seo`;
CREATE TABLE `wp_cjdqnd_geodir_location_seo` (
  `seo_id` int(11) NOT NULL,
  `location_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `country_slug` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `region_slug` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `city_slug` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_meta_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_meta_desc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_desc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_image` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_image_tagline` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_post_icon`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_post_icon`;
CREATE TABLE `wp_cjdqnd_geodir_post_icon` (
  `id` int(11) NOT NULL,
  `post_id` int(10) NOT NULL,
  `post_title` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cat_id` int(10) NOT NULL,
  `json` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_post_locations`
--
-- Creation: Feb 04, 2018 at 05:09 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_post_locations`;
CREATE TABLE `wp_cjdqnd_geodir_post_locations` (
  `location_id` int(11) NOT NULL,
  `country` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `region` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `city` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `country_slug` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `region_slug` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `city_slug` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `city_latitude` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `city_longitude` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `city_meta` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `city_desc` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_post_neighbourhood`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_post_neighbourhood`;
CREATE TABLE `wp_cjdqnd_geodir_post_neighbourhood` (
  `hood_id` int(11) NOT NULL,
  `hood_location_id` int(11) NOT NULL,
  `hood_name` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hood_latitude` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hood_longitude` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hood_slug` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hood_meta_title` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hood_meta` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hood_description` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_post_review`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_post_review`;
CREATE TABLE `wp_cjdqnd_geodir_post_review` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `rating_ip` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ratings` text COLLATE utf8mb4_unicode_520_ci,
  `overall_rating` float DEFAULT NULL,
  `comment_images` text COLLATE utf8mb4_unicode_520_ci,
  `wasthis_review` int(11) NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` int(11) DEFAULT NULL,
  `post_date` datetime NOT NULL,
  `post_city` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_region` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_country` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_latitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_longitude` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `comment_content` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_price`
--
-- Creation: Feb 04, 2018 at 05:09 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_price`;
CREATE TABLE `wp_cjdqnd_geodir_price` (
  `pid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `amount` float(12,2) NOT NULL,
  `cat` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `days` int(10) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `title_desc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_limit` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cat_limit` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_business_pkg` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_business_cpt` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `recurring_pkg` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `reg_desc_pkg` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `reg_fees_pkg` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `downgrade_pkg` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sub_active` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `display_order` int(11) NOT NULL DEFAULT '0',
  `sub_units` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sub_units_num` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sub_num_trial_days` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sub_num_trial_units` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'D',
  `sub_units_num_times` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `google_analytics` tinyint(4) NOT NULL DEFAULT '0',
  `sendtofriend` tinyint(4) NOT NULL DEFAULT '0',
  `use_desc_limit` tinyint(1) NOT NULL DEFAULT '0',
  `desc_limit` int(11) NOT NULL DEFAULT '0',
  `use_tag_limit` tinyint(1) NOT NULL DEFAULT '0',
  `tag_limit` int(11) NOT NULL DEFAULT '0',
  `hide_related_tab` tinyint(1) NOT NULL DEFAULT '0',
  `has_upgrades` tinyint(1) NOT NULL DEFAULT '1',
  `disable_coupon` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `enable_franchise` int(11) NOT NULL DEFAULT '0',
  `franchise_cost` float DEFAULT NULL,
  `franchise_limit` int(11) NOT NULL DEFAULT '0',
  `disable_editor` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_geodir_term_meta`
--
-- Creation: Feb 04, 2018 at 05:09 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_geodir_term_meta`;
CREATE TABLE `wp_cjdqnd_geodir_term_meta` (
  `id` int(11) NOT NULL,
  `location_type` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `location_name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region_slug` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `country_slug` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_count` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `review_count` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_gf_addon_feed`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_gf_addon_feed`;
CREATE TABLE `wp_cjdqnd_gf_addon_feed` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `feed_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `addon_slug` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_give_donormeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_give_donormeta`;
CREATE TABLE `wp_cjdqnd_give_donormeta` (
  `meta_id` bigint(20) NOT NULL,
  `donor_id` bigint(20) DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_give_donors`
--
-- Creation: Feb 04, 2018 at 05:09 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_give_donors`;
CREATE TABLE `wp_cjdqnd_give_donors` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` mediumtext NOT NULL,
  `purchase_value` mediumtext NOT NULL,
  `purchase_count` bigint(20) NOT NULL,
  `payment_ids` longtext NOT NULL,
  `notes` longtext NOT NULL,
  `date_created` datetime NOT NULL,
  `token` varchar(255) NOT NULL,
  `verify_key` varchar(255) NOT NULL,
  `verify_throttle` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_give_formmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_give_formmeta`;
CREATE TABLE `wp_cjdqnd_give_formmeta` (
  `meta_id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_give_logmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_give_logmeta`;
CREATE TABLE `wp_cjdqnd_give_logmeta` (
  `meta_id` bigint(20) NOT NULL,
  `log_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_give_logs`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_give_logs`;
CREATE TABLE `wp_cjdqnd_give_logs` (
  `ID` bigint(20) NOT NULL,
  `log_title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_parent` bigint(20) NOT NULL,
  `log_type` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date` datetime NOT NULL,
  `log_date_gmt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_give_paymentmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_give_paymentmeta`;
CREATE TABLE `wp_cjdqnd_give_paymentmeta` (
  `meta_id` bigint(20) NOT NULL,
  `payment_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_give_subscriptions`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_give_subscriptions`;
CREATE TABLE `wp_cjdqnd_give_subscriptions` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `period` varchar(20) NOT NULL,
  `initial_amount` mediumtext NOT NULL,
  `recurring_amount` mediumtext NOT NULL,
  `bill_times` bigint(20) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `parent_payment_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL,
  `expiration` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `profile_id` varchar(60) NOT NULL,
  `notes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_gonzales_disabled`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_gonzales_disabled`;
CREATE TABLE `wp_cjdqnd_gonzales_disabled` (
  `id` mediumint(9) NOT NULL,
  `handler_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=css, 1=js',
  `handler_name` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_gonzales_enabled`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_gonzales_enabled`;
CREATE TABLE `wp_cjdqnd_gonzales_enabled` (
  `id` mediumint(9) NOT NULL,
  `handler_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=css, 1=js',
  `handler_name` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `content_type` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_groups_capability`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_groups_capability`;
CREATE TABLE `wp_cjdqnd_groups_capability` (
  `capability_id` bigint(20) UNSIGNED NOT NULL,
  `capability` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_groups_group`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_groups_group`;
CREATE TABLE `wp_cjdqnd_groups_group` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_groups_group_capability`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_groups_group_capability`;
CREATE TABLE `wp_cjdqnd_groups_group_capability` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `capability_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_groups_user_capability`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_groups_user_capability`;
CREATE TABLE `wp_cjdqnd_groups_user_capability` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `capability_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_groups_user_group`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_groups_user_group`;
CREATE TABLE `wp_cjdqnd_groups_user_group` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_hmwp_ms_intrusions`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 03:04 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_hmwp_ms_intrusions`;
CREATE TABLE `wp_cjdqnd_hmwp_ms_intrusions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `page` varchar(255) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL,
  `total_impact` int(11) UNSIGNED NOT NULL,
  `impact` int(11) UNSIGNED NOT NULL,
  `origin` varchar(16) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_links`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_links`;
CREATE TABLE `wp_cjdqnd_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_mcc_blogs_groups`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_mcc_blogs_groups`;
CREATE TABLE `wp_cjdqnd_mcc_blogs_groups` (
  `ID` bigint(20) NOT NULL,
  `group_name` text COLLATE utf8mb4_unicode_520_ci,
  `group_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `bcount` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_mcc_blogs_groups_relationship`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_mcc_blogs_groups_relationship`;
CREATE TABLE `wp_cjdqnd_mcc_blogs_groups_relationship` (
  `ID` bigint(20) NOT NULL,
  `blog_group_id` bigint(20) DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_mcc_queue`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_mcc_queue`;
CREATE TABLE `wp_cjdqnd_mcc_queue` (
  `ID` bigint(20) NOT NULL,
  `src_blog_id` bigint(20) DEFAULT NULL,
  `dest_blog_id` bigint(20) DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_mcc_synced_posts_relationships`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_mcc_synced_posts_relationships`;
CREATE TABLE `wp_cjdqnd_mcc_synced_posts_relationships` (
  `ID` bigint(20) NOT NULL,
  `src_blog_id` bigint(20) DEFAULT NULL,
  `src_post_id` bigint(20) DEFAULT NULL,
  `dest_blog_id` bigint(20) DEFAULT NULL,
  `dest_post_id` bigint(20) DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_mepr_events`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_mepr_events`;
CREATE TABLE `wp_cjdqnd_mepr_events` (
  `id` bigint(20) NOT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'login',
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `args` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evt_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evt_id_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_mepr_jobs`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_mepr_jobs`;
CREATE TABLE `wp_cjdqnd_mepr_jobs` (
  `id` bigint(20) NOT NULL,
  `runtime` datetime NOT NULL,
  `firstrun` datetime NOT NULL,
  `lastrun` datetime DEFAULT NULL,
  `priority` bigint(20) DEFAULT '10',
  `tries` bigint(20) DEFAULT '0',
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `args` text COLLATE utf8mb4_unicode_ci,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_mepr_tax_rates`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_mepr_tax_rates`;
CREATE TABLE `wp_cjdqnd_mepr_tax_rates` (
  `id` bigint(20) NOT NULL,
  `tax_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_priority` bigint(20) NOT NULL DEFAULT '0',
  `tax_compound` int(1) NOT NULL DEFAULT '0',
  `tax_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_order` bigint(20) NOT NULL,
  `tax_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_mepr_tax_rate_locations`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_mepr_tax_rate_locations`;
CREATE TABLE `wp_cjdqnd_mepr_tax_rate_locations` (
  `id` bigint(20) NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_mepr_transactions`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_mepr_transactions`;
CREATE TABLE `wp_cjdqnd_mepr_transactions` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `total` decimal(16,2) DEFAULT '0.00',
  `tax_amount` decimal(16,2) DEFAULT '0.00',
  `tax_rate` decimal(5,2) DEFAULT '0.00',
  `tax_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tax_compound` int(1) DEFAULT '0',
  `tax_shipping` int(1) DEFAULT '1',
  `tax_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'standard',
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `trans_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `txn_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'payment',
  `response` text COLLATE utf8mb4_unicode_ci,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'MeprPayPalGateway',
  `subscription_id` bigint(20) DEFAULT NULL,
  `ip_addr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prorated` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_miwosql_queries`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_miwosql_queries`;
CREATE TABLE `wp_cjdqnd_miwosql_queries` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_ms_snippets`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_ms_snippets`;
CREATE TABLE `wp_cjdqnd_ms_snippets` (
  `id` bigint(20) NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `code` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tags` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scope` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'global',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_options`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_options`;
CREATE TABLE `wp_cjdqnd_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) DEFAULT NULL,
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_p2p`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_p2p`;
CREATE TABLE `wp_cjdqnd_p2p` (
  `p2p_id` bigint(20) UNSIGNED NOT NULL,
  `p2p_from` bigint(20) UNSIGNED NOT NULL,
  `p2p_to` bigint(20) UNSIGNED NOT NULL,
  `p2p_type` varchar(44) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_p2pmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_p2pmeta`;
CREATE TABLE `wp_cjdqnd_p2pmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `p2p_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_pmxe_exports`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_pmxe_exports`;
CREATE TABLE `wp_cjdqnd_pmxe_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `attch_id` bigint(20) NOT NULL DEFAULT '0',
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `scheduled` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `friendly_name` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `exported` bigint(20) NOT NULL DEFAULT '0',
  `canceled` tinyint(1) NOT NULL DEFAULT '0',
  `canceled_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `settings_update_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `processing` tinyint(1) NOT NULL DEFAULT '0',
  `executing` tinyint(1) NOT NULL DEFAULT '0',
  `triggered` tinyint(1) NOT NULL DEFAULT '0',
  `iteration` bigint(20) NOT NULL DEFAULT '0',
  `export_post_type` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_pmxe_google_cats`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_pmxe_google_cats`;
CREATE TABLE `wp_cjdqnd_pmxe_google_cats` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_pmxe_posts`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_pmxe_posts`;
CREATE TABLE `wp_cjdqnd_pmxe_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `export_id` bigint(20) UNSIGNED NOT NULL,
  `iteration` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_pmxe_templates`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_pmxe_templates`;
CREATE TABLE `wp_cjdqnd_pmxe_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `options` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_postmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_postmeta`;
CREATE TABLE `wp_cjdqnd_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_posts`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_posts`;
CREATE TABLE `wp_cjdqnd_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_registration_log`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_registration_log`;
CREATE TABLE `wp_cjdqnd_registration_log` (
  `ID` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_rg_form`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_rg_form`;
CREATE TABLE `wp_cjdqnd_rg_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_rg_form_meta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_rg_form_meta`;
CREATE TABLE `wp_cjdqnd_rg_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_rg_form_view`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_rg_form_view`;
CREATE TABLE `wp_cjdqnd_rg_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_rg_incomplete_submissions`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_rg_incomplete_submissions`;
CREATE TABLE `wp_cjdqnd_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_rg_lead`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_rg_lead`;
CREATE TABLE `wp_cjdqnd_rg_lead` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_rg_lead_detail`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_rg_lead_detail`;
CREATE TABLE `wp_cjdqnd_rg_lead_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_rg_lead_detail_long`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_rg_lead_detail_long`;
CREATE TABLE `wp_cjdqnd_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_rg_lead_meta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_rg_lead_meta`;
CREATE TABLE `wp_cjdqnd_rg_lead_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_rg_lead_notes`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_rg_lead_notes`;
CREATE TABLE `wp_cjdqnd_rg_lead_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_signups`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 03:03 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_signups`;
CREATE TABLE `wp_cjdqnd_signups` (
  `signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT '',
  `title` longtext NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) NOT NULL DEFAULT '',
  `meta` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_site`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_site`;
CREATE TABLE `wp_cjdqnd_site` (
  `id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_sitemeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_sitemeta`;
CREATE TABLE `wp_cjdqnd_sitemeta` (
  `meta_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_smush_dir_images`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_smush_dir_images`;
CREATE TABLE `wp_cjdqnd_smush_dir_images` (
  `id` mediumint(9) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int(10) UNSIGNED DEFAULT NULL,
  `orig_size` int(10) UNSIGNED DEFAULT NULL,
  `file_time` int(10) UNSIGNED DEFAULT NULL,
  `last_scan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_520_ci,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_snippets`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_snippets`;
CREATE TABLE `wp_cjdqnd_snippets` (
  `id` bigint(20) NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `code` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tags` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scope` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'global',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_snp_stats`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_snp_stats`;
CREATE TABLE `wp_cjdqnd_snp_stats` (
  `date` date NOT NULL,
  `ID` bigint(20) NOT NULL,
  `AB_ID` bigint(20) NOT NULL,
  `imps` int(11) NOT NULL,
  `convs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_termmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_termmeta`;
CREATE TABLE `wp_cjdqnd_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_terms`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_terms`;
CREATE TABLE `wp_cjdqnd_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_icon` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_term_relationships`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_term_relationships`;
CREATE TABLE `wp_cjdqnd_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_term_taxonomy`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_term_taxonomy`;
CREATE TABLE `wp_cjdqnd_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_um_conversations`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_um_conversations`;
CREATE TABLE `wp_cjdqnd_um_conversations` (
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `user_a` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_b` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_um_followers`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_um_followers`;
CREATE TABLE `wp_cjdqnd_um_followers` (
  `id` mediumint(9) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id1` mediumint(9) NOT NULL,
  `user_id2` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_um_friends`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_um_friends`;
CREATE TABLE `wp_cjdqnd_um_friends` (
  `id` mediumint(9) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id1` mediumint(9) NOT NULL,
  `user_id2` mediumint(9) NOT NULL,
  `status` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_um_messages`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_um_messages`;
CREATE TABLE `wp_cjdqnd_um_messages` (
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `recipient` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_um_notifications`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_um_notifications`;
CREATE TABLE `wp_cjdqnd_um_notifications` (
  `id` mediumint(9) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_usermeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_usermeta`;
CREATE TABLE `wp_cjdqnd_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_users`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_users`;
CREATE TABLE `wp_cjdqnd_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_wc_points_rewards_user_points`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_wc_points_rewards_user_points`;
CREATE TABLE `wp_cjdqnd_wc_points_rewards_user_points` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `points` bigint(20) NOT NULL,
  `points_balance` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_wc_points_rewards_user_points_log`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_wc_points_rewards_user_points_log`;
CREATE TABLE `wp_cjdqnd_wc_points_rewards_user_points_log` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `points` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_points_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `admin_user_id` bigint(20) DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_api_keys`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_api_keys`;
CREATE TABLE `wp_cjdqnd_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_attribute_taxonomies`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_attribute_taxonomies`;
CREATE TABLE `wp_cjdqnd_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  `attribute_orderby` varchar(200) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_downloadable_product_permissions`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_downloadable_product_permissions`;
CREATE TABLE `wp_cjdqnd_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_order_itemmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_order_itemmeta`;
CREATE TABLE `wp_cjdqnd_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_order_items`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_order_items`;
CREATE TABLE `wp_cjdqnd_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_payment_tokenmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_payment_tokenmeta`;
CREATE TABLE `wp_cjdqnd_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_payment_tokens`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_payment_tokens`;
CREATE TABLE `wp_cjdqnd_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL,
  `gateway_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_sessions`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_sessions`;
CREATE TABLE `wp_cjdqnd_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_shipping_zones`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_shipping_zones`;
CREATE TABLE `wp_cjdqnd_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_shipping_zone_locations`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_shipping_zone_locations`;
CREATE TABLE `wp_cjdqnd_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_shipping_zone_methods`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_shipping_zone_methods`;
CREATE TABLE `wp_cjdqnd_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL,
  `method_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_tax_rates`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_tax_rates`;
CREATE TABLE `wp_cjdqnd_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_woocommerce_tax_rate_locations`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
-- Last check: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_woocommerce_tax_rate_locations`;
CREATE TABLE `wp_cjdqnd_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_yoast_seo_links`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_yoast_seo_links`;
CREATE TABLE `wp_cjdqnd_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_yoast_seo_meta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_yoast_seo_meta`;
CREATE TABLE `wp_cjdqnd_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cjdqnd_yuzoviews`
--
-- Creation: Feb 04, 2018 at 02:42 AM
-- Last update: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_cjdqnd_yuzoviews`;
CREATE TABLE `wp_cjdqnd_yuzoviews` (
  `ID` int(11) NOT NULL,
  `post_id` int(15) NOT NULL,
  `views` int(14) NOT NULL,
  `last_viewed` datetime NOT NULL,
  `modified` int(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_comments`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_links`;
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
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_posts`;
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
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--
-- Creation: Feb 04, 2018 at 02:42 AM
--

DROP TABLE IF EXISTS `wp_users`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_cjdqnd_2_buddyboss_media`
--
ALTER TABLE `wp_cjdqnd_2_buddyboss_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_id` (`media_id`),
  ADD KEY `media_author` (`media_author`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `media_author_id` (`album_id`,`media_author`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `wp_cjdqnd_2_buddyboss_media_albums`
--
ALTER TABLE `wp_cjdqnd_2_buddyboss_media_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_2_commentmeta`
--
ALTER TABLE `wp_cjdqnd_2_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_2_comments`
--
ALTER TABLE `wp_cjdqnd_2_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_cjdqnd_2_gf_addon_feed`
--
ALTER TABLE `wp_cjdqnd_2_gf_addon_feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addon_form` (`addon_slug`,`form_id`);

--
-- Indexes for table `wp_cjdqnd_2_give_customermeta`
--
ALTER TABLE `wp_cjdqnd_2_give_customermeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_cjdqnd_2_give_customers`
--
ALTER TABLE `wp_cjdqnd_2_give_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `user` (`user_id`);

--
-- Indexes for table `wp_cjdqnd_2_give_subscriptions`
--
ALTER TABLE `wp_cjdqnd_2_give_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`),
  ADD KEY `customer` (`customer_id`),
  ADD KEY `transaction` (`transaction_id`),
  ADD KEY `customer_and_status` (`customer_id`,`status`);

--
-- Indexes for table `wp_cjdqnd_2_links`
--
ALTER TABLE `wp_cjdqnd_2_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_cjdqnd_2_options`
--
ALTER TABLE `wp_cjdqnd_2_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `wpe_autoload_options_index` (`autoload`);

--
-- Indexes for table `wp_cjdqnd_2_postmeta`
--
ALTER TABLE `wp_cjdqnd_2_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_2_posts`
--
ALTER TABLE `wp_cjdqnd_2_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_cjdqnd_2_rg_form`
--
ALTER TABLE `wp_cjdqnd_2_rg_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_2_rg_form_meta`
--
ALTER TABLE `wp_cjdqnd_2_rg_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_cjdqnd_2_rg_form_view`
--
ALTER TABLE `wp_cjdqnd_2_rg_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_cjdqnd_2_rg_incomplete_submissions`
--
ALTER TABLE `wp_cjdqnd_2_rg_incomplete_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_cjdqnd_2_rg_lead`
--
ALTER TABLE `wp_cjdqnd_2_rg_lead`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wp_cjdqnd_2_rg_lead_detail`
--
ALTER TABLE `wp_cjdqnd_2_rg_lead_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_field_number` (`lead_id`,`field_number`),
  ADD KEY `lead_field_value` (`value`(191));

--
-- Indexes for table `wp_cjdqnd_2_rg_lead_detail_long`
--
ALTER TABLE `wp_cjdqnd_2_rg_lead_detail_long`
  ADD PRIMARY KEY (`lead_detail_id`);

--
-- Indexes for table `wp_cjdqnd_2_rg_lead_meta`
--
ALTER TABLE `wp_cjdqnd_2_rg_lead_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `form_id_meta_key` (`form_id`,`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_2_rg_lead_notes`
--
ALTER TABLE `wp_cjdqnd_2_rg_lead_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_user_key` (`lead_id`,`user_id`);

--
-- Indexes for table `wp_cjdqnd_2_smush_dir_images`
--
ALTER TABLE `wp_cjdqnd_2_smush_dir_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `path` (`path`(191)),
  ADD KEY `image_size` (`image_size`);

--
-- Indexes for table `wp_cjdqnd_2_snippets`
--
ALTER TABLE `wp_cjdqnd_2_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_2_termmeta`
--
ALTER TABLE `wp_cjdqnd_2_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_2_terms`
--
ALTER TABLE `wp_cjdqnd_2_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_cjdqnd_2_term_relationships`
--
ALTER TABLE `wp_cjdqnd_2_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_cjdqnd_2_term_taxonomy`
--
ALTER TABLE `wp_cjdqnd_2_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_cjdqnd_ajaxsearchpro`
--
ALTER TABLE `wp_cjdqnd_ajaxsearchpro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_ajaxsearchpro_priorities`
--
ALTER TABLE `wp_cjdqnd_ajaxsearchpro_priorities`
  ADD PRIMARY KEY (`post_id`,`blog_id`);

--
-- Indexes for table `wp_cjdqnd_ajaxsearchpro_statistics`
--
ALTER TABLE `wp_cjdqnd_ajaxsearchpro_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_arete_buddypress_smileys_manage`
--
ALTER TABLE `wp_cjdqnd_arete_buddypress_smileys_manage`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_cjdqnd_blogs`
--
ALTER TABLE `wp_cjdqnd_blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `domain` (`domain`(50),`path`(5)),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `wp_cjdqnd_blog_versions`
--
ALTER TABLE `wp_cjdqnd_blog_versions`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `db_version` (`db_version`);

--
-- Indexes for table `wp_cjdqnd_bp_activity`
--
ALTER TABLE `wp_cjdqnd_bp_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_recorded` (`date_recorded`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `component` (`component`),
  ADD KEY `type` (`type`),
  ADD KEY `mptt_left` (`mptt_left`),
  ADD KEY `mptt_right` (`mptt_right`),
  ADD KEY `hide_sitewide` (`hide_sitewide`),
  ADD KEY `is_spam` (`is_spam`);

--
-- Indexes for table `wp_cjdqnd_bp_activity_meta`
--
ALTER TABLE `wp_cjdqnd_bp_activity_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_bp_friends`
--
ALTER TABLE `wp_cjdqnd_bp_friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `initiator_user_id` (`initiator_user_id`),
  ADD KEY `friend_user_id` (`friend_user_id`);

--
-- Indexes for table `wp_cjdqnd_bp_groups`
--
ALTER TABLE `wp_cjdqnd_bp_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `status` (`status`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `wp_cjdqnd_bp_groups_groupmeta`
--
ALTER TABLE `wp_cjdqnd_bp_groups_groupmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_bp_groups_members`
--
ALTER TABLE `wp_cjdqnd_bp_groups_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `is_admin` (`is_admin`),
  ADD KEY `is_mod` (`is_mod`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `inviter_id` (`inviter_id`),
  ADD KEY `is_confirmed` (`is_confirmed`);

--
-- Indexes for table `wp_cjdqnd_bp_links`
--
ALTER TABLE `wp_cjdqnd_bp_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cloud_id` (`cloud_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `url_hash` (`url_hash`),
  ADD KEY `slug` (`slug`),
  ADD KEY `name` (`name`(20)),
  ADD KEY `status` (`status`),
  ADD KEY `vote_count` (`vote_count`),
  ADD KEY `vote_total` (`vote_total`),
  ADD KEY `popularity` (`popularity`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `date_updated` (`date_updated`);

--
-- Indexes for table `wp_cjdqnd_bp_links_categories`
--
ALTER TABLE `wp_cjdqnd_bp_links_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `wp_cjdqnd_bp_links_linkmeta`
--
ALTER TABLE `wp_cjdqnd_bp_links_linkmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`),
  ADD KEY `link_id` (`link_id`);

--
-- Indexes for table `wp_cjdqnd_bp_links_votes`
--
ALTER TABLE `wp_cjdqnd_bp_links_votes`
  ADD PRIMARY KEY (`user_id`,`link_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_cjdqnd_bp_messages_drafts`
--
ALTER TABLE `wp_cjdqnd_bp_messages_drafts`
  ADD PRIMARY KEY (`bbm_draft_id`);

--
-- Indexes for table `wp_cjdqnd_bp_messages_labels`
--
ALTER TABLE `wp_cjdqnd_bp_messages_labels`
  ADD PRIMARY KEY (`bbm_label_id`);

--
-- Indexes for table `wp_cjdqnd_bp_messages_label_message`
--
ALTER TABLE `wp_cjdqnd_bp_messages_label_message`
  ADD PRIMARY KEY (`bbm_label_msg_id`);

--
-- Indexes for table `wp_cjdqnd_bp_messages_messages`
--
ALTER TABLE `wp_cjdqnd_bp_messages_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Indexes for table `wp_cjdqnd_bp_messages_meta`
--
ALTER TABLE `wp_cjdqnd_bp_messages_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_bp_messages_notices`
--
ALTER TABLE `wp_cjdqnd_bp_messages_notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_active` (`is_active`);

--
-- Indexes for table `wp_cjdqnd_bp_messages_recipients`
--
ALTER TABLE `wp_cjdqnd_bp_messages_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `sender_only` (`sender_only`),
  ADD KEY `unread_count` (`unread_count`);

--
-- Indexes for table `wp_cjdqnd_bp_notifications`
--
ALTER TABLE `wp_cjdqnd_bp_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `is_new` (`is_new`),
  ADD KEY `component_name` (`component_name`),
  ADD KEY `component_action` (`component_action`),
  ADD KEY `useritem` (`user_id`,`is_new`);

--
-- Indexes for table `wp_cjdqnd_bp_notifications_meta`
--
ALTER TABLE `wp_cjdqnd_bp_notifications_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_bp_user_blogs`
--
ALTER TABLE `wp_cjdqnd_bp_user_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `wp_cjdqnd_bp_user_blogs_blogmeta`
--
ALTER TABLE `wp_cjdqnd_bp_user_blogs_blogmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_bp_xprofile_data`
--
ALTER TABLE `wp_cjdqnd_bp_xprofile_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_cjdqnd_bp_xprofile_fields`
--
ALTER TABLE `wp_cjdqnd_bp_xprofile_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `field_order` (`field_order`),
  ADD KEY `can_delete` (`can_delete`),
  ADD KEY `is_required` (`is_required`);

--
-- Indexes for table `wp_cjdqnd_bp_xprofile_groups`
--
ALTER TABLE `wp_cjdqnd_bp_xprofile_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `can_delete` (`can_delete`);

--
-- Indexes for table `wp_cjdqnd_bp_xprofile_meta`
--
ALTER TABLE `wp_cjdqnd_bp_xprofile_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_buddyboss_media`
--
ALTER TABLE `wp_cjdqnd_buddyboss_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_id` (`media_id`),
  ADD KEY `media_author` (`media_author`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `media_author_id` (`album_id`,`media_author`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `wp_cjdqnd_buddyboss_media_albums`
--
ALTER TABLE `wp_cjdqnd_buddyboss_media_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_commentmeta`
--
ALTER TABLE `wp_cjdqnd_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_comments`
--
ALTER TABLE `wp_cjdqnd_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_cjdqnd_duplicator_packages`
--
ALTER TABLE `wp_cjdqnd_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Indexes for table `wp_cjdqnd_email_log`
--
ALTER TABLE `wp_cjdqnd_email_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_et_bloom_stats`
--
ALTER TABLE `wp_cjdqnd_et_bloom_stats`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_cjdqnd_et_social_stats`
--
ALTER TABLE `wp_cjdqnd_et_social_stats`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_cjdqnd_ewwwio_images`
--
ALTER TABLE `wp_cjdqnd_ewwwio_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `path_image_size` (`path`(255),`image_size`);

--
-- Indexes for table `wp_cjdqnd_frontend_post_forms`
--
ALTER TABLE `wp_cjdqnd_frontend_post_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_cjdqnd_frontend_post_form_meta`
--
ALTER TABLE `wp_cjdqnd_frontend_post_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_cjdqnd_geodir_attachments`
--
ALTER TABLE `wp_cjdqnd_geodir_attachments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_cjdqnd_geodir_claim`
--
ALTER TABLE `wp_cjdqnd_geodir_claim`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `wp_cjdqnd_geodir_countries`
--
ALTER TABLE `wp_cjdqnd_geodir_countries`
  ADD PRIMARY KEY (`CountryId`);

--
-- Indexes for table `wp_cjdqnd_geodir_coupons`
--
ALTER TABLE `wp_cjdqnd_geodir_coupons`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `wp_cjdqnd_geodir_custom_advance_search_fields`
--
ALTER TABLE `wp_cjdqnd_geodir_custom_advance_search_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_geodir_custom_fields`
--
ALTER TABLE `wp_cjdqnd_geodir_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_geodir_custom_sort_fields`
--
ALTER TABLE `wp_cjdqnd_geodir_custom_sort_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_geodir_event_schedule`
--
ALTER TABLE `wp_cjdqnd_geodir_event_schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `wp_cjdqnd_geodir_gd_clinics_detail`
--
ALTER TABLE `wp_cjdqnd_geodir_gd_clinics_detail`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_locations` (`post_locations`(191)),
  ADD KEY `is_featured` (`is_featured`);

--
-- Indexes for table `wp_cjdqnd_geodir_gd_crisis_line_detail`
--
ALTER TABLE `wp_cjdqnd_geodir_gd_crisis_line_detail`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_locations` (`post_locations`(191)),
  ADD KEY `is_featured` (`is_featured`);

--
-- Indexes for table `wp_cjdqnd_geodir_gd_event_detail`
--
ALTER TABLE `wp_cjdqnd_geodir_gd_event_detail`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_locations` (`post_locations`(191)),
  ADD KEY `is_featured` (`is_featured`);

--
-- Indexes for table `wp_cjdqnd_geodir_gd_gd_job_detail`
--
ALTER TABLE `wp_cjdqnd_geodir_gd_gd_job_detail`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_locations` (`post_locations`(191)),
  ADD KEY `is_featured` (`is_featured`);

--
-- Indexes for table `wp_cjdqnd_geodir_gd_job_detail`
--
ALTER TABLE `wp_cjdqnd_geodir_gd_job_detail`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_locations` (`post_locations`(191)),
  ADD KEY `is_featured` (`is_featured`);

--
-- Indexes for table `wp_cjdqnd_geodir_gd_office_detail`
--
ALTER TABLE `wp_cjdqnd_geodir_gd_office_detail`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_locations` (`post_locations`(191)),
  ADD KEY `is_featured` (`is_featured`);

--
-- Indexes for table `wp_cjdqnd_geodir_gd_place_detail`
--
ALTER TABLE `wp_cjdqnd_geodir_gd_place_detail`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_locations` (`post_locations`(191)),
  ADD KEY `is_featured` (`is_featured`);

--
-- Indexes for table `wp_cjdqnd_geodir_gd_referral_detail`
--
ALTER TABLE `wp_cjdqnd_geodir_gd_referral_detail`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_locations` (`post_locations`(191)),
  ADD KEY `is_featured` (`is_featured`);

--
-- Indexes for table `wp_cjdqnd_geodir_gd_support_detail`
--
ALTER TABLE `wp_cjdqnd_geodir_gd_support_detail`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_locations` (`post_locations`(191)),
  ADD KEY `is_featured` (`is_featured`);

--
-- Indexes for table `wp_cjdqnd_geodir_invoice`
--
ALTER TABLE `wp_cjdqnd_geodir_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_geodir_location_seo`
--
ALTER TABLE `wp_cjdqnd_geodir_location_seo`
  ADD PRIMARY KEY (`seo_id`);

--
-- Indexes for table `wp_cjdqnd_geodir_post_icon`
--
ALTER TABLE `wp_cjdqnd_geodir_post_icon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_geodir_post_locations`
--
ALTER TABLE `wp_cjdqnd_geodir_post_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `wp_cjdqnd_geodir_post_neighbourhood`
--
ALTER TABLE `wp_cjdqnd_geodir_post_neighbourhood`
  ADD PRIMARY KEY (`hood_id`);

--
-- Indexes for table `wp_cjdqnd_geodir_post_review`
--
ALTER TABLE `wp_cjdqnd_geodir_post_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_geodir_price`
--
ALTER TABLE `wp_cjdqnd_geodir_price`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `wp_cjdqnd_geodir_term_meta`
--
ALTER TABLE `wp_cjdqnd_geodir_term_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_gf_addon_feed`
--
ALTER TABLE `wp_cjdqnd_gf_addon_feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addon_form` (`addon_slug`,`form_id`);

--
-- Indexes for table `wp_cjdqnd_give_donormeta`
--
ALTER TABLE `wp_cjdqnd_give_donormeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `customer_id` (`donor_id`),
  ADD KEY `meta_key` (`meta_key`),
  ADD KEY `donor_id` (`donor_id`);

--
-- Indexes for table `wp_cjdqnd_give_donors`
--
ALTER TABLE `wp_cjdqnd_give_donors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `user` (`user_id`);

--
-- Indexes for table `wp_cjdqnd_give_formmeta`
--
ALTER TABLE `wp_cjdqnd_give_formmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_give_logmeta`
--
ALTER TABLE `wp_cjdqnd_give_logmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `log_id` (`log_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_give_logs`
--
ALTER TABLE `wp_cjdqnd_give_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_cjdqnd_give_paymentmeta`
--
ALTER TABLE `wp_cjdqnd_give_paymentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_give_subscriptions`
--
ALTER TABLE `wp_cjdqnd_give_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`),
  ADD KEY `customer` (`customer_id`),
  ADD KEY `transaction` (`transaction_id`),
  ADD KEY `customer_and_status` (`customer_id`,`status`);

--
-- Indexes for table `wp_cjdqnd_gonzales_disabled`
--
ALTER TABLE `wp_cjdqnd_gonzales_disabled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_gonzales_enabled`
--
ALTER TABLE `wp_cjdqnd_gonzales_enabled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_groups_capability`
--
ALTER TABLE `wp_cjdqnd_groups_capability`
  ADD PRIMARY KEY (`capability_id`),
  ADD UNIQUE KEY `capability` (`capability`(100)),
  ADD KEY `capability_kco` (`capability`(20),`class`(20),`object`(20));

--
-- Indexes for table `wp_cjdqnd_groups_group`
--
ALTER TABLE `wp_cjdqnd_groups_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_n` (`name`);

--
-- Indexes for table `wp_cjdqnd_groups_group_capability`
--
ALTER TABLE `wp_cjdqnd_groups_group_capability`
  ADD PRIMARY KEY (`group_id`,`capability_id`),
  ADD KEY `group_capability_cg` (`capability_id`,`group_id`);

--
-- Indexes for table `wp_cjdqnd_groups_user_capability`
--
ALTER TABLE `wp_cjdqnd_groups_user_capability`
  ADD PRIMARY KEY (`user_id`,`capability_id`),
  ADD KEY `user_capability_cu` (`capability_id`,`user_id`);

--
-- Indexes for table `wp_cjdqnd_groups_user_group`
--
ALTER TABLE `wp_cjdqnd_groups_user_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `user_group_gu` (`group_id`,`user_id`);

--
-- Indexes for table `wp_cjdqnd_hmwp_ms_intrusions`
--
ALTER TABLE `wp_cjdqnd_hmwp_ms_intrusions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_links`
--
ALTER TABLE `wp_cjdqnd_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_cjdqnd_mcc_blogs_groups`
--
ALTER TABLE `wp_cjdqnd_mcc_blogs_groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_cjdqnd_mcc_blogs_groups_relationship`
--
ALTER TABLE `wp_cjdqnd_mcc_blogs_groups_relationship`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `group` (`blog_group_id`,`blog_id`),
  ADD KEY `blog_group_id` (`blog_group_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `wp_cjdqnd_mcc_queue`
--
ALTER TABLE `wp_cjdqnd_mcc_queue`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `src_blog_id` (`src_blog_id`),
  ADD KEY `dest_blog_id` (`dest_blog_id`);

--
-- Indexes for table `wp_cjdqnd_mcc_synced_posts_relationships`
--
ALTER TABLE `wp_cjdqnd_mcc_synced_posts_relationships`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `relation` (`src_blog_id`,`src_post_id`,`dest_blog_id`,`dest_post_id`),
  ADD UNIQUE KEY `dest_relation` (`dest_blog_id`,`dest_post_id`);

--
-- Indexes for table `wp_cjdqnd_mepr_events`
--
ALTER TABLE `wp_cjdqnd_mepr_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_ip` (`ip`(191)),
  ADD KEY `event_args` (`args`(191)),
  ADD KEY `event_event` (`event`(191)),
  ADD KEY `event_evt_id` (`evt_id`(191)),
  ADD KEY `event_evt_id_type` (`evt_id_type`(191)),
  ADD KEY `event_created_at` (`created_at`);

--
-- Indexes for table `wp_cjdqnd_mepr_jobs`
--
ALTER TABLE `wp_cjdqnd_mepr_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_runtime` (`runtime`),
  ADD KEY `job_firstrun` (`firstrun`),
  ADD KEY `job_lastrun` (`lastrun`),
  ADD KEY `job_status` (`status`(191)),
  ADD KEY `job_priority` (`priority`),
  ADD KEY `job_tries` (`tries`),
  ADD KEY `job_class` (`class`(191)),
  ADD KEY `job_batch` (`batch`(191)),
  ADD KEY `job_created_at` (`created_at`);

--
-- Indexes for table `wp_cjdqnd_mepr_tax_rates`
--
ALTER TABLE `wp_cjdqnd_mepr_tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mp_tax_country` (`tax_country`(191)),
  ADD KEY `mp_tax_state` (`tax_state`(191)),
  ADD KEY `mp_tax_rate` (`tax_rate`(191)),
  ADD KEY `mp_tax_desc` (`tax_desc`(191)),
  ADD KEY `mp_tax_order` (`tax_order`),
  ADD KEY `mp_tax_class` (`tax_class`(191)),
  ADD KEY `mp_tax_priority` (`tax_priority`),
  ADD KEY `mp_tax_compound` (`tax_compound`),
  ADD KEY `mp_tax_shipping` (`tax_shipping`);

--
-- Indexes for table `wp_cjdqnd_mepr_tax_rate_locations`
--
ALTER TABLE `wp_cjdqnd_mepr_tax_rate_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mp_tax_rate_id` (`tax_rate_id`),
  ADD KEY `mp_location_type` (`location_type`),
  ADD KEY `mp_location_code` (`location_code`(191)),
  ADD KEY `mp_location_type_code` (`location_type`,`location_code`(191));

--
-- Indexes for table `wp_cjdqnd_mepr_transactions`
--
ALTER TABLE `wp_cjdqnd_mepr_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amount` (`amount`),
  ADD KEY `total` (`total`),
  ADD KEY `tax_amount` (`tax_amount`),
  ADD KEY `tax_rate` (`tax_rate`),
  ADD KEY `tax_desc` (`tax_desc`(191)),
  ADD KEY `tax_compound` (`tax_compound`),
  ADD KEY `tax_shipping` (`tax_shipping`),
  ADD KEY `tax_class` (`tax_class`(191)),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status` (`status`(191)),
  ADD KEY `txn_type` (`txn_type`(191)),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `trans_num` (`trans_num`(191)),
  ADD KEY `subscription_id` (`subscription_id`),
  ADD KEY `gateway` (`gateway`(191)),
  ADD KEY `ip_addr` (`ip_addr`(191)),
  ADD KEY `prorated` (`prorated`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `expires_at` (`expires_at`);

--
-- Indexes for table `wp_cjdqnd_miwosql_queries`
--
ALTER TABLE `wp_cjdqnd_miwosql_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_ms_snippets`
--
ALTER TABLE `wp_cjdqnd_ms_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_options`
--
ALTER TABLE `wp_cjdqnd_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `wpe_autoload_options_index` (`autoload`);

--
-- Indexes for table `wp_cjdqnd_p2p`
--
ALTER TABLE `wp_cjdqnd_p2p`
  ADD PRIMARY KEY (`p2p_id`),
  ADD KEY `p2p_from` (`p2p_from`),
  ADD KEY `p2p_to` (`p2p_to`),
  ADD KEY `p2p_type` (`p2p_type`);

--
-- Indexes for table `wp_cjdqnd_p2pmeta`
--
ALTER TABLE `wp_cjdqnd_p2pmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `p2p_id` (`p2p_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_pmxe_exports`
--
ALTER TABLE `wp_cjdqnd_pmxe_exports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_pmxe_google_cats`
--
ALTER TABLE `wp_cjdqnd_pmxe_google_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_pmxe_posts`
--
ALTER TABLE `wp_cjdqnd_pmxe_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_pmxe_templates`
--
ALTER TABLE `wp_cjdqnd_pmxe_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_postmeta`
--
ALTER TABLE `wp_cjdqnd_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_posts`
--
ALTER TABLE `wp_cjdqnd_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `post_name` (`post_name`(191));

--
-- Indexes for table `wp_cjdqnd_registration_log`
--
ALTER TABLE `wp_cjdqnd_registration_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IP` (`IP`);

--
-- Indexes for table `wp_cjdqnd_rg_form`
--
ALTER TABLE `wp_cjdqnd_rg_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_rg_form_meta`
--
ALTER TABLE `wp_cjdqnd_rg_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_cjdqnd_rg_form_view`
--
ALTER TABLE `wp_cjdqnd_rg_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_cjdqnd_rg_incomplete_submissions`
--
ALTER TABLE `wp_cjdqnd_rg_incomplete_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_cjdqnd_rg_lead`
--
ALTER TABLE `wp_cjdqnd_rg_lead`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wp_cjdqnd_rg_lead_detail`
--
ALTER TABLE `wp_cjdqnd_rg_lead_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_field_number` (`lead_id`,`field_number`),
  ADD KEY `lead_field_value` (`value`(191));

--
-- Indexes for table `wp_cjdqnd_rg_lead_detail_long`
--
ALTER TABLE `wp_cjdqnd_rg_lead_detail_long`
  ADD PRIMARY KEY (`lead_detail_id`);

--
-- Indexes for table `wp_cjdqnd_rg_lead_meta`
--
ALTER TABLE `wp_cjdqnd_rg_lead_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `form_id_meta_key` (`form_id`,`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_rg_lead_notes`
--
ALTER TABLE `wp_cjdqnd_rg_lead_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_user_key` (`lead_id`,`user_id`);

--
-- Indexes for table `wp_cjdqnd_signups`
--
ALTER TABLE `wp_cjdqnd_signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD KEY `activation_key` (`activation_key`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_login_email` (`user_login`,`user_email`),
  ADD KEY `domain_path` (`domain`,`path`);

--
-- Indexes for table `wp_cjdqnd_site`
--
ALTER TABLE `wp_cjdqnd_site`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain` (`domain`(140),`path`(51));

--
-- Indexes for table `wp_cjdqnd_sitemeta`
--
ALTER TABLE `wp_cjdqnd_sitemeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `wp_cjdqnd_smush_dir_images`
--
ALTER TABLE `wp_cjdqnd_smush_dir_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `path` (`path`(191)),
  ADD KEY `image_size` (`image_size`);

--
-- Indexes for table `wp_cjdqnd_snippets`
--
ALTER TABLE `wp_cjdqnd_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cjdqnd_snp_stats`
--
ALTER TABLE `wp_cjdqnd_snp_stats`
  ADD UNIQUE KEY `date_ID` (`date`,`ID`,`AB_ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `date` (`date`),
  ADD KEY `AB_ID` (`AB_ID`);

--
-- Indexes for table `wp_cjdqnd_termmeta`
--
ALTER TABLE `wp_cjdqnd_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_terms`
--
ALTER TABLE `wp_cjdqnd_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_cjdqnd_term_relationships`
--
ALTER TABLE `wp_cjdqnd_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_cjdqnd_term_taxonomy`
--
ALTER TABLE `wp_cjdqnd_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_cjdqnd_um_conversations`
--
ALTER TABLE `wp_cjdqnd_um_conversations`
  ADD UNIQUE KEY `conversation_id` (`conversation_id`);

--
-- Indexes for table `wp_cjdqnd_um_followers`
--
ALTER TABLE `wp_cjdqnd_um_followers`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_cjdqnd_um_friends`
--
ALTER TABLE `wp_cjdqnd_um_friends`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_cjdqnd_um_messages`
--
ALTER TABLE `wp_cjdqnd_um_messages`
  ADD UNIQUE KEY `message_id` (`message_id`);

--
-- Indexes for table `wp_cjdqnd_um_notifications`
--
ALTER TABLE `wp_cjdqnd_um_notifications`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_cjdqnd_usermeta`
--
ALTER TABLE `wp_cjdqnd_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_users`
--
ALTER TABLE `wp_cjdqnd_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_cjdqnd_wc_points_rewards_user_points`
--
ALTER TABLE `wp_cjdqnd_wc_points_rewards_user_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wc_points_rewards_user_points_user_id_points_balance` (`user_id`,`points_balance`),
  ADD KEY `idx_wc_points_rewards_user_points_date_points_balance` (`date`,`points_balance`);

--
-- Indexes for table `wp_cjdqnd_wc_points_rewards_user_points_log`
--
ALTER TABLE `wp_cjdqnd_wc_points_rewards_user_points_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wc_points_rewards_user_points_log_date` (`date`),
  ADD KEY `idx_wc_points_rewards_user_points_log_type` (`type`(191)),
  ADD KEY `idx_wc_points_rewards_user_points_log_points` (`points`);

--
-- Indexes for table `wp_cjdqnd_woocommerce_api_keys`
--
ALTER TABLE `wp_cjdqnd_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_cjdqnd_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_cjdqnd_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `wp_cjdqnd_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_cjdqnd_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`);

--
-- Indexes for table `wp_cjdqnd_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_cjdqnd_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_woocommerce_order_items`
--
ALTER TABLE `wp_cjdqnd_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_cjdqnd_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_cjdqnd_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cjdqnd_woocommerce_payment_tokens`
--
ALTER TABLE `wp_cjdqnd_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_cjdqnd_woocommerce_sessions`
--
ALTER TABLE `wp_cjdqnd_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_cjdqnd_woocommerce_shipping_zones`
--
ALTER TABLE `wp_cjdqnd_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_cjdqnd_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_cjdqnd_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_cjdqnd_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_cjdqnd_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_cjdqnd_woocommerce_tax_rates`
--
ALTER TABLE `wp_cjdqnd_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`),
  ADD KEY `tax_rate_class` (`tax_rate_class`(191));

--
-- Indexes for table `wp_cjdqnd_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_cjdqnd_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_cjdqnd_yoast_seo_links`
--
ALTER TABLE `wp_cjdqnd_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_cjdqnd_yoast_seo_meta`
--
ALTER TABLE `wp_cjdqnd_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- Indexes for table `wp_cjdqnd_yuzoviews`
--
ALTER TABLE `wp_cjdqnd_yuzoviews`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `wpe_autoload_options_index` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_buddyboss_media`
--
ALTER TABLE `wp_cjdqnd_2_buddyboss_media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_buddyboss_media_albums`
--
ALTER TABLE `wp_cjdqnd_2_buddyboss_media_albums`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_commentmeta`
--
ALTER TABLE `wp_cjdqnd_2_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_comments`
--
ALTER TABLE `wp_cjdqnd_2_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_gf_addon_feed`
--
ALTER TABLE `wp_cjdqnd_2_gf_addon_feed`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_give_customermeta`
--
ALTER TABLE `wp_cjdqnd_2_give_customermeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_give_customers`
--
ALTER TABLE `wp_cjdqnd_2_give_customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_give_subscriptions`
--
ALTER TABLE `wp_cjdqnd_2_give_subscriptions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_links`
--
ALTER TABLE `wp_cjdqnd_2_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_options`
--
ALTER TABLE `wp_cjdqnd_2_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_postmeta`
--
ALTER TABLE `wp_cjdqnd_2_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_posts`
--
ALTER TABLE `wp_cjdqnd_2_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_rg_form`
--
ALTER TABLE `wp_cjdqnd_2_rg_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_rg_form_view`
--
ALTER TABLE `wp_cjdqnd_2_rg_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_rg_lead`
--
ALTER TABLE `wp_cjdqnd_2_rg_lead`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_rg_lead_detail`
--
ALTER TABLE `wp_cjdqnd_2_rg_lead_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_rg_lead_meta`
--
ALTER TABLE `wp_cjdqnd_2_rg_lead_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_rg_lead_notes`
--
ALTER TABLE `wp_cjdqnd_2_rg_lead_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_smush_dir_images`
--
ALTER TABLE `wp_cjdqnd_2_smush_dir_images`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_snippets`
--
ALTER TABLE `wp_cjdqnd_2_snippets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_termmeta`
--
ALTER TABLE `wp_cjdqnd_2_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_terms`
--
ALTER TABLE `wp_cjdqnd_2_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_2_term_taxonomy`
--
ALTER TABLE `wp_cjdqnd_2_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_ajaxsearchpro`
--
ALTER TABLE `wp_cjdqnd_ajaxsearchpro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_ajaxsearchpro_statistics`
--
ALTER TABLE `wp_cjdqnd_ajaxsearchpro_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_arete_buddypress_smileys_manage`
--
ALTER TABLE `wp_cjdqnd_arete_buddypress_smileys_manage`
  MODIFY `id` mediumint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_blogs`
--
ALTER TABLE `wp_cjdqnd_blogs`
  MODIFY `blog_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_activity`
--
ALTER TABLE `wp_cjdqnd_bp_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_activity_meta`
--
ALTER TABLE `wp_cjdqnd_bp_activity_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_friends`
--
ALTER TABLE `wp_cjdqnd_bp_friends`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_groups`
--
ALTER TABLE `wp_cjdqnd_bp_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_groups_groupmeta`
--
ALTER TABLE `wp_cjdqnd_bp_groups_groupmeta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_groups_members`
--
ALTER TABLE `wp_cjdqnd_bp_groups_members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_links`
--
ALTER TABLE `wp_cjdqnd_bp_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_links_categories`
--
ALTER TABLE `wp_cjdqnd_bp_links_categories`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_links_linkmeta`
--
ALTER TABLE `wp_cjdqnd_bp_links_linkmeta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_messages_drafts`
--
ALTER TABLE `wp_cjdqnd_bp_messages_drafts`
  MODIFY `bbm_draft_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_messages_labels`
--
ALTER TABLE `wp_cjdqnd_bp_messages_labels`
  MODIFY `bbm_label_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_messages_label_message`
--
ALTER TABLE `wp_cjdqnd_bp_messages_label_message`
  MODIFY `bbm_label_msg_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_messages_messages`
--
ALTER TABLE `wp_cjdqnd_bp_messages_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_messages_meta`
--
ALTER TABLE `wp_cjdqnd_bp_messages_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_messages_notices`
--
ALTER TABLE `wp_cjdqnd_bp_messages_notices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_messages_recipients`
--
ALTER TABLE `wp_cjdqnd_bp_messages_recipients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_notifications`
--
ALTER TABLE `wp_cjdqnd_bp_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_notifications_meta`
--
ALTER TABLE `wp_cjdqnd_bp_notifications_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_user_blogs`
--
ALTER TABLE `wp_cjdqnd_bp_user_blogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_user_blogs_blogmeta`
--
ALTER TABLE `wp_cjdqnd_bp_user_blogs_blogmeta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_xprofile_data`
--
ALTER TABLE `wp_cjdqnd_bp_xprofile_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_xprofile_fields`
--
ALTER TABLE `wp_cjdqnd_bp_xprofile_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_xprofile_groups`
--
ALTER TABLE `wp_cjdqnd_bp_xprofile_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_bp_xprofile_meta`
--
ALTER TABLE `wp_cjdqnd_bp_xprofile_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_buddyboss_media`
--
ALTER TABLE `wp_cjdqnd_buddyboss_media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_buddyboss_media_albums`
--
ALTER TABLE `wp_cjdqnd_buddyboss_media_albums`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_commentmeta`
--
ALTER TABLE `wp_cjdqnd_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_comments`
--
ALTER TABLE `wp_cjdqnd_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_duplicator_packages`
--
ALTER TABLE `wp_cjdqnd_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_email_log`
--
ALTER TABLE `wp_cjdqnd_email_log`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_et_bloom_stats`
--
ALTER TABLE `wp_cjdqnd_et_bloom_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_et_social_stats`
--
ALTER TABLE `wp_cjdqnd_et_social_stats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_ewwwio_images`
--
ALTER TABLE `wp_cjdqnd_ewwwio_images`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_frontend_post_forms`
--
ALTER TABLE `wp_cjdqnd_frontend_post_forms`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_frontend_post_form_meta`
--
ALTER TABLE `wp_cjdqnd_frontend_post_form_meta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_attachments`
--
ALTER TABLE `wp_cjdqnd_geodir_attachments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_claim`
--
ALTER TABLE `wp_cjdqnd_geodir_claim`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_countries`
--
ALTER TABLE `wp_cjdqnd_geodir_countries`
  MODIFY `CountryId` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_coupons`
--
ALTER TABLE `wp_cjdqnd_geodir_coupons`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_custom_advance_search_fields`
--
ALTER TABLE `wp_cjdqnd_geodir_custom_advance_search_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_custom_fields`
--
ALTER TABLE `wp_cjdqnd_geodir_custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_custom_sort_fields`
--
ALTER TABLE `wp_cjdqnd_geodir_custom_sort_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_event_schedule`
--
ALTER TABLE `wp_cjdqnd_geodir_event_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_invoice`
--
ALTER TABLE `wp_cjdqnd_geodir_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_location_seo`
--
ALTER TABLE `wp_cjdqnd_geodir_location_seo`
  MODIFY `seo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_post_icon`
--
ALTER TABLE `wp_cjdqnd_geodir_post_icon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_post_locations`
--
ALTER TABLE `wp_cjdqnd_geodir_post_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_post_neighbourhood`
--
ALTER TABLE `wp_cjdqnd_geodir_post_neighbourhood`
  MODIFY `hood_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_post_review`
--
ALTER TABLE `wp_cjdqnd_geodir_post_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_price`
--
ALTER TABLE `wp_cjdqnd_geodir_price`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_geodir_term_meta`
--
ALTER TABLE `wp_cjdqnd_geodir_term_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_gf_addon_feed`
--
ALTER TABLE `wp_cjdqnd_gf_addon_feed`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_give_donormeta`
--
ALTER TABLE `wp_cjdqnd_give_donormeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_give_donors`
--
ALTER TABLE `wp_cjdqnd_give_donors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_give_formmeta`
--
ALTER TABLE `wp_cjdqnd_give_formmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_give_logmeta`
--
ALTER TABLE `wp_cjdqnd_give_logmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_give_logs`
--
ALTER TABLE `wp_cjdqnd_give_logs`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_give_paymentmeta`
--
ALTER TABLE `wp_cjdqnd_give_paymentmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_give_subscriptions`
--
ALTER TABLE `wp_cjdqnd_give_subscriptions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_gonzales_disabled`
--
ALTER TABLE `wp_cjdqnd_gonzales_disabled`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_gonzales_enabled`
--
ALTER TABLE `wp_cjdqnd_gonzales_enabled`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_groups_capability`
--
ALTER TABLE `wp_cjdqnd_groups_capability`
  MODIFY `capability_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_groups_group`
--
ALTER TABLE `wp_cjdqnd_groups_group`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_hmwp_ms_intrusions`
--
ALTER TABLE `wp_cjdqnd_hmwp_ms_intrusions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_links`
--
ALTER TABLE `wp_cjdqnd_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_mcc_blogs_groups`
--
ALTER TABLE `wp_cjdqnd_mcc_blogs_groups`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_mcc_blogs_groups_relationship`
--
ALTER TABLE `wp_cjdqnd_mcc_blogs_groups_relationship`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_mcc_queue`
--
ALTER TABLE `wp_cjdqnd_mcc_queue`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_mcc_synced_posts_relationships`
--
ALTER TABLE `wp_cjdqnd_mcc_synced_posts_relationships`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_mepr_events`
--
ALTER TABLE `wp_cjdqnd_mepr_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_mepr_jobs`
--
ALTER TABLE `wp_cjdqnd_mepr_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_mepr_tax_rates`
--
ALTER TABLE `wp_cjdqnd_mepr_tax_rates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_mepr_tax_rate_locations`
--
ALTER TABLE `wp_cjdqnd_mepr_tax_rate_locations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_mepr_transactions`
--
ALTER TABLE `wp_cjdqnd_mepr_transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_miwosql_queries`
--
ALTER TABLE `wp_cjdqnd_miwosql_queries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_ms_snippets`
--
ALTER TABLE `wp_cjdqnd_ms_snippets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_options`
--
ALTER TABLE `wp_cjdqnd_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_p2p`
--
ALTER TABLE `wp_cjdqnd_p2p`
  MODIFY `p2p_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_p2pmeta`
--
ALTER TABLE `wp_cjdqnd_p2pmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_pmxe_exports`
--
ALTER TABLE `wp_cjdqnd_pmxe_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_pmxe_posts`
--
ALTER TABLE `wp_cjdqnd_pmxe_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_pmxe_templates`
--
ALTER TABLE `wp_cjdqnd_pmxe_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_postmeta`
--
ALTER TABLE `wp_cjdqnd_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_posts`
--
ALTER TABLE `wp_cjdqnd_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_registration_log`
--
ALTER TABLE `wp_cjdqnd_registration_log`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_rg_form`
--
ALTER TABLE `wp_cjdqnd_rg_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_rg_form_view`
--
ALTER TABLE `wp_cjdqnd_rg_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_rg_lead`
--
ALTER TABLE `wp_cjdqnd_rg_lead`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_rg_lead_detail`
--
ALTER TABLE `wp_cjdqnd_rg_lead_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_rg_lead_meta`
--
ALTER TABLE `wp_cjdqnd_rg_lead_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_rg_lead_notes`
--
ALTER TABLE `wp_cjdqnd_rg_lead_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_signups`
--
ALTER TABLE `wp_cjdqnd_signups`
  MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_site`
--
ALTER TABLE `wp_cjdqnd_site`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_sitemeta`
--
ALTER TABLE `wp_cjdqnd_sitemeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_smush_dir_images`
--
ALTER TABLE `wp_cjdqnd_smush_dir_images`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_snippets`
--
ALTER TABLE `wp_cjdqnd_snippets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_termmeta`
--
ALTER TABLE `wp_cjdqnd_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_terms`
--
ALTER TABLE `wp_cjdqnd_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_term_taxonomy`
--
ALTER TABLE `wp_cjdqnd_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_um_conversations`
--
ALTER TABLE `wp_cjdqnd_um_conversations`
  MODIFY `conversation_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_um_followers`
--
ALTER TABLE `wp_cjdqnd_um_followers`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_um_friends`
--
ALTER TABLE `wp_cjdqnd_um_friends`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_um_messages`
--
ALTER TABLE `wp_cjdqnd_um_messages`
  MODIFY `message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_um_notifications`
--
ALTER TABLE `wp_cjdqnd_um_notifications`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_usermeta`
--
ALTER TABLE `wp_cjdqnd_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_users`
--
ALTER TABLE `wp_cjdqnd_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_wc_points_rewards_user_points`
--
ALTER TABLE `wp_cjdqnd_wc_points_rewards_user_points`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_wc_points_rewards_user_points_log`
--
ALTER TABLE `wp_cjdqnd_wc_points_rewards_user_points_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_api_keys`
--
ALTER TABLE `wp_cjdqnd_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_cjdqnd_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_cjdqnd_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_cjdqnd_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_order_items`
--
ALTER TABLE `wp_cjdqnd_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_cjdqnd_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_payment_tokens`
--
ALTER TABLE `wp_cjdqnd_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_sessions`
--
ALTER TABLE `wp_cjdqnd_woocommerce_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_shipping_zones`
--
ALTER TABLE `wp_cjdqnd_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_cjdqnd_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_cjdqnd_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_tax_rates`
--
ALTER TABLE `wp_cjdqnd_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_cjdqnd_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_yoast_seo_links`
--
ALTER TABLE `wp_cjdqnd_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cjdqnd_yuzoviews`
--
ALTER TABLE `wp_cjdqnd_yuzoviews`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
