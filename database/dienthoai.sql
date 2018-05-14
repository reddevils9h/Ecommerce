-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 05, 2014 at 03:21 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dienthoai`
--
CREATE DATABASE IF NOT EXISTS `dienthoai` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dienthoai`;

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `mahd` varchar(20) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `phuongthucthanhtoan` int(11) NOT NULL,
  `id_hdct` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_hdct`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Table structure for table `danhmuc`
--

CREATE TABLE IF NOT EXISTS `danhmuc` (
  `madm` int(11) NOT NULL AUTO_INCREMENT,
  `tendm` varchar(50) NOT NULL,
  `dequi` int(11) NOT NULL,
  PRIMARY KEY (`madm`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`, `dequi`) VALUES
(1, 'Điện thoại', 0),
(2, 'Phụ kiện', 0),
(3, 'Sam sung', 1),
(4, 'HTC', 1),
(5, 'Sony', 1),
(6, 'LG', 1),
(7, 'Pin', 2),
(8, 'Bao da - Ốp lưng', 2),
(9, 'Tai nghe', 2),
(10, 'Thẻ nhớ', 2),
(11, 'Nokia', 1),
(12, 'Sky', 1),
(13, 'Black Berry', 1),
(14, 'Sạc', 2),
(15,'Apple',1)

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
  `mahd` int(11) NOT NULL AUTO_INCREMENT,
  `idnd` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaydathang` date NOT NULL,
  `trangthai` int(11) NOT NULL,
  PRIMARY KEY (`mahd`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Table structure for table `hotro`
--

CREATE TABLE IF NOT EXISTS `hotro` (
  `idht` int(11) NOT NULL AUTO_INCREMENT,
  `chude` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaygui` date NOT NULL,
  PRIMARY KEY (`idht`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE IF NOT EXISTS `nguoidung` (
  `idnd` int(11) NOT NULL AUTO_INCREMENT,
  `tennd` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaydangky` date NOT NULL,
  `phanquyen` int(11) NOT NULL,
  PRIMARY KEY (`idnd`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`idnd`, `tennd`, `username`, `password`, `ngaysinh`, `gioitinh`, `email`, `dienthoai`, `diachi`, `ngaydangky`, `phanquyen`) VALUES
(3, 'administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1997-07-02', 'nam', 'reddevils9h@gmail.com', 966648968, 'Nghệ An', '2018-01-26', 0),
(4, 'Bùi Hữu An', 'anchoibigbang', 'ee05e671e04486c5b351656931b7c55f', '1997-07-02', 'nam', 'reddevils9h@gmail.com', 966648968, 'Nghệ An', '2018-26-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhasx`
--

CREATE TABLE IF NOT EXISTS `nhasx` (
  `idnsx` int(11) NOT NULL AUTO_INCREMENT,
  `tennsx` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  PRIMARY KEY (`idnsx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `idsp` int(11) NOT NULL AUTO_INCREMENT,
  `tensp` varchar(50) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `mau` varchar(20) NOT NULL,
  `chitiet` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyenmai1` int(11) NOT NULL,
  `khuyenmai2` varchar(255) NOT NULL,
  `madm` int(11) NOT NULL,
  `ngaycapnhat` date NOT NULL,
  `trangthai` int(11) NOT NULL,
  PRIMARY KEY (`idsp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`,`soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`) VALUES
(1,'Iphone X','20180504171406Iphone X.jpg',10,0,29000000,0,'',15,'2018-05-04'),
(2,'Iphone 6S','201805061547296ssilver1-850x850.jpg',10,0,12490000,0,'',15,'2018-05-04'),
(3,'Ipad Mini 4','20180506154937636130782080358632_635875215188875812_ipad-mini-4-wifi-gold-5.jpg',10,0,8999000,0,'',15,'2018-05-04'),
(4,'Samsung Galaxy S9','201805061551153D_Samsung_Galaxy_S9_S9+_3-850x850.jpg',10,0,19990000,0,'',3,'2018-05-06'),
(5,'Sony Xperia XZ','20180506155244roxfit-tempered-glass-sony-xperia-xa-850x850.jpg',10,0,170000000,0,'',5,'2018-05-06'),
(6,'LG G6','20180506155805lg-g6-2-400x460.png',10,0,12000000,0,'',6,'2018-05-06');

--
-- Table structure for table `tintuc`
--

CREATE TABLE IF NOT EXISTS `tintuc` (
  `matt` int(11) NOT NULL AUTO_INCREMENT,
  `tieude` varchar(255) NOT NULL,
  `ndngan` text NOT NULL,
  `noidung` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydangtin` date NOT NULL,
  `tacgia` varchar(50) NOT NULL,
  `trangthai` int(11) NOT NULL,
  PRIMARY KEY (`matt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tintuc`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
