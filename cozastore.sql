-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 04:55 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cozastore`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add barang', 7, 'add_barang'),
(26, 'Can change barang', 7, 'change_barang'),
(27, 'Can delete barang', 7, 'delete_barang'),
(28, 'Can view barang', 7, 'view_barang'),
(29, 'Can add pemesanan', 8, 'add_pemesanan'),
(30, 'Can change pemesanan', 8, 'change_pemesanan'),
(31, 'Can delete pemesanan', 8, 'delete_pemesanan'),
(32, 'Can view pemesanan', 8, 'view_pemesanan'),
(33, 'Can add css tags', 9, 'add_csstags'),
(34, 'Can change css tags', 9, 'change_csstags'),
(35, 'Can delete css tags', 9, 'delete_csstags'),
(36, 'Can view css tags', 9, 'view_csstags');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$yaejqZk1RX6Z$SOQkcDWu8xQdmxQgV4gajDep8m+2ureVZGw2SqthbuE=', '2020-05-28 08:40:28.371791', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2020-05-23 19:53:05.358770'),
(2, 'pbkdf2_sha256$180000$843ek9CqVEOy$bD0icew4mo6eC49p3b6UrhGyMYD1gYKoPK/Ifyb0MT4=', '2020-05-30 16:11:46.375218', 0, 'kazbreker', '', '', '', 0, 1, '2020-05-23 19:55:34.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-05-23 19:55:35.131076', '2', 'kazbreker', 1, '[{\"added\": {}}]', 4, 1),
(2, '2020-05-23 19:55:48.326244', '2', 'kazbreker', 2, '[]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'pemesanan', 'barang'),
(9, 'pemesanan', 'csstags'),
(8, 'pemesanan', 'pemesanan'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-04-18 03:44:25.127600'),
(2, 'auth', '0001_initial', '2020-04-18 03:44:25.208946'),
(3, 'admin', '0001_initial', '2020-04-18 03:44:25.767449'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-04-18 03:44:25.818525'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-18 03:44:25.828369'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-04-18 03:44:25.909685'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-04-18 03:44:26.163522'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-04-18 03:44:26.184143'),
(9, 'auth', '0004_alter_user_username_opts', '2020-04-18 03:44:26.194296'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-04-18 03:44:26.214667'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-04-18 03:44:26.214667'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-04-18 03:44:26.224676'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-04-18 03:44:26.255169'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-04-18 03:44:26.275437'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-04-18 03:44:26.346399'),
(16, 'auth', '0011_update_proxy_permissions', '2020-04-18 03:44:26.448135'),
(17, 'pemesanan', '0001_initial', '2020-04-18 03:44:26.478579'),
(18, 'pemesanan', '0002_auto_20200418_1038', '2020-04-18 03:44:26.519174'),
(19, 'sessions', '0001_initial', '2020-04-18 03:44:26.580422'),
(20, 'pemesanan', '0003_csstags', '2020-04-18 04:09:33.129900'),
(21, 'pemesanan', '0004_auto_20200418_1132', '2020-04-18 04:33:03.251699'),
(22, 'pemesanan', '0005_auto_20200418_1136', '2020-04-18 04:36:23.448864'),
(23, 'pemesanan', '0006_auto_20200418_1155', '2020-04-18 04:55:59.322484'),
(24, 'pemesanan', '0007_auto_20200418_1230', '2020-04-18 05:31:02.437961'),
(25, 'pemesanan', '0008_auto_20200418_1232', '2020-04-18 05:32:50.285381'),
(26, 'pemesanan', '0009_delete_csstags', '2020-04-18 06:22:28.757512'),
(27, 'pemesanan', '0010_auto_20200418_1444', '2020-04-18 07:45:24.677720'),
(28, 'pemesanan', '0011_auto_20200419_1013', '2020-04-19 03:13:26.638079'),
(29, 'pemesanan', '0012_auto_20200420_1429', '2020-04-20 07:30:10.108415'),
(30, 'pemesanan', '0013_auto_20200420_1438', '2020-04-20 07:38:45.043782'),
(31, 'pemesanan', '0014_auto_20200420_1441', '2020-04-20 07:41:08.703535'),
(32, 'pemesanan', '0015_auto_20200420_1448', '2020-04-20 07:48:36.256757'),
(33, 'pemesanan', '0016_auto_20200420_1457', '2020-04-20 07:57:06.921475'),
(34, 'pemesanan', '0017_auto_20200420_1457', '2020-04-20 07:57:42.911529'),
(35, 'pemesanan', '0018_auto_20200420_1502', '2020-04-20 08:02:10.156223'),
(36, 'pemesanan', '0019_auto_20200420_1502', '2020-04-20 08:02:22.044092');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qpk7nv97ee1or2urx16eyd31yz7qmrgg', 'MjRmNDY1N2Q5NWQ1MjY4ZWVlMzQzNzE2MTI2YWFiNmFlMWVmYjMzZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0M2E1NTFkOTVkNDdlODgwODZiZjZjMDlmYzFhZWM5OGY0MTgxNzU1In0=', '2020-06-06 20:27:17.733305');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_barang`
--

CREATE TABLE `pemesanan_barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_barang` int(10) UNSIGNED NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan_barang`
--

INSERT INTO `pemesanan_barang` (`id`, `nama_barang`, `harga_barang`, `gambar`, `jenis`) VALUES
(1, 'Esprit Ruffle Shirt', 17, 'images/product-01', 'women'),
(2, 'Herschel supply ', 35, 'images/product-02', 'women'),
(3, 'Only Check Trouser ', 25, 'images/product-03', 'men'),
(4, 'Classic Trench Coat ', 75, 'images/product-04', 'women'),
(5, 'Front Pocket Jumper ', 34, 'images/product-05', 'women'),
(6, 'Vintage Inspired Classic ', 93, 'images/product-06', 'watches'),
(7, 'Shirt in Stretch Cotton ', 52, 'images/product-07', 'women'),
(8, 'Pieces Metallic Printed ', 18, 'images/product-08', 'women'),
(9, 'Converse All Star Hi Plimsolls ', 75, 'images/product-09', 'shoes'),
(10, 'Femme T-Shirt In Stripe ', 25, 'images/product-10', 'women'),
(11, 'Haskell supply ', 63, 'images/product-11', 'men'),
(12, 'Crocodile supply ', 63, 'images/product-12', 'men'),
(13, 'T-Shirt with Sleeve', 18, 'images/product-13', 'women'),
(14, 'Pretty Little Thing', 54, 'images/product-14', 'women'),
(15, 'Mini Silver Mesh Watch ', 86, 'images/product-15', 'watches'),
(16, 'Square Neck Back ', 29, 'images/product-16', 'women');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_pemesanan`
--

CREATE TABLE `pemesanan_pemesanan` (
  `id` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `total_bayar` int(10) UNSIGNED DEFAULT NULL,
  `barang_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan_pemesanan`
--

INSERT INTO `pemesanan_pemesanan` (`id`, `size`, `color`, `qty`, `total_bayar`, `barang_id`) VALUES
(6, 'L', 'WHITE', 2, 70, 2),
(9, 'S', 'RED', 2, 50, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `pemesanan_barang`
--
ALTER TABLE `pemesanan_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan_pemesanan`
--
ALTER TABLE `pemesanan_pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanan_pemesanan_barang_id_17bf774b_fk_pemesanan_barang_id` (`barang_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pemesanan_barang`
--
ALTER TABLE `pemesanan_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pemesanan_pemesanan`
--
ALTER TABLE `pemesanan_pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `pemesanan_pemesanan`
--
ALTER TABLE `pemesanan_pemesanan`
  ADD CONSTRAINT `pemesanan_pemesanan_barang_id_17bf774b_fk_pemesanan_barang_id` FOREIGN KEY (`barang_id`) REFERENCES `pemesanan_barang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
