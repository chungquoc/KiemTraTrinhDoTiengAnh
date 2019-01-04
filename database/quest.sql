-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 04, 2019 lúc 11:54 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quest`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `IdCauhoi` int(10) NOT NULL,
  `Content` text,
  `id_tailieu` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`IdCauhoi`, `Content`, `id_tailieu`) VALUES
(1, 'what is the passage mainly about?', 1),
(2, 'The word \"it\"in paragraph 2 refers to ...', 1),
(3, 'Which of the following is NOT the type of books giving information on careers ?', 1),
(4, 'The word \"step-by-step\" is closest in meaning to', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dapan`
--

CREATE TABLE `dapan` (
  `IdDapAn` int(10) NOT NULL,
  `IdCauhoi` int(10) DEFAULT NULL,
  `NoidungDapAn` text,
  `true_or_false` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dapan`
--

INSERT INTO `dapan` (`IdDapAn`, `IdCauhoi`, `NoidungDapAn`, `true_or_false`) VALUES
(1, 1, 'how to succeed in love every minute of your life', 1),
(2, 1, 'how to turn failure into success', 1),
(3, 1, 'how to make a millionaire', 1),
(4, 1, 'how-to books', 2),
(5, 2, 'advice', 1),
(6, 2, 'instruction', 1),
(7, 2, 'how-to books', 1),
(8, 2, 'career', 2),
(9, 3, 'how to succeed in love every minute of your life', 2),
(10, 3, 'how to live on nothing', 1),
(11, 3, 'how to make a millionaire', 1),
(12, 3, 'how to turn failure into success', 1),
(13, 4, 'little by little', 1),
(14, 4, 'gradually', 1),
(15, 4, 'slower and slower', 1),
(16, 4, 'A and B', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tailieu`
--

CREATE TABLE `tailieu` (
  `id_tailieu` int(10) NOT NULL,
  `loai_tailieu` int(11) DEFAULT NULL,
  `noidung_tailieu` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tailieu`
--

INSERT INTO `tailieu` (`id_tailieu`, `loai_tailieu`, `noidung_tailieu`) VALUES
(1, 1, 'Books which give instructions on how to do things are very popular in the USA today.Thousands of these How-to books are useful.In fact, there are about four thousands books with titles that begin with the words \"How to\".One book may tell you how to earn more money.Another may tell you how to save or spend it and another may explain how to give your money away.\r\n Many How-to books give advice on careers.They tell you how to choose a career and how to succeed in it.If you fail,however,you can buy the book\"How to Turn Failure into Success\".If you would like to become very rich,you can buy the book \"How to make Millionaire\".If you never make any money at all, you may need a book called\"How to live on nothing\"\r\n One of the most popular types of books is one that helps you with personal problems.If you want to have a better love of life , you can read \" How to Succeed in LOve every minute of your life\".If you are tired of books on happiness , you may prefer books which give step-by-step instructions on how to redecorate or enlarge a house.\r\n Why have How-to books become so popular?Probably because life has become to complex.Today people have far more free time to use, more choices to make, and more problems to solve.How-to books help people deal with modern life.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `IdUser` int(11) NOT NULL,
  `Tentk` varchar(35) DEFAULT NULL,
  `pass` varchar(35) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `add_date` date DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`IdUser`, `Tentk`, `pass`, `email`, `add_date`, `user_level`) VALUES
(1, 'quy', '123456', 'quy@gmail.com', '2018-05-26', 2),
(2, 'admin', '123456', 'mnb@gmail.com', '2018-05-10', 1),
(4, 'linh', '', 'linh@gmail.com', '2019-01-03', 2),
(5, 'ngoc', '123456', 'ngoc@gmail.com', '2019-01-03', 2),
(6, 'thuy', '123456', 'thuy@gmail.com', '2019-01-03', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`IdCauhoi`),
  ADD KEY `id_tailieu` (`id_tailieu`);

--
-- Chỉ mục cho bảng `dapan`
--
ALTER TABLE `dapan`
  ADD PRIMARY KEY (`IdDapAn`),
  ADD KEY `IdCauhoi` (`IdCauhoi`);

--
-- Chỉ mục cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD PRIMARY KEY (`id_tailieu`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`IdUser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `IdCauhoi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dapan`
--
ALTER TABLE `dapan`
  MODIFY `IdDapAn` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  MODIFY `id_tailieu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `cauhoi_ibfk_1` FOREIGN KEY (`id_tailieu`) REFERENCES `tailieu` (`id_tailieu`);

--
-- Các ràng buộc cho bảng `dapan`
--
ALTER TABLE `dapan`
  ADD CONSTRAINT `dapan_ibfk_1` FOREIGN KEY (`IdCauhoi`) REFERENCES `cauhoi` (`IdCauhoi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
