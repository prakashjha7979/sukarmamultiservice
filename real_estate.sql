-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 02:25 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add listing', 1, 'add_listing'),
(2, 'Can change listing', 1, 'change_listing'),
(3, 'Can delete listing', 1, 'delete_listing'),
(4, 'Can view listing', 1, 'view_listing'),
(5, 'Can add realtor', 2, 'add_realtor'),
(6, 'Can change realtor', 2, 'change_realtor'),
(7, 'Can delete realtor', 2, 'delete_realtor'),
(8, 'Can view realtor', 2, 'view_realtor'),
(9, 'Can add contact', 3, 'add_contact'),
(10, 'Can change contact', 3, 'change_contact'),
(11, 'Can delete contact', 3, 'delete_contact'),
(12, 'Can view contact', 3, 'view_contact'),
(13, 'Can add log entry', 4, 'add_logentry'),
(14, 'Can change log entry', 4, 'change_logentry'),
(15, 'Can delete log entry', 4, 'delete_logentry'),
(16, 'Can view log entry', 4, 'view_logentry'),
(17, 'Can add permission', 5, 'add_permission'),
(18, 'Can change permission', 5, 'change_permission'),
(19, 'Can delete permission', 5, 'delete_permission'),
(20, 'Can view permission', 5, 'view_permission'),
(21, 'Can add group', 6, 'add_group'),
(22, 'Can change group', 6, 'change_group'),
(23, 'Can delete group', 6, 'delete_group'),
(24, 'Can view group', 6, 'view_group'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add content type', 8, 'add_contenttype'),
(30, 'Can change content type', 8, 'change_contenttype'),
(31, 'Can delete content type', 8, 'delete_contenttype'),
(32, 'Can view content type', 8, 'view_contenttype'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$k4OGSwkVqQ8mPpNJLnS0KL$azFWPtTKsGRkqtwVDjPZnG3z9nCuoOQppsvSH+C+Z9o=', '2021-05-05 20:02:31.830928', 0, 'prakash', 'prakash', 'jha', 'prakashjhakk.pj@gmail.com', 0, 1, '2021-05-05 20:02:01.844819'),
(2, 'pbkdf2_sha256$260000$a9RRGgSJRioVUzLjqLx2rH$4YAGhP7C7WxI//yEX76TCfSDgB7rpMGinuu5wBB8QSM=', '2021-05-11 14:01:47.356123', 1, 'unstopp', '', '', 'prakashjhakk.pj@gmail.com', 1, 1, '2021-05-11 07:31:20.460586'),
(3, 'pbkdf2_sha256$260000$4Cs7zyCDELnEsL9zZvupB1$AKHujc55phOdo7jysk1FXqCGFMXR1tz+yidVPtfj8CY=', '2021-05-11 13:51:09.787583', 0, 'mickey', 'mickey', 'kumar', 'mickey@gmail.com', 0, 1, '2021-05-11 13:50:52.961421');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_contact`
--

CREATE TABLE `contacts_contact` (
  `id` int(11) NOT NULL,
  `listing` varchar(200) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `contact_date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_contact`
--

INSERT INTO `contacts_contact` (`id`, `listing`, `listing_id`, `name`, `email`, `phone`, `message`, `contact_date`, `user_id`) VALUES
(1, '2 B-H-k Bunglaw', 1, 'mickey kumar', 'mickey@gmail.com', '7865498765', 'hello house owner can you please contact with me,I wants to buy your house.', '2021-05-11 19:23:08.798795', 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-05-11 07:35:18.035004', '1', 'prakash jha', 1, '[{\"added\": {}}]', 2, 2),
(2, '2021-05-11 07:41:49.822585', '1', '2 B-H-k Bunglaw', 1, '[{\"added\": {}}]', 1, 2),
(3, '2021-05-11 07:42:00.999050', '1', '2 B-H-k Bunglaw', 2, '[]', 1, 2),
(4, '2021-05-11 14:18:10.571264', '2', '3 BHK Bunglaw House', 1, '[{\"added\": {}}]', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(4, 'admin', 'logentry'),
(6, 'auth', 'group'),
(5, 'auth', 'permission'),
(7, 'auth', 'user'),
(3, 'contacts', 'contact'),
(8, 'contenttypes', 'contenttype'),
(1, 'listings', 'listing'),
(2, 'realtors', 'realtor'),
(9, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-05 13:07:26.422614'),
(2, 'auth', '0001_initial', '2021-05-05 13:07:38.062466'),
(3, 'admin', '0001_initial', '2021-05-05 13:07:40.370849'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-05 13:07:40.450639'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-05 13:07:40.525435'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-05 13:07:41.617554'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-05 13:07:43.002347'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-05 13:07:43.211790'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-05 13:07:43.263650'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-05 13:07:43.985764'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-05 13:07:44.046559'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-05 13:07:44.105397'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-05 13:07:44.265967'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-05 13:07:44.451473'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-05 13:07:44.613038'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-05 13:07:44.843426'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-05 13:07:45.204362'),
(18, 'contacts', '0001_initial', '2021-05-05 13:07:45.611273'),
(19, 'realtors', '0001_initial', '2021-05-05 13:07:46.039322'),
(20, 'listings', '0001_initial', '2021-05-05 13:07:47.707416'),
(21, 'sessions', '0001_initial', '2021-05-05 13:07:48.396612');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cgwae2a9xcwgsuf4sitktmtm3252o4uu', '.eJxVjMsOwiAQAP-FsyGllJdH735Ds8suUjWQlPZk_Hcl6UGvM5N5iRn2Lc9743VeSJzFKE6_DCE-uHRBdyi3KmMt27qg7Ik8bJPXSvy8HO3fIEPLfRu00oMNrBU6460xg0NKPEVEF9kzKssI36EbkID8lNiNkIwHUEGTeH8A6Zc47Q:1lgSxH:--fALtHbLd9rwP8uoyOsM9h2tT7h3kWFwc6iZatfKRk', '2021-05-25 14:01:47.571547');

-- --------------------------------------------------------

--
-- Table structure for table `listings_listing`
--

CREATE TABLE `listings_listing` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` decimal(2,1) NOT NULL,
  `garage` int(11) NOT NULL,
  `sqft` int(11) NOT NULL,
  `lot_size` decimal(5,1) NOT NULL,
  `photo_main` varchar(100) NOT NULL,
  `photo_2` varchar(100) NOT NULL,
  `photo_1` varchar(100) NOT NULL,
  `photo_3` varchar(100) NOT NULL,
  `photo_4` varchar(100) NOT NULL,
  `photo_5` varchar(100) NOT NULL,
  `photo_6` varchar(100) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `list_date` datetime(6) NOT NULL,
  `realtor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listings_listing`
--

INSERT INTO `listings_listing` (`id`, `title`, `address`, `city`, `state`, `zipcode`, `description`, `price`, `bedrooms`, `bathrooms`, `garage`, `sqft`, `lot_size`, `photo_main`, `photo_2`, `photo_1`, `photo_3`, `photo_4`, `photo_5`, `photo_6`, `is_published`, `list_date`, `realtor_id`) VALUES
(1, '2 B-H-k Bunglaw', 'near Ramchuara mandir,konhara-ghat road,hajipur', 'hajipur', 'BIhar', '844101', 'This is a 2 BHK Bunglaw house with all essential facility.', 5000000, 4, '2.0', 1, 800, '0.0', 'photos/2021/05/11/house1_u3UsVex.png', 'photos/2021/05/11/house1_cc6NBqB.png', 'photos/2021/05/11/house2.jpg', 'photos/2021/05/11/house2_mL14NNe.jpg', 'photos/2021/05/11/house1_gYzl5hG.png', 'photos/2021/05/11/house2_OIF4KLI.jpg', 'photos/2021/05/11/house1_swmJlO6.png', 1, '2021-05-11 13:05:57.000000', 1),
(2, '3 BHK Bunglaw House', 'Boring road,Patna', 'Patna', 'BIHAR', '800020', 'This is a 3 BHK house with all essential facility like pool,garage,etc.', 7000000, 4, '2.0', 1, 800, '0.0', 'photos/2021/05/11/house1_2j5wBKG.png', 'photos/2021/05/11/house1_C2VHqNW.png', 'photos/2021/05/11/house2_m0RXQjM.jpg', 'photos/2021/05/11/house1_V8cA1VX.png', 'photos/2021/05/11/house2_8IG9u0u.jpg', 'photos/2021/05/11/house1_ySaY9RT.png', 'photos/2021/05/11/house2_qaJ2U8G.jpg', 1, '2021-05-11 19:41:51.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `realtors_realtor`
--

CREATE TABLE `realtors_realtor` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_mvp` tinyint(1) NOT NULL,
  `hire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realtors_realtor`
--

INSERT INTO `realtors_realtor` (`id`, `name`, `photo`, `description`, `phone`, `email`, `is_mvp`, `hire_date`) VALUES
(1, 'prakash jha', 'photos/2021/05/11/house1.png', 'This is very nice house with all essential facility.', '7979848479', 'prakashjhakk.pj@gmail.com', 1, '2021-05-11 13:02:48.000000');

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
-- Indexes for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `listings_listing`
--
ALTER TABLE `listings_listing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_listing_realtor_id_90583529_fk_realtors_realtor_id` (`realtor_id`);

--
-- Indexes for table `realtors_realtor`
--
ALTER TABLE `realtors_realtor`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `listings_listing`
--
ALTER TABLE `listings_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `realtors_realtor`
--
ALTER TABLE `realtors_realtor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `listings_listing`
--
ALTER TABLE `listings_listing`
  ADD CONSTRAINT `listings_listing_realtor_id_90583529_fk_realtors_realtor_id` FOREIGN KEY (`realtor_id`) REFERENCES `realtors_realtor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
