-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 01:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `copo`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `device` varchar(191) NOT NULL,
  `browser` varchar(191) NOT NULL,
  `ip` varchar(191) NOT NULL,
  `extra` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `device`, `browser`, `ip`, `extra`, `created_at`, `updated_at`) VALUES
(1, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-25 12:02:40', '2021-08-25 12:02:40'),
(2, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-25 13:52:51', '2021-08-25 13:52:51'),
(3, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-26 05:22:14', '2021-08-26 05:22:14'),
(4, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-26 06:43:05', '2021-08-26 06:43:05'),
(5, 2, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-26 06:50:12', '2021-08-26 06:50:12'),
(6, 3, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-26 06:52:33', '2021-08-26 06:52:33'),
(7, 3, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-26 06:54:42', '2021-08-26 06:54:42'),
(8, 2, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-26 06:55:21', '2021-08-26 06:55:21'),
(9, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-26 08:01:09', '2021-08-26 08:01:09'),
(10, 2, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-26 08:07:05', '2021-08-26 08:07:05'),
(11, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-26 12:19:44', '2021-08-26 12:19:44'),
(12, 2, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-26 12:45:11', '2021-08-26 12:45:11'),
(13, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-26 12:48:33', '2021-08-26 12:48:33'),
(14, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-27 05:14:28', '2021-08-27 05:14:28'),
(15, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-27 05:58:54', '2021-08-27 05:58:54'),
(16, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-08-27 12:16:44', '2021-08-27 12:16:44'),
(17, 1, '/Windows-6.1', 'Firefox/90.0', '127.0.0.1', NULL, '2021-08-27 12:25:09', '2021-08-27 12:25:09'),
(18, 1, '/Windows-6.1', 'Firefox/90.0', '127.0.0.1', NULL, '2021-08-27 12:27:52', '2021-08-27 12:27:52'),
(19, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-09-02 06:26:12', '2021-09-02 06:26:12'),
(20, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-09-02 06:26:41', '2021-09-02 06:26:41'),
(21, 1, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-09-02 06:53:52', '2021-09-02 06:53:52'),
(22, 2, 'WebKit/Windows-6.1', 'Chrome/92.0.4515.159', '127.0.0.1', NULL, '2021-09-02 06:55:34', '2021-09-02 06:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `greeting` varchar(191) DEFAULT NULL,
  `message` text NOT NULL,
  `regards` varchar(191) DEFAULT NULL,
  `notify` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `slug`, `subject`, `greeting`, `message`, `regards`, `notify`, `created_at`, `updated_at`) VALUES
(1, 'Token Purchase - Order Placed by Online Gateway (USER)', 'order-submit-online-user', 'Order placed for Token Purchase #[[order_id]]', 'Thank you for your contribution! ', 'You have requested to purchase [[token_symbol]] token. Your order has been received and is now being waiting for payment. You order details are show below for your reference. \n\n[[order_details]]\n\nYour token balance will appear in your account as soon as we have confirmed your payment from [[payment_gateway]].\n\nFeel free to contact us if you have any questions. \n ', 'true', 1, '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(2, 'Token Purchase - Order Unpaid/Rejected by Gateway (USER)', 'order-canceled-user', 'Unpaid Order Canceled #[[order_id]]', 'Hello [[user_name]],', 'We noticed that you just tried to purchase [[token_symbol]] token, however we have not received your payment of [[payment_amount]] via [[payment_gateway]] for [[total_tokens]] Token.\n\nIt looks like your payment gateway ([[payment_gateway]]) has been rejected the transaction. \n\n[[order_details]]\n\nIf you want to pay manually, please feel free to contact us via [[support_email]]\n ', 'true', 1, '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(3, 'Token Purchase - Payment Approved by Gateway (ADMIN)', 'order-successful-admin', 'Payment Received - Order #[[order_id]]', 'Hello Admin,', 'You just received a payment of [[payment_amount]] for order (#[[order_id]]) via [[payment_gateway]]. \n\nThis order has now been approved automatically and token balance added to contributor ([[user_email]]) account. \n\n\nPS. Do not reply to this email.  \nThank you.\n ', 'false', 1, '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(4, 'Token Purchase - Payment Rejected/Canceled by Gateway (ADMIN)', 'order-rejected-admin', 'Payment Rejected - Order #[[order_id]]', 'Hello Admin,', 'The order (#[[order_id]]) has been canceled, however the payment was not successful and [[payment_gateway]] rejected or canceled the transaction. \n\n\n[[order_details]] \n\n\nPS. Do not reply to this email.  \nThank you.\n ', 'false', 1, '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(5, 'Welcome Email', 'welcome-email', 'Welcome to [[site_name]]', 'Hi [[user_name]],', 'Thanks for joining our platform! \n\nAs a member of our platform, you can mange your account, purchase token, referrals etc. \n\nFind out more about in - [[site_url]]', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(6, 'Send Email to User', 'send-user-email', 'New Message - [[site_name]]', 'Hi [[user_name]], ', '[[messages]]', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(7, 'Password Change Email', 'users-change-password-email', 'Password change request on [[site_name]]', 'Hello [[user_name]],', 'You are receiving this email because we received a password change request for your account.', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(8, 'Unusual Login Email', 'users-unusual-login-email    ', 'Unusual Login Attempt on [[site_name]]!!!!', 'Hi [[user_name]], ', 'Someone tried to log in too many times in your [[site_name]] account.', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(9, 'Confirm Your Email', 'users-confirm-password-email', 'Please verify your email address - [[site_name]]', 'Welcome!', 'Hello [[user_name]]! \n\nThank you for registering on our platform. You\'re almost ready to start.\n\nSimply click the button below to confirm your email address and active your account.', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(10, 'Password Reset Email by Admin', 'users-reset-password-email', 'Your Password is reseted on [[site_name]]', 'Hello [[user_name]],', 'We are reset your login password as per your requested via support.', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(11, '2FA Disable Confirmation by Admin', 'users-reset-2fa-email', 'Disable 2FA Authentication Request', 'Hello [[user_name]],', 'We are reset your 2FA authentication as per your requested via support.\n\n If you really want to reset 2FA authentication security in your account, then click the button below to confirm and reset 2FA security.', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(12, 'KYC Approved Email', 'kyc-approved-email', 'KYC Verified: Contribute in [[site_name]] ICO', 'Hello [[user_name]],', 'Thank you for submitting your verification request. \n\nWe are pleased to let you know that your identity (KYC) has been verified and you are granted to participate in our token sale.\n\nWe invite you to get back to contributor account and purchase token before sales end.', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(13, 'KYC Rejected Email', 'kyc-rejected-email', 'KYC Application has been rejected - [[site_name]]', 'Hello [[user_name]],', 'Thank you for submitting your verification request. We\'re having difficulties verifying your identity. \n\nThe information you had submitted was unfortunately rejected for following reason: \n[[message]]\n\nDon\'t be upset! Still you want to verity your identity, please get back to your account and fill form with proper information and upload correct documents to complete your identity verification process.', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(14, 'KYC Missing Email', 'kyc-missing-email', 'Identity Verification: Action Required - [[site_name]]', 'Hello [[user_name]],', 'Thank you for submitting your verification request. We\'re having difficulties verifying your identity. \n\nThe information you had submitted was unfortunately rejected because of the following reason:\n[[message]]\n\nWe request to get back to your account in order to upload new documents and complete the identity verification.', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(15, 'KYC Submitted Email', 'kyc-submit-email', 'Document submitted for Identity Verification - [[site_name]]', 'Hello [[user_name]],', 'Thank you for submitting your verification request. We\'ve received your submitted document and other information for identity verification.\n\nWe\'ll review your information and if all is in order will approve your identity. If the information is incorrect or something missing, we will request this as soon as possible.', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(16, 'Token Purchase - Order Placed by Manual payment (USER)', 'order-submit-user', 'Order placed for Token Purchase #[[order_id]]', 'Thank you for your contribution!', 'You have requested to purchase [[token_symbol]] token. Your order has been received and is now being processed. You order details are show below for your reference. \n\n[[order_details]]\n\nIf you have not made the payment yet, please send your payments to the following address: [[payment_from]]\n\nYour order will be processed within 6 hours from the receipt of payment and token balance will appear in your account as soon as we have confirmed your payment. \n\nFeel free to contact us if you have any questions.', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(17, 'Token Purchase - Order Successful (USER)', 'order-successful-user', 'Token Purchase Successful - Order #[[order_id]]', 'Congratulation [[user_name]], you order has been processed successfully.', 'Thank you for your contribution and purchase our [[token_symbol]] Token! \n\n[[order_details]]\n\nYour token balances now appear in your account. Please login into your and check your balance. Please note that, we will send smart contract end of the token sales. \n\nFeel free to contact us if you have any questions.\n', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(18, 'Token Purchase - Order Rejected by Admin (USER)', 'order-rejected-user', 'Canceled Order #[[order_id]]', 'Hello [[user_name]],', 'The order (#[[order_id]]) has been canceled. \n\nWe noticed that you just tried to purchase [[token_symbol]] token, however we have not received your payment of [[payment_amount]] from your wallet ([[payment_from]]) for [[total_tokens]] Token.\n\nIf you still want to contribute please login into account and purchase the token again. \n[[site_login]]\n\nFeel free to contact us if you have any questions.\n', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(19, 'Token Purchase - Order Placed (ADMIN)', 'order-placed-admin', 'New Token Purchase Request #[[order_id]]', 'Hello Admin,', 'You have received a token purchased request form [[user_name]].\n\n[[order_details]]\n\nOrder By: [[user_name]]\nEmail Address: [[user_email]]\n\nPlease login into account and check details of transaction and take necessary steps.\n\n\nPS. Do not reply to this email. \nThank you.\n', 'false', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(20, 'Token Purchase - Canceled by User (ADMIN)', 'order-canceled-admin', 'Order #[[order_id]] Canceled by Contributor', 'Hello Admin,', 'The order (#[[order_id]]) has been canceled by [[user_name]] (contributor).\n\n\nPS. Do not reply to this email.\nThank you.\n', 'false', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(21, 'Token Refund - Refund By Admin (USER)', 'order-refund-token', 'Your order has been refunded', 'Hello [[user_name]],', 'Thank you for purchase [[token_symbol]] token from [[site_name]].\n\nWe found some problem in your payment so we have refunded your order and readjusted your token balance. Please find below your refund and original purchase order details.\n[[refund_details]]\n[[order_details]]\n\nNote: Your payment already refunded via same payment method that you used for payment.\n\nIf you have any questions about this refund, please feel free to contact us.\n', 'true', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `global_metas`
--

CREATE TABLE `global_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `global_metas`
--

INSERT INTO `global_metas` (`id`, `pid`, `name`, `value`, `extra`, `created_at`, `updated_at`) VALUES
(1, '1', 'site_super_admin', '1', NULL, '2021-08-25 12:02:20', '2021-08-25 12:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `ico_metas`
--

CREATE TABLE `ico_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `stage_id` int(11) NOT NULL,
  `option_name` varchar(191) NOT NULL,
  `option_value` text NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ico_metas`
--

INSERT INTO `ico_metas` (`id`, `stage_id`, `option_name`, `option_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(2, 1, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(3, 2, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(4, 2, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(5, 3, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(6, 3, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(7, 4, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(8, 4, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(9, 5, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(10, 5, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(11, 6, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(12, 6, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(13, 7, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(14, 7, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(15, 8, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(16, 8, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(17, 9, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(18, 9, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(19, 10, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(20, 10, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(21, 11, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(22, 11, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(23, 12, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(24, 12, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(25, 13, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(26, 13, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(27, 14, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(28, 14, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(29, 15, 'bonus_option', '{\"base\":{\"amount\":25,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":1},\"bonus_amount\":{\"status\":1,\"tire_1\":{\"amount\":15,\"token\":2500},\"tire_2\":{\"amount\":null,\"token\":null},\"tire_3\":{\"amount\":null,\"token\":null}}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(30, 15, 'price_option', '{\"tire_1\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_2\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0},\"tire_3\":{\"price\":0,\"min_purchase\":0,\"start_date\":\"2000-01-01 00:00:00\",\"end_date\":\"2000-01-01 23:59:00\",\"status\":0}}', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `ico_stages`
--

CREATE TABLE `ico_stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `total_tokens` bigint(20) NOT NULL,
  `base_price` double NOT NULL,
  `min_purchase` bigint(20) NOT NULL DEFAULT 0,
  `max_purchase` bigint(20) NOT NULL DEFAULT 0,
  `soft_cap` bigint(20) NOT NULL DEFAULT 0,
  `hard_cap` bigint(20) NOT NULL DEFAULT 0,
  `display_mode` varchar(191) NOT NULL,
  `private` int(11) NOT NULL DEFAULT 0,
  `user_panel_display` int(11) NOT NULL DEFAULT 0,
  `sales_token` double NOT NULL DEFAULT 0,
  `sales_amount` double NOT NULL DEFAULT 0,
  `status` varchar(191) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ico_stages`
--

INSERT INTO `ico_stages` (`id`, `name`, `start_date`, `end_date`, `total_tokens`, `base_price`, `min_purchase`, `max_purchase`, `soft_cap`, `hard_cap`, `display_mode`, `private`, `user_panel_display`, `sales_token`, `sales_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Demo Stage 1', '2021-07-11 03:37:20', '2021-08-11 03:37:20', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(2, 'Demo Stage 2', '2021-08-11 03:37:20', '2021-09-11 03:37:20', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(3, 'Demo Stage 3', '2021-08-11 03:37:20', '2021-09-11 03:37:20', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(4, 'Demo Stage 4', '2021-08-11 03:37:20', '2021-09-11 03:37:20', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(5, 'Demo Stage 5', '2021-08-11 03:37:20', '2021-09-11 03:37:20', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(6, 'Demo Stage 6', '2021-08-11 03:37:20', '2021-09-11 03:37:20', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(7, 'Demo Stage 7', '2021-08-11 03:37:20', '2021-09-11 03:37:20', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(8, 'Demo Stage 8', '2021-08-11 03:37:20', '2021-09-11 03:37:20', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(9, 'Demo Stage 9', '2021-08-11 03:37:20', '2021-09-11 03:37:20', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(10, 'Demo Stage 10', '2021-08-11 03:37:21', '2021-09-11 03:37:21', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(11, 'Demo Stage 11', '2021-08-11 03:37:21', '2021-09-11 03:37:21', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(12, 'Demo Stage 12', '2021-08-11 03:37:21', '2021-09-11 03:37:21', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(13, 'Demo Stage 13', '2021-08-11 03:37:21', '2021-09-11 03:37:21', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(14, 'Demo Stage 14', '2021-08-11 03:37:21', '2021-09-11 03:37:21', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(15, 'Demo Stage 15', '2021-08-11 03:37:21', '2021-09-11 03:37:21', 850000, 0.2, 100, 10000, 0, 0, 'normal', 0, 0, 0, 0, 'active', '2021-07-10 21:37:21', '2021-07-10 21:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `firstName` varchar(191) NOT NULL,
  `lastName` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `dob` varchar(191) DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `address1` varchar(191) DEFAULT NULL,
  `address2` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `zip` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `telegram` varchar(191) DEFAULT '',
  `documentType` varchar(191) DEFAULT '',
  `document` varchar(191) DEFAULT '',
  `document2` varchar(191) DEFAULT '',
  `document3` varchar(191) DEFAULT '',
  `walletName` varchar(191) DEFAULT '',
  `walletAddress` varchar(191) DEFAULT '',
  `notes` text DEFAULT NULL,
  `reviewedBy` int(11) NOT NULL DEFAULT 0,
  `reviewedAt` datetime DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `label` varchar(191) NOT NULL,
  `short` varchar(191) DEFAULT NULL,
  `code` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `label`, `short`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'English', 'EN', 'en', 1, '2021-07-10 21:37:23', '2021-07-10 21:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_01_043848_create_settings_table', 1),
(4, '2018_11_03_084440_create_activities_table', 1),
(5, '2018_11_03_091911_create_user_metas_table', 1),
(6, '2018_11_03_100212_create_transactions_table', 1),
(7, '2018_11_05_055256_create_kycs_table', 1),
(8, '2018_11_08_110810_create_ico_stages_table', 1),
(9, '2018_11_10_054817_create_ico_metas_table', 1),
(10, '2018_11_12_090411_create_payment_methods_table', 1),
(11, '2018_11_22_102451_create_pages_table', 1),
(12, '2018_11_27_123445_create_email_templates_table', 1),
(13, '2018_12_11_134112_create_global_metas_table', 1),
(14, '2019_05_05_123232_create_referrals_table', 1),
(15, '2019_07_16_133004_add_refund_column_in_transactions_table', 1),
(16, '2019_08_28_124836_add_lang_column_in_pages_table', 1),
(17, '2019_08_28_130012_create_languages_table', 1),
(18, '2019_08_28_130334_create_translates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `menu_title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `custom_slug` varchar(191) NOT NULL,
  `meta_keyword` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_index` int(11) NOT NULL DEFAULT 1,
  `description` longtext NOT NULL,
  `external_link` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'active',
  `lang` varchar(191) NOT NULL DEFAULT 'en',
  `public` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `menu_title`, `slug`, `custom_slug`, `meta_keyword`, `meta_description`, `meta_index`, `description`, `external_link`, `status`, `lang`, `public`, `created_at`, `updated_at`) VALUES
(1, 'Thank you for your interest to our [[site_name]]', 'Welcome block', 'home_top', 'home-top-block', NULL, NULL, 1, 'You can contribute [[token_symbol]] token go through Buy Token page. \n\n You can get a quick response to any questions, and chat with the project in our Telegram: https://t.me/icocrypto \n\n<strong>Don’t hesitate to invite your friends!</strong> \n\n[[whitepaper_download_button]]', NULL, 'active', 'en', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(2, 'How to buy?', 'How to buy?', 'how_buy', 'how-to-buy', NULL, NULL, 1, 'Login with your email and password then go to Buy Token!', NULL, 'active', 'en', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(3, 'FAQ ', 'FAQ ', 'faq', 'faq', NULL, NULL, 1, 'Frequently Ask Questions...', NULL, 'active', 'en', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(4, 'Privacy and Policy', 'Privacy and Policy', 'privacy', 'privacy-policy', NULL, NULL, 1, '[[site_name]] Privacy and Policies...', NULL, 'active', 'en', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(5, 'Terms and Condition', 'Terms and Condition', 'terms', 'terms-and-condition', NULL, NULL, 1, '[[site_name]] Terms and Condition...', NULL, 'active', 'en', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(6, 'ICO Distribution', 'ICO Distribution', 'distribution', 'ico-distribution', NULL, NULL, 1, 'Distribution page content', NULL, 'hide', 'en', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(7, 'Referral', 'Referral', 'referral', 'referral', NULL, NULL, 1, 'Invite your friends and family and receive free tokens. \nThe referral link may be used during a token contribution, in the pre-sale and the ICO. \n\nImagine giving your unique referral link to your crypto-friend and he or she contributes tokens using your link, the bonus will be sent to your account automatically. The strategy is simple: the more links you send to your colleagues, family and friends - the more tokens you may earn!', NULL, 'hide', 'en', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(8, 'Custom Page', 'Custom Page', 'custom_page', 'custom-page', NULL, NULL, 1, 'Details about the page!', NULL, 'hide', 'en', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `data` text NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `payment_method`, `title`, `description`, `data`, `status`, `created_at`, `updated_at`) VALUES
(1, 'manual', 'Pay via Crypto', 'You can send payment direct to our wallets. We will manually verify.', '{\"eth\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"limit\":null,\"price\":null,\"status\":\"inactive\"},\"btc\":{\"address\":\"1HEgH2u9vdvCgYWFHUjziTkK6mfXYW2VHa\",\"num\":\"3\",\"req\":\"no\",\"status\":\"active\"},\"ltc\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"status\":\"inactive\"},\"xrp\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"status\":\"inactive\"},\"xlm\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"status\":\"inactive\"},\"bch\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"status\":\"inactive\"},\"bnb\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"status\":\"inactive\"},\"usdt\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"status\":\"inactive\"},\"trx\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"status\":\"inactive\"},\"usdc\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"status\":\"inactive\"},\"dash\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"status\":\"inactive\"},\"waves\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"status\":\"inactive\"},\"xmr\":{\"address\":null,\"num\":\"3\",\"req\":\"no\",\"status\":\"inactive\"}}', 'inactive', '2021-07-10 21:37:20', '2021-08-26 13:00:23'),
(2, 'bank', 'Pay via Bank Transfer', 'You can send payment direct to our bank account.', '{\"bank_account_name\":null,\"bank_account_number\":null,\"bank_holder_address\":null,\"bank_name\":null,\"bank_address\":null,\"routing_number\":null,\"iban\":null,\"swift_bic\":null}', 'inactive', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(3, 'paypal', 'Pay with PayPal', 'You can send your payment using your PayPal account.', '{\"email\":null,\"sandbox\":0,\"clientId\":null,\"clientSecret\":null,\"is_active\":0}', 'inactive', '2021-07-10 21:37:20', '2021-07-10 21:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_bonus` int(11) DEFAULT NULL,
  `refer_by` int(11) DEFAULT NULL,
  `refer_bonus` int(11) DEFAULT NULL,
  `meta_data` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `user_id`, `user_bonus`, `refer_by`, `refer_bonus`, `meta_data`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 0, 0, NULL, '2021-08-26 06:49:49', '2021-08-26 06:49:49'),
(2, 3, 0, 0, 0, NULL, '2021-08-26 06:51:12', '2021-08-26 06:51:12'),
(3, 4, 0, 0, 0, NULL, '2021-08-26 12:44:06', '2021-08-26 12:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `field`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'BlockDot', '2021-07-10 21:37:13', '2021-09-02 06:36:54'),
(2, 'site_email', 'info@blockdot.com', '2021-07-10 21:37:14', '2021-09-02 06:36:54'),
(3, 'site_base_currency', 'USD', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(4, 'site_copyright', 'All Right Reserved.', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(5, 'site_support_address', NULL, '2021-07-10 21:37:14', '2021-08-26 12:53:44'),
(6, 'site_support_phone', NULL, '2021-07-10 21:37:14', '2021-08-26 12:53:44'),
(7, 'site_support_email', NULL, '2021-07-10 21:37:14', '2021-08-26 12:53:44'),
(8, 'token_default_in_userpanel', 'ETH', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(9, 'token_sales_raised', 'token', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(10, 'token_sales_total', 'token', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(11, 'token_sales_cap', 'token', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(12, 'tokenlite_credible', '16a403f9fEkbzS2b28fba72b28fba7f4ee1ab0f1de3b5afL', '2021-07-10 21:37:14', '2021-08-25 13:53:15'),
(13, 'main_website_url', 'http://blockdot.io/', '2021-07-10 21:37:14', '2021-09-02 06:36:54'),
(14, 'pm_automatic_rate_time', '3000', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(15, 'theme_admin', 'style', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(16, 'theme_user', 'style', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(17, 'theme_custom', '0', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(18, 'theme_auth_layout', 'default', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(19, 'site_date_format', 'd M, Y', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(20, 'site_time_format', 'h:i A', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(21, 'site_timezone', 'UTC', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(22, 'tokenlite_ukey', '5hcPWdxQ', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(23, 'site_social_links', '{\"onsite\":\"on\",\"onlogin\":\"on\",\"facebook\":null,\"twitter\":null,\"linkedin\":null,\"github\":null,\"medium\":null,\"youtube\":null,\"telegram\":null}', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(24, 'tokenlite_install', '2021-07-11 03:37:14', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(25, 'referral_system', '0', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(26, 'referral_allow', 'all_time', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(27, 'referral_calc', 'percent', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(28, 'referral_bonus', '10', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(29, 'referral_bonus_join', '10', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(30, 'referral_info_show', '0', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(31, 'referral_allow_join', 'all_time', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(32, 'referral_calc_join', 'percent', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(33, 'token_wallet_opt', '{\"wallet_opt\":[\"ethereum\",\"bitcoin\",\"litecoin\"]}', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(34, 'token_wallet_note', 'Address should be ERC20-compliant.', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(35, 'token_wallet_custom', '{\"cw_name\":null,\"cw_text\":null}', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(36, 'token_wallet_req', '1', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(37, 'token_number_format', '0', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(38, 'user_in_cur1', 'eth', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(39, 'user_in_cur2', 'btc', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(40, 'user_mytoken_page', '1', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(41, 'user_mytoken_stage', '1', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(42, 'user_sales_progress', '1', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(43, 'welcome_img_hide', '0', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(44, 'opt_count_hide', '0', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(45, 'languages_show_as', 'code', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(46, 'languages_switcher', '0', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(47, 'languages_default', 'en', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(48, 'site_mail_driver', 'mail', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(49, 'site_mail_host', '', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(50, 'site_mail_port', '587', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(51, 'site_mail_encryption', 'tls', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(52, 'site_mail_from_address', 'noreply@yourdomain.com', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(53, 'site_mail_from_name', 'TokenLite', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(54, 'site_mail_username', '', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(55, 'site_mail_password', '', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(56, 'site_mail_footer', 'Best Regards\n[[site_name]]', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(57, 'tokenlite_pkey', '23604094', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(58, 'site_admin_management', '0', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(59, 'manage_access_default', '{\"level\":[\"none\"]}', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(60, 'kyc_opt_hide', '0', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(61, 'kyc_public', '1', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(62, 'kyc_before_email', '0', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(63, 'kyc_firstname', '{\"show\":1,\"req\":1}', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(64, 'kyc_lastname', '{\"show\":1,\"req\":1}', '2021-07-10 21:37:14', '2021-07-10 21:37:14'),
(65, 'kyc_email', '{\"show\":1,\"req\":1}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(66, 'kyc_phone', '{\"show\":1,\"req\":0}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(67, 'kyc_dob', '{\"show\":1,\"req\":0}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(68, 'kyc_gender', '{\"show\":1,\"req\":1}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(69, 'kyc_country', '{\"show\":1,\"req\":1}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(70, 'kyc_state', '{\"show\":1,\"req\":1}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(71, 'kyc_city', '{\"show\":1,\"req\":1}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(72, 'kyc_zip', '{\"show\":1,\"req\":1}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(73, 'kyc_address1', '{\"show\":1,\"req\":1}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(74, 'kyc_address2', '{\"show\":1,\"req\":0}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(75, 'kyc_telegram', '{\"show\":1,\"req\":0}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(76, 'kyc_document_passport', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(77, 'kyc_document_nidcard', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(78, 'kyc_document_driving', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(79, 'kyc_wallet', '{\"show\":1,\"req\":1}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(80, 'kyc_wallet_custom', '{\"cw_name\":null,\"cw_text\":null}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(81, 'kyc_wallet_note', 'Address should be ERC20-compliant.', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(82, 'kyc_wallet_opt', '{\"wallet_opt\":[\"ethereum\",\"bitcoin\",\"litecoin\"]}', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(83, 'token_purchase_usd', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(84, 'pmc_active_usd', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(85, 'token_purchase_eur', '0', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(86, 'pmc_active_eur', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(87, 'token_purchase_gbp', '0', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(88, 'pmc_active_gbp', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(89, 'token_purchase_cad', '0', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(90, 'pmc_active_cad', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(91, 'token_purchase_aud', '0', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(92, 'pmc_active_aud', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(93, 'token_purchase_try', '0', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(94, 'pmc_active_try', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(95, 'token_purchase_rub', '0', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(96, 'pmc_active_rub', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(97, 'token_purchase_inr', '0', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(98, 'pmc_active_inr', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(99, 'token_purchase_brl', '0', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(100, 'pmc_active_brl', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(101, 'token_purchase_nzd', '0', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(102, 'pmc_active_nzd', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(103, 'token_purchase_pln', '0', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(104, 'pmc_active_pln', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(105, 'token_purchase_jpy', '0', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(106, 'pmc_active_jpy', '1', '2021-07-10 21:37:15', '2021-07-10 21:37:15'),
(107, 'token_purchase_myr', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(108, 'pmc_active_myr', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(109, 'token_purchase_idr', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(110, 'pmc_active_idr', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(111, 'token_purchase_ngn', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(112, 'pmc_active_ngn', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(113, 'token_purchase_mxn', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(114, 'pmc_active_mxn', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(115, 'token_purchase_php', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(116, 'pmc_active_php', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(117, 'token_purchase_chf', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(118, 'pmc_active_chf', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(119, 'token_purchase_thb', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(120, 'pmc_active_thb', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(121, 'token_purchase_sgd', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(122, 'pmc_active_sgd', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(123, 'token_purchase_czk', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(124, 'pmc_active_czk', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(125, 'token_purchase_nok', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(126, 'pmc_active_nok', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(127, 'token_purchase_zar', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(128, 'pmc_active_zar', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(129, 'token_purchase_sek', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(130, 'pmc_active_sek', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(131, 'token_purchase_kes', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(132, 'pmc_active_kes', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(133, 'token_purchase_nad', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(134, 'pmc_active_nad', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(135, 'token_purchase_dkk', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(136, 'pmc_active_dkk', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(137, 'token_purchase_hkd', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(138, 'pmc_active_hkd', '1', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(139, 'token_purchase_huf', '0', '2021-07-10 21:37:16', '2021-07-10 21:37:16'),
(140, 'pmc_active_huf', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(141, 'token_purchase_pkr', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(142, 'pmc_active_pkr', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(143, 'token_purchase_egp', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(144, 'pmc_active_egp', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(145, 'token_purchase_clp', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(146, 'pmc_active_clp', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(147, 'token_purchase_cop', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(148, 'pmc_active_cop', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(149, 'token_purchase_jmd', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(150, 'pmc_active_jmd', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(151, 'token_purchase_eth', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(152, 'pmc_active_eth', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(153, 'token_purchase_btc', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(154, 'pmc_active_btc', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(155, 'token_purchase_ltc', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(156, 'pmc_active_ltc', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(157, 'token_purchase_xrp', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(158, 'pmc_active_xrp', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(159, 'token_purchase_xlm', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(160, 'pmc_active_xlm', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(161, 'token_purchase_bch', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(162, 'pmc_active_bch', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(163, 'token_purchase_bnb', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(164, 'pmc_active_bnb', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(165, 'token_purchase_usdt', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(166, 'pmc_active_usdt', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(167, 'token_purchase_trx', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(168, 'pmc_active_trx', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(169, 'token_purchase_usdc', '0', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(170, 'pmc_active_usdc', '1', '2021-07-10 21:37:17', '2021-07-10 21:37:17'),
(171, 'token_purchase_dash', '0', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(172, 'pmc_active_dash', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(173, 'token_purchase_waves', '0', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(174, 'pmc_active_waves', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(175, 'token_purchase_xmr', '0', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(176, 'pmc_active_xmr', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(177, 'pm_exchange_method', 'automatic', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(178, 'pm_exchange_auto_lastcheck', '2021-09-02 11:57:15', '2021-07-10 21:37:18', '2021-09-02 06:27:15'),
(179, 'token_calculate', 'normal', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(180, 'token_calculate_note', 'normal', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(181, 'token_default_method', 'ETH', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(182, 'active_payment_modules', '{\"Manual\":{\"type\":\"core\",\"version\":\"1.0\"},\"Bank\":{\"type\":\"core\",\"version\":\"1.0\"},\"Paypal\":{\"type\":\"core\",\"version\":\"1.0\"}}', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(183, 'site_api_key', 'tTTkBXWzUUnZE3b2vVutEZxp', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(184, 'site_api_secret', 'LoOTf4ee1ab0vW6T', '2021-07-10 21:37:18', '2021-09-02 06:53:52'),
(185, 'nio_lkey', '8621283a5hcPf4ee1ab02b28fba7', '2021-07-10 21:37:18', '2021-08-25 13:53:15'),
(186, 'pmc_rate_usd', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(187, 'pmc_rate_eur', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(188, 'pmc_rate_gbp', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(189, 'pmc_rate_cad', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(190, 'pmc_rate_aud', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(191, 'pmc_rate_try', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(192, 'pmc_rate_rub', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(193, 'pmc_rate_inr', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(194, 'pmc_rate_brl', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(195, 'pmc_rate_nzd', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(196, 'pmc_rate_pln', '1', '2021-07-10 21:37:18', '2021-07-10 21:37:18'),
(197, 'pmc_rate_jpy', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(198, 'pmc_rate_myr', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(199, 'pmc_rate_idr', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(200, 'pmc_rate_ngn', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(201, 'pmc_rate_mxn', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(202, 'pmc_rate_php', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(203, 'pmc_rate_chf', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(204, 'pmc_rate_thb', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(205, 'pmc_rate_sgd', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(206, 'pmc_rate_czk', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(207, 'pmc_rate_nok', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(208, 'pmc_rate_zar', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(209, 'pmc_rate_sek', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(210, 'pmc_rate_kes', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(211, 'pmc_rate_nad', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(212, 'pmc_rate_dkk', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(213, 'pmc_rate_hkd', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(214, 'pmc_rate_huf', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(215, 'pmc_rate_pkr', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(216, 'pmc_rate_egp', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(217, 'pmc_rate_clp', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(218, 'pmc_rate_cop', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(219, 'pmc_rate_jmd', '1', '2021-07-10 21:37:19', '2021-07-10 21:37:19'),
(220, 'pmc_rate_eth', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(221, 'pmc_rate_btc', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(222, 'pmc_rate_ltc', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(223, 'pmc_rate_xrp', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(224, 'pmc_rate_xlm', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(225, 'pmc_rate_bch', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(226, 'pmc_rate_bnb', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(227, 'pmc_rate_usdt', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(228, 'pmc_rate_trx', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(229, 'pmc_rate_usdc', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(230, 'pmc_rate_dash', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(231, 'pmc_rate_waves', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(232, 'pmc_rate_xmr', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(233, 'actived_stage', '1', '2021-07-10 21:37:20', '2021-07-10 21:37:20'),
(234, 'token_name', 'TokenLite', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(235, 'token_symbol', 'TLE', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(236, 'token_decimal_min', '2', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(237, 'token_decimal_max', '6', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(238, 'token_decimal_show', '3', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(239, 'token_price_show', '1', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(240, 'token_before_kyc', '0', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(241, 'site_db_version', '217132', '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(242, 'lang_last_update_en', '1625953043', '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(243, 'lang_last_generate_en', '1625953043', '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(244, 'lang_db_version', '213525', '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(245, 'installed_update', '1629891115', '2021-08-25 12:01:55', '2021-08-25 12:01:55'),
(246, 'env_ptype', '1283a', '2021-08-25 12:02:41', '2021-08-25 13:53:15'),
(247, 'reg_fall_queue', '6', '2021-08-25 12:31:46', '2021-08-26 06:01:30'),
(248, 'pmc_auto_rate_usd', '1', '2021-08-25 12:33:23', '2021-08-25 12:33:23'),
(249, 'pmc_auto_rate_eur', '0.8446', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(250, 'pmc_auto_rate_gbp', '0.7252', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(251, 'pmc_auto_rate_cad', '1.257', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(252, 'pmc_auto_rate_aud', '1.352', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(253, 'pmc_auto_rate_try', '8.249', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(254, 'pmc_auto_rate_rub', '73.1', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(255, 'pmc_auto_rate_inr', '78.36', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(256, 'pmc_auto_rate_brl', '5.172', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(257, 'pmc_auto_rate_nzd', '1.416', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(258, 'pmc_auto_rate_pln', '3.789', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(259, 'pmc_auto_rate_jpy', '109.69', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(260, 'pmc_auto_rate_myr', '4.151', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(261, 'pmc_auto_rate_idr', '14290', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(262, 'pmc_auto_rate_ngn', '604.94', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(263, 'pmc_auto_rate_mxn', '19.95', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(264, 'pmc_auto_rate_php', '52.43', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(265, 'pmc_auto_rate_chf', '0.9169', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(266, 'pmc_auto_rate_thb', '32.15', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(267, 'pmc_auto_rate_sgd', '1.341', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(268, 'pmc_auto_rate_czk', '21.38', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(269, 'pmc_auto_rate_nok', '0.1681', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(270, 'pmc_auto_rate_zar', '14.86', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(271, 'pmc_auto_rate_sek', '8.597', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(272, 'pmc_auto_rate_kes', '109.43', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(273, 'pmc_auto_rate_nad', '17.35', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(274, 'pmc_auto_rate_dkk', '6.348', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(275, 'pmc_auto_rate_hkd', '7.755', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(276, 'pmc_auto_rate_huf', '311.19', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(277, 'pmc_auto_rate_pkr', '174.64', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(278, 'pmc_auto_rate_egp', '15.86', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(279, 'pmc_auto_rate_clp', '765.54', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(280, 'pmc_auto_rate_cop', '3721.19', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(281, 'pmc_auto_rate_jmd', '147.22', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(282, 'pmc_auto_rate_eth', '0.0002659', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(283, 'pmc_auto_rate_btc', '0.0000202', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(284, 'pmc_auto_rate_ltc', '0.005469', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(285, 'pmc_auto_rate_xrp', '0.8039', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(286, 'pmc_auto_rate_xlm', '2.789', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(287, 'pmc_auto_rate_bch', '0.001509', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(288, 'pmc_auto_rate_bnb', '0.002041', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(289, 'pmc_auto_rate_usdt', '1', '2021-08-25 12:33:23', '2021-08-25 12:33:23'),
(290, 'pmc_auto_rate_trx', '10.41', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(291, 'pmc_auto_rate_usdc', '1', '2021-08-25 12:33:23', '2021-08-25 12:33:23'),
(292, 'pmc_auto_rate_dash', '0.004192', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(293, 'pmc_auto_rate_waves', '0.03368', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(294, 'pmc_auto_rate_xmr', '0.0033', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(295, 'pmc_current_rate', '{\"usd\":1,\"eur\":0.8446,\"gbp\":0.7252,\"cad\":1.257,\"aud\":1.352,\"try\":8.249,\"rub\":73.1,\"inr\":78.36,\"brl\":5.172,\"nzd\":1.416,\"pln\":3.789,\"jpy\":109.69,\"myr\":4.151,\"idr\":14290,\"ngn\":604.94,\"mxn\":19.95,\"php\":52.43,\"chf\":0.9169,\"thb\":32.15,\"sgd\":1.341,\"czk\":21.38,\"nok\":0.1681,\"zar\":14.86,\"sek\":8.597,\"kes\":109.43,\"nad\":17.35,\"dkk\":6.348,\"hkd\":7.755,\"huf\":311.19,\"pkr\":174.64,\"egp\":15.86,\"clp\":765.54,\"cop\":3721.19,\"jmd\":147.22,\"eth\":0.0002659,\"btc\":2.02e-5,\"ltc\":0.005469,\"xrp\":0.8039,\"xlm\":2.789,\"bch\":0.001509,\"bnb\":0.002041,\"usdt\":1,\"trx\":10.41,\"usdc\":1,\"dash\":0.004192,\"waves\":0.03368,\"xmr\":0.0033}', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(296, 'token_all_price', '{\"base\":0.2,\"usd\":0.2,\"eur\":0.16892,\"gbp\":0.14504,\"cad\":0.2514,\"aud\":0.2704,\"try\":1.6498,\"rub\":14.62,\"inr\":15.672,\"brl\":1.0344,\"nzd\":0.2832,\"pln\":0.7578,\"jpy\":21.938,\"myr\":0.8302,\"idr\":2858,\"ngn\":120.988,\"mxn\":3.99,\"php\":10.486,\"chf\":0.18338,\"thb\":6.43,\"sgd\":0.2682,\"czk\":4.276,\"nok\":0.03362,\"zar\":2.972,\"sek\":1.7194,\"kes\":21.886,\"nad\":3.47,\"dkk\":1.2696,\"hkd\":1.551,\"huf\":62.238,\"pkr\":34.928,\"egp\":3.172,\"clp\":153.108,\"cop\":744.238,\"jmd\":29.444,\"eth\":5.3e-5,\"btc\":4.0e-6,\"ltc\":0.001094,\"xrp\":0.16078,\"xlm\":0.5578,\"bch\":0.000302,\"bnb\":0.000408,\"usdt\":0.2,\"trx\":2.082,\"usdc\":0.2,\"dash\":0.000838,\"waves\":0.006736,\"xmr\":0.00066}', '2021-08-25 12:33:23', '2021-09-02 06:27:15'),
(297, 'tokenlite_update', '1630821410', '2021-08-25 13:53:15', '2021-09-02 06:26:56'),
(298, 'env_pcode', '862b4445-8494-4787-b9f9-ee65645e283a', '2021-08-25 13:53:15', '2021-08-25 13:53:15'),
(299, 'env_uname', 'ggangwar90', '2021-08-25 13:53:15', '2021-08-25 13:53:15'),
(300, 'nio_email', 'gaurav.ganwgar90@gmail.com', '2021-08-25 13:53:15', '2021-08-25 13:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `tnx_id` varchar(191) NOT NULL,
  `tnx_type` varchar(191) NOT NULL,
  `tnx_time` datetime NOT NULL,
  `tokens` double NOT NULL DEFAULT 0,
  `bonus_on_base` double NOT NULL DEFAULT 0,
  `bonus_on_token` double NOT NULL DEFAULT 0,
  `total_bonus` double NOT NULL DEFAULT 0,
  `total_tokens` double NOT NULL,
  `stage` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `receive_amount` double NOT NULL DEFAULT 0,
  `receive_currency` varchar(191) DEFAULT NULL,
  `base_amount` double DEFAULT NULL,
  `base_currency` varchar(191) DEFAULT NULL,
  `base_currency_rate` double DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `currency_rate` double DEFAULT NULL,
  `all_currency_rate` text DEFAULT NULL,
  `wallet_address` varchar(191) DEFAULT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `payment_id` varchar(191) NOT NULL DEFAULT '',
  `payment_to` varchar(191) DEFAULT NULL,
  `checked_by` text DEFAULT NULL,
  `added_by` text DEFAULT NULL,
  `checked_time` datetime DEFAULT NULL,
  `details` varchar(191) NOT NULL DEFAULT '',
  `extra` text DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT '',
  `dist` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `translates`
--

CREATE TABLE `translates` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `text` text DEFAULT NULL,
  `pages` varchar(191) NOT NULL DEFAULT 'global',
  `group` varchar(191) NOT NULL DEFAULT 'system',
  `panel` varchar(191) NOT NULL DEFAULT 'any',
  `load` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `translates`
--

INSERT INTO `translates` (`id`, `key`, `name`, `text`, `pages`, `group`, `panel`, `load`, `created_at`, `updated_at`) VALUES
(1, 'messages.email_exist', 'base', 'Email is already exist!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(2, 'messages.email.unique', 'base', 'Email address should be unique!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(3, 'messages.email.reset', 'base', 'Somthing is wrong! We are unable to send reset link to your email. Please! contact with administrator via :email.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(4, 'messages.email.verify', 'base', 'Somthing is wrong! We are unable to send the verification link to your email. Please! contact with administrator via :email.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(5, 'messages.email.password_change', 'base', 'Somthing is wrong! We are unable to send the confirmation link to your email. Please! contact with administrator via :email.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(6, 'messages.email.failed', 'base', 'But email was not send to user. Please check your mail setting credential.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(7, 'messages.form.invalid', 'base', 'Invalid form data!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(8, 'messages.form.wrong', 'base', 'Something wrong in form submission!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(9, 'messages.wrong', 'base', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(10, 'messages.nothing', 'base', 'Nothing to do!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(11, 'messages.agree', 'base', 'You should agree our terms and policy.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(12, 'messages.errors', 'base', 'An error occurred. Please try again.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(13, 'messages.login.email_verify', 'base', 'Please login to verify you email address.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(14, 'messages.login.inactive', 'base', 'Your account may inactive or suspended. Please contact us if something wrong.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(15, 'messages.register.success.heading', 'base', 'Thank you!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(16, 'messages.register.success.subhead', 'base', 'Your sign-up process is almost done.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(17, 'messages.register.success.msg', 'base', 'Please check your email and verify your account.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(18, 'messages.verify.verified', 'base', 'Email address is already verified.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(19, 'messages.verify.not_found', 'base', 'User Account is not found!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(20, 'messages.verify.expired', 'base', 'Your verification link is expired!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(21, 'messages.verify.invalid', 'base', 'Your verification link is invalid!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(22, 'messages.verify.confirmed', 'base', 'Your email is verified now!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(23, 'messages.verify.success.heading', 'base', 'Congratulations!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(24, 'messages.verify.success.subhead', 'base', 'You\'ve successfully verified your email address and your account is now active.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(25, 'messages.verify.success.msg', 'base', 'Please sign-in to start token purchase.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(26, 'messages.trnx.created', 'base', 'Transaction successful, You will redirect to payment page.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(27, 'messages.trnx.wrong', 'base', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(28, 'messages.trnx.required', 'base', 'Transaction id is required!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(29, 'messages.trnx.canceled', 'base', 'Transaction failed! Try again.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(30, 'messages.trnx.notfound', 'base', 'Transaction id is not found', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(31, 'messages.trnx.reviewing', 'base', 'We are reviewing your payment!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(32, 'messages.trnx.canceled_own', 'base', 'You had canceled your order', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(33, 'messages.trnx.require_currency', 'base', 'Currency is required!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(34, 'messages.trnx.require_token', 'base', 'Token amount is required!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(35, 'messages.trnx.select_method', 'base', 'Select payment method!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(36, 'messages.trnx.minimum_token', 'base', 'You have to purchase more than 1 token.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(37, 'messages.trnx.purchase_token', 'base', 'Tokens Purchase', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(38, 'messages.trnx.referral_bonus', 'base', 'Referral Bonus', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(39, 'messages.trnx.payments.not_available', 'base', 'Sorry! Currently payment method not available in your selected currency!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(40, 'messages.trnx.manual.success', 'base', 'Transaction successful!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(41, 'messages.trnx.manual.failed', 'base', 'Transaction Failed!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(42, 'messages.trnx.admin.approved', 'base', 'Transaction approved and token added to user.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(43, 'messages.trnx.admin.canceled', 'base', 'Transaction canceled.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(44, 'messages.trnx.admin.deleted', 'base', 'Transaction Deleted.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(45, 'messages.trnx.admin.already_deleted', 'base', 'This transaction is already deleted.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(46, 'messages.trnx.admin.already_approved', 'base', 'This transaction is already approved.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(47, 'messages.trnx.admin.already_canceled', 'base', 'This transaction is already canceled.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(48, 'messages.trnx.admin.already_updated', 'base', 'This transaction is already updated to :status.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(49, 'messages.token.success', 'base', 'Token added to the user account!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(50, 'messages.token.failed', 'base', 'Failed to add token!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(51, 'messages.insert.success', 'base', ':what insert successful!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(52, 'messages.insert.warning', 'base', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(53, 'messages.insert.failed', 'base', ':what insert failed!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(54, 'messages.stage.expired', 'base', 'Sorry, this stage is expired!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(55, 'messages.stage.inactive', 'base', 'Currently no active stage found!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(56, 'messages.stage.notice', 'base', 'Please create a new stage or update stage date, because this stage is expired!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(57, 'messages.stage.upcoming', 'base', 'Stage will start at :time', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(58, 'messages.stage.delete_failed', 'base', 'You can not remove the last stage.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(59, 'messages.stage.not_started', 'base', 'Our sell have not started yet. Please check after some times.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(60, 'messages.stage.completed', 'base', 'Our token sales has been finished. Thank you very much for your contribution.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(61, 'messages.update.success', 'base', ':what has been updated!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(62, 'messages.update.warning', 'base', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(63, 'messages.update.failed', 'base', ':what updating failed!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(64, 'messages.password.old_err', 'base', 'Your old password is incorrect.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(65, 'messages.password.success', 'base', 'Password successfully changed!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(66, 'messages.password.changed', 'base', 'We have sent a verification code to your email please confirm and change.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(67, 'messages.password.failed', 'base', 'Varification link has expired!!! try again', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(68, 'messages.password.token', 'base', 'Invalid link/token!!! try again', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(69, 'messages.delete.delete', 'base', ':what is deleted!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(70, 'messages.delete.delete_failed', 'base', ':what is deletion failed!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(71, 'messages.kyc.approved', 'base', 'KYC application approved successfully!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(72, 'messages.kyc.missing', 'base', 'KYC application is missing!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(73, 'messages.kyc.rejected', 'base', 'KYC application is rejected!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(74, 'messages.kyc.wait', 'base', 'Your KYC Application is placed, please wait for our review.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(75, 'messages.kyc.mandatory', 'base', 'Identity verification (KYC/AML) is mandatory to participate in our token sale.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(76, 'messages.kyc.forms.submitted', 'base', 'You have successfully submitted your application for identity verification.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(77, 'messages.kyc.forms.failed', 'base', 'We weren\'t able to process the application submission for identity verification. Please reload this page and fill the form again and submit. ', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(78, 'messages.kyc.forms.document', 'base', ':NAME is required, Please upload your document.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(79, 'messages.upload.success', 'base', ':what has been uploaded!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(80, 'messages.upload.warning', 'base', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(81, 'messages.upload.invalid', 'base', 'This type of file is not supported!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(82, 'messages.upload.failed', 'base', ':what uploading failed!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(83, 'messages.invalid.address', 'base', 'Enter a valid wallet address.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(84, 'messages.invalid.address_is', 'base', 'Enter a valid :is wallet address.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(85, 'messages.invalid.social', 'base', 'Sorry, Social login is not available now.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(86, 'messages.mail.send', 'base', 'Email has been send successfully.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(87, 'messages.mail.failed', 'base', 'Failed to send email.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(88, 'messages.mail.issues', 'base', 'Unable to send email! Please check your mail setting credential.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(89, 'messages.wallet.change', 'base', 'Wallet address change request submitted.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(90, 'messages.wallet.cancel', 'base', 'Wallet address change request is canceled.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(91, 'messages.wallet.approved', 'base', 'Wallet address change request is approved.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(92, 'messages.wallet.failed', 'base', 'Wallet address change request is failed.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(93, 'messages.ico_not_setup', 'base', 'ICO Sales opening soon, Please check after sometimes.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(94, 'messages.demo_payment_note', 'base', 'All the <span class=\"badge badge-xs badge-purple ucap\">Add-ons</span> type payment modules is NOT part of main product. You\'ve to purchase separately from CodeCanyon to get those. <strong><a href=\"https://codecanyon.net/user/softnio/portfolio\" target=\"_blank\">Check out here</a></strong>.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(95, 'messages.demo_user', 'base', 'Your action can\'t perform as you login with a Demo Account. For full-access, please send an email at info@softnio.com.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(96, 'messages.demo_preview', 'base', 'You can\'t perform this action as this is preview purpose.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(97, 'messages.stage_update', 'base', 'Successfully :status the stage!!', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(98, 'messages.payment_method_update', 'base', 'Payment method :status', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(99, 'messages.required_app', 'base', 'The :what payment module required minimum :version version of application. Please update your core application to latest version.', 'messages, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(100, 'messages.permission', 'base', 'You do not have enough permissions to perform requested operation.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(101, 'messages.unable_proceed', 'base', 'Unable to proceed request!', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(102, 'messages.transfer.wrong', 'base', 'Something is wrong, please try again later!', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(103, 'messages.transfer.request_submitted', 'base', 'Your request successfully submitted and waiting for our team approval.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(104, 'messages.transfer.balance_insufficient', 'base', 'You balance is insufficient for send token.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(105, 'messages.transfer.can_not_send_token', 'base', 'You can not send your token to your own account.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(106, 'messages.transfer.invalid_email_address', 'base', 'Sorry! your provided email address is invalid or not associated with our platform.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(107, 'messages.transfer.send_maximum_amount', 'base', 'You can send maximum :amount :symbol at once.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(108, 'messages.transfer.minimum_amount_required', 'base', 'Minimum :amount :symbol required to send.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(109, 'messages.transfer.invalid_transaction', 'base', 'Invalid transaction or not found!', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(110, 'messages.transfer.transaction_approved', 'base', 'Transaction approved successfully.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(111, 'messages.transfer.account_not_found', 'base', 'The receiver account not found.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(112, 'messages.transfer.transaction_rejected', 'base', 'Transaction has been rejected.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(113, 'messages.transfer.transaction_already', 'base', 'Transaction already :status.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(114, 'messages.withdraw.approved', 'base', 'Withdraw transaction has been approved successfully.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(115, 'messages.withdraw.rejected', 'base', 'Withdraw transaction has been rejected.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(116, 'messages.withdraw.deleted', 'base', 'Withdraw transaction has been deleted.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(117, 'messages.withdraw.already_approved', 'base', 'Withdraw transaction has been already approved.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(118, 'messages.withdraw.canceled', 'base', 'Withdraw transaction has been canceled.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(119, 'messages.withdraw.unable_delete', 'base', 'Unable delete the withdraw transaction.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(120, 'messages.withdraw.successfully_placed_progress', 'base', 'Your withdrawal has been successfully placed. You can see its progress on this withdrawal page.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(121, 'messages.withdraw.wrong', 'base', 'Something is wrong! Unable to process your request.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(122, 'messages.withdraw.insufficient_balance', 'base', 'You balance is insufficient for a withdrawal.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(123, 'messages.withdraw.withdraw_maximum', 'base', 'You can withdraw maximum :amount :symbol at once.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(124, 'messages.withdraw.minimum_required', 'base', 'Minimum :amount :symbol required to withdraw.', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(125, 'messages.cancel_order', 'base', 'Do you really cancel your order?', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(126, 'messages.unable_process', 'base', 'Unable process request!', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(127, 'messages.sure', 'base', 'Are you sure?', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(128, 'messages.unable_perform', 'base', 'Unable to perform!', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(129, 'messages.use_modern_browser', 'base', 'Please use a modern browser to properly view this template!', 'messages, global', 'system', 'any', 0, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(130, 'pagination.previous', 'base', '&laquo; Previous', 'pagination, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(131, 'pagination.next', 'base', 'Next &raquo;', 'pagination, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(132, 'passwords.password', 'base', 'Passwords must be at least six characters and match the confirmation.', 'passwords, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(133, 'passwords.reset', 'base', 'Your password has been reset!', 'passwords, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(134, 'passwords.sent', 'base', 'We have e-mailed your password reset link!', 'passwords, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(135, 'passwords.token', 'base', 'This password reset token is invalid.', 'passwords, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(136, 'passwords.user', 'base', 'We can\'t find a user with that e-mail address.', 'passwords, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(137, 'auth.failed', 'base', 'These credentials do not match our records.', 'auth, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(138, 'auth.throttle', 'base', 'Too many login attempts. Please try again in :seconds', 'auth, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(139, 'auth.recaptcha', 'base', 'Your request failed to complete as bot detected.', 'auth, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(140, 'auth.health.save_action', 'base', 'Please register and activate the application to perform the action.', 'auth, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(141, 'auth.health.fail', 'base', 'Invalidated-the-license-due-to-wrong-key', 'auth, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(142, 'validation.accepted', 'base', 'The :attribute must be accepted.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(143, 'validation.active_url', 'base', 'The :attribute is not a valid URL.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(144, 'validation.after', 'base', 'The :attribute must be a date after :date.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(145, 'validation.after_or_equal', 'base', 'The :attribute must be a date after or equal to :date.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(146, 'validation.alpha', 'base', 'The :attribute may only contain letters.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(147, 'validation.alpha_dash', 'base', 'The :attribute may only contain letters, numbers, dashes and underscores.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:21', '2021-07-10 21:37:21'),
(148, 'validation.alpha_num', 'base', 'The :attribute may only contain letters and numbers.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(149, 'validation.array', 'base', 'The :attribute must be an array.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(150, 'validation.before', 'base', 'The :attribute must be a date before :date.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(151, 'validation.before_or_equal', 'base', 'The :attribute must be a date before or equal to :date.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(152, 'validation.between.numeric', 'base', 'The :attribute must be between :min and :max.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(153, 'validation.between.file', 'base', 'The :attribute must be between :min and :max kilobytes.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(154, 'validation.between.string', 'base', 'The :attribute must be between :min and :max characters.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(155, 'validation.between.array', 'base', 'The :attribute must have between :min and :max items.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(156, 'validation.boolean', 'base', 'The :attribute field must be true or false.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(157, 'validation.confirmed', 'base', 'The :attribute confirmation does not match.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(158, 'validation.date', 'base', 'The :attribute is not a valid date.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(159, 'validation.date_equals', 'base', 'The :attribute must be a date equal to :date.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(160, 'validation.date_format', 'base', 'The :attribute does not match the format :format.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(161, 'validation.different', 'base', 'The :attribute and :other must be different.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(162, 'validation.digits', 'base', 'The :attribute must be :digits digits.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(163, 'validation.digits_between', 'base', 'The :attribute must be between :min and :max digits.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(164, 'validation.dimensions', 'base', 'The :attribute has invalid image dimensions.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(165, 'validation.distinct', 'base', 'The :attribute field has a duplicate value.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(166, 'validation.email', 'base', 'The :attribute must be a valid email address.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(167, 'validation.exists', 'base', 'The selected :attribute is invalid.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(168, 'validation.file', 'base', 'The :attribute must be a file.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(169, 'validation.filled', 'base', 'The :attribute field must have a value.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(170, 'validation.gt.numeric', 'base', 'The :attribute must be greater than :value.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(171, 'validation.gt.file', 'base', 'The :attribute must be greater than :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(172, 'validation.gt.string', 'base', 'The :attribute must be greater than :value characters.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(173, 'validation.gt.array', 'base', 'The :attribute must have more than :value items.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(174, 'validation.gte.numeric', 'base', 'The :attribute must be greater than or equal :value.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(175, 'validation.gte.file', 'base', 'The :attribute must be greater than or equal :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(176, 'validation.gte.string', 'base', 'The :attribute must be greater than or equal :value characters.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(177, 'validation.gte.array', 'base', 'The :attribute must have :value items or more.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(178, 'validation.image', 'base', 'The :attribute must be an image.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(179, 'validation.in', 'base', 'The selected :attribute is invalid.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(180, 'validation.in_array', 'base', 'The :attribute field does not exist in :other.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(181, 'validation.integer', 'base', 'The :attribute must be an integer.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(182, 'validation.ip', 'base', 'The :attribute must be a valid IP address.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(183, 'validation.ipv4', 'base', 'The :attribute must be a valid IPv4 address.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(184, 'validation.ipv6', 'base', 'The :attribute must be a valid IPv6 address.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(185, 'validation.json', 'base', 'The :attribute must be a valid JSON string.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(186, 'validation.lt.numeric', 'base', 'The :attribute must be less than :value.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(187, 'validation.lt.file', 'base', 'The :attribute must be less than :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(188, 'validation.lt.string', 'base', 'The :attribute must be less than :value characters.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(189, 'validation.lt.array', 'base', 'The :attribute must have less than :value items.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(190, 'validation.lte.numeric', 'base', 'The :attribute must be less than or equal :value.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(191, 'validation.lte.file', 'base', 'The :attribute must be less than or equal :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(192, 'validation.lte.string', 'base', 'The :attribute must be less than or equal :value characters.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(193, 'validation.lte.array', 'base', 'The :attribute must not have more than :value items.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(194, 'validation.max.numeric', 'base', 'The :attribute may not be greater than :max.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(195, 'validation.max.file', 'base', 'The :attribute may not be greater than :max kilobytes.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(196, 'validation.max.string', 'base', 'The :attribute may not be greater than :max characters.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(197, 'validation.max.array', 'base', 'The :attribute may not have more than :max items.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(198, 'validation.mimes', 'base', 'The :attribute must be a file of type: :values.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(199, 'validation.mimetypes', 'base', 'The :attribute must be a file of type: :values.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(200, 'validation.min.numeric', 'base', 'The :attribute must be at least :min.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(201, 'validation.min.file', 'base', 'The :attribute must be at least :min kilobytes.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(202, 'validation.min.string', 'base', 'The :attribute must be at least :min characters.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(203, 'validation.min.array', 'base', 'The :attribute must have at least :min items.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(204, 'validation.not_in', 'base', 'The selected :attribute is invalid.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(205, 'validation.not_regex', 'base', 'The :attribute format is invalid.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(206, 'validation.numeric', 'base', 'The :attribute must be a number.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(207, 'validation.present', 'base', 'The :attribute field must be present.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(208, 'validation.regex', 'base', 'The :attribute format is invalid.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(209, 'validation.required', 'base', 'The :attribute field is required.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(210, 'validation.required_if', 'base', 'The :attribute field is required when :other is :value.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(211, 'validation.required_unless', 'base', 'The :attribute field is required unless :other is in :values.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(212, 'validation.required_with', 'base', 'The :attribute field is required when :values is present.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(213, 'validation.required_with_all', 'base', 'The :attribute field is required when :values are present.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(214, 'validation.required_without', 'base', 'The :attribute field is required when :values is not present.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(215, 'validation.required_without_all', 'base', 'The :attribute field is required when none of :values are present.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(216, 'validation.same', 'base', 'The :attribute and :other must match.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(217, 'validation.size.numeric', 'base', 'The :attribute must be :size.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(218, 'validation.size.file', 'base', 'The :attribute must be :size kilobytes.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(219, 'validation.size.string', 'base', 'The :attribute must be :size characters.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(220, 'validation.size.array', 'base', 'The :attribute must contain :size items.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(221, 'validation.starts_with', 'base', 'The :attribute must start with one of the following: :values', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(222, 'validation.string', 'base', 'The :attribute must be a string.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(223, 'validation.timezone', 'base', 'The :attribute must be a valid zone.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(224, 'validation.unique', 'base', 'The :attribute has already been taken.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(225, 'validation.uploaded', 'base', 'The :attribute failed to upload.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(226, 'validation.url', 'base', 'The :attribute format is invalid.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(227, 'validation.uuid', 'base', 'The :attribute must be a valid UUID.', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(228, 'validation.custom.attribute-name.rule-name', 'base', 'custom-message', 'validation, global', 'system', 'any', 1, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(229, 'validation.only.required', 'base', 'Required.', 'validation, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(230, 'validation.min.char', 'base', 'At least :num chars.', 'validation, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(231, 'validation.max.char', 'base', 'Maximum :num chars.', 'validation, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(232, 'validation.same.value', 'base', 'Enter the same value.', 'validation, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(233, 'validation.email.valid', 'base', 'Enter valid email.', 'validation, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(234, 'validation.issue', 'base', 'Currently we are facing some technical issue, please try again after sometime.', 'validation, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(235, 'auth.signin', 'base', 'Sign-in', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(236, 'auth.sign_in_btn', 'base', 'Sign In', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(237, 'auth.sign_in', 'base', 'Sign in', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(238, 'auth.with_your', 'base', 'with your', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(239, 'auth.account', 'base', 'Account', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(240, 'auth.your_email', 'base', 'Your Email', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(241, 'auth.password', 'base', 'Password', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(242, 'auth.remember_me', 'base', 'Remember Me', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(243, 'auth.forgot_password', 'base', 'Forgot password?', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(244, 'auth.no_account', 'base', 'Don’t have an account?', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(245, 'auth.sign_with', 'base', 'Or Sign in with', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(246, 'auth.facebook', 'base', 'Facebook', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(247, 'auth.google', 'base', 'Google', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(248, 'auth.sign_here', 'base', 'Sign up here', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(249, 'auth.welcome', 'base', 'Welcome!', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(250, 'auth.logout', 'base', 'Logout', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(251, 'auth.sign_up', 'base', 'Sign up', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(252, 'auth.create_new', 'base', 'Create New', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(253, 'auth.email_verified', 'base', 'Email Verified', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(254, 'auth.resend_email', 'base', 'Resend Email', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(255, 'auth.set_admin_account', 'base', 'Please setup admin account.', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(256, 'auth.repeat_password', 'base', 'Repeat Password', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(257, 'auth.reset_password', 'base', 'Reset password', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(258, 'auth.forgot_password_note', 'base', 'If you forgot your password, well, then we\'ll email you instructions to reset your password.', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(259, 'auth.your_email_address', 'base', 'Your Email Address', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(260, 'auth.your_name', 'base', 'Your Name', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(261, 'auth.your_full_name', 'base', 'Your Full Name', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(262, 'auth.your_mobile', 'base', 'Your Mobile Number', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(263, 'auth.enter_full_name', 'base', 'Enter Full Name', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(264, 'auth.enter_email_address', 'base', 'Enter Email Address', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(265, 'auth.enter_mobile', 'base', 'Enter Mobile Number', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(266, 'auth.enter_password', 'base', 'Enter Password', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(267, 'auth.reset_link', 'base', 'Send Reset Link', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(268, 'auth.return_login', 'base', 'Return to login', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(269, 'auth.agree', 'base', 'I agree to the', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(270, 'auth.agree_and', 'base', 'and', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(271, 'auth.agree_terms', 'base', 'By registering you agree to the terms and conditions.', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(272, 'auth.agree_confirm', 'base', 'You should accept our terms and policy.', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(273, 'auth.create_account', 'base', 'Create Account', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(274, 'auth.already_account', 'base', 'Already have an account ?', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(275, 'auth.sign_instead', 'base', 'Sign in instead', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(276, 'auth.verify_email', 'base', 'Please verify your email address.', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(277, 'auth.cancel_signup', 'base', 'Cancel Signup', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(278, 'auth.sign_out', 'base', 'Sign Out', 'auth, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(279, 'dashboard.main_site', 'base', 'Main Site', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(280, 'dashboard.title_user_dashboard', 'base', 'User Dashboard', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(281, 'dashboard.title_user_transactions', 'base', 'User Transactions', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(282, 'dashboard.title_user_account', 'base', 'User Account', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(283, 'dashboard.title_user_token', 'base', ':symbol Token Balance', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(284, 'dashboard.title_token', 'base', 'My Token', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(285, 'dashboard.title_kyc', 'base', 'KYC Application', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(286, 'dashboard.title_dashboard', 'base', 'Dashboard', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(287, 'dashboard.title_transactions', 'base', 'Transactions', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(288, 'dashboard.title_profile', 'base', 'Profile', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(289, 'dashboard.kyc_details', 'base', 'User KYC Details', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(290, 'dashboard.id_verification', 'base', 'Begin ID-Verification', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(291, 'dashboard.buy_token', 'base', 'Buy Token', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(292, 'dashboard.current_price', 'base', 'Current Price', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(293, 'dashboard.buy_token_now', 'base', 'Buy Token Now', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(294, 'dashboard.kyc_approved', 'base', 'KYC Approved', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(295, 'dashboard.kyc_application', 'base', 'KYC Application', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(296, 'dashboard.kyc_pending', 'base', 'KYC Pending', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(297, 'dashboard.submit_kyc', 'base', 'Submit KYC', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(298, 'dashboard.your_contribution_in', 'base', 'Your Contribution in', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(299, 'dashboard.token_balance', 'base', 'Token Balance', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(300, 'dashboard.token_name', 'base', 'Token Name', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22');
INSERT INTO `translates` (`id`, `key`, `name`, `text`, `pages`, `group`, `panel`, `load`, `created_at`, `updated_at`) VALUES
(301, 'dashboard.token_symbol', 'base', 'Token Symbol', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(302, 'dashboard.white_paper', 'base', 'White Paper', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(303, 'dashboard.contact_support', 'base', 'Contact Support', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(304, 'dashboard.my_profile', 'base', 'My Profile', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(305, 'dashboard.referral', 'base', 'Referral', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(306, 'dashboard.referral_url', 'base', 'Referral URL', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(307, 'dashboard.referral_lists', 'base', 'Referral Lists', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(308, 'dashboard.activity', 'base', 'Activity', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(309, 'dashboard.download_whitepaper', 'base', 'Download Whitepaper', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(310, 'dashboard.add_wallet_befor', 'base', 'Add your wallet address before buy', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(311, 'dashboard.account_status', 'base', 'Your Account Status', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(312, 'dashboard.receiving_wallet', 'base', 'Receiving Wallet', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(313, 'dashboard.new_address', 'base', 'New address under review for approve.', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(314, 'dashboard.your_wallet', 'base', 'Add Your Wallet Address', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(315, 'dashboard.earn_with_referral', 'base', 'Earn with Referral', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(316, 'dashboard.invite_friends', 'base', 'Invite your friends & family.', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(317, 'dashboard.refer_link', 'base', 'Use above link to refer your friend and get referral bonus.', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(318, 'dashboard.contact_support_team', 'base', 'Contact our support team via email', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(319, 'dashboard.current_bonus', 'base', 'Current Bonus', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(320, 'dashboard.start_date', 'base', 'Start Date', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(321, 'dashboard.end_date', 'base', 'End Date', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(322, 'dashboard.bonus_start_in', 'base', 'The Bonus Start in', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(323, 'dashboard.bonus_end_in', 'base', 'The Bonus End in', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(324, 'dashboard.token_sales_progress', 'base', 'Token Sales Progress', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(325, 'dashboard.raised', 'base', 'Raised', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(326, 'dashboard.total', 'base', 'Total', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(327, 'dashboard.sales_end_in', 'base', 'Sales End in', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(328, 'dashboard.sales_end_at', 'base', 'Sales End at', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(329, 'dashboard.sales_start_in', 'base', 'Sales Start in', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(330, 'dashboard.sales_start_at', 'base', 'Sales Start at', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(331, 'dashboard.raised_amount', 'base', 'Raised Amount', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(332, 'dashboard.total_token', 'base', 'Total Token', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(333, 'dashboard.hard_cap', 'base', 'Hard Cap', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(334, 'dashboard.hardcap', 'base', 'Hardcap', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(335, 'dashboard.soft_cap', 'base', 'Soft Cap', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(336, 'dashboard.softcap', 'base', 'Softcap', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(337, 'dashboard.token_sales_finished', 'base', 'Our token sales has been finished. Thank you very much for your contribution.', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(338, 'dashboard.view_transaction', 'base', 'View Transaction', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(339, 'dashboard.tranx_types', 'base', 'Types', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(340, 'dashboard.tranx_type', 'base', 'Type', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(341, 'dashboard.purchased_title', 'base', 'Purchased', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(342, 'dashboard.user_name', 'base', 'User Name', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(343, 'dashboard.title_note', 'base', 'Note:', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(344, 'dashboard.title_details', 'base', 'Details', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(345, 'dashboard.oops', 'base', 'Oops!!!', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(346, 'dashboard.token_title', 'base', 'My :symbol Token', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(347, 'dashboard.buy_more', 'base', 'Buy More Token', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(348, 'dashboard.equivalent_to', 'base', 'Equivalent to', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(349, 'dashboard.total_token_amount', 'base', 'Total Token Amount', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(350, 'dashboard.purchased_token', 'base', 'Purchased Token', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(351, 'dashboard.referral_token', 'base', 'Referral Token', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(352, 'dashboard.bonuses_token', 'base', 'Bonuses Token', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(353, 'dashboard.total_contributed', 'base', 'Total Contributed', 'dashboard, global', 'system', 'any', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(354, 'profile.profile_details', 'base', 'Profile Details', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(355, 'profile.email_confirm', 'base', 'Your password will only change after your confirmation by email.', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(356, 'profile.personal_data', 'base', 'Personal Data', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(357, 'profile.settings', 'base', 'Settings', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(358, 'profile.full_name', 'base', 'Full Name', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(359, 'profile.email_address', 'base', 'Email Address', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(360, 'profile.mobile_number', 'base', 'Mobile Number', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(361, 'profile.date_of_birth', 'base', 'Date of Birth', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(362, 'profile.nationality', 'base', 'Nationality', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(363, 'profile.select_country', 'base', 'Select Country', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(364, 'profile.update_profile', 'base', 'Update Profile', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(365, 'profile.security_settings', 'base', 'Security Settings', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(366, 'profile.save_activities_log', 'base', 'Save my activities log', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(367, 'profile.confirm_email', 'base', 'Confirm me through email before password change', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(368, 'profile.manage_notification', 'base', 'Manage Notification', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(369, 'profile.resumption_notify', 'base', 'Notify me by email about resumption of sales', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(370, 'profile.sales_notify', 'base', 'Notify me by email about sales and latest news', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(371, 'profile.unusual_activity', 'base', 'Alert me by email in case of unusual activity in my account', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(372, 'profile.update', 'base', 'Update', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(373, 'profile.old_password', 'base', 'Old Password', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(374, 'profile.new_password', 'base', 'New Password', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(375, 'profile.confirm_password', 'base', 'Confirm New Password', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(376, 'profile.min_6_digit', 'base', 'Password should be a minimum of 6 digits and include lower and uppercase letter.', 'user_profile, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(377, 'profile.activitiy_log', 'base', 'Account Activities Log', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(378, 'profile.activitiy_clear', 'base', 'Clear All', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(379, 'profile.activitiy_note', 'base', 'Here is your recent activities. You can clear this log as well as disable the feature from profile settings tabs.', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(380, 'profile.activitiy_date', 'base', 'Date', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(381, 'profile.activitiy_device', 'base', 'Device', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(382, 'profile.activitiy_browser', 'base', 'Browser', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(383, 'profile.activitiy_ip', 'base', 'IP', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(384, 'profile.activitiy_delete_log', 'base', 'Once Delete, You will not get back this log in future!', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(385, 'profile.tranx_list', 'base', 'Transactions list', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(386, 'profile.tranx_amount', 'base', 'Amount', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(387, 'profile.tranx_from', 'base', 'From', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(388, 'profile.tranx_to', 'base', 'To', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(389, 'profile.tranx_pay', 'base', 'Pay', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(390, 'profile.token_types', 'base', 'Token Types', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(391, 'profile.tokens', 'base', 'Tokens', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(392, 'profile.tranx_no', 'base', 'Tranx NO', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(393, 'profile.no_data', 'base', 'No data available in table', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(394, 'profile.no_records', 'base', 'No records', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(395, 'profile.search_placeholder', 'base', 'Type in to Search', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(396, 'profile.cap_types', 'base', 'TYPES', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(397, 'profile.any_type', 'base', 'Any Type', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(398, 'profile.purchase', 'base', 'Purchase', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(399, 'profile.cap_status', 'base', 'STATUS', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(400, 'profile.cap_show_all', 'base', 'Show All', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(401, 'profile.approved', 'base', 'Approved', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(402, 'profile.pending', 'base', 'Pending', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(403, 'profile.canceled', 'base', 'Canceled', 'user_profile, user_transaction', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(404, 'kyc.verify_title', 'base', 'KYC Verification', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(405, 'kyc.verify_title_sub', 'base', 'To comply with regulations each participant is required to go through identity verification (KYC/AML) to prevent fraud, money laundering operations, transactions banned under the sanctions regime or those which fund terrorism. Please, complete our fast and secure verification process to participate in token offerings.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(406, 'kyc.identity_title', 'base', 'Identity Verification - KYC', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(407, 'kyc.identity_desc', 'base', 'To comply with regulation, participant will have to go through identity verification.', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(408, 'kyc.form_not_submitted', 'base', 'You have not submitted your necessary documents to verify your identity.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(409, 'kyc.form_submit', 'base', 'It would great if you please submit the form. If you have any question, please feel free to contact our support team.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(410, 'kyc.complete_kyc', 'base', 'Click here to complete your KYC', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(411, 'kyc.completed_kyc', 'base', 'You have completed the process of KYC', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(412, 'kyc.waiting_id_verify', 'base', 'We are still waiting for your identity verification. Once our team verified your identity, you will be notified by email. You can also check your KYC compliance status from your profile page.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(413, 'kyc.back_to_profile', 'base', 'Back to Profile', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(414, 'kyc.under_process', 'base', 'Your application verification under process.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(415, 'kyc.still_working', 'base', 'We are still working on your identity verification. Once our team verified your identity, you will be notified by email.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(416, 'kyc.resubmit_form', 'base', 'In our verification process, we found information that is incorrect or missing. Please resubmit the form. In case of any issues with the submission please contact our support team.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(417, 'kyc.submit_again', 'base', 'Submit Again', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(418, 'kyc.verified_title', 'base', 'Your identity verified successfully.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(419, 'kyc.verified_desc', 'base', 'One of our team members verified your identity. Now you can participate in our token sale. Thank you.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(420, 'kyc.info_missing', 'base', 'We found some information to be missing.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(421, 'kyc.form_rejected', 'base', 'Sorry! Your application was rejected.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(422, 'kyc.verify_head', 'base', 'Begin your ID-Verification', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(423, 'kyc.verify_text', 'base', 'In order to purchase our tokens, please verify your identity.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(424, 'kyc.verify_text_token', 'base', 'Verify your identity to participate in token sale.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(425, 'kyc.not_submitted', 'base', 'You have not submitted your documents to verify your identity (KYC).', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(426, 'kyc.click_proceed', 'base', 'Click to Proceed', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(427, 'kyc.document_received', 'base', 'We have received your document.', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(428, 'kyc.review_information', 'base', 'We will review your information and if all is in order will approve your identity. You will be notified by email once we verified your identity (KYC).', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(429, 'kyc.kyc_rejected', 'base', 'KYC Application has been rejected!', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(430, 'kyc.resubmit_application', 'base', 'We were having difficulties verifying your identity. In our verification process, we found information are incorrect or missing. Please re-submit the application again and verify your identity.', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(431, 'kyc.resubmit', 'base', 'Resubmit', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(432, 'kyc.kyc_verified', 'base', 'Identity (KYC) has been verified.', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(433, 'kyc.token_sale', 'base', 'One for our team verified your identity. You are eligible to participate in our token sale.', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(434, 'kyc.purchase_token', 'base', 'Purchase Token', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(435, 'kyc.kyc_verification_required', 'base', 'KYC verification required for purchase token', 'dashboard, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(436, 'kyc.form.personal_details', 'base', 'Personal Details', 'kyc, kyc_form, global', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(437, 'kyc.form.personal_details_sub', 'base', 'Your basic personal information is required for identification purposes.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(438, 'kyc.form.personal_details_note', 'base', 'Please type carefully and fill out the form with your personal details. You are not allowed to edit the details once you have submitted the application.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(439, 'kyc.form.first_name', 'base', 'First Name', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(440, 'kyc.form.last_name', 'base', 'Last Name', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(441, 'kyc.form.phone_number', 'base', 'Phone Number', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(442, 'kyc.form.gender', 'base', 'Gender', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(443, 'kyc.form.select_gender', 'base', 'Select Gender', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(444, 'kyc.form.male', 'base', 'Male', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(445, 'kyc.form.female', 'base', 'Female', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(446, 'kyc.form.other', 'base', 'Other', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(447, 'kyc.form.telegram_username', 'base', 'Telegram Username', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(448, 'kyc.form.your_address', 'base', 'Your Address', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(449, 'kyc.form.country', 'base', 'Country', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(450, 'kyc.form.state', 'base', 'State', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(451, 'kyc.form.city', 'base', 'City', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(452, 'kyc.form.postal_code', 'base', 'Zip / Postal Code', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(453, 'kyc.form.address_line_1', 'base', 'Address Line 1', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(454, 'kyc.form.address_line_2', 'base', 'Address Line 2', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(455, 'kyc.form.document_upload', 'base', 'Document Upload', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(456, 'kyc.form.scan_documents', 'base', 'To verify your identity, we ask you to upload high-quality scans or photos of your official identification documents issued by the government.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(457, 'kyc.form.upload_documents', 'base', 'In order to complete, please upload any of the following personal documents.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(458, 'kyc.form.passport', 'base', 'Passport', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(459, 'kyc.form.national_id_card', 'base', 'National ID Card', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(460, 'kyc.form.driver_license', 'base', 'Driver’s License', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(461, 'kyc.form.check_requirements', 'base', 'To avoid delays with verification process, please double-check to ensure the below requirements are fully met:', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(462, 'kyc.form.visible_documents', 'base', 'Document should be in good condition and clearly visible.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(463, 'kyc.form.no_glare', 'base', 'There is no light glare or reflections on the card.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(464, 'kyc.form.not_expire_credentials', 'base', 'Chosen credential must not be expired.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(465, 'kyc.form.file_limitation', 'base', 'File is at least 1 MB in size and has at least 300 dpi resolution.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(466, 'kyc.form.drag_and_drop_file', 'base', 'Drag and drop file', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(467, 'kyc.form.select', 'base', 'Select', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(468, 'kyc.form.or', 'base', 'or', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(469, 'kyc.form.upload_doc_copy', 'base', 'Upload Here Your :doctype Copy', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(470, 'kyc.form.nid_back_side', 'base', 'Upload Here Your National ID Back Side', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(471, 'kyc.form.photo_selfie', 'base', 'Upload a selfie as a Photo Proof while holding document in your hand', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(472, 'kyc.form.paying_wallet', 'base', 'Your Paying Wallet', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(473, 'kyc.form.paying_wallet_submit', 'base', 'Submit your wallet address that you are going to send funds', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(474, 'kyc.form.paying_wallet_note', 'base', 'DO NOT USE your exchange wallet address such as Kraken, Bitfinex, Bithumb, Binance etc.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(475, 'kyc.form.select_wallet', 'base', 'Select Wallet', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(476, 'kyc.form.enter_your_wallet', 'base', 'Enter your wallet address', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(477, 'kyc.form.your_wallet_address', 'base', 'Your personal wallet address', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(478, 'kyc.form.agree_terms', 'base', 'I have read the', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(479, 'kyc.form.agree_info', 'base', 'All the personal information I have entered is correct.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(480, 'kyc.form.agree_individual', 'base', 'I certify that, I am registering to participate in the token distribution event(s) in the capacity of an individual (and beneficial owner) and not as an agent or representative of a third party corporate entity.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(481, 'kyc.form.agree_final', 'base', 'I understand that, I can participate in the token distribution event(s) only with the wallet address that was entered in the application form.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(482, 'kyc.form.proceed', 'base', 'Proceed to Verify', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(483, 'kyc.form.confirm_terms', 'base', 'You should read our terms and policy.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(484, 'kyc.form.confirm_info', 'base', 'Confirm that all information is correct.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(485, 'kyc.form.confirm_individual', 'base', 'Certify that you are individual.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(486, 'kyc.form.confirm_final', 'base', 'Confirm that you understand.', 'kyc', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(487, 'buy_token.sale_start_soon', 'base', 'Our sale will start soon. Please check back at a later date/time or feel free to contact us.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(488, 'buy_token.calculate', 'base', 'Choose currency and calculate :SYMBOL token price', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(489, 'buy_token.choose_currency', 'base', 'You can buy our :SYMBOL token using the below currency choices to become part of our project.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(490, 'buy_token.amount_of_contribute', 'base', 'Amount of contribute', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(491, 'buy_token.contribute_amout', 'base', 'Enter the amount you would like to contribute in order to calculate the amount of tokens you will receive. The calculator below helps to convert the required quantity of tokens into the amount of your selected currency.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(492, 'buy_token.minimum_amount', 'base', 'Minimum contribution amount is required.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(493, 'buy_token.bonus', 'base', 'Bonus', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(494, 'buy_token.on_sale', 'base', 'On Sale', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(495, 'buy_token.sale_bonus', 'base', 'Sale Bonus', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(496, 'buy_token.amount_bonus', 'base', 'Amount Bonus', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(497, 'buy_token.exchange_note', 'base', 'Your contribution will be calculated based on exchange rate at the moment when your transaction is confirmed.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:22', '2021-07-10 21:37:22'),
(498, 'buy_token.payment_button', 'base', 'Make Payment', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(499, 'buy_token.token_note', 'base', 'Tokens will appear in your account after payment successfully made and approved by our team. Please note that, :SYMBOL token will be distributed after the token sales end-date.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(500, 'buy_token.token_sales', 'base', 'Token Sales', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(501, 'buy_token.token_price', 'base', 'Token Price', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(502, 'buy_token.exchange_rate', 'base', 'Exchange Rate', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(503, 'buy_token.end_at', 'base', 'End at', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(504, 'buy_token.choose_method', 'base', 'You can choose any of following payment method to make your payment. The token balance will appear in your account after successful payment.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(505, 'buy_token.select_method', 'base', 'Select payment method:', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(506, 'buy_token.appear_address', 'base', 'Our payment address will appear or redirect you for payment after your order placed.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(507, 'buy_token.charge_fee', 'base', 'Payment gateway may charge you a processing fees.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(508, 'buy_token.maximum_amount_reached', 'base', 'Maximum amount reached, You can purchase maximum :amount :symbol per transaction.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(509, 'buy_token.purchase_minimum_amount', 'base', 'You must purchase minimum :amount :symbol.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(510, 'buy_token.sales_finished', 'base', 'Our sales has been finished. Thank you very much for your interest.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(511, 'buy_token.token_not_available', 'base', ':amount :symbol Token is not available.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(512, 'buy_token.available_amount', 'base', 'Available :amount :symbol only, You can purchase less than :amount :symbol Token.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(513, 'buy_token.transaction_may_deleted', 'base', 'Sorry, we\'re unable to proceed the transaction. This transaction may deleted. Please contact with administrator.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(514, 'buy_token.transaction_already_status', 'base', 'Your transaction is already :status. Sorry, we\'re unable to proceed the transaction.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(515, 'buy_token.transaction_status_check_account', 'base', 'Your transaction is already :status. Please check your account balance.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(516, 'buy_token.transaction_not_found', 'base', 'Transaction is not found!!', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(517, 'buy_token.transaction_not_valid', 'base', 'Transaction id or key is not valid!', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(518, 'buy_token.maximum_purchase', 'base', 'Maximum you can purchase :maximum_token token per contribution.', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(519, 'buy_token.minimum_token', 'base', 'Enter minimum :minimum_token token and select currency!', 'buy_token', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(520, 'payment.order.title', 'base', 'Confirmation Your Payment', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(521, 'payment.order.cancel_title', 'base', 'Oops! Payment Canceled!', 'payment, cancel', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(522, 'payment.order.cancel_desc', 'base', 'You have canceled your payment. If you continue to have issues, please contact us with order no. :orderid.', 'payment, cancel', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(523, 'payment.order.close', 'base', 'Close', 'payment, cancel', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(524, 'payment.order.placed', 'base', 'Your Order no. :orderid has been placed successfully.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(525, 'payment.order.pending', 'base', 'Your Order no. :orderid has been placed & waiting for payment.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(526, 'payment.order.onhold', 'base', 'Your Order no. :orderid has been placed & waiting for team approval.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(527, 'payment.info.crypto_amount', 'base', 'Please send :amount :currency to the address below. The token balance will appear in your account only after transaction gets :num confirmation and approved by our team.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(528, 'payment.info.crypto_receive', 'base', 'To receiving :token :symbol token, please send :amount :currency to the address below. The token balance will appear in your account only after transaction gets :num confirmation and approved by our team.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(529, 'payment.info.bank_amount', 'base', 'Please make your payment of :amount :currency through bank to the below bank address. The token balance will appear in your account only after your transaction gets approved by our team.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(530, 'payment.info.bank_receive', 'base', 'To receiving :token :symbol token, please make your payment of :amount :currency through bank to the below bank address. The token balance will appear in your account only after your transaction gets approved by our team.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(531, 'payment.info.gateway_amount', 'base', 'The token balance will appear in your account only after you transaction gets :num confirmations and approved by :gateway.', 'payment, online', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(532, 'payment.info.gateway_receive', 'base', 'To receiving :token :symbol token, please make your payment of :amount :currency through :gateway. The token balance will appear in your account after we received your payment.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(533, 'payment.info.wallet_verify', 'base', 'To speed up verification process please enter your wallet address from where you\'ll transferring your amount to our address.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(534, 'payment.info.hash_verify', 'base', 'To speed up verification process, please enter your transaction hash or payment id.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(535, 'payment.wallet_address', 'base', 'Enter Your Wallet Address', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(536, 'payment.payment_address', 'base', 'Insert your payment address', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(537, 'payment.cancel_order', 'base', 'Cancel Order', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(538, 'payment.select_method', 'base', 'Select your payment method.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(539, 'payment.note_hint', 'base', 'Do not make payment through exchange (Kraken, Bitfinex). You can use MyEtherWallet, MetaMask, Mist wallets etc.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(540, 'payment.note_alert', 'base', 'In case you send a different amount, number of :SYMBOL token will update accordingly.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(541, 'payment.note_redirect', 'base', 'Our payment address will appear or redirect you for payment after the order is placed.', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(542, 'payment.payment_process', 'base', 'Payment Process', 'payment, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(543, 'payment.payment_confirm', 'base', 'Confirm Payment', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(544, 'payment.skip_address', 'base', 'I\'ll provide wallet address later', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(545, 'payment.gas_limit', 'base', 'SET GAS LIMIT:', 'payment, offline', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(546, 'payment.gas_price', 'base', 'SET GAS PRICE:', 'payment, offline', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(547, 'payment.send_amount_to', 'base', 'Send Amount:', 'payment, order', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(548, 'payment.amount_with_bonus', 'base', 'Please make payment of :amount to receive :token_amount token including bonus :token_bonus token.', 'payment, manual', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(549, 'payment.amount_no_bonus', 'base', 'Please make payment of :amount to receive :token_amount token.', 'payment, manual', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(550, 'payment.deposit_title', 'base', 'Payment Address for Deposit', 'payment, manual', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(551, 'payment.deposit_address', 'base', 'Payment to the following :Name Wallet Address', 'payment, manual', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(552, 'payment.deposit_address_or_scan', 'base', 'Payment to the following :Name Wallet Address Or scan the QR code', 'payment, manual', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(553, 'payment.scan_code', 'base', 'Scan QR code to payment.', 'payment, manual', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(554, 'payment.agree_terms', 'base', 'I hereby agree to the token purchase agreement and token sale term.', 'payment, manual', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(555, 'payment.no_method', 'base', 'Sorry! There is no payment method available for this currency. Please choose another currency or contact our support team.', 'payment, manual', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(556, 'payment.review_title', 'base', 'We\'re reviewing your payment.', 'payment, manual', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(557, 'payment.review_desc', 'base', 'We\'ll review your transaction and get back to your within 6 hours. You\'ll receive an email with the details of your contribution.', 'payment, manual', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(558, 'payment.already_paid', 'base', 'Click here if you already paid', 'payment, online', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(559, 'payment.bellow_address', 'base', 'Make your payment to the below address', 'payment, online', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(560, 'payment.check_status', 'base', 'Check Status', 'payment, online', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(561, 'payment.gateway_status', 'base', 'Check status on :gateway', 'payment, online', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(562, 'payment.send_amount', 'base', 'Please send :amount :currency to the address below.', 'payment, online', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(563, 'payment.pay_or_cancel', 'base', 'Click the Pay button below to make payment for this transaction, or you can cancel this transaction.', 'payment, online', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(564, 'payment.refunded_token', 'base', 'Refunded Token', 'payment, online', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(565, 'payment.refunded_amount', 'base', 'Refunded Amount', 'payment, online', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(566, 'payment.refund_note', 'base', 'Refund Note', 'payment, online', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(567, 'payment.bank_details', 'base', 'Bank Details for Payment', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(568, 'payment.bank_note', 'base', 'The token balance will appear in your account only after your transaction gets approved by our team.', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(569, 'payment.bank_iban', 'base', 'IBAN', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(570, 'payment.bank_name', 'base', 'Bank Name', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(571, 'payment.bank_address', 'base', 'Bank Address', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(572, 'payment.bank_routing', 'base', 'Routing Number', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(573, 'payment.bank_swift', 'base', 'Swift/BIC', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(574, 'payment.bank_account_name', 'base', 'Account Name', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(575, 'payment.bank_account_number', 'base', 'Account Number', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(576, 'payment.bank_account_address', 'base', 'Account Holder Address', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(577, 'payment.bank_make_payment', 'base', 'Make Payment to the Following Bank Account', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(578, 'payment.bank_referance', 'base', 'Use this transaction id (#:orderid) as reference. Make your payment within 24 hours, If we will not received your payment within 24 hours, then we will cancel the transaction.', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(579, 'payment.pay_via', 'base', 'Pay via', 'payment, bank', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(580, 'tranx.details', 'base', 'Transaction Details', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(581, 'tranx.order_no', 'base', 'The order no. :orderid was placed on :datetime.', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(582, 'tranx.successfully_paid', 'base', 'You have successfully paid this transaction', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(583, 'tranx.via', 'base', 'via', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(584, 'tranx.wallet', 'base', 'wallet', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(585, 'tranx.order_failed', 'base', 'Sorry! Your order has been :status due to payment.', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(586, 'tranx.canceled_transfer_request', 'base', 'The transfer request was canceled at :time.', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(587, 'tranx.under_review', 'base', 'The transaction is currently under review. We will send you an email once our review is complete.', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(588, 'tranx.canceled_admin', 'base', 'The transaction was canceled by Administrator at :time.', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(589, 'tranx.canceled_user', 'base', 'You have canceled this transaction.', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(590, 'tranx.approved_admin', 'base', 'Transaction has been approved at :time.', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(591, 'tranx.token_details', 'base', 'Token Details', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(592, 'tranx.token_of_stage', 'base', 'Token of Stage', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(593, 'tranx.token_amount', 'base', 'Token Amount (T)', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(594, 'tranx.bonus_token', 'base', 'Bonus Token (B)', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(595, 'tranx.offline_payment', 'base', 'Offline Payment', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(596, 'tranx.online_payment', 'base', 'Online Payment', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23');
INSERT INTO `translates` (`id`, `key`, `name`, `text`, `pages`, `group`, `panel`, `load`, `created_at`, `updated_at`) VALUES
(597, 'tranx.issue_occured', 'base', 'Sorry, seems there is an issues occurred and we couldn’t process your request. Please contact us with your order no. :orderid, if you continue to having the issues.', 'transaction, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(598, 'wallet.do_not_use', 'base', 'DO NOT USE your exchange wallet address OR if you don\'t have a private key of the your address. You WILL NOT receive your token and WILL LOSE YOUR FUNDS if you do.', 'user_wallet', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(599, 'wallet.erc_address', 'base', 'Address should be ERC20-compliant.', 'user_wallet', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(600, 'wallet.receive_info', 'base', 'In order to receive your :SYMBOL token, please select your wallet address and you have to put the address below input box. You will receive :SYMBOL token to this address after the token sale end.', 'user_wallet', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(601, 'wallet.current', 'base', 'Current Wallet', 'user_wallet', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(602, 'wallet.type', 'base', 'Wallet Type', 'user_wallet', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(603, 'wallet.receive_address', 'base', ':Name Wallet Address for receiving token', 'user_wallet', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(604, 'wallet.add_wallet', 'base', 'Add Wallet', 'user_wallet', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(605, 'wallet.enter_wallet', 'base', 'Enter your :Name wallet address', 'user_wallet', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(606, 'wallet.enter_new_wallet', 'base', 'Enter your new :Name wallet address', 'user_wallet', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(607, 'wallet.request', 'base', 'Request for change', 'user_wallet', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(608, 'wallet.request_update', 'base', 'Request for Update Wallet', 'user_wallet', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(609, 'status.approved', 'base', 'Approved', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(610, 'status.pending', 'base', 'Pending', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(611, 'status.progress', 'base', 'Progress', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(612, 'status.rejected', 'base', 'Rejected', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(613, 'status.warning', 'base', 'Warning', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(614, 'status.success', 'base', 'Success', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(615, 'status.running', 'base', 'Running', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(616, 'status.upcoming', 'base', 'Upcoming', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(617, 'status.completed', 'base', 'Completed', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(618, 'status.expired', 'base', 'Expired', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(619, 'status.pause', 'base', 'Pause', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(620, 'status.inactive', 'base', 'Inactive', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(621, 'status.edit', 'base', 'Edit', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(622, 'status.add', 'base', 'Add', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(623, 'status.see', 'base', 'See', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(624, 'status.more', 'base', 'More', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(625, 'status.view', 'base', 'View', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(626, 'status.enable', 'base', 'Enable', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(627, 'status.enabled', 'base', 'Enabled', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(628, 'status.disable', 'base', 'Disable', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(629, 'status.disabled', 'base', 'Disabled', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(630, 'status.proceed', 'base', 'Proceed', 'status, global', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(631, 'auth.2fa.hello', 'base', 'Hello', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(632, 'auth.2fa.title', 'base', '2FA', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(633, 'auth.2fa.reset_2fa', 'base', 'Reset 2FA', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(634, 'auth.2fa.enable_2fa', 'base', 'Enable 2FA', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(635, 'auth.2fa.confirm_2fa', 'base', 'Confirm 2FA', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(636, 'auth.2fa.disable_2fa', 'base', 'Disable 2FA', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(637, 'auth.2fa.current_status', 'base', 'Current Status:', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(638, 'auth.2fa.authentication', 'base', '2FA Authentication', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(639, 'auth.2fa.two-factor_verification', 'base', 'Two-Factor Verification', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(640, 'auth.2fa.verify_code', 'base', 'Enter the Code to verify', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(641, 'auth.2fa.reset_authentication', 'base', 'Reset 2FA Authentication', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(642, 'auth.2fa.authentication_code', 'base', 'Enter your authentication code', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(643, 'auth.2fa.google_code', 'base', 'Enter Google Authenticator Code', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(644, 'auth.2fa.auth', 'base', 'Two-factor authentication is a method for protection of your account. When it is activated you are required to enter not only your password, but also a special code. You can receive this code in mobile app. Even if third party gets access to your password, they still won\'t be able to access your account without the 2FA code.', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(645, 'auth.2fa.lost_access', 'base', 'If you lost your phone or uninstall the Google Authenticator app, then you will lost access of your account.', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(646, 'auth.2fa.step_2', 'base', 'Step 2:', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(647, 'auth.2fa.scan_qr_code', 'base', 'Scan the below QR code by your Google Authenticator app, or you can add account manually.', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(648, 'auth.2fa.manually_add_account', 'base', 'Manually add Account:', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(649, 'auth.2fa.account_name', 'base', 'Account Name:', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(650, 'auth.2fa.key', 'base', 'Key:', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(651, 'auth.2fa.verification_code', 'base', 'Enter the verification code generated by your mobile application (Google Authenticator).', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(652, 'auth.2fa.contact_us', 'base', 'If you lost your phone or Uninstall the Google Authenticator app and enable to access your account please contact with us.', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(653, 'auth.2fa.step_1', 'base', 'Step 1:', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(654, 'auth.2fa.install_this_app_from', 'base', 'Install this app from', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(655, 'auth.2fa.google_play', 'base', 'Google Play', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(656, 'auth.2fa.store_or', 'base', 'store or', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(657, 'auth.2fa.app_store', 'base', 'App Store', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(658, 'auth.2fa.reset_auth', 'base', 'Please enter your account password to reset 2FA authentication.', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(659, 'auth.2fa.invalid', 'base', 'You have provide a invalid 2FA authentication code!', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(660, 'auth.2fa.wrong', 'base', 'Please enter a valid authentication code!', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(661, 'auth.2fa.enabled', 'base', 'Successfully enable 2FA security in your account.', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(662, 'auth.2fa.disabled', 'base', 'Successfully disable 2FA security in your account.', 'user_2fa', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(663, 'transfer.send_token_friend', 'base', 'Send Token to Your Friend', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(664, 'transfer.available_token_balance', 'base', 'Available Token Balance:', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(665, 'transfer.receiver_email', 'base', 'Receiver/Friend Email', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(666, 'transfer.enter_receiver_email', 'base', 'Enter receiver email', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(667, 'transfer.enter_valid_email_address', 'base', 'Enter a valid email address, which is associated with our platform.', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(668, 'transfer.enter_token_number', 'base', 'Enter token number', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(669, 'transfer.minimum_send', 'base', 'Minimum Send: :amount :symbol', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(670, 'transfer.you_do_not_have_token', 'base', 'You do not have enough token to send.', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(671, 'transfer.you_can_not_send_token_now', 'base', 'You can not send token right now.', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(672, 'transfer.enter_number_of_token', 'base', 'Enter number of token you would like to send.', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(673, 'transfer.please_enter_minimum', 'base', 'Please enter minimum number of token.', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(674, 'transfer.before_clicking_proceed', 'base', 'Before clicking the &quot;Proceed&quot; button, be sure that you want to send token. You can not cancel the request once you proceed.', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(675, 'transfer.can_not_send_token_to_friend', 'base', 'Sorry! right now you can not send token to your friend account. Please contact us if you have any question.', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(676, 'transfer.invite_your_friend_send_token', 'base', 'You can invite your friend to join our platform and also you can send your token to your friend using his email address.', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(677, 'transfer.see_transactions', 'base', 'See Transactions', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(678, 'transfer.send_token', 'base', 'Send Token', 'transfer, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(679, 'withdraw.withdrawal', 'base', 'Withdrawal', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(680, 'withdraw.withdraw_wallet', 'base', 'Withdraw Wallet', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(681, 'withdraw.reference_hash', 'base', 'Reference Hash', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(682, 'withdraw.Wwithdraw_details', 'base', 'Withdraw Details', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(683, 'withdraw.request_at', 'base', 'Request At', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(684, 'withdraw.notes', 'base', 'Notes', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(685, 'withdraw.received_withdraw_request', 'base', 'We have received your withdraw request and our team will proceed shortly. We will send you an email once we have completed your withdraw.', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(686, 'withdraw.withdraw_transaction', 'base', 'Withdraw transaction has been :status at :time.', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(687, 'withdraw.canceled_withdraw_request', 'base', 'You have canceled the withdraw request.', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(688, 'withdraw.token', 'base', 'Withdraw Token', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(689, 'withdraw.amount', 'base', 'Withdraw Amount (:TOKEN)', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(690, 'withdraw.minimum', 'base', 'Minimum Withdraw:', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(691, 'withdraw.choose_coin', 'base', 'Choose Coin', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(692, 'withdraw.on_same', 'base', 'Withdraw will be on same.', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(693, 'withdraw.receiving_wallet_address', 'base', 'Wallet Address for Receiving', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(694, 'withdraw.your_wallet_address', 'base', 'Your wallet address', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(695, 'withdraw.provide_valid_wallet_address', 'base', 'Provide a valid wallet address for withdraw your token.', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(696, 'withdraw.your_will_get', 'base', 'Your will Get:', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(697, 'withdraw.withdraw', 'base', 'Withdraw', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(698, 'withdraw.do_not_have_token_to_withdraw', 'base', 'You do not have enough token to withdraw.', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(699, 'withdraw.can_not_withdraw', 'base', 'You can not withdraw right now.', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(700, 'see_', 'base', 'Withdraw History', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(701, 'withdraw.id', 'base', 'Withdraw ID', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(702, 'withdraw.wallet', 'base', 'Wallet Address', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(703, 'withdraw.information', 'base', 'Information', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(704, 'withdraw.enter_wallet', 'base', 'Enter your wallet address for withdraw.', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(705, 'withdraw.can_not_withdraw_token', 'base', 'Sorry! right now you can not withdraw token. Please contact us if you have any question.', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(706, 'withdraw.withdraw_funds_process', 'base', 'You can withdraw the your funds and we will process soon.', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(707, 'withdraw.withdraw_your_token', 'base', 'Withdraw Your Token', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(708, 'withdraw.withdraw_your_token_any_time', 'base', 'You can withdraw your token any time, we will processed withing 24 hours after your withdraw request.', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(709, 'withdraw.see_history', 'base', 'See Withdraw History', 'withdraw, transaction', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(710, 'referral.referee', 'base', 'Referee', 'referral', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(711, 'referral.earn_token', 'base', 'Earn Token', 'referral', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(712, 'referral.bought_token', 'base', 'Bought Token', 'referral', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(713, 'referral.register_date', 'base', 'Register Date', 'referral', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(714, 'referral.no_one_join_yet!', 'base', 'No one join yet!', 'referral', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(715, 'referral.not_purchased', 'base', 'Not purchased yet', 'referral', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(716, 'referral.token_purchase', 'base', 'Token purchase by', 'referral', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(717, 'referral.referred_by', 'base', 'You are referred by', 'referral', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(718, 'referral.received_token', 'base', 'You have received bonus token.', 'referral', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23'),
(719, 'referral.refered_by', 'base', 'Your were invited by :userid', 'referral', 'system', 'user', 0, '2021-07-10 21:37:23', '2021-07-10 21:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'active',
  `registerMethod` varchar(191) DEFAULT 'Email',
  `social_id` varchar(191) DEFAULT NULL,
  `mobile` varchar(191) DEFAULT NULL,
  `dateOfBirth` varchar(191) DEFAULT NULL,
  `nationality` varchar(191) DEFAULT NULL,
  `lastLogin` datetime NOT NULL,
  `walletType` varchar(191) DEFAULT NULL,
  `walletAddress` varchar(191) DEFAULT NULL,
  `role` enum('admin','manager','user') NOT NULL DEFAULT 'user',
  `contributed` double DEFAULT NULL,
  `tokenBalance` double DEFAULT NULL,
  `referral` varchar(191) DEFAULT NULL,
  `referralInfo` text DEFAULT NULL,
  `google2fa` int(11) NOT NULL DEFAULT 0,
  `google2fa_secret` text DEFAULT NULL,
  `type` enum('demo','main') NOT NULL DEFAULT 'main',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `registerMethod`, `social_id`, `mobile`, `dateOfBirth`, `nationality`, `lastLogin`, `walletType`, `walletAddress`, `role`, `contributed`, `tokenBalance`, `referral`, `referralInfo`, `google2fa`, `google2fa_secret`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2021-08-25 12:02:20', '$2y$10$RTX2oLMIc8NfRswMlNSjUezalT//ic76sPVr9UUIkhveoFhcWd5M.', 'active', 'Email', NULL, '567889999', NULL, NULL, '2021-09-02 12:23:52', NULL, NULL, 'admin', NULL, NULL, NULL, NULL, 0, NULL, 'main', 'qFzqLKk427u2dwk1HOgqyjlS7a9c2EQoPY43uHWTdBggaP4N6mVQsnc1GEBw', '2021-08-25 12:02:20', '2021-09-02 06:53:52'),
(2, 'User', 'user@gmail.com', '2021-08-26 06:23:52', '$2y$10$V/63Sgr8Mb4e9I.5WtlpNuol4Evl5gdtX7xT2V/nJslHYTC96PCBW', 'active', 'Email', NULL, NULL, NULL, NULL, '2021-09-02 12:25:34', NULL, NULL, 'user', NULL, NULL, NULL, NULL, 0, NULL, 'main', 'z1V5jEApryNynShCzgeYddBCqvJrFC9nNyrHLDn5MrKgx0EP3Xu3JtxMjJjE', '2021-08-26 06:49:49', '2021-09-02 06:55:34'),
(4, 'Fyuii', 'yuiik@gmail.com', NULL, '$2y$10$H.y2cN.n2P2NSfwAQta3G.wK6ubvl5LxHspx5VNrpnHZ.vWzNb1Di', 'active', 'Email', NULL, NULL, NULL, NULL, '2021-08-26 18:14:06', NULL, NULL, 'user', NULL, NULL, NULL, NULL, 0, NULL, 'main', 'QSinQMcqogv2IRSVKOwnuh3f9nAuUq3nmfjo6RlfvwQXuRG4aSWMP8eMGyuf', '2021-08-26 12:44:06', '2021-08-26 12:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_metas`
--

CREATE TABLE `user_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `notify_admin` int(11) NOT NULL DEFAULT 0,
  `newsletter` int(11) NOT NULL DEFAULT 1,
  `unusual` int(11) NOT NULL DEFAULT 1,
  `save_activity` varchar(191) NOT NULL DEFAULT 'TRUE',
  `pwd_chng` varchar(191) NOT NULL DEFAULT 'TRUE',
  `pwd_temp` varchar(191) DEFAULT NULL,
  `email_expire` datetime DEFAULT NULL,
  `email_token` varchar(220) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_metas`
--

INSERT INTO `user_metas` (`id`, `userId`, `notify_admin`, `newsletter`, `unusual`, `save_activity`, `pwd_chng`, `pwd_temp`, `email_expire`, `email_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'TRUE', 'TRUE', NULL, '2021-08-25 18:47:20', 'B3uNModRRna0Lwu83LOV0Xq4DN464HLg18Wcl94gQ9xz8boODeYGY13ogNAmj6ZvA', '2021-08-25 12:02:20', '2021-08-25 12:02:20'),
(2, 2, 0, 1, 1, 'TRUE', 'TRUE', NULL, '2021-08-26 13:35:21', 'SRl9vBlD9LiHNS5DHKGdCRuTKteVUSC1HIDX24UluuZzJwyBQAlhYg2YLN5CdqYxf', '2021-08-26 06:49:49', '2021-08-26 06:50:21'),
(3, 3, 0, 1, 1, 'TRUE', 'TRUE', NULL, '2021-08-26 13:36:12', 'WQfZGKVA4p1U5qDItUtsHz5XOHv5gcuETDu2IiRI95wPtUEGqYdjtK5o3d56SWDVU', '2021-08-26 06:51:12', '2021-08-26 06:51:12'),
(4, 4, 0, 1, 1, 'TRUE', 'TRUE', NULL, '2021-08-26 19:29:06', '69Hikv6KfTXVrdsenKOfYCfdoNp51BzW0FKzsH0dgYVmbvXMhqtOM1yx7VlLFuB1q', '2021-08-26 12:44:06', '2021-08-26 12:44:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_templates_slug_unique` (`slug`);

--
-- Indexes for table `global_metas`
--
ALTER TABLE `global_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ico_metas`
--
ALTER TABLE `ico_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ico_stages`
--
ALTER TABLE `ico_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_payment_method_unique` (`payment_method`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translates`
--
ALTER TABLE `translates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_metas`
--
ALTER TABLE `user_metas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `global_metas`
--
ALTER TABLE `global_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ico_metas`
--
ALTER TABLE `ico_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ico_stages`
--
ALTER TABLE `ico_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translates`
--
ALTER TABLE `translates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_metas`
--
ALTER TABLE `user_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
