-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 08 May 2024, 14:31:32
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `okul`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

CREATE TABLE `ogrenci` (
  `id` int(11) NOT NULL,
  `ogr_ad` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ogr_soyad` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ogr_no` varchar(6) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ogr_sinif` varchar(10) COLLATE utf8mb4_turkish_ci NOT NULL,
  `cinsiyet` varchar(5) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ogr_alan` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `ogr_dTarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `ogrenci`
--

INSERT INTO `ogrenci` (`id`, `ogr_ad`, `ogr_soyad`, `ogr_no`, `ogr_sinif`, `cinsiyet`, `ogr_alan`, `ogr_dTarihi`) VALUES
(1, 'enes', 'paçacı', '441', '11/A', 'erkek', 'Bilişim Teknolojileri', '2007-09-27'),
(2, 'mehmet fırat', 'özel', '6', '11/A', 'erkek', 'Bilişim Teknolojileri', '2007-08-06'),
(3, 'mehmet fırat', 'özel', '6', '11/A', 'erkek', 'Bilişim Teknolojileri', '2007-08-06');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ogrenci`
--
ALTER TABLE `ogrenci`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ogrenci`
--
ALTER TABLE `ogrenci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
