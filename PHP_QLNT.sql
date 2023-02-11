-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2022 at 01:58 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlynoithat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `fullname`) VALUES
(7, 'phamhoa', '12345', 'Hòa'),
(8, 'quynhoa', '12345', 'Hoa');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(10, 'Kệ và giá'),
(11, 'Tủ'),
(12, 'Bàn'),
(13, 'Ghế'),
(14, 'Gương');

-- --------------------------------------------------------

--
-- Table structure for table `mausac`
--

CREATE TABLE `mausac` (
  `MaMau` int(11) NOT NULL,
  `TenMau` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mausac`
--

INSERT INTO `mausac` (`MaMau`, `TenMau`) VALUES
(3, 'Trắng'),
(4, 'Đen'),
(7, 'Cam'),
(8, 'Nâu'),
(9, 'Xanh nhạt'),
(10, 'Xám');

-- --------------------------------------------------------

--
-- Table structure for table `mocgia`
--

CREATE TABLE `mocgia` (
  `id_GiaTK` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mocgia`
--

INSERT INTO `mocgia` (`id_GiaTK`, `start`, `end`) VALUES
(2, 0, 1000000),
(3, 1000000, 5000000),
(4, 5000000, 10000000),
(5, 10000000, 20000000),
(6, 20000000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `SDT`) VALUES
(20, 'Hải Anh Company', 'Khu công nghiệp Thạch Thất – Hà Nội', 923466866),
(21, 'Minh Đạt Company', '430 Đường Khương Đình, Hạ Đình, Thanh Xuân, Hà Nội, Việt Nam ', 944958867),
(22, 'Isofa', '24 Đặng Tiến Đông - Đống Đa - HN Showroom 2 : 313 Kim Ngưu - Hai Bà Trưng - HN', 983530333),
(23, 'Dương Đông Company', 'Số 6, Lô 1, Khu CN Phú Minh, Phường Cổ Nhuế 2, Quận Bắc Từ Liêm, Thành phố Hà Nội', 868761368),
(24, 'Tường Xinh company', 'Số 306-308 Lê Trọng Tấn, Q. Thanh Xuân, Hà Nội', 986301131);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Anh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ChatLieu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaMau` int(11) NOT NULL,
  `KichThuoc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `TrongLuong` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ChiTiet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaDM`, `TenSP`, `Anh`, `SoLuong`, `DonGia`, `ChatLieu`, `MaMau`, `KichThuoc`, `MaNCC`, `TrongLuong`, `ChiTiet`, `TrangThai`) VALUES
(19, 11, 'Tủ rượu phòng khách và nhà hàng rộng', '2006.PNG', 1, 4800000, 'Gỗ công nghiệp, kính', 10, '1.2 x 0.4 x 2 m', 24, '10kg', 'Tủ kệ rượu đẹp được thiết kế có 03 cánh  kính, bên trong cánh kính hai bên mỗi bên có 02 ngăn kéo và 04 khoang để đựng đồ, ở giữa kà 01 cánh kính bên trong có 04 đợt chia thành 5 khoang', 1),
(22, 11, 'Tủ đựng tài liệu TL27', '2007.PNG', 3, 7500000, 'Gỗ công nghiệp MFC bề mặt phủ melamine', 10, '3.2 x 0.4 x 2m', 24, '10kg', 'Thiết kế với 6 cánh và 2 ngăn kéo , các ngăn để tài liệu riêng, phù hợp với phòng để nhiều tài liệu', 1),
(23, 12, 'Bộ bàn ghế ăn Pula cao cấp', '3006.PNG', 6, 7500000, 'Mặt đá, chân sắt', 10, '1.4 x 0.75 x 0.75 m', 24, '20kg', 'Bộ sản phẩm gồm : 1 bàn ăn và 4 ghế -Vận chuyển toàn quốc', 1),
(24, 12, 'BÀN TRÀ NOGUCHI BT2', '3007.PNG', 4, 1800000, 'Chân gỗ, mặt kính', 3, '0.8 x 1.1 m', 20, '5kg', 'Bàn Noguchi với lớp kính cường lực có độ dày lên đến 12mm giúp bàn có thể chịu được các lực va đập mạnh. ', 1),
(25, 13, 'Ghế sofa góc SG13', '4006.PNG', 4, 13000000, 'Da công nghiệp cao cấp nhập khẩu Hàn Quốc.', 10, '2.8 x 1.7 x 1 m', 22, '50kg', 'Sở hữu thiết kế tinh tế, mẫu sản phẩm này chắc chắn sẽ là gợi ý đầy hấp dẫn cho không gian phòng khách gia đình bạn.', 1),
(26, 13, 'Ghế sofa thẳng WLS ', '4007.PNG', 4, 15000000, 'Gỗ tràm bông vàng, xà cừ', 8, '2.2 x 0.8 x 0.7 m', 22, '30kg', 'Khung ghế luôn có sẵn và được đóng bởi gỗ tự nhiên đã qua xử lý cong vênh và chống mối mọt.', 1),
(27, 13, 'Sofa giường màu đơn', '4008.PNG', 0, 4400000, 'Nỉ, Khung gỗ tự nhiên, chân inox', 10, '1.9 x 1.2 m', 24, '20kg', 'Chiếc sofa nỉ màu cam 2 trong 1 giúp bạn có thể thư giãn khi xem tivi, đọc báo', 0),
(28, 14, 'GƯƠNG DECOR NGHỆ THUẬT SANG TRỌNG TX692', '5006.PNG', 5, 1200000, 'Thép sơn tĩnh điện, kính', 3, '0.75 x 0.75 m', 24, '2kg', 'Gương tranh treo tường hiện nay luôn được đặt một vị trí rất qua trọng trong thiết kế nội thất. Ngoài ra bạn có thể sử dụng những chiếc Gương tranh treo tường độc đáo này là quà tặng cho các đôi uyên ương hay dịp tân gia.', 1),
(29, 10, 'Kệ để ti vi phòng khách đẹp giá rẻ KTVG34', '1006.PNG', 11, 10500000, 'Gỗ công nghiệp phủ Melamin chống xước', 8, 'Dài 4m, sâu tủ bên dưới 40cm, sâu kệ bên trên 30cm, cao 2.4m', 20, '100kg', '  Kệ ti vi trang trí phòng khách KTV34 được thiết kế có 01 tủ có canh bên dưới, ở giữa là 01 khoang có cánh, bên trên là các ô nhỏ để đựng đồ, đằng sau là 01 hậu gỗ được ghép từ các nan gỗ', 1),
(30, 12, 'Bàn trang điểm phong cách Bắc Âu', '3003.PNG', 5, 1000000, 'Gỗ', 3, '0.8 x 0.4 x 1.2 m', 21, '10kg', 'Mặt ngồi ghế hõm sâu, dáng ghế như một thác nước đổ xuống giữ cho người ngồi thoải mái bằng cách giảm áp lực lên lưng và đùi. Qua đó bạn có thể ngồi lâu hơn trên ghế mà không cảm thấy mỏi.', 1),
(31, 12, 'Bàn trà cao cấp', '3004.PNG', 5, 500000, 'Gỗ', 3, '0.4 x 0.3 x 0.5 m', 20, '4kg', 'Bề mặt chống trầy xước - Không cong vênh - Vân gỗ đều màu - Độ cứng cao', 1),
(32, 11, 'Tủ quần áo nhựa cao cấp GP BNT05', '2008.PNG', 4, 2000000, 'Nhựa GreenPlast - GP cao cấp ', 10, '1.6 x 0.5 x 2 m', 21, '50kg', 'Độ bền lên đến 10 năm, không bị cong vênh mối mọt do thời tiết ẩm mốc ở Việt Nam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `id` int(11) NOT NULL,
  `odate` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`id`, `odate`, `user_id`, `status`, `hoten`, `diachi`, `sdt`) VALUES
(118, '2022-06-21', 29, 1, 'Hoa Hoa', 'Bac Giang', 987655432),
(119, '2022-06-21', 29, 0, 'Hoa Hoa', 'Bac Giang', 987655432),
(120, '2022-06-21', 29, 2, 'Hoa Hoa', 'Bac Giang', 987655432),
(123, '2022-06-23', 30, 1, 'Quỳnh Hoa', 'Bac Giang', 987655432),
(125, '2022-06-22', 27, 2, 'Hoa', 'Bac Giang', 987655432),
(127, '2022-06-22', 27, 2, 'Hoa', 'Bac Giang', 987655432),
(129, '2022-06-22', 26, 2, 'Phạm Hòa', 'fghghgfds', 974360959),
(130, '2022-07-23', 26, 2, 'Phạm Hòa', 'jhgfd', 974360959),
(131, '2022-06-22', 26, 0, 'Phạm Hòa', 'ádfghjksadfg', 974360959),
(132, '2022-06-22', 26, 1, 'Phạm Hòa', 'dsfdgffhgjhggfdfds', 974360959),
(133, '2022-06-22', 26, 0, 'Phạm Hòa', 'dfgh', 974360959),
(134, '2022-06-22', 27, 2, 'Hoa', 'Bac Giang', 987655432),
(137, '2022-06-23', 29, 0, 'Hoa Hoa', 'Bac Giang', 987655432),
(138, '2022-06-23', 26, 3, 'Phạm Hòa', 'bac guag', 974360959);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderdetails`
--

CREATE TABLE `tblorderdetails` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `sanphamid` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblorderdetails`
--

INSERT INTO `tblorderdetails` (`id`, `orderid`, `sanphamid`, `soluong`, `dongia`) VALUES
(148, 118, 23, 2, 7500000),
(149, 119, 22, 1, 7500000),
(150, 120, 24, 1, 1800000),
(157, 123, 25, 1, 13000000),
(158, 123, 32, 1, 2000000),
(159, 123, 24, 1, 1800000),
(160, 123, 29, 1, 10500000),
(163, 125, 23, 1, 7500000),
(168, 127, 19, 1, 4800000),
(170, 129, 19, 2, 4800000),
(171, 130, 22, 1, 7500000),
(172, 131, 19, 1, 4800000),
(173, 131, 22, 1, 7500000),
(174, 132, 19, 2, 4800000),
(175, 133, 19, 1, 4800000),
(176, 134, 24, 1, 1800000),
(179, 137, 27, 2, 4400000),
(180, 138, 24, 2, 1800000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateofbirth` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `dateofbirth`, `sex`, `email`, `phonenumber`) VALUES
(26, 'hoapham', '827ccb0eea8a706c4c34a16891f84e7b', 'Phạm Hòa', '2001-10-01', 'Nam', 'phamhoa1102001@gmail.com', 974360959),
(27, 'quynhoa', '827ccb0eea8a706c4c34a16891f84e7b', 'Hoa', '2001-05-18', 'nữ', 'hoapham18051210@gmail.com', 987655432),
(28, 'hoa', '827ccb0eea8a706c4c34a16891f84e7b', 'Phạm Hoa', '2001-05-18', 'nữ', 'hoapham18051210@gmail.com', 987655432),
(29, 'hoahoa', '827ccb0eea8a706c4c34a16891f84e7b', 'Hoa Hoa', '2001-12-05', 'nữ', 'hoapham18051210@gmail.com', 987655432),
(30, 'quynhoapham', '827ccb0eea8a706c4c34a16891f84e7b', 'Quỳnh Hoa', '2001-12-05', 'nữ', 'hoapham18051210@gmail.com', 987655432),
(31, 'ledachai', 'e99a18c428cb38d5f260853678922e03', 'lê đắc hải', '82001-02-05', 'nam', 'abc@gmail.com', 12345678);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Indexes for table `mausac`
--
ALTER TABLE `mausac`
  ADD PRIMARY KEY (`MaMau`);

--
-- Indexes for table `mocgia`
--
ALTER TABLE `mocgia`
  ADD PRIMARY KEY (`id_GiaTK`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaDM` (`MaDM`),
  ADD KEY `MaMau` (`MaMau`),
  ADD KEY `MaNCC` (`MaNCC`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblorder_ibfk_1` (`user_id`);

--
-- Indexes for table `tblorderdetails`
--
ALTER TABLE `tblorderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `sanphamid` (`sanphamid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mausac`
--
ALTER TABLE `mausac`
  MODIFY `MaMau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mocgia`
--
ALTER TABLE `mocgia`
  MODIFY `id_GiaTK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `tblorderdetails`
--
ALTER TABLE `tblorderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaMau`) REFERENCES `mausac` (`MaMau`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD CONSTRAINT `tblorder_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblorderdetails`
--
ALTER TABLE `tblorderdetails`
  ADD CONSTRAINT `tblorderdetails_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `tblorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblorderdetails_ibfk_2` FOREIGN KEY (`sanphamid`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
