

INSERT INTO `UserCredentials` (`id`, `UserCode`, `UserLogin`, `PasswordLogin`, `VerifyCode`, `FgVerified`, `FgActive`, `createdAt`, `updatedAt`) VALUES
(1, 'USR1', 'fajarizaf@gmail.com', '47bce5c74f589f4867dbd57e9ca9f808', 'mxT0swUFrshWFFNlFie0c45j7', 1, 'Y', '2022-04-08 19:09:08', '2024-02-07 16:36:04'),
(3, 'USR2', 'raditya@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'mxT0swUFrshWFFNlFie0c45j7', 1, 'Y', '2024-02-07 17:09:21', '2024-02-07 17:09:21'),
(5, 'USR3', 'dodit@gmail.com', '8c8d357b5e872bbacd45197626bd5759', 'itWo3tZaW62SL5MGD25UAMHDd', 1, 'Y', '2024-02-08 05:52:05', '2024-02-08 05:52:05'),
(6, 'USR4', 'dodits@gmail.com', '8c8d357b5e872bbacd45197626bd5759', 'Y36pBjg2KlpBOqJ2Xdvo4qOzx', 1, 'Y', '2024-02-08 05:56:49', '2024-02-08 05:56:49');

INSERT INTO `UserProfiles` (`UserCode`, `ContactName`, `Phone`, `Email`, `createdAt`, `updatedAt`) VALUES
('USR1', 'Fajar Riza Fauzi', '082125649665', 'fajarizaf@gmail.com', '2022-04-08 19:09:08', '2022-04-08 19:09:08'),
('USR2', 'raditya', NULL, 'raditya@gmail.com', '2024-02-07 17:09:21', '2024-02-07 17:09:21'),
('USR3', 'dodit', NULL, 'dodit@gmail.com', '2024-02-08 05:52:05', '2024-02-08 05:52:05'),
('USR4', 'dodit', NULL, 'dodits@gmail.com', '2024-02-08 05:56:49', '2024-02-08 05:56:49');


INSERT INTO `Configs` (`id`, `config_name`, `config_value`, `createdAt`, `updatedAt`) VALUES
(1, 'base_domain_id', '34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'base_domain_name', 'nodebuilder.id', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'base_domain_guid', '8db1a2a6-ae53-4654-bec2-7b2d51723571', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'owner_email', 'fajarizaf@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'owner_id', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'owner_login', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'owner_guid', 'c6611881-70e7-11ef-be80-52540021d029', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'owner_pass', 'Adayanghilang123@', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

INSERT INTO `Servers` (`id`, `ip_address`, `ipv4`, `ipv6`, `host_name`, `plesk_username`, `plesk_password`, `ssh_host`, `ssh_user`, `ssh_password`, `server_status`, `createdAt`, `updatedAt`) VALUES
(1, '103.217.145.155', '10.16.236.178', '2606:2800:220:1:248:1893:25c8:1946', 'https://nodebuilder.id:8443', 'admin', 'Adayanghilang123@', 'nodebuilder.id:8443/', 'landing', 'Adayanghilang123@', 'available', '2023-04-12 12:33:56', '2023-04-12 12:33:56');
