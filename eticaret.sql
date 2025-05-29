-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 May 2025, 15:32:51
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adresler`
--

CREATE TABLE `adresler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL,
  `AdiSoyadi` varchar(255) NOT NULL,
  `Adres` varchar(255) NOT NULL,
  `Ilce` varchar(255) NOT NULL,
  `Sehir` varchar(255) NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `adresler`
--

INSERT INTO `adresler` (`id`, `UyeId`, `AdiSoyadi`, `Adres`, `Ilce`, `Sehir`, `TelefonNumarasi`) VALUES
(3, 6, 'Ahmet Özdemir', 'deneme ahmet', 'eskişehir', 'sivrihisar', '05565356025'),
(4, 5, 'Yusuf Cava', 'tavşanlı fazilet caddesi özerdemler apartmanı', 'kütahya', 'tavşanlı', '05465356025'),
(5, 11, 'yusuf cava', 'kütahya tavşanlı yeni mahalle', 'tavşanlı', 'kütahya', '05465356025');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `SiteAdi` varchar(50) NOT NULL,
  `SiteTitle` varchar(60) NOT NULL,
  `SiteDescription` varchar(150) NOT NULL,
  `SiteKeywords` varchar(255) NOT NULL,
  `SiteCopyrightMeni` varchar(255) NOT NULL,
  `SiteLogosu` varchar(30) NOT NULL,
  `SiteEmailAdresi` varchar(50) NOT NULL,
  `SiteEmailSifresi` varchar(50) NOT NULL,
  `SiteEmailHostAdresi` varchar(255) NOT NULL,
  `SiteLinki` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `SiteAdi`, `SiteTitle`, `SiteDescription`, `SiteKeywords`, `SiteCopyrightMeni`, `SiteLogosu`, `SiteEmailAdresi`, `SiteEmailSifresi`, `SiteEmailHostAdresi`, `SiteLinki`) VALUES
(1, 'Turan Bebe', 'Bebek, çocuk giyim dükkanı', '0-16 yaş çocuk giyim mağazası. Turan bebe ile birlikte en ucuza en kaliteli eşyaları alma imkanı.', 'Bebe, Bebegiyim, Çocukgiyim, Giyim, Bebektakım, Çocuktakım', 'Copyright 2025 - Turan Bebe - Tüm Hakları Saklıdır', 'Logo.png', 'dcc4fccd60a49d', '1b5277e7446212', 'sandbox.smtp.mailtrap.io', 'http://localhost/TuranBebe');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bankahesaplarimiz`
--

CREATE TABLE `bankahesaplarimiz` (
  `id` int(10) UNSIGNED NOT NULL,
  `BankaLogosu` varchar(30) NOT NULL,
  `BankaAdi` varchar(100) NOT NULL,
  `KonumSehir` varchar(100) NOT NULL,
  `KonumUlke` varchar(100) NOT NULL,
  `SubeAdi` varchar(100) NOT NULL,
  `SubeKodu` varchar(100) NOT NULL,
  `ParaBirimi` varchar(100) NOT NULL,
  `HesapSahibi` varchar(255) NOT NULL,
  `HesapNumarasi` varchar(100) NOT NULL,
  `IbanNumarasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `bankahesaplarimiz`
--

INSERT INTO `bankahesaplarimiz` (`id`, `BankaLogosu`, `BankaAdi`, `KonumSehir`, `KonumUlke`, `SubeAdi`, `SubeKodu`, `ParaBirimi`, `HesapSahibi`, `HesapNumarasi`, `IbanNumarasi`) VALUES
(1, 'Ziraat.png', 'Ziraat Bankası', 'Kütahya', 'Türkiye', 'Tavşanlı', '43300', 'TL', 'Yusuf Cava', 'TR21 0001 0090 1049 1227 5050 10', 'TR21 0001 0090 1049 1227 5050 10'),
(2, 'yapıkredi.png', 'Yapı Kredi Bankası', 'İstanbul', 'Türkiye', 'Bağcılar', '504', 'Türk Lirası', 'Yusuf Cava', 'TR71 0006 7010 0000 0036 1378 19', 'TR71 0006 7010 0000 0036 1378 19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `havalebildirimleri`
--

CREATE TABLE `havalebildirimleri` (
  `id` int(10) UNSIGNED NOT NULL,
  `BankaId` int(10) UNSIGNED NOT NULL,
  `AdiSoyadi` varchar(100) NOT NULL,
  `EmailAdresi` varchar(255) NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL,
  `Aciklama` text NOT NULL,
  `IslemTarihi` int(10) UNSIGNED NOT NULL,
  `Durum` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `havalebildirimleri`
--

INSERT INTO `havalebildirimleri` (`id`, `BankaId`, `AdiSoyadi`, `EmailAdresi`, `TelefonNumarasi`, `Aciklama`, `IslemTarihi`, `Durum`) VALUES
(7, 0, 'yusufcava666@gmail.com', '05465356025', '1', 'sdaas', 1742859090, 0),
(8, 0, 'yusufcava666@gmail.com', '05465356025', '1', 'asdas', 1742883547, 0),
(9, 0, 'yusufcava666@gmail.com', '05465356025', '2', 'aaaaa', 1742883679, 0),
(10, 0, 'yusufcava666@gmail.com', '05465356025', '2', '&#039;&quot;&gt;&gt;&gt;', 1742884067, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL,
  `SiparisNumarasi` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `UrunTuru` varchar(50) NOT NULL,
  `UrunAdi` varchar(255) NOT NULL,
  `ToplamUrunFiyati` double UNSIGNED NOT NULL,
  `UrunFiyati` double UNSIGNED NOT NULL,
  `KdvOrani` int(2) UNSIGNED NOT NULL,
  `UrunAdedi` int(3) UNSIGNED NOT NULL,
  `KargoFirmasiSecimi` varchar(100) NOT NULL,
  `KargoUcreti` double UNSIGNED NOT NULL,
  `UrunResmiBir` varchar(30) NOT NULL,
  `VaryantBasligi` varchar(100) NOT NULL,
  `VaryantSecimi` varchar(100) NOT NULL,
  `AdresAdiSoyadi` varchar(100) NOT NULL,
  `AdresDetay` varchar(255) NOT NULL,
  `AdresTelefon` varchar(11) NOT NULL,
  `OdemeSecimi` varchar(25) NOT NULL,
  `TaksitSecimi` int(2) UNSIGNED NOT NULL,
  `SiparisTarihi` int(10) NOT NULL,
  `SiparisIpAdresi` varchar(20) NOT NULL,
  `OnayDurumu` tinyint(1) UNSIGNED NOT NULL,
  `KargoDurumu` tinyint(1) UNSIGNED NOT NULL,
  `KargoGonderiKodu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `siparisler`
--

INSERT INTO `siparisler` (`id`, `UyeId`, `SiparisNumarasi`, `UrunId`, `UrunTuru`, `UrunAdi`, `ToplamUrunFiyati`, `UrunFiyati`, `KdvOrani`, `UrunAdedi`, `KargoFirmasiSecimi`, `KargoUcreti`, `UrunResmiBir`, `VaryantBasligi`, `VaryantSecimi`, `AdresAdiSoyadi`, `AdresDetay`, `AdresTelefon`, `OdemeSecimi`, `TaksitSecimi`, `SiparisTarihi`, `SiparisIpAdresi`, `OnayDurumu`, `KargoDurumu`, `KargoGonderiKodu`) VALUES
(1, 11, 1, 1, 'Zıbın', 'Erkek Çocuk Zıbını', 450, 450, 13, 1, 'Yurtiçi Kargo', 25, 'zıbın2.png', 'Beden', '0-6', 'Yusuf Cava ', '- tavşanlı fazilet caddesi özerdemler apartmanı - Tavşanlı/Kütahya', '05465356025', 'Kredi Kartı', 3, 1546082940, '::1', 0, 0, ''),
(2, 11, 1, 2, 'Zıbın', 'Zıbın', 650, 650, 13, 1, 'Yurtiçi Kargo', 65, 'zıbın1.png', 'Beden', '1-3 Yaş', 'Yusuf Cava', '- tavşanlı fazilet caddesi özerdemler apartmanı - Tavşanlı/Kütahya', '05465356025', 'Kredi Kartı', 3, 1546082940, '::1', 0, 0, ''),
(3, 11, 2, 3, 'Bebek Arabası', 'Bebek Arabası', 749.99, 749.99, 18, 1, 'Yurtiçi Kargo', 95, 'bebekarabasi.png', 'Beden', '1-4 Yaş', 'Yusuf Cava', 'tavşanlı fazilet caddesi özerdemler apartmanı', '05465356025', 'Banka Havalesi', 0, 1546083579, '::1', 0, 0, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorular`
--

CREATE TABLE `sorular` (
  `id` int(10) UNSIGNED NOT NULL,
  `soru` varchar(255) NOT NULL,
  `cevap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `sorular`
--

INSERT INTO `sorular` (`id`, `soru`, `cevap`) VALUES
(1, 'Siparişlerim ne zaman kargoya verilir?', 'Saat 14:00dan önce verdiğiniz siparişleri aynı gün içerisinde yurt içi kargodan gönderiyoruz. 14:00\'dan sonrasına sarkan siparişler için sonraki güne kalıyor.'),
(2, 'Kargo ücreti ödüyor muyum?', '1500 TL ve üzeri alışverişlerde kargo ücreti ödemiyorsunuz. '),
(3, 'Kapıda ödeme yapabilir miyim?', 'Rahat ve kolay bir şekilde alışverişinizi hızlıca tamamlamanız için Kapıda Nakit ve Kapıda Kartlı ödeme hizmetimiz bulunmaktadır. Türkiye\'nin her yerine Kapıda Ödemeli gönderim yapmaktayız.'),
(4, 'Toptan satışınız var mı?\r\n', '20.000 Türk Lirası ve üzerindeki siparişleriniz için toptan satış politikalarımız uygulanmaktadır. Toptan alımlarınız ile ilgili detaylı bilgi alabilmek için iletişim formu üzerinden bizimle iletişime geçebilirsiniz.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sozlesmelervemetinler`
--

CREATE TABLE `sozlesmelervemetinler` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `HakkimizdaMetni` text NOT NULL,
  `UyelikSozlesmesiMetni` text NOT NULL,
  `KullanimKosullariMetni` text NOT NULL,
  `GizlilikSozlesmesiMetni` text NOT NULL,
  `MesafeliSatisSözlesmesiMetni` text NOT NULL,
  `TeslimatMetni` text NOT NULL,
  `IptalIadeDegisimMetni` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `sozlesmelervemetinler`
--

INSERT INTO `sozlesmelervemetinler` (`id`, `HakkimizdaMetni`, `UyelikSozlesmesiMetni`, `KullanimKosullariMetni`, `GizlilikSozlesmesiMetni`, `MesafeliSatisSözlesmesiMetni`, `TeslimatMetni`, `IptalIadeDegisimMetni`) VALUES
(6, 'bursı skeewedin yeribursı skeewedin yeribursı skeewedin yeribursı skeewedin yeribursı skeewedin yeribursı skeewedin yeribursı skeewedin yeribursı skeewedin yeri', 'Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.Burası Üyelik Sözleşmesi Metnidir.', 'BURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİRBURASI YUNUSUN METNİDİR', 'Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.Burası Gizlilik Sözleşmesi Metnidir.', 'Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.Burası Mesafeli Satış Sözleşmesi Metnidir.', 'Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.Burası Teslimat Metnidir.', 'Burası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim MetnidirBurası İptal İade Değişim Metnidir');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UrunAdi` varchar(255) NOT NULL,
  `UrunFiyati` double UNSIGNED NOT NULL,
  `ParaBirimi` char(3) NOT NULL,
  `KdvOrani` int(2) NOT NULL,
  `UrunAciklamasi` text NOT NULL,
  `UrunResmiBir` varchar(50) NOT NULL,
  `UrunResmiIki` varchar(50) NOT NULL,
  `UrunResmiUc` varchar(50) NOT NULL,
  `UrunResmiDort` varchar(50) NOT NULL,
  `VaryantBasligi` varchar(100) NOT NULL,
  `Durumu` tinyint(1) UNSIGNED NOT NULL,
  `ToplamSatisSayisi` int(10) UNSIGNED NOT NULL,
  `YorumSayisi` tinyint(1) UNSIGNED NOT NULL,
  `ToplamYorumPuani` int(10) UNSIGNED NOT NULL,
  `GoruntulenmeSayisi` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `UrunAdi`, `UrunFiyati`, `ParaBirimi`, `KdvOrani`, `UrunAciklamasi`, `UrunResmiBir`, `UrunResmiIki`, `UrunResmiUc`, `UrunResmiDort`, `VaryantBasligi`, `Durumu`, `ToplamSatisSayisi`, `YorumSayisi`, `ToplamYorumPuani`, `GoruntulenmeSayisi`) VALUES
(1, 'Erkek Çocuk Zıbını', 450, 'TRY', 13, 'Erkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklamasıErkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklaması Erkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklamasıErkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklaması Erkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklamasıErkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklaması Erkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklamasıErkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklaması Erkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklamasıErkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklaması Erkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklamasıErkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklaması Erkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklamasıErkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklaması Erkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklamasıErkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklaması Erkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklamasıErkek Çocuk Zıbını Mavi Ayıcıklı ürünün açıklaması ', 'zıbın2.png', 'zıbın3.png', '', '', 'Beden', 1, 1, 1, 3, 8),
(2, 'Zıbın', 650, 'TRY', 13, 'Annemi ve babamı seviyorum yazılı zıbının açıklaması Annemi ve babamı seviyorum yazılı zıbının açıklaması Annemi ve babamı seviyorum yazılı zıbının açıklaması Annemi ve babamı seviyorum yazılı zıbının açıklaması Annemi ve babamı seviyorum yazılı zıbının açıklaması Annemi ve babamı seviyorum yazılı zıbının açıklaması Annemi ve babamı seviyorum yazılı zıbının açıklaması Annemi ve babamı seviyorum yazılı zıbının açıklaması ', 'zıbın1.png', 'zıbın.png', '', '', 'Beden', 1, 1, 1, 2, 15),
(3, 'Bebek Arabası', 750, 'USD', 18, 'Bebek Araması Açıklaması Bebek Araması Açıklaması Bebek Araması Açıklaması Bebek Araması Açıklaması Bebek Araması Açıklaması Bebek Araması Açıklaması Bebek Araması Açıklaması Bebek Araması Açıklaması Bebek Araması Açıklaması Bebek Araması Açıklaması Bebek Araması Açıklaması Bebek Araması Açıklaması Bebek Araması Açıklaması ', 'bebekarabasi.png', 'bebekarabasii.png', '', '', 'Beden', 1, 1, 2, 8, 41);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunvaryantlari`
--

CREATE TABLE `urunvaryantlari` (
  `id` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `VaryantAdi` varchar(100) NOT NULL,
  `StokAdedi` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `urunvaryantlari`
--

INSERT INTO `urunvaryantlari` (`id`, `UrunId`, `VaryantAdi`, `StokAdedi`) VALUES
(1, 1, '0-6', 100),
(2, 1, '6-12', 100),
(3, 1, '1-3', 100),
(4, 1, '3-6', 100),
(5, 2, '0-6 Ay', 100),
(6, 2, '6-12 Ay', 100),
(7, 2, '1-3 Yaş', 100),
(8, 2, '3-6 Yaş', 100),
(9, 3, '1-4 Yaş', 20),
(10, 3, '4-8 Yaş', 20);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(10) UNSIGNED NOT NULL,
  `EmailAdresi` varchar(255) NOT NULL,
  `Sifre` varchar(100) NOT NULL,
  `IsimSoyisim` varchar(100) NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL,
  `Cinsiyet` varchar(5) NOT NULL,
  `Durumu` tinyint(1) NOT NULL,
  `KayitTarihi` int(10) NOT NULL,
  `KayitIpAdresi` varchar(20) NOT NULL,
  `AktivasyonKodu` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `EmailAdresi`, `Sifre`, `IsimSoyisim`, `TelefonNumarasi`, `Cinsiyet`, `Durumu`, `KayitTarihi`, `KayitIpAdresi`, `AktivasyonKodu`) VALUES
(5, 'yusufcava666@gmail.com', 'a506d00a2e8353ca0f7fd12ddfada6cc', 'yusuf cava', '05465356025', 'Erkek', 1, 1746016092, '::1', '30591-91832-84018-15935'),
(6, 'cava1@gmail.com', '3f6f7153dc4ab098775b37ee4967c7f7', 'yusuf cava', '05465356025', 'Erkek', 1, 1747410838, '::1', '89660-63550-23655-20017'),
(7, 'cavav123@gmail.com', '3f6f7153dc4ab098775b37ee4967c7f7', 'cava ccav', '05465356022', 'Erkek', 1, 1747419994, '::1', '86659-41874-79973-91872'),
(8, 'cava3@gmail.com', '9242565d1df85a8e0b4a05726d6605d6', 'Yusuf Cava', '5465356025', 'Erkek', 1, 1748357464, '::1', '67658-41573-49446-90984'),
(11, 'cava99@gmail.com', '2d23359102ce96172db8cbe5e0b62ad6', 'Yusuf Cava', '05465356025', 'Erkek', 1, 1748357879, '::1', '86965-32758-24909-17242');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL,
  `Puan` tinyint(1) UNSIGNED NOT NULL,
  `YorumMetni` text NOT NULL,
  `YorumTarihi` int(10) NOT NULL,
  `YorumIpAdresi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `UrunId`, `UyeId`, `Puan`, `YorumMetni`, `YorumTarihi`, `YorumIpAdresi`) VALUES
(1, 3, 5, 4, 'asdasdasdas', 1747574322, '::1'),
(2, 1, 5, 3, 'asdasdasdasdasdasdasdasdsa', 1747575671, '::1'),
(3, 2, 5, 2, 'ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD ASDASDASDASDSADSADSA ASD', 1747575683, '::1'),
(4, 3, 11, 4, 'asd as das das dasd as das', 1748357957, '::1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `adresler`
--
ALTER TABLE `adresler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bankahesaplarimiz`
--
ALTER TABLE `bankahesaplarimiz`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `havalebildirimleri`
--
ALTER TABLE `havalebildirimleri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sorular`
--
ALTER TABLE `sorular`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sozlesmelervemetinler`
--
ALTER TABLE `sozlesmelervemetinler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunvaryantlari`
--
ALTER TABLE `urunvaryantlari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmailAdresi` (`EmailAdresi`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `adresler`
--
ALTER TABLE `adresler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `bankahesaplarimiz`
--
ALTER TABLE `bankahesaplarimiz`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `havalebildirimleri`
--
ALTER TABLE `havalebildirimleri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `siparisler`
--
ALTER TABLE `siparisler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `sorular`
--
ALTER TABLE `sorular`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `sozlesmelervemetinler`
--
ALTER TABLE `sozlesmelervemetinler`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `urunvaryantlari`
--
ALTER TABLE `urunvaryantlari`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
