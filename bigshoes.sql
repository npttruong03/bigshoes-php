-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 16, 2022 lúc 09:57 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bigshoes`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ma_ad` varchar(255) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `vai_tro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ma_ad`, `ho_ten`, `mat_khau`, `email`, `dia_chi`, `vai_tro`) VALUES
('lee', 'lee min ho', 'họle123', 'lee@gmail.com', 'Hàn Quốc', 0),
('linh', 'vulinh', '009b35b6a859335651d384702f545a04', 'linh@gmail.com', 'Hà Nam', 0),
('truong', 'Nguyễn Phúc Trường', '12345', 'truong@gmail.com', 'Quảng Trị', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `ma_bl` int(11) NOT NULL,
  `ma_kh` varchar(50) NOT NULL,
  `ma_hh` int(11) NOT NULL,
  `ma_tt` int(11) NOT NULL,
  `noi_dung` varchar(50) NOT NULL,
  `ngay_bl` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`ma_bl`, `ma_kh`, `ma_hh`, `ma_tt`, `noi_dung`, `ngay_bl`) VALUES
(18, 'bi', 35, 0, 'Giày đẹp lắm shop <3', '04-12-2020'),
(19, 'admin', 39, 0, 'Giày chất lắm shop <3 ', '05-12-2020'),
(20, 'bi', 27, 0, 'sdfsdfdsfdsfdsf', '05-12-2020'),
(21, 'admin', 52, 0, 'đẹp', '29-10-2022'),
(22, 'hung', 48, 0, 'đẹp', '24-11-2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `counter`
--

CREATE TABLE `counter` (
  `luot_mua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `counter`
--

INSERT INTO `counter` (`luot_mua`) VALUES
(1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `ma_hh` int(11) NOT NULL,
  `ten_hh` varchar(50) NOT NULL,
  `hinh` varchar(50) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `giam_gia` int(11) NOT NULL,
  `mo_ta` varchar(500) NOT NULL,
  `ma_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma_hh`, `ten_hh`, `hinh`, `don_gia`, `giam_gia`, `mo_ta`, `ma_loai`) VALUES
(27, 'Adidas Continental 80', 'adidascontinental80.png', 1200000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(28, 'Adidas Cyber Punk', 'adidascyberpunk.png', 1300000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(29, 'Adidas NMD R1', 'adidasnmd_r1.png', 1250000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(30, 'Adidas Reponse', 'adidasresponse.png', 1500000, 5, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(31, 'Adidas Super Star', 'adidassupperstar.png', 990000, 0, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(32, 'Adidas UltraBoost', 'adidasultraboost.png', 1800000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(33, 'Adidas UltraBoost 20', 'adidasultraboost20.png', 2000000, 15, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(34, 'Adidas UltraBoost DNA City', 'adidasultraboostdnacity.png', 2100000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(35, 'Adidas ZK 2K Boost', 'adidaszk2kboost.png', 2300000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 24),
(36, 'Pegasus Chaz', 'pegasuschaz.png', 880000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 23),
(37, 'Pegasus Trail 2', 'pegasustrail2.png', 1230000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 23),
(38, 'Pegasus Zoom 35', 'pegasuszoom35.png', 1450000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 23),
(39, 'Pegasus Zoom 37', 'pegasuszoom37.png', 2120000, 30, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 23),
(40, 'Converse Chuck Taylor', 'conversechucktaylor.png', 1990000, 20, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 20),
(41, 'Blazer Mid', 'blazermid.png', 1470000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 21),
(42, 'Blazer 77 Infinitive ', 'blazermid77infinitive.png', 1360000, 20, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 21),
(43, 'Blazer 77 Suede', 'blazermid77suede.png', 1250000, 50, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 21),
(44, 'Blazer 77 Vintage', 'blazermid77vintage.png', 2010000, 40, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 21),
(45, 'Jordan 1 Lowse', 'jordan1lowse.png', 1760000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 22),
(46, 'Jordan 6 Retro', 'jordan6retro.png', 1510000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 22),
(47, 'Jordan ADG 2', 'jordanadg2.png', 1320000, 20, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 22),
(48, 'Jordan Delta', 'jordandelta.png', 2080000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 22),
(49, 'Nike Air Force', 'nikeairforce.png', 1100000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 25),
(50, 'Nike Air Max 1', 'nikeairmax1.png', 1210000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 25),
(51, 'Nike Air Vapomax', 'nikeairvapormax.png', 1750000, 20, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 25),
(52, 'Nike Air Zoom', 'adidaszk2kboost.png', 2500000, 50, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 25),
(53, 'Nike Justin', 'nikejustin.png', 1500000, 10, 'Các sản phẩm của BIGSHOES thích hợp sử dụng trong mọi thời tiết và địa hình, đặc biệt là trong những ngày mưa. Phần đế được ép nhiệt nên cực bền sau thời gian sử dụng, kết hợp với da công nghiệp tạo ra kiểu dáng trẻ trung sang trọng đem lại sự hài lòng tuyệt đối cho quý khách hàng.', 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hd` int(11) NOT NULL,
  `ngay_mua` varchar(20) NOT NULL,
  `ghi_chu` varchar(50) NOT NULL,
  `tinh_trang` varchar(20) NOT NULL DEFAULT '0',
  `ma_kh` varchar(50) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hd`, `ngay_mua`, `ghi_chu`, `tinh_trang`, `ma_kh`, `email`) VALUES
(93, '04-12-2020', '', '1', 'admin', ''),
(94, '05-12-2020', '', '1', 'admin', ''),
(95, '05-12-2020', '', '1', 'admin', ''),
(96, '05-12-2020', '', '1', 'admin', ''),
(97, '05-12-2020', '', '1', 'admin', ''),
(98, '05-12-2020', '', '1', 'admin', ''),
(99, '05-12-2020', '', '1', 'bi', ''),
(100, '05-12-2020', 'sdf', '1', 'bi', ''),
(101, '08-12-2020', '', '1', 'bi', ''),
(102, '27-10-2022', '', '1', 'admin', ''),
(103, '29-10-2022', '', '1', 'admin', ''),
(104, '02-11-2022', '', '1', 'admin', ''),
(105, '14-12-2022', '', '1', 'hung', ''),
(106, '14-12-2022', '', '1', 'hung', ''),
(107, '15-12-2022', '', '1', 'hung', ''),
(108, '15-12-2022', '', '1', 'hung', 'hung@gmail.com'),
(109, '15-12-2022', '', '1', 'hung', 'hung@gmail.com'),
(110, '15-12-2022', '', '0', 'quan', 'jotobequan@gmail.com'),
(111, '15-12-2022', '', '0', 'quan', 'yotobequan@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don_chi_tiet`
--

CREATE TABLE `hoa_don_chi_tiet` (
  `ma_hd` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `ma_hh` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoa_don_chi_tiet`
--

INSERT INTO `hoa_don_chi_tiet` (`ma_hd`, `so_luong`, `don_gia`, `ma_hh`, `email`) VALUES
(93, 1, 2300000, 35, ''),
(94, 6, 1500000, 30, ''),
(94, 5, 2120000, 39, ''),
(94, 3, 2300000, 35, ''),
(95, 6, 1500000, 30, ''),
(95, 5, 2120000, 39, ''),
(95, 3, 2300000, 35, ''),
(96, 6, 1500000, 30, ''),
(96, 5, 2120000, 39, ''),
(96, 3, 2300000, 35, ''),
(97, 2, 2120000, 39, ''),
(97, 2, 2300000, 35, ''),
(98, 4, 2120000, 39, ''),
(98, 3, 2300000, 35, ''),
(99, 11, 2500000, 52, ''),
(99, 3, 2100000, 34, ''),
(100, 4, 1200000, 27, ''),
(101, 4, 2500000, 52, ''),
(101, 1, 2300000, 35, ''),
(102, 1, 2100000, 34, ''),
(103, 1, 2500000, 52, ''),
(104, 1, 2300000, 35, ''),
(105, 1, 2300000, 35, ''),
(106, 2, 2300000, 35, ''),
(107, 2, 2300000, 35, ''),
(107, 1, 2120000, 39, ''),
(109, 2, 2300000, 35, 'hung@gmail.com'),
(109, 1, 2120000, 39, 'hung@gmail.com'),
(110, 1, 2080000, 48, 'jotobequan@gmail.com'),
(110, 1, 1990000, 40, 'jotobequan@gmail.com'),
(111, 1, 2080000, 48, 'yotobequan@gmail.com'),
(111, 1, 1990000, 40, 'yotobequan@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` varchar(50) NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dia_chi` varchar(50) NOT NULL,
  `vai_tro` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `ho_ten`, `mat_khau`, `email`, `dia_chi`, `vai_tro`) VALUES
('admin', 'Phong', '123123', 'phanvanphongk49c@gmail.com', 'Đà Nẵng', 1),
('bi', 'Biiiiiii', '123123', 'bi@gmail.com', 'Đà Nẵng', 0),
('hung', 'hungnguyen', '87cfe89dd6e63c2ae0a206cecc4c3b64', 'hung@gmail.com', 'Dà Nẵng', 0),
('quan', 'anhquan', '92de4ab2220b1792e5a992c145f4b56f', 'yotobequan@gmail.com', 'Quảng Trị', 0),
('truongn', 'truyong nguyen', 'd41d8cd98f00b204e9800998ecf8427e', 'truong123@gmail.com', 'quảng trị', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_hang`
--

CREATE TABLE `loai_hang` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loai_hang`
--

INSERT INTO `loai_hang` (`ma_loai`, `ten_loai`) VALUES
(20, 'Converse'),
(21, 'Blazer'),
(22, 'Jordan'),
(23, 'Pegasus'),
(24, 'Adidas'),
(25, 'Nike');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_tin_tuc`
--

CREATE TABLE `loai_tin_tuc` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai_tin_tuc`
--

INSERT INTO `loai_tin_tuc` (`ma_loai`, `ten_loai`) VALUES
(1, 'Bài Viết Mới'),
(2, 'Nổi Bật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `ma_tt` int(11) NOT NULL,
  `chu_de` varchar(255) NOT NULL,
  `hinh` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `ma_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`ma_tt`, `chu_de`, `hinh`, `noi_dung`, `ma_loai`) VALUES
(3, '10 mẫu giày đẹp nhất', '8.jpg', 'giày đẹp vl', 1),
(4, 'Top 9 những đôi giày lấy cảm hứng từ phim điện ảnh bom tấn', '6.jpg', 'Phim và sneakers đã từ lâu là hai hình bóng luôn đi cùng với nhau. Những thương hiệu giày nổi tiếng luôn biết cách làm hình ảnh sản phẩm của họ nổi bật hơn trong hầu hết tất cả những bộ phim họ từng collabs. Để tri ân những lần hợp tác của mình, họ cho ra mắt những dòng giày với chủ đề của phim. Sau đây Authentic Shoes sẽ cho bạn chiêm ngưỡng top 9 những đôi giày được lấy cảm hứng từ phim điện ảnh.\r\n\r\nBack to the Future x Nike\r\nNike Mag của Back to the Future Part II có lẽ là một trong những đôi giày thể thao mang tính biểu tượng nhất mà Nike từng sản xuất. Chúng đắt tiền, khó tìm và mang phong cách tới từ tương lai. Mag lần đầu tiên lộ diện trên Marty McFly trong bộ phim trước đó, tuy nhiên những bản phát hành rất hạn chế nên chúng có giá không hề rẻ. Đường phối màu của Mag cũng được sử dụng trên một đôi Nike Hyperdunks “Marty McFly” vào năm 2015 và một phiên bản mới của Adapt BB tự buộc dây của Nike vào năm 2019.', 2),
(5, '10 mẫu giày New Balance mà bạn nên sở hữu ngay trong cuối năm 2022', '2.jpg', 'Được thành lập vào năm 1906, New Balance là một trong những công ty sản xuất giày thể thao lâu đời nhất trên thế giới. Được biết đến với chất lượng cao và hiệu suất trong giày chạy bộ, thương hiệu đã duy trì sự phổ biến của mình với hàng triệu khách hàng trong nhiều thập kỷ. Tuy nhiên, phải đến những năm gần đây, New Balance mới thực sự trở nên phổ biến trong thế giới giày thể thao nam. Hôm nay, hãy cùng Authentic Shoes khám phá về danh sách 10 mẫu giày New Balance mà bạn nên sở hữu ngay bây giờ nhé.\r\n ', 1),
(6, 'AIR JORDAN 1 HIGH REBELLIONAIRE THIẾT KẾ ĐỘC LẠ CHƯA TỪNG THẤY', 'sn1.jpg', 'Đôi giày Nike Air Jordan 1 High Rebellionaire đang là một trong những mẫu giày thu hút được nhiều người yêu sneaker nhất hiện nay. Sự ra đời của phiên bản giày này là một item ghi dấu ấn với khách hàng bởi sự vinh danh Michael Jordan vô cùng tinh tế.\r\nĐồng thời đôi giày Nike Jordan này cũng mang đến thông điệp về phong cách thời trang không giới hạn đến với mọi người.\r\nMẫu giày Air Jordan 1 Rebellionaire là phiên bản giới hạn và đã được Nike đưa trở lại đoạn quảng cáo “Banned” từ năm 1985. Sự ra đời của đôi giày này cũng được lấy hứng từ chính đoạn phim quảng cáo đó để tạo ra các họa tiết độc đáo, mới lạ trên siêu phẩm Air Jordan 1 High mới nhất.\r\nVề phong cách của đôi giày Air JD1 High Rebellionaire mang màu sắc cổ điển giống phiên bản Air Jordan 1 High “Shadow”.', 1),
(7, 'MẪU GIÀY PHỔ THÔNG ADIDAS 60S VỚI HIỆU NĂNG ẤN TƯỢNG', '7.jpg', '<p>Mẫu&nbsp;<strong>gi&agrave;y Adidas 60s</strong>&nbsp;l&agrave; một trong những mẫu gi&agrave;y được lấy cảm hứng từ phong c&aacute;ch đường phố những năm 60. Đ&ocirc;i gi&agrave;y đặc biệt n&agrave;y được ra mắt với &yacute; nghĩa ăn mừng kỷ niệm một kỷ nguy&ecirc;n thương hiệu&nbsp;<a href=\"https://giaygiare.vn/giay-adidas\" target=\"_blank\">sneaker thể thao Adidas</a>&nbsp;đ&atilde; ph&aacute; vỡ c&aacute;c r&agrave;o cản trong l&agrave;ng gi&agrave;y quốc tế.</p>\r\n\r\n<blockquote>\r\n<p>Đ&acirc;y được xem l&agrave; một mẫu gi&agrave;y phổ th&ocirc;ng của Adidas sở hữu hiệu năng ấn tượng khiến nhiều kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch.</p>\r\n</blockquote>\r\n\r\n<p>Giờ h&atilde;y c&ugrave;ng&nbsp;<strong>Tulo shop</strong>&nbsp;t&igrave;m hiểu chi tiết hơn về mẫu&nbsp;<strong>gi&agrave;y Adidas 60s</strong>&nbsp;n&agrave;y c&oacute; g&igrave; cuốn h&uacute;t nh&eacute;!</p>\r\n\r\n<h2>Gi&agrave;y Adidas 60s mang phong c&aacute;ch Retro những năm 60</h2>\r\n\r\n<p>Đ&ocirc;i gi&agrave;y Adidas 60s được thiết kế với form đẹp mắt, cố định bằng d&acirc;y, mang đến phong c&aacute;ch retro của những năm 60 cho thời trang đường phố hiện đại. V&agrave; nếu bạn l&agrave; t&iacute;n đồ của thể loại gi&agrave;y thể thao n&agrave;y c&oacute; thể t&igrave;m hiểu th&ecirc;m d&ograve;ng sản phẩm&nbsp;<a href=\"https://giaygiare.vn/jordan\" target=\"_blank\">Air Jordan</a>&nbsp;đang cực Hot tr&ecirc;n thị trường nh&eacute;!</p>\r\n\r\n<p><img alt=\"Thiết kế giày thể thao Adidas 60s cuốn hút theo phong cách Retro những năm 60\" src=\"https://giaygiare.vn/upload/images/giay-adidas-60s.jpg\" /></p>\r\n\r\n<p>C&oacute; thể n&oacute;i với vẻ ngo&agrave;i của đ&ocirc;i gi&agrave;y Adidas 60s n&agrave;y sở hữu ngoại h&igrave;nh kh&aacute; ấn tượng &amp; ph&ugrave; hợp với nhiều đối tượng kh&aacute;c nhau.</p>\r\n\r\n<h3>Phần th&acirc;n gi&agrave;y</h3>\r\n\r\n<p>Được thiết kế cổ điển sử dụng chất liệu nylon kết hợp c&ugrave;ng c&aacute;c chi tiết c&oacute; chất liệu từ da lộn tổng hợp ở ph&iacute;a tr&ecirc;n phần mũi gi&agrave;y v&agrave; phần xỏ d&acirc;y gi&agrave;y. Điều n&agrave;y cũng gi&uacute;p đ&ocirc;i gi&agrave;y Adidas 60s tăng th&ecirc;m sự liền mạch, ổn định v&agrave; chắc chắn, tạo cảm gi&aacute;c d&agrave;y dặn, an to&agrave;n v&agrave; bảo vệ mũi ch&acirc;n người d&ugrave;ng tốt hơn.<br />\r\nNgo&agrave;i ra, phần th&acirc;n gi&agrave;y c&ograve;n được bố tr&iacute; lớp lưới tho&aacute;ng kh&iacute;, tạo cảm gi&aacute;c th&ocirc;ng tho&aacute;ng cho người d&ugrave;ng trong thời gian d&agrave;i.<br />\r\nSự kết hợp c&aacute;c chất liệu nhẹ nh&agrave;ng, kết hợp khả năng co gi&atilde;n tốt gi&uacute;p &ocirc;m s&aacute;t ch&acirc;n người mang. Đồng thời lu&ocirc;n tạo cảm gi&aacute;c thoải m&aacute;i, dễ chịu khi di chuyển.</p>\r\n\r\n<h3>C&aacute;c biểu tượng của Adidas</h3>\r\n\r\n<p>Hai b&ecirc;n gi&agrave;y thể thao Adidas 60s được thiết kế 3 sọc kẻ m&agrave;u trắng. Đ&acirc;y biểu tượng quen thuộc cũng l&agrave; thể hiện niềm tự h&agrave;o của thương hiệu Adidas.<br />\r\nPh&iacute;a tr&ecirc;n lưỡi g&agrave; được phối với logo đơn giản quen thuộc của Adidas.</p>\r\n\r\n<h3>Phần đế gi&agrave;y</h3>\r\n\r\n<p>Mẫu gi&agrave;y chạy bộ Adidas 60s n&agrave;y c&oacute; phần đế được thiết kế m&agrave;u trắng nổi bật. Phần đế giữa của gi&agrave;y Adidas 60s được đ&uacute;c từ chất liệu EVA nhẹ, mang đến cho người mang một lớp đệm &ecirc;m &aacute;i, hiện đại kết hợp tr&ecirc;n thiết kế kinh điển. B&ecirc;n trong gi&agrave;y được trang bị miếng l&oacute;t vải &ecirc;m &aacute;i.<br />\r\nPhần đế ngo&agrave;i được l&agrave;m bằng cao su, mang đến độ đ&agrave;n hồi cực tốt, cực kỳ thoải m&aacute;i v&agrave; ph&ugrave; hợp cho những người y&ecirc;u th&iacute;ch vận động hay phải thường xuy&ecirc;n di chuyển.</p>\r\n\r\n<p><img alt=\"Đôi giày Adidas 60s với thiết kế đơn giản nhưng vô cùng ấn tượng và nổi bật\" src=\"https://giaygiare.vn/upload/images/giay-adidas-60s-1.jpg\" style=\"height:1080px; width:1080px\" /></p>\r\n\r\n<p>Đ&ocirc;i gi&agrave;y Adidas 60s với thiết kế đơn giản nhưng v&ocirc; c&ugrave;ng ấn tượng v&agrave; nổi bật</p>\r\n\r\n<blockquote>\r\n<p>T&igrave;m hiểu th&ecirc;m: C&aacute;ch lựa chọn&nbsp;<a href=\"https://giaygiare.vn/giay-sneakers-khi-di-du-lich.html\" target=\"_blank\">gi&agrave;y thể thao du lịch</a>&nbsp;đơn giản m&agrave; hiệu quả nhất</p>\r\n</blockquote>\r\n\r\n<h2>Gi&agrave;y chạy bộ Adidas 60s sở hữu hiệu năng ấn tượng</h2>\r\n\r\n<p>Nếu bạn đang t&igrave;m kiếm cho m&igrave;nh một mẫu gi&agrave;y chạy bộ thời trang, hỗ trợ tốt cho việc luyện tập hay đi lại. Vậy th&igrave; Adidas 60s ch&iacute;nh l&agrave; đ&ocirc;i gi&agrave;y đảm bảo sẽ mang đến sự h&agrave;i l&ograve;ng cho bạn.<br />\r\nMẫu gi&agrave;y Adidas 60s n&agrave;y mang đến sự th&iacute;ch nghi tuyệt vời cho người mang tr&ecirc;n mọi bề mặt tiếp x&uacute;c như ph&ograve;ng tập, m&aacute;y chạy bộ, mặt đường th&ocirc;ng thường,... Điều đặc biệt nhất khiến nhiều kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch mẫu gi&agrave;y n&agrave;y ch&iacute;nh l&agrave; khả năng đảm bảo an to&agrave;n v&agrave; sự đ&agrave;n hồi cực tốt, gi&uacute;p n&acirc;ng đỡ v&agrave; giảm mệt mỏi cho đ&ocirc;i ch&acirc;n trong qu&aacute; tr&igrave;nh hoạt động.</p>\r\n\r\n<ul>\r\n	<li>Gi&agrave;y Adidas 60s sử dụng chất liệu vải nilon tổng hợp, tạo sự co gi&atilde;n tốt, gi&uacute;p &ocirc;m kh&iacute;t v&agrave; tạo sự thoải m&aacute;i, an to&agrave;n cho đ&ocirc;i ch&acirc;n của người d&ugrave;ng một c&aacute;ch tốt đa.</li>\r\n	<li>Thiết kế đơn giản theo phong c&aacute;ch Retro mẫu sneaker Adidas 60s vừa tạo được sự ấn tượng v&agrave; v&ocirc; c&ugrave;ng tinh tế. Nếu bạn đang cần một đ&ocirc;i gi&agrave;y vừa tiện lợi, bảo vệ ch&acirc;n, hỗ trợ di chuyển v&agrave; hợp thời trang để tạo được gu thẩm mỹ theo c&aacute; t&iacute;nh ri&ecirc;ng của m&igrave;nh. Đ&acirc;y l&agrave; mẫu gi&agrave;y ph&ugrave; hợp với nhiều phong c&aacute;ch thời trang v&agrave; mọi lứa tuổi. Bạn c&oacute; thể thoải m&aacute;i lựa chọn trang phục theo sở th&iacute;ch từ đơn giản, cổ điển đến hiện đại, phức tạp,... đều c&oacute; thể phối một c&aacute;ch ho&agrave;n hảo với gi&agrave;y Adidas 60s.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Giày thể thao Adidas 60s sở hữu hiệu năng ấn tượng khiến nhiều khách hàng yêu thích\" src=\"https://giaygiare.vn/upload/images/giay-adidas-60s-2.jpg\" style=\"height:902px; width:997px\" /></p>\r\n\r\n<p>Gi&agrave;y thể thao Adidas 60s sở hữu hiệu năng ấn tượng khiến nhiều kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch</p>\r\n\r\n<p>Quả thật mẫu gi&agrave;y phổ th&ocirc;ng Adidas 60s l&agrave; một đ&ocirc;i gi&agrave;y sở hữu hiệu năng ấn tượng, với đầy đủ t&iacute;nh thẩm mỹ, mang đến trải nghiệm hiệu năng tốt cho người d&ugrave;ng. Sẽ thực sự thiếu s&oacute;t nếu trong tủ gi&agrave;y của bạn chưa c&oacute; đ&ocirc;i gi&agrave;y thể thao Adidas 60s n&agrave;y.</p>\r\n\r\n<blockquote>\r\n<p>B&agrave;i viết được xem nhiều: Lựa chọn c&aacute;ch&nbsp;<a href=\"https://giaygiare.vn/mix-do-voi-jordan-1-low-high-cuc-chat-danh-cho-gioi-tre.html\" target=\"_blank\">phối đồ Jordan 1</a>&nbsp;&#39;cực chất&#39; d&agrave;nh cho giới trẻ</p>\r\n</blockquote>\r\n\r\n<h2>Gi&aacute; b&aacute;n của gi&agrave;y Adidas 60s - Sneaker dạo phố thoải m&aacute;i, chất lượng</h2>\r\n\r\n<p>Mẫu gi&agrave;y thể thao Adidas 60s với thiết kế đơn giản, tinh tế kết hợp c&aacute;c chất liệu cao cấp n&ecirc;n cảm gi&aacute;c đi rất &ecirc;m ch&acirc;n, ph&ugrave; hợp với những người thường xuy&ecirc;n di chuyển hoặc vận động nhiều.<br />\r\nHơn thế&nbsp;<strong>gi&aacute; b&aacute;n lẻ gi&agrave;y Adidas 60s</strong>&nbsp;n&agrave;y c&ograve;n v&ocirc; c&ugrave;ng phải chăng, ph&ugrave; hợp với khả năng chi trả của nhiều người tại Việt Nam. Hiện tại đ&ocirc;i gi&agrave;y n&agrave;y đang được b&aacute;n tr&ecirc;n thị trường trong mức gi&aacute; khoảng&nbsp;<strong>1.300.000 vnđ/ đ&ocirc;i</strong>.</p>\r\n\r\n<p><img alt=\"Giày phổ thông Adidas 60s sở hữu hiệu năng ấn tượng cùng giá bán hợp lý\" src=\"https://giaygiare.vn/upload/images/giay-adidas-60s-3.jpg\" style=\"height:816px; width:1085px\" /></p>\r\n\r\n<p>Gi&agrave;y phổ th&ocirc;ng Adidas 60s sở hữu hiệu năng ấn tượng c&ugrave;ng gi&aacute; b&aacute;n hợp l&yacute;</p>\r\n\r\n<p><strong>Gi&agrave;y thể thao Adidas 60s</strong>&nbsp;c&oacute; nhiều ưu điểm&nbsp;hiệu năng vượt trội, chất lượng tốt v&agrave; h&igrave;nh d&aacute;ng cũng rất cuốn h&uacute;t. Nếu bạn đang t&igrave;m mua một đ&ocirc;i&nbsp;<strong>gi&agrave;y sneaker đẹp</strong>&nbsp;để đi bộ, chạy bộ, đi học, đi chơi hay đi tiệc, du lịch,... th&igrave;&nbsp;<strong>sneaker Adidas 60s</strong>&nbsp;sẽ lu&ocirc;n l&agrave; lựa chọn v&ocirc; c&ugrave;ng l&yacute; tưởng đấy nha!</p>\r\n', 2),
(8, 'Giày Adidas 60s mang phong cách Retro những năm 60', '7.jpg', '', 2),
(9, 'Giày Adidas 60s mang phong cách Retro những năm 60', '3.jpg', 'Đôi giày Adidas 60s được thiết kế với form đẹp mắt, cố định bằng dây, mang đến phong cách retro của những năm 60 cho thời trang đường phố hiện đại. Và nếu bạn là tín đồ của thể loại giày thể thao này có thể tìm hiểu thêm dòng sản phẩm Air Jordan đang cực Hot trên thị trường nhé!\r\nThiết kế giày thể thao Adidas 60s cuốn hút theo phong cách Retro những năm 60\r\nThiết kế giày thể thao Adidas 60s cuốn hút theo phong cách Retro những năm 60\r\nCó thể nói với vẻ ngoài của đôi giày Adidas 60s này sở hữu ngoại hình khá ấn tượng & phù hợp với nhiều đối tượng khác nhau.\r\nPhần thân giày\r\nĐược thiết kế cổ điển sử dụng chất liệu nylon kết hợp cùng các chi tiết có chất liệu từ da lộn tổng hợp ở phía trên phần mũi giày và phần xỏ dây giày. Điều này cũng giúp đôi giày Adidas 60s tăng thêm sự liền mạch, ổn định và chắc chắn, tạo cảm giác dày dặn, an toàn và bảo vệ mũi chân người dùng tốt hơn.\r\nNgoài ra, phần thân giày còn được bố trí lớp lưới thoáng khí, tạo cảm giác thông thoáng cho người dùng trong thời gian dài.\r\nSự kết hợp các chất liệu nhẹ nhàng, kết hợp khả năng co giãn tốt giúp ôm sát chân người mang. Đồng thời luôn tạo cảm giác thoải mái, dễ chịu khi di chuyển.\r\nXem thêm: Adizero Adios Pro 2.0 với thiết kế & hiệu năng cực đỉnh\r\n\r\nCác biểu tượng của Adidas\r\nHai bên giày thể thao Adidas 60s được thiết kế 3 sọc kẻ màu trắng. Đây biểu tượng quen thuộc cũng là thể hiện niềm tự hào của thương hiệu Adidas.\r\nPhía trên lưỡi gà được phối với logo đơn giản quen thuộc của Adidas.\r\nPhần đế giày\r\nMẫu giày chạy bộ Adidas 60s này có phần đế được thiết kế màu trắng nổi bật. Phần đế giữa của giày Adidas 60s được đúc từ chất liệu EVA nhẹ, mang đến cho người mang một lớp đệm êm ái, hiện đại kết hợp trên thiết kế kinh điển. Bên trong giày được trang bị miếng lót vải êm ái.\r\nPhần đế ngoài được làm bằng cao su, mang đến độ đàn hồi cực tốt, cực kỳ thoải mái và phù hợp cho những người yêu thích vận động hay phải thường xuyên di chuyển.\r\nĐôi giày Adidas 60s với thiết kế đơn giản nhưng vô cùng ấn tượng và nổi bật\r\nĐôi giày Adidas 60s với thiết kế đơn giản nhưng vô cùng ấn tượng và nổi bật\r\nTìm hiểu thêm: Cách lựa chọn giày thể thao du lịch đơn giản mà hiệu quả nhất\r\n\r\nGiày chạy bộ Adidas 60s sở hữu hiệu năng ấn tượng\r\nNếu bạn đang tìm kiếm cho mình một mẫu giày chạy bộ thời trang, hỗ trợ tốt cho việc luyện tập hay đi lại. Vậy thì Adidas 60s chính là đôi giày đảm bảo sẽ mang đến sự hài lòng cho bạn.\r\nMẫu giày Adidas 60s này mang đến sự thích nghi tuyệt vời cho người mang trên mọi bề mặt tiếp xúc như phòng tập, máy chạy bộ, mặt đường thông thường,... Điều đặc biệt nhất khiến nhiều khách hàng yêu thích mẫu giày này chính là khả năng đảm bảo an toàn và sự đàn hồi cực tốt, giúp nâng đỡ và giảm mệt mỏi cho đôi chân trong quá trình hoạt động.\r\nGiày Adidas 60s sử dụng chất liệu vải nilon tổng hợp, tạo sự co giãn tốt, giúp ôm khít và tạo sự thoải mái, an toàn cho đôi chân của người dùng một cách tốt đa.\r\nThiết kế đơn giản theo phong cách Retro mẫu sneaker Adidas 60s vừa tạo được sự ấn tượng và vô cùng tinh tế. Nếu bạn đang cần một đôi giày vừa tiện lợi, bảo vệ chân, hỗ trợ di chuyển và hợp thời trang để tạo được gu thẩm mỹ theo cá tính riêng của mình. Đây là mẫu giày phù hợp với nhiều phong cách thời trang và mọi lứa tuổi. Bạn có thể thoải mái lựa chọn trang phục theo sở thích từ đơn giản, cổ điển đến hiện đại, phức tạp,... đều có thể phối một cách hoàn hảo với giày Adidas 60s.\r\nGiày thể thao Adidas 60s sở hữu hiệu năng ấn tượng khiến nhiều khách hàng yêu thích\r\nGiày thể thao Adidas 60s sở hữu hiệu năng ấn tượng khiến nhiều khách hàng yêu thích\r\nQuả thật mẫu giày phổ thông Adidas 60s là một đôi giày sở hữu hiệu năng ấn tượng, với đầy đủ tính thẩm mỹ, mang đến trải nghiệm hiệu năng tốt cho người dùng. Sẽ thực sự thiếu sót nếu trong tủ giày của bạn chưa có đôi giày thể thao Adidas 60s này.\r\nBài viết được xem nhiều: Lựa chọn cách phối đồ Jordan 1 \'cực chất\' dành cho giới trẻ\r\n\r\nGiá bán của giày Adidas 60s - Sneaker dạo phố thoải mái, chất lượng\r\nMẫu giày thể thao Adidas 60s với thiết kế đơn giản, tinh tế kết hợp các chất liệu cao cấp nên cảm giác đi rất êm chân, phù hợp với những người thường xuyên di chuyển hoặc vận động nhiều.\r\nHơn thế giá bán lẻ giày Adidas 60s này còn vô cùng phải chăng, phù hợp với khả năng chi trả của nhiều người tại Việt Nam. Hiện tại đôi giày này đang được bán trên thị trường trong mức giá khoảng 1.300.000 vnđ/ đôi.\r\nGiày phổ thông Adidas 60s sở hữu hiệu năng ấn tượng cùng giá bán hợp lý\r\nGiày phổ thông Adidas 60s sở hữu hiệu năng ấn tượng cùng giá bán hợp lý\r\nGiày thể thao Adidas 60s có nhiều ưu điểm hiệu năng vượt trội, chất lượng tốt và hình dáng cũng rất cuốn hút. Nếu bạn đang tìm mua một đôi giày sneaker đẹp để đi bộ, chạy bộ, đi học, đi chơi hay đi tiệc, du lịch,... thì sneaker Adidas 60s sẽ luôn là lựa chọn vô cùng lý tưởng đấy nha!', 2),
(10, 'ĐIỂM MẠNH TRONG THIẾT KẾ CỦA DÒNG GIÀY NIKE ZOOM 2K', '1.jpg', 'Đôi giày Adidas 60s được thiết kế với form đẹp mắt, cố định bằng dây, mang đến phong cách retro của những năm 60 cho thời trang đường phố hiện đại. Và nếu bạn là tín đồ của thể loại giày thể thao này có thể tìm hiểu thêm dòng sản phẩm Air Jordan đang cực Hot trên thị trường nhé!\r\nThiết kế giày thể thao Adidas 60s cuốn hút theo phong cách Retro những năm 60\r\nThiết kế giày thể thao Adidas 60s cuốn hút theo phong cách Retro những năm 60\r\nCó thể nói với vẻ ngoài của đôi giày Adidas 60s này sở hữu ngoại hình khá ấn tượng & phù hợp với nhiều đối tượng khác nhau.\r\nPhần thân giày\r\nĐược thiết kế cổ điển sử dụng chất liệu nylon kết hợp cùng các chi tiết có chất liệu từ da lộn tổng hợp ở phía trên phần mũi giày và phần xỏ dây giày. Điều này cũng giúp đôi giày Adidas 60s tăng thêm sự liền mạch, ổn định và chắc chắn, tạo cảm giác dày dặn, an toàn và bảo vệ mũi chân người dùng tốt hơn.\r\nNgoài ra, phần thân giày còn được bố trí lớp lưới thoáng khí, tạo cảm giác thông thoáng cho người dùng trong thời gian dài.\r\nSự kết hợp các chất liệu nhẹ nhàng, kết hợp khả năng co giãn tốt giúp ôm sát chân người mang. Đồng thời luôn tạo cảm giác thoải mái, dễ chịu khi di chuyển.\r\nXem thêm: Adizero Adios Pro 2.0 với thiết kế & hiệu năng cực đỉnh\r\n\r\nCác biểu tượng của Adidas\r\nHai bên giày thể thao Adidas 60s được thiết kế 3 sọc kẻ màu trắng. Đây biểu tượng quen thuộc cũng là thể hiện niềm tự hào của thương hiệu Adidas.\r\nPhía trên lưỡi gà được phối với logo đơn giản quen thuộc của Adidas.\r\nPhần đế giày\r\nMẫu giày chạy bộ Adidas 60s này có phần đế được thiết kế màu trắng nổi bật. Phần đế giữa của giày Adidas 60s được đúc từ chất liệu EVA nhẹ, mang đến cho người mang một lớp đệm êm ái, hiện đại kết hợp trên thiết kế kinh điển. Bên trong giày được trang bị miếng lót vải êm ái.\r\nPhần đế ngoài được làm bằng cao su, mang đến độ đàn hồi cực tốt, cực kỳ thoải mái và phù hợp cho những người yêu thích vận động hay phải thường xuyên di chuyển.\r\nĐôi giày Adidas 60s với thiết kế đơn giản nhưng vô cùng ấn tượng và nổi bật\r\nĐôi giày Adidas 60s với thiết kế đơn giản nhưng vô cùng ấn tượng và nổi bật\r\nTìm hiểu thêm: Cách lựa chọn giày thể thao du lịch đơn giản mà hiệu quả nhất\r\n\r\nGiày chạy bộ Adidas 60s sở hữu hiệu năng ấn tượng\r\nNếu bạn đang tìm kiếm cho mình một mẫu giày chạy bộ thời trang, hỗ trợ tốt cho việc luyện tập hay đi lại. Vậy thì Adidas 60s chính là đôi giày đảm bảo sẽ mang đến sự hài lòng cho bạn.\r\nMẫu giày Adidas 60s này mang đến sự thích nghi tuyệt vời cho người mang trên mọi bề mặt tiếp xúc như phòng tập, máy chạy bộ, mặt đường thông thường,... Điều đặc biệt nhất khiến nhiều khách hàng yêu thích mẫu giày này chính là khả năng đảm bảo an toàn và sự đàn hồi cực tốt, giúp nâng đỡ và giảm mệt mỏi cho đôi chân trong quá trình hoạt động.\r\nGiày Adidas 60s sử dụng chất liệu vải nilon tổng hợp, tạo sự co giãn tốt, giúp ôm khít và tạo sự thoải mái, an toàn cho đôi chân của người dùng một cách tốt đa.\r\nThiết kế đơn giản theo phong cách Retro mẫu sneaker Adidas 60s vừa tạo được sự ấn tượng và vô cùng tinh tế. Nếu bạn đang cần một đôi giày vừa tiện lợi, bảo vệ chân, hỗ trợ di chuyển và hợp thời trang để tạo được gu thẩm mỹ theo cá tính riêng của mình. Đây là mẫu giày phù hợp với nhiều phong cách thời trang và mọi lứa tuổi. Bạn có thể thoải mái lựa chọn trang phục theo sở thích từ đơn giản, cổ điển đến hiện đại, phức tạp,... đều có thể phối một cách hoàn hảo với giày Adidas 60s.\r\nGiày thể thao Adidas 60s sở hữu hiệu năng ấn tượng khiến nhiều khách hàng yêu thích\r\nGiày thể thao Adidas 60s sở hữu hiệu năng ấn tượng khiến nhiều khách hàng yêu thích\r\nQuả thật mẫu giày phổ thông Adidas 60s là một đôi giày sở hữu hiệu năng ấn tượng, với đầy đủ tính thẩm mỹ, mang đến trải nghiệm hiệu năng tốt cho người dùng. Sẽ thực sự thiếu sót nếu trong tủ giày của bạn chưa có đôi giày thể thao Adidas 60s này.\r\nBài viết được xem nhiều: Lựa chọn cách phối đồ Jordan 1 \'cực chất\' dành cho giới trẻ\r\n\r\nGiá bán của giày Adidas 60s - Sneaker dạo phố thoải mái, chất lượng\r\nMẫu giày thể thao Adidas 60s với thiết kế đơn giản, tinh tế kết hợp các chất liệu cao cấp nên cảm giác đi rất êm chân, phù hợp với những người thường xuyên di chuyển hoặc vận động nhiều.\r\nHơn thế giá bán lẻ giày Adidas 60s này còn vô cùng phải chăng, phù hợp với khả năng chi trả của nhiều người tại Việt Nam. Hiện tại đôi giày này đang được bán trên thị trường trong mức giá khoảng 1.300.000 vnđ/ đôi.\r\nGiày phổ thông Adidas 60s sở hữu hiệu năng ấn tượng cùng giá bán hợp lý\r\nGiày phổ thông Adidas 60s sở hữu hiệu năng ấn tượng cùng giá bán hợp lý\r\nGiày thể thao Adidas 60s có nhiều ưu điểm hiệu năng vượt trội, chất lượng tốt và hình dáng cũng rất cuốn hút. Nếu bạn đang tìm mua một đôi giày sneaker đẹp để đi bộ, chạy bộ, đi học, đi chơi hay đi tiệc, du lịch,... thì sneaker Adidas 60s sẽ luôn là lựa chọn vô cùng lý tưởng đấy nha!', 1),
(11, 'PHIÊN BẢN MỚI: YEEZY BSKTBL KNIT ENERGY GLOW', 'sn8.jpg', '<p>Mẫu gi&agrave;y b&oacute;ng rổ&nbsp;<strong>Jordan Jumpman 2021</strong>&nbsp;được thiết kế từ cảm hứng của những đ&ocirc;i&nbsp;<a href=\"https://giaygiare.vn/jordan\" target=\"_blank\">gi&agrave;y Air Jordan</a>&nbsp;mới nhất. Với phong c&aacute;ch c&ugrave;ng m&agrave;u sắc trẻ trung, năng động đ&ocirc;i gi&agrave;y n&agrave;y gi&uacute;p người mang trở n&ecirc;n c&aacute; t&iacute;nh, nổi bật v&agrave; thu h&uacute;t hơn ở bất kỳ đ&acirc;u.</p>\r\n\r\n<p><img alt=\"Jordan Jumpman 21 hỗ trợ tối đa hiệu năng cho vận động viên\" src=\"https://giaygiare.vn/upload/sanpham/large/giay-bong-ro-jordan-jumpman-2021-voi-tinh-nang-uu-viet.jpg\" style=\"height:700px; width:1200px\" /></p>\r\n\r\n<p>Jordan Jumpman 21 hỗ trợ tối đa hiệu năng cho vận động vi&ecirc;n</p>\r\n\r\n<p>Vậy gi&agrave;y b&oacute;ng rổ&nbsp;<strong>Jordan Jumpman 21</strong>&nbsp;c&oacute; những t&iacute;nh năng ưu việt n&agrave;o? C&ugrave;ng Tulo Shop t&igrave;m hiểu ngay nh&eacute;!</p>\r\n\r\n<h2>Thiết kế của gi&agrave;y Nike Jordan Jumpman 2021 c&oacute; g&igrave; độc đ&aacute;o?</h2>\r\n\r\n<p><strong>Jordan Jumpman 2021</strong>&nbsp;được ra đời với cảm hứng từ những thiết kế của d&ograve;ng&nbsp;<strong>gi&agrave;y Air Jordan XXXV</strong>. X&eacute;t về tổng quan chất liệu của Jumpman 21 kh&ocirc;ng được đầu tư bằng. Những đ&ocirc;i gi&agrave;y n&agrave;y vẫn được đ&aacute;nh gi&aacute; rất cao về hiệu năng, gi&uacute;p đ&ocirc;i ch&acirc;n người mang lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; c&oacute; độ tho&aacute;ng kh&iacute; tốt hơn nhiều so với người anh em &ldquo;tiền nhiệm&rdquo; Jordan XXXV.</p>\r\n\r\n<p><img alt=\"Thiết kế đặc biệt và nổi bật của giày Jordan Jumpman 2021\" src=\"https://giaygiare.vn/upload/images/giay-bong-ro-jordan-jumpman-2021.jpg\" style=\"height:1000px; width:1000px\" /></p>\r\n\r\n<p>Thiết kế đặc biệt v&agrave; nổi bật của gi&agrave;y Jordan Jumpman 2021</p>\r\n\r\n<blockquote>\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://giaygiare.vn/air-jordan-4-dep-hot-nhat.html\" target=\"_blank\">Top 10 mẫu gi&agrave;y Air Jordan 4 Đẹp chất c&aacute; t&iacute;nh nhất</a></p>\r\n</blockquote>\r\n\r\n<h2>Phần upper (th&acirc;n tr&ecirc;n) của gi&agrave;y Nike Jordan Jumpman 2021</h2>\r\n\r\n<p>Đ&ocirc;i gi&agrave;y b&oacute;ng rổ Jordan Jumpman 2021 được sử dụng chất liệu ch&iacute;nh ở phần upper l&agrave; textile. Tạo n&ecirc;n sự sang trọng với trọng lượng rất nhẹ v&agrave; mềm mại, v&agrave; đặc biệt c&oacute; t&iacute;nh đ&agrave;n hồi co gi&atilde;n kh&aacute; cao. Điều n&agrave;y gi&uacute;p người d&ugrave;ng gi&agrave;y&nbsp;<strong>Nike Jordan Jumpman 2021</strong>&nbsp;lu&ocirc;n c&oacute; cảm nhận thoải m&aacute;i khi mang.</p>\r\n\r\n<p><img alt=\"Thiết kế form và phần cổ giày bóng rổ Jordan Jumpman 2021 ôm vừa khít vào chân, tạo cảm giác an toàn cho người dùng khi di chuyển.\" src=\"https://giaygiare.vn/upload/images/giay-bong-ro-jordan-jumpman-2021-1.jpg\" style=\"height:768px; width:1115px\" /></p>\r\n\r\n<p>Thiết kế form v&agrave; phần cổ gi&agrave;y b&oacute;ng rổ Jordan Jumpman 2021 &ocirc;m vừa kh&iacute;t v&agrave;o ch&acirc;n, tạo cảm gi&aacute;c an to&agrave;n cho người d&ugrave;ng khi di chuyển.</p>\r\n\r\n<h2>Phần Midsole (bộ đệm) của gi&agrave;y Jordan Jumpman 2021</h2>\r\n\r\n<p>Ở phần ch&acirc;n trước&nbsp;<strong>gi&agrave;y Jordan Jumpman 21</strong>&nbsp;sử dụng đệm Zoom Air lớn, gi&uacute;p người d&ugrave;ng cảm nhận được độ bật nhảy tốt. Đồng thời tạo khả năng đ&agrave;n hồi v&agrave; linh hoạt tốt cho người d&ugrave;ng. Điều n&agrave;y cũng gi&uacute;p giảm khả năng chấn thương v&agrave; những lớp bọt Foam ở phần g&oacute;t cũng g&oacute;p phần gi&uacute;p bảo vệ b&agrave;n ch&acirc;n người mang rất tốt.<br />\r\nPhần g&oacute;t gi&agrave;y được l&agrave;m bằng chất liệu cao su Phylon, gi&uacute;p tạo sự mềm mại, tăng t&iacute;nh linh hoạt cho phần cổ ch&acirc;n người d&ugrave;ng. Ngo&agrave;i ra, b&ecirc;n trong khu vực cổ ch&acirc;n của gi&agrave;y cũng được Nike đặt một lớp đệm bao quanh gi&uacute;p tăng th&ecirc;m phần chắc chắn v&agrave; an to&agrave;n cho người mang.</p>\r\n\r\n<p><img alt=\"Giày Nike Jordan Jumpman 2021 sử dụng bộ đệm Zoom Air lớn giúp tăng khả năng đàn hồi và linh hoạt\" src=\"https://giaygiare.vn/upload/images/giay-bong-ro-jordan-jumpman-2021-2.jpg\" style=\"height:752px; width:1076px\" /></p>\r\n\r\n<p>Gi&agrave;y Nike Jordan Jumpman 2021 sử dụng bộ đệm Zoom Air lớn gi&uacute;p tăng khả năng đ&agrave;n hồi v&agrave; linh hoạt</p>\r\n\r\n<blockquote>\r\n<p>T&igrave;m hiểu: N&ecirc;n&nbsp;<a href=\"https://giaygiare.vn/mua-giay-jordan-chinh-hang-o-dau.html\" target=\"_blank\">mua gi&agrave;y Jordan Real ở đ&acirc;u</a>&nbsp;uy t&iacute;n &amp; gi&aacute; tốt?</p>\r\n</blockquote>\r\n\r\n<h2>Phần traction (bề mặt đế) của gi&agrave;y Nike Jordan Jumpman 2021</h2>\r\n\r\n<p>Bộ đế của mẫu gi&agrave;y Nike Jordan Jumpman 2021 n&agrave;y chắc chắn l&agrave; một điểm cộng lớn. N&oacute; tạo n&ecirc;n sự nổi bật cho đ&ocirc;i gi&agrave;y, với cấu tr&uacute;c xương c&aacute; quen thuộc. Phần đế gi&agrave;y được l&agrave;m từ cao su v&agrave; hoạt tiết kế hợp một c&aacute;ch ho&agrave;n hảo.<br />\r\nĐồng thời độ rộng của c&aacute;c v&acirc;n đế cũng được thiết kế vừa đủ, gi&uacute;p giảm thiểu c&aacute;c sỏi đ&aacute; hay bụi bẩn bị kẹt lại b&ecirc;n dưới. Điều n&agrave;y cũng gi&uacute;p đ&ocirc;i gi&agrave;y b&aacute;m chặt hơn v&agrave;o bề mặt tiếp x&uacute;c, tăng độ ma s&aacute;t tốt hơn. Hơn thế c&ograve;n gi&uacute;p người d&ugrave;ng dễ d&agrave;ng di chuyển nhanh hoặc chuyển v&agrave; đảo hướng nhanh lu&ocirc;n được an to&agrave;n.</p>\r\n\r\n<blockquote>\r\n<p>C&oacute; thể n&oacute;i Nike Jordan Jumpman 2021 l&agrave; đ&ocirc;i gi&agrave;y vừa phải v&agrave; rất ph&ugrave; hợp với những kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch sự năng động, trẻ trung hoặc những ai thường xuy&ecirc;n chơi thể thao th&igrave; chắc chắn đ&acirc;y l&agrave; sự lựa chọn l&yacute; tưởng.</p>\r\n</blockquote>\r\n\r\n<p><img alt=\"Đôi giày Jordan Jumpman 2021 là mẫu sneaker lý tưởng để sử dụng đi bộ, chạy, luyện tập hằng ngày và cả trên các sân bóng ngoài trời.\" src=\"https://giaygiare.vn/upload/images/giay-bong-ro-jordan-jumpman-2021-3.jpg\" style=\"height:960px; width:960px\" /></p>\r\n\r\n<p>Đ&ocirc;i gi&agrave;y Jordan Jumpman 2021 l&agrave; mẫu sneaker l&yacute; tưởng để sử dụng đi bộ, chạy, luyện tập hằng ng&agrave;y v&agrave; cả tr&ecirc;n c&aacute;c s&acirc;n b&oacute;ng ngo&agrave;i trời.</p>\r\n\r\n<h2>M&agrave;u sắc của gi&agrave;y b&oacute;ng rổ Jordan Jumpman 2021</h2>\r\n\r\n<p>Phần lớn sự ch&uacute; &yacute; của kh&aacute;ch h&agrave;ng d&agrave;nh cho thương hiệu Nike đều đổ v&agrave;o d&ograve;ng gi&agrave;y huyền thoại Air Jordan (23 phi&ecirc;n bản). Tuy nhi&ecirc;n Nike kh&ocirc;ng bao giờ bỏ lỡ việc ph&aacute;t triển c&aacute;c d&ograve;ng gi&agrave;y chất lượng d&agrave;nh cho bộ m&ocirc;n b&oacute;ng rổ. Điều n&agrave;y được chứng minh r&otilde; r&agrave;ng qua sự ra đời của những đ&ocirc;i sneaker b&oacute;ng rổ mới như Jordan Jumpman 2021.</p>\r\n\r\n<ul>\r\n	<li>Trong bộ sưu tập m&agrave;u Thu năm 2020 thương hiệu Nike Jordan đ&atilde; giới thiệu mẫu gi&agrave;y Jordan Jumpman 2021 với nhiều phối m&agrave;u độc đ&aacute;o.</li>\r\n	<li>Phần upper của những đ&ocirc;i gi&agrave;y n&agrave;y được tạo n&ecirc;n từ hỗn hợp c&aacute;c chất liệu để c&oacute; được m&agrave;u sắc đặc trưng cho mỗi phối m&agrave;u như: Đỏ, đen, xanh dương, trắng, v&agrave;ng x&aacute;m.</li>\r\n	<li>C&aacute;c chi tiết kh&aacute;c th&igrave; được cấu tạo th&agrave;nh những kết cấu nổi bật giống với mẫu gi&agrave;y Jordan 35, gi&uacute;p mang đến độ tương phản một c&aacute;ch r&otilde; rệt, tạo sự cuốn h&uacute;t kh&oacute; tả.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Mẫu giày Nike Jordan Jumpman 2021 sở hữu thiết kế độc đáo cùng phối màu nổi bật\" src=\"https://giaygiare.vn/upload/images/giay-bong-ro-jordan-jumpman-2021-4.jpg\" style=\"height:891px; width:1016px\" /></p>\r\n\r\n<p>Mẫu gi&agrave;y Nike Jordan Jumpman 2021 sở hữu thiết kế độc đ&aacute;o c&ugrave;ng phối m&agrave;u nổi bật</p>\r\n\r\n<blockquote>\r\n<p>B&agrave;i xem nhiều: B&iacute; quyết&nbsp;<a href=\"https://giaygiare.vn/mix-do-voi-jordan-1-low-high-cuc-chat-danh-cho-gioi-tre.html\" target=\"_blank\">mix đồ với Jordan</a>&nbsp;độc đ&aacute;o d&agrave;nh cho giới trẻ</p>\r\n</blockquote>\r\n\r\n<h2>Ưu điểm kiến bạn n&ecirc;n mua gi&agrave;y Nike Jordan Jumpman 2021</h2>\r\n\r\n<p>Mẫu gi&agrave;y&nbsp;<strong>JD Jumpman 2021</strong>&nbsp;sở hữu nhiều ưu điểm khiến người d&ugrave;ng y&ecirc;u th&iacute;ch lựa chọn như:</p>\r\n\r\n<ol>\r\n	<li>Hỗ trợ b&agrave;n ch&acirc;n với sự nhẹ nh&agrave;ng v&agrave; khả năng phản hồi, đ&agrave;n hồi tốt nhờ thiết kế bộ đệm Zoom Air ở phần b&agrave;n ch&acirc;n trước.</li>\r\n	<li>Đ&ocirc;i gi&agrave;y tạo cảm gi&aacute;c an to&agrave;n cho người d&ugrave;ng nhờ phần c&aacute;p Flightwire cong được bố tr&iacute; v&agrave;o ph&iacute;a tr&ecirc;n dọc theo cạnh gi&agrave;y, gi&uacute;p tạo sự vừa vặn khi thắt d&acirc;y.</li>\r\n	<li>Phần đế giữa được thiết kế một miếng TPU đ&uacute;c gi&uacute;p tạo ra sự ổn định tốt khi người d&ugrave;ng di chuyển theo nhiều hướng.</li>\r\n	<li>Chất liệu l&agrave;m n&ecirc;n đ&ocirc;i gi&agrave;y Jordan Jumpman nhẹ v&agrave; mang đến cảm gi&aacute;c &ocirc;m s&aacute;t ch&acirc;n, an to&agrave;n, thoải m&aacute;i.</li>\r\n	<li>Độ bền cao, với phần đế ngo&agrave;i l&agrave;m bằng cao su si&ecirc;u bền, c&ugrave;ng lực k&eacute;o h&igrave;nh xương c&aacute; gi&uacute;p người d&ugrave;ng cảm gi&aacute;c b&aacute;m s&agrave;n tốt hơn.</li>\r\n	<li>Thiết kế độc đ&aacute;o, đẹp mắt của Jordan Jumpman 2021 ph&ugrave; hợp để phối với mọi phong c&aacute;ch thời trang.</li>\r\n</ol>\r\n\r\n<p><img alt=\"Mẫu giày Jordan Jumpman 2021 sở hữu nhiều ưu điểm khiến đông đảo người dùng yêu thích\" src=\"https://giaygiare.vn/upload/images/giay-bong-ro-jordan-jumpman-2021-5.jpg\" style=\"height:1000px; width:1000px\" /></p>\r\n\r\n<p>Mẫu gi&agrave;y Jordan Jumpman 2021 sở hữu nhiều ưu điểm khiến đ&ocirc;ng đảo người d&ugrave;ng y&ecirc;u th&iacute;ch</p>\r\n\r\n<p>Hy vọng qua những th&ocirc;ng tin về&nbsp;<strong>gi&agrave;y b&oacute;ng rổ Jordan Jumpman 2021</strong>&nbsp;được&nbsp;<a href=\"https://giaygiare.vn/\">Tulo Shop</a>&nbsp;chia sẻ b&ecirc;n tr&ecirc;n sẽ gi&uacute;p bạn c&oacute; th&ecirc;m th&ocirc;ng tin hữu &iacute;ch. Để cập nhật th&ecirc;m những tin tức mới nhất về gi&agrave;y sneaker, bạn h&atilde;y thường xuy&ecirc;n theo d&otilde;i website&nbsp;<strong>giaygiare.vn</strong>&nbsp;của ch&uacute;ng t&ocirc;i nh&eacute;!</p>\r\n', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ma_ad`);

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`ma_bl`),
  ADD KEY `ma_hh` (`ma_hh`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`ma_hh`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hd`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD KEY `ma_hh` (`ma_hh`),
  ADD KEY `ma_hd` (`ma_hd`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `loai_hang`
--
ALTER TABLE `loai_hang`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `loai_tin_tuc`
--
ALTER TABLE `loai_tin_tuc`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`ma_tt`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `ma_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `ma_hh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `loai_hang`
--
ALTER TABLE `loai_hang`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `loai_tin_tuc`
--
ALTER TABLE `loai_tin_tuc`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `ma_tt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`ma_hh`) REFERENCES `hang_hoa` (`ma_hh`),
  ADD CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`);

--
-- Các ràng buộc cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai_hang` (`ma_loai`);

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`);

--
-- Các ràng buộc cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD CONSTRAINT `hoa_don_chi_tiet_ibfk_2` FOREIGN KEY (`ma_hh`) REFERENCES `hang_hoa` (`ma_hh`),
  ADD CONSTRAINT `hoa_don_chi_tiet_ibfk_3` FOREIGN KEY (`ma_hd`) REFERENCES `hoa_don` (`ma_hd`);

--
-- Các ràng buộc cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD CONSTRAINT `ma_loai` FOREIGN KEY (`ma_loai`) REFERENCES `loai_tin_tuc` (`ma_loai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
