-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 02, 2023 lúc 09:57 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `java_hotel_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `phone`, `email`) VALUES
(1, 'abc', 'cde', '2123', 'ưqqwqw'),
(2, 'ngoc', 'bui', '12', 'ngoc@gmail.com'),
(3, 'aaaaa', 'ưqeq', '112312', '12123321'),
(5, '555', '5677', '777', '777'),
(6, 'âc', 'vvvv', 'ccc', '123123'),
(7, 'hai', 'ba', '3333333', 'hb@gmail.com'),
(8, 'minh', 'bui', '012345678', 'minh@gmail.com'),
(9, 'anh', 'van', '12345', '123@gmail.com'),
(10, 'abc', 'cde', '2123', 'ưqqwqw');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `name_position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `position`
--

INSERT INTO `position` (`id`, `name_position`) VALUES
(1, 'Hotel manager'),
(2, 'Assistant hotel manager'),
(3, 'Director of purchasing'),
(4, 'Night auditor'),
(5, 'Director of sales and marketing'),
(6, 'Room attendant');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reservations`
--

CREATE TABLE `reservations` (
  `id_reservation` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `date_in` date NOT NULL,
  `date_out` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reservations`
--

INSERT INTO `reservations` (`id_reservation`, `id`, `room_number`, `date_in`, `date_out`) VALUES
(10, 3, 1, '2023-11-09', '2023-11-16'),
(11, 2, 1, '2023-11-09', '2023-11-09'),
(13, 1, 7, '2023-11-28', '2023-11-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `r_number` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `reserved` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`r_number`, `type`, `phone`, `reserved`) VALUES
(1, 3, '0123', 'No'),
(2, 4, '1121111111111111', 'Yes'),
(3, 1, '11', 'No'),
(4, 5, '123213321', 'Yes'),
(5, 2, '12321', 'No'),
(6, 1, '0123456', 'No'),
(7, 4, '123124421', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `staffs`
--

INSERT INTO `staffs` (`id`, `f_name`, `l_name`, `phone`, `position`) VALUES
(1, '2222', '222', '21212', 'Night auditor'),
(11, '221', '323', '2123121', 'Hotel manager'),
(12, '122121', '322311', '21321', 'Hotel manager'),
(19, 'minh', 'bui', '12334', 'Director of sales and marketing');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `price` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type`
--

INSERT INTO `type` (`id`, `label`, `price`) VALUES
(1, 'single', '100000'),
(2, 'double', '200000'),
(3, 'triple', '300000'),
(4, 'family', '400000'),
(5, 'suite', '750000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `fk_client_id` (`id`),
  ADD KEY `fk_room_number` (`room_number`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`r_number`),
  ADD KEY `fk_type_id` (`type`);

--
-- Chỉ mục cho bảng `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `r_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1222;

--
-- AUTO_INCREMENT cho bảng `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `fk_client_id` FOREIGN KEY (`id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_room_number` FOREIGN KEY (`room_number`) REFERENCES `rooms` (`r_number`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `fk_type_id` FOREIGN KEY (`type`) REFERENCES `type` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
