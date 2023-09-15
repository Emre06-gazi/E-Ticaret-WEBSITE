-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Eyl 2023, 12:04:08
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
-- Tablo için tablo yapısı `abone`
--

CREATE TABLE `abone` (
  `abone_id` int(11) NOT NULL,
  `abone_email` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `abone`
--

INSERT INTO `abone` (`abone_id`, `abone_email`) VALUES
(10, 'emre_1213312@hotmail.com'),
(11, 'emre_1213312@hotmail.com'),
(12, 'emre_1213312@hotmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(300) NOT NULL,
  `aciklama` varchar(500) NOT NULL,
  `anahtarkelime` varchar(400) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adres` varchar(250) NOT NULL,
  `facebook` varchar(250) NOT NULL,
  `instagram` varchar(250) NOT NULL,
  `youtube` varchar(250) NOT NULL,
  `twitter` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `mesai` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `baslik`, `aciklama`, `anahtarkelime`, `telefon`, `email`, `adres`, `facebook`, `instagram`, `youtube`, `twitter`, `logo`, `mesai`) VALUES
(1, '', '', '', '+(90) 545 403 9029', 'emre_1213312@hotmail.com', 'Türkiye', '', '', '', 'twitter.com', '800074890321647366411.jpg', '7/24 Hizmetinizde');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `kart_ismi` varchar(120) NOT NULL,
  `kart_numarasi` varchar(20) NOT NULL,
  `son_kullanma_tarihi` varchar(20) NOT NULL,
  `cvv_kodu` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `card`
--

INSERT INTO `card` (`id`, `kart_ismi`, `kart_numarasi`, `son_kullanma_tarihi`, `cvv_kodu`) VALUES
(7, 'Emre Korkmaz', '1210 1000 2222 2223', '12/34', 111);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cokluresim`
--

CREATE TABLE `cokluresim` (
  `id` int(11) NOT NULL,
  `resim` varchar(250) NOT NULL,
  `urun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cokluresim`
--

INSERT INTO `cokluresim` (`id`, `resim`, `urun_id`) VALUES
(1, '4705217187237829alfa-450c-2_xr4n9c_500.jpg', 1),
(2, '148987585069516963U9400-ust.jpg', 228),
(16, '134459-2-min_large.webp', 2),
(17, '8213376722032562673.jpg', 3),
(20, '1873171380412508630blackview-bv1000-ip68-sertifikali-telefon-1.jpg', 4),
(111, '96655385599784758TeoriV2-105608_large.jpg', 100),
(112, '224823148084088160,.jpg', 226),
(113, '770630312908093115v2-92811-6_large.jpg', 227),
(114, '138501-1_large.webp', 231),
(115, '331616317615659051748566329784572537123842990_.jpg', 5),
(117, '24293166947106446908060922719531895611200x627-televizyonu-kim-icat-etti-televizyon-ne-zaman-icat-edildi-kim-buldu-tk1-1604309881463.jpg', 236),
(118, '41235556472333410download.jpg', 6),
(119, 'indir.jpg', 7),
(120, '259658228475160787download.jpg', 238),
(122, 'images.jpg', 239),
(123, '125286181086184487çorap.jpg', 241),
(124, '6400134947213580019416192871549161036atkı.jpg', 242),
(125, 'indir (23).jpg', 8),
(127, 'indir (1).jpg', 9),
(128, '92089724107119885069346076196918541113download.jpg', 10),
(129, '45071591314863911852080339389078588ayakkabı.jpg', 246),
(130, 'indir (2).jpg', 11),
(131, 'indir (3).jpg', 248),
(132, 'indir (5).jpg', 12),
(133, '852155405342166847indir (4).jpg', 250),
(134, '125916382799817106resim_2021-05-05_072731.png', 233),
(135, '731537442391938356178954745_.jpg', 234),
(136, '731537442391938356178954745_.jpg', 234),
(137, '7970325581617283gözlük.jpg', 251);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(300) NOT NULL,
  `hakkimizda_detay` text NOT NULL,
  `hakkimizda_resim` varchar(250) NOT NULL,
  `hakkimizda_misyon` text NOT NULL,
  `hakkimizda_vizyon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_detay`, `hakkimizda_resim`, `hakkimizda_misyon`, `hakkimizda_vizyon`) VALUES
(1, 'Firma Hakkında', '<p>Biz, müşterilerimize en kaliteli ürünleri sunma tutkusuyla 20 yılı aşkın bir süredir faaliyet gösteren bir e-ticaret platformuyuz. Firmamızın temeli, müşterilerimizin ihtiyaçlarını anlama ve onlara mükemmel bir alışveriş deneyimi sunma amacıyla atıldı.</p>\r\n', '427846743712481696ek.ico', 'Vizyonumuz, müşterilerimize özenle seçilmiş ürünler sunarak onların hayatını kolaylaştırmak ve güzelleştirmektir. Her müşterimizin beklentilerini aşmayı hedefler, çünkü biz sadece ürünler satmakla kalmayıp aynı zamanda güven ve memnuniyet inşa etmeye de odaklanırız.', 'Misyonumuz, müşterilerimize yüksek kaliteli ürünler sunarken aynı zamanda etik ve sürdürülebilir ticaret ilkelerine bağlı kalmaktır. İşimizi dürüstlük, şeffaflık ve müşteri odaklılıkla yürütmek, her zaman önceliğimizdir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_adi` varchar(300) NOT NULL,
  `kategori_sira` int(11) NOT NULL,
  `kategori_durum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_adi`, `kategori_sira`, `kategori_durum`) VALUES
(1, 'Bilgisayar', 1, 1),
(2, 'Televizyon', 2, 1),
(3, 'Drone', 3, 1),
(4, 'Telefon', 4, 1),
(5, 'Diğer Teknolojik Aletler', 5, 1),
(6, 'Kadın Yazlık Giyim', 11, 1),
(7, 'Kadın Kışlık Giyim', 12, 1),
(8, 'Erkek Kışlık Giyim', 13, 1),
(9, 'Erkek Yazlık Giyim', 14, 1),
(10, 'Ayakkabı', 15, 1),
(11, 'Takılar', 22, 1),
(12, 'Gözlük', 23, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kullanici_adi` varchar(250) NOT NULL,
  `kullanici_sifre` varchar(250) NOT NULL,
  `kullanici_adsoyad` varchar(250) NOT NULL,
  `kullanici_yetki` int(2) NOT NULL,
  `kullanici_adres` varchar(300) NOT NULL,
  `kullanici_il` varchar(250) NOT NULL,
  `kullanici_ilce` varchar(250) NOT NULL,
  `kullanici_tel` varchar(30) NOT NULL,
  `kullanici_resim` varchar(200) NOT NULL,
  `kullanici_mail` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_adi`, `kullanici_sifre`, `kullanici_adsoyad`, `kullanici_yetki`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_tel`, `kullanici_resim`, `kullanici_mail`) VALUES
(11, '2023-09-15 08:07:43', 'alisert', '9fb717d32573ca5cf611056f75ca4cd9', 'Ali Sert', 1, 'Ankara Sincan pınarbaşın mah. Vatan cad. 110/5', 'ANKARA', 'SİNCAN', '05455039029', '', 'alisert2020@gmail.com'),
(12, '2020-06-20 12:20:39', 'hasankalem', 'e10adc3949ba59abbe56e057f20f883e', 'hasan kalem', 1, '', '', '', '', '', 'hasankalem@gmail.com'),
(13, '2020-07-03 07:39:02', 'alihakan ', '25d55ad283aa400af464c76d713c07ad', 'ali hakan', 1, 'ankara', 'ankara', 'mavi ', '16783883', '', 'alihakan@gmail.com'),
(15, '2023-09-15 06:37:38', 'Hasan', '0d4213fcbf4f374eb1e5a8e12babe511', 'Hasan korkmaz', 1, 'Beytepe', 'Ankara', 'Cankaya', '0545 403 2020', '', 'emre_1213323212@hotmail.com'),
(16, '2023-09-14 06:41:24', 'hakan', 'e0fc9f1a4c75462e83e0ef00782f5a8b', 'Hakan Süzer', 1, '', '', '', '', '', 'hakan@hotmail.com'),
(17, '2023-09-14 07:01:12', 'murat', '15edca3681f41a0fb7d7fdc84f9c01f6', 'Murat bAKAN', 1, 'Ankara Sincan pınarbaşın mah. Vatan cad. 110/5', 'ANKARA', 'SİNCAN', '05455039029', '', 'murar_51561@hotmail.com'),
(19, '2023-09-15 08:08:07', 'liskov', '9fb717d32573ca5cf611056f75ca4cd9', 'kamil can', 2, '', '', '', '', '', 'hakan_12321@hotmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `id` int(11) NOT NULL,
  `mesaj_ad` varchar(200) NOT NULL,
  `mesaj_email` varchar(200) NOT NULL,
  `mesaj_konu` varchar(200) NOT NULL,
  `mesaj` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`id`, `mesaj_ad`, `mesaj_email`, `mesaj_konu`, `mesaj`) VALUES
(15, 'Emre Korkmaz', 'emre_1213312@hotmail.com', 'Firmanın Durumu', '852155405342166847indir (4).jpg'),
(16, 'Emre', 'emre_1213312@hotmail.com', 'Firmanın Durumu', '<?php require_once \'header.php\' ?>\r\n\r\n<div class=\"content-wraper pt-60 pb-60\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-lg-12\">\r\n                <!-- Begin Li\'s Banner Area -->\r\n\r\n                <div class=\"shop-top-bar mt-30\">\r\n                    <div class=\"shop-bar-inner\">\r\n\r\n                        <div class=\"toolbar-amount\">\r\n                            <span>1-12 adet ürün gösteriliyor </span>\r\n                        </div>\r\n                    </div>\r\n                    <!-- product-select-box start -->\r\n                      <form action=\"arama\" method=\"post\">\r\n                    <div class=\"product-select-box\">\r\n                        <div class=\"product-short\">\r\n                            <p>Sırala:</p>\r\n                            <select name=\"sirala\" class=\"nice-select\">\r\n                                <option value=\"1\">İsime göre (A - Z)</option>\r\n\r\n                                <option value=\"2\">İsime göre (Z - A)</option>\r\n                                <option value=\"3\">Düşük fiyat </option>\r\n                                <option value=\"4\">Yüksek fiyat</option>\r\n\r\n                            </select> \r\n                           <input type=\"hidden\" name=\"katsid\" value=\"<?php echo $_GET[\'kategori_id\']?>\">\r\n                              <button style=\"margin-left:10px\" class=\"btn btn-info\" type=\"submit\" name=\"siralama\">Arama yap</button>\r\n\r\n                        </div>\r\n                    </div>\r\n                 \r\n                    </form>\r\n                    <!-- product-select-box end -->\r\n                </div>\r\n                <!-- shop-top-bar end -->\r\n                <!-- shop-products-wrapper start -->\r\n                <div class=\"shop-products-wrapper\">\r\n                    <div class=\"tab-content\">\r\n                        <div id=\"grid-view\" class=\"tab-pane fade active show\" role=\"tabpanel\">\r\n                            <div class=\"product-area shop-product-area\">\r\n                                <div class=\"row\">\r\n<?php\r\n\r\n\r\nif (isset($_POST[\'siralama\'])) {\r\n\r\n    if ($_POST[\'sirala\']==\"1\") {\r\n   \r\n\r\n    $urunler=$baglanti->prepare(\"SELECT * FROM  urunler where kategori_id=:kategori_id and urun_durum=:urun_durum order by urun_baslik ASC\");\r\n      $urunler->execute(array(\r\n                                      \'kategori_id\'=>$_POST[\'katsid\'],\r\n                                      \'urun_durum\'=>1\r\n\r\n                                  ));\r\n  }\r\n\r\n    elseif ($_POST[\'sirala\']==\"2\") {\r\n\r\n  \r\n    $urunler=$baglanti->prepare(\"SELECT * FROM  urunler where kategori_id=:kategori_id and urun_durum=:urun_durum order by urun_baslik DESC\");\r\n      $urunler->execute(array(\r\n                                      \'kategori_id\'=>$_POST[\'katsid\'],\r\n                                      \'urun_durum\'=>1\r\n\r\n                                  ));\r\n  }\r\n\r\n elseif ($_POST[\'sirala\']==\"3\") {\r\n\r\n  \r\n    $urunler=$baglanti->prepare(\"SELECT * FROM  urunler where kategori_id=:kategori_id and urun_durum=:urun_durum order by urun_fiyat ASC\");\r\n      $urunler->execute(array(\r\n                                      \'kategori_id\'=>$_POST[\'katsid\'],\r\n                                      \'urun_durum\'=>1\r\n\r\n                                  ));\r\n  }\r\n   elseif ($_POST[\'sirala\']==\"4\") {\r\n\r\n  \r\n    $urunler=$baglanti->prepare(\"SELECT * FROM  urunler where kategori_id=:kategori_id and urun_durum=:urun_durum order by urun_fiyat DESC\");\r\n      $urunler->execute(array(\r\n                                      \'kategori_id\'=>$_POST[\'katsid\'],\r\n                                      \'urun_durum\'=>1\r\n\r\n                                  ));\r\n  }\r\n\r\n\r\n\r\n\r\n\r\n}\r\n\r\nif (isset($_POST[\'kelimearama\'])) {\r\n\r\n$aranacakkelime=$_POST[\'aranacakkelime\'];\r\n    $urunler=$baglanti->prepare(\"SELECT * FROM  urunler where urun_baslik LIKE ?\");\r\n  $urunler->execute(array(\"%$aranacakkelime%\"));\r\n\r\n\r\n}\r\n\r\n\r\n\r\n ?>\r\n\r\n                                  <?php  \r\n                                 \r\n                                \r\n                                  while ($urunlercek=$urunler->fetch(PDO::FETCH_ASSOC)) { ?>\r\n\r\n                                    <div class=\"col-lg-3 col-md-4 col-sm-6 mt-40\">\r\n                                        <!-- single-product-wrap start -->\r\n                                        <div class=\"single-product-wrap\">\r\n                                            <div class=\"product-image\">\r\n                                                <a href=\"urun-detay-<?=seolink($urunlercek[\'urun_baslik\']).\'-\'.$urunlercek[\'urun_id\'] ?>\">\r\n                                                    <img src=\"Admin/resimler/urunler/<?php echo $urunlercek[\'urun_resim\'] ?>\" alt=\"Li\'s Product Image\">\r\n                                                </a>\r\n                                                <span class=\"sticker\">Yeni</span>\r\n                                            </div>\r\n                                            <div class=\"product_desc\">\r\n                                                <div class=\"product_desc_info\">\r\n\r\n                                                    <h4><a class=\"product_name\" href=\"urun-detay-<?=seolink($urunlercek[\'urun_baslik\']).\'-\'.$urunlercek[\'urun_id\'] ?>\"><?php echo $urunlercek[\'urun_baslik\'] ?></a></h4>\r\n                                                    <div class=\"price-box\">\r\n                                                        <span class=\"new-price\"><?php echo $urunlercek[\'urun_fiyat\'] ?>₺</span>\r\n                                                    </div>\r\n                                                </div>\r\n                                                <div class=\"add-actions\">\r\n                                                    <ul class=\"add-actions-link\">\r\n                                                        <li class=\"add-cart active\"><a href=\"urun-detay-<?=seolink($urunlercek[\'urun_baslik\']).\'-\'.$urunlercek[\'urun_id\'] ?>\">Detaya GİT</a></li>\r\n\r\n                                                    </ul>\r\n                                                </div>\r\n                                            </div>\r\n                                        </div>\r\n                                        <!-- single-product-wrap end -->\r\n                                    </div>\r\n                                <?php } ?>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\"paginatoin-area\">\r\n                        <div class=\"row\">\r\n                            <div class=\"col-lg-6 col-md-6\">\r\n                                <p>1-12 adet ürün gösteriliyor</p>\r\n                            </div>\r\n                            <div class=\"col-lg-6 col-md-6\">\r\n                                <ul class=\"pagination-box\">\r\n                                    <li><a href=\"#\" class=\"Previous\"><i class=\"fa fa-chevron-left\"></i> Geri</a>\r\n                                    </li>\r\n                                    <li class=\"active\"><a href=\"#\">1</a></li>\r\n                                    <li><a href=\"#\">2</a></li>\r\n                                    <li><a href=\"#\">3</a></li>\r\n                                    <li>\r\n                                      <a href=\"#\" class=\"Next\"> İleri <i class=\"fa fa-chevron-right\"></i></a>\r\n                                  </li>\r\n                              </ul>\r\n                          </div>\r\n                      </div>\r\n                  </div>\r\n              </div>\r\n          </div>\r\n          <!-- shop-products-wrapper end -->\r\n      </div>\r\n  </div>\r\n</div>\r\n</div>\r\n<?php require_once \'footer.php\'; ?>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `siparis_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `urun_adet` int(11) NOT NULL,
  `urun_fiyat` int(250) NOT NULL,
  `toplam_fiyat` varchar(250) NOT NULL,
  `odeme_turu` varchar(250) NOT NULL,
  `siparis_onay` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparisler`
--

INSERT INTO `siparisler` (`siparis_id`, `kullanici_id`, `urun_id`, `siparis_zaman`, `urun_adet`, `urun_fiyat`, `toplam_fiyat`, `odeme_turu`, `siparis_onay`) VALUES
(13, 12, 6, '2020-07-03 05:31:29', 1, 10000, '23600', '1', 0),
(14, 13, 6, '2020-07-03 05:33:10', 1, 10000, '23836', '1', 0),
(15, 13, 10, '2020-07-03 05:33:10', 5, 20, '23836', '1', 1),
(17, 13, 10, '2020-07-03 05:40:02', 5, 20, '23836', '0', 1),
(18, 13, 8, '2020-07-03 06:55:31', 2, 5, '23.6', '1', 0),
(19, 0, 11, '2023-09-08 07:55:00', 5, 31, '364.148', '1', 1),
(20, 0, 11, '2023-09-08 07:56:23', 5, 31, '364.148', '1', 0),
(21, 0, 10, '2023-09-08 09:48:53', 4, 20, '188.8', '1', 0),
(22, 0, 10, '2023-09-08 10:17:13', 4, 20, '118188.8', '1', 1),
(23, 0, 6, '2023-09-08 10:17:13', 5, 10000, '118188.8', '1', 1),
(24, 0, 10, '2023-09-08 11:38:45', 4, 20, '118214.26204', '0', 1),
(25, 0, 6, '2023-09-08 11:38:45', 5, 10000, '118214.26204', '0', 1),
(26, 0, 14, '2023-09-08 11:38:45', 1, 11, '118214.26204', '0', 1),
(27, 0, 10, '2023-09-08 12:48:36', 4, 20, '285.06204', '0', 0),
(28, 0, 14, '2023-09-08 12:48:36', 1, 11, '285.06204', '0', 0),
(29, 0, 12, '2023-09-08 12:48:36', 6, 5, '285.06204', '0', 0),
(30, 0, 12, '2023-09-11 06:25:01', 6, 5, '70.8', '0', 1),
(31, 0, 12, '2023-09-11 06:26:27', 6, 5, '', '0', 0),
(32, 0, 12, '2023-09-14 06:29:07', 6, 5, '70.8', '0', 0),
(33, 0, 12, '2023-09-14 07:49:00', 6, 5, '760.31412', '1', 0),
(34, 0, 14, '2023-09-14 07:49:00', 3, 11, '760.31412', '1', 0),
(35, 0, 5, '2023-09-14 07:49:00', 2, 130, '760.31412', '1', 0),
(36, 0, 227, '2023-09-14 10:27:58', 3, 24500, '198666.924', '1', 0),
(37, 0, 1, '2023-09-14 10:27:58', 3, 3500, '198666.924', '1', 0),
(38, 0, 246, '2023-09-14 10:27:58', 1, 181, '198666.924', '1', 0),
(39, 0, 227, '2023-09-14 10:56:42', 3, 24500, '', '1', 0),
(40, 0, 1, '2023-09-14 10:56:42', 3, 3500, '', '1', 0),
(41, 0, 246, '2023-09-14 10:56:42', 1, 181, '', '1', 0),
(42, 0, 227, '2023-09-14 12:09:43', 3, 24500, '251766.924', '1', 0),
(43, 0, 1, '2023-09-14 12:09:43', 3, 3500, '251766.924', '1', 0),
(44, 0, 246, '2023-09-14 12:09:43', 1, 181, '251766.924', '1', 0),
(45, 0, 3, '2023-09-14 12:09:43', 3, 7500, '251766.924', '1', 0),
(46, 0, 227, '2023-09-14 12:11:26', 3, 24500, '', '1', 0),
(47, 0, 1, '2023-09-14 12:11:26', 3, 3500, '', '1', 0),
(48, 0, 246, '2023-09-14 12:11:26', 1, 181, '', '1', 0),
(49, 0, 3, '2023-09-14 12:11:26', 3, 7500, '', '1', 0),
(50, 0, 227, '2023-09-15 06:09:09', 3, 24500, '216718.8', '1', 0),
(51, 0, 1, '2023-09-15 06:09:09', 3, 3500, '216718.8', '1', 0),
(52, 0, 242, '2023-09-15 06:09:09', 1, 330, '216718.8', '1', 0),
(53, 0, 3, '2023-09-15 06:09:09', 1, 7500, '216718.8', '1', 0),
(54, 0, 227, '2023-09-15 06:54:07', 3, 24500, '199018.8', '0', 0),
(55, 0, 1, '2023-09-15 06:54:07', 3, 3500, '199018.8', '0', 0),
(56, 0, 242, '2023-09-15 06:54:07', 1, 330, '199018.8', '0', 0),
(57, 11, 1, '2023-09-15 06:55:12', 3, 3500, '25558.8', '1', 0),
(58, 11, 242, '2023-09-15 06:55:12', 1, 330, '25558.8', '1', 0),
(59, 0, 1, '2023-09-15 08:05:46', 3, 3500, '126802.564', '1', 0),
(60, 0, 234, '2023-09-15 08:05:46', 1, 43230, '126802.564', '1', 0),
(61, 0, 1, '2023-09-15 08:23:43', 3, 3500, '161022.564', '0', 0),
(62, 0, 234, '2023-09-15 08:23:43', 1, 43230, '161022.564', '0', 0),
(63, 0, 228, '2023-09-15 08:23:43', 1, 14500, '161022.564', '0', 0),
(64, 0, 3, '2023-09-15 08:53:39', 1, 7500, '17700', '1', 0),
(65, 0, 1, '2023-09-15 08:55:29', 3, 3500, '161022.564', '1', 0),
(66, 0, 234, '2023-09-15 08:55:29', 1, 43230, '161022.564', '1', 0),
(67, 0, 228, '2023-09-15 08:55:29', 1, 14500, '161022.564', '1', 0),
(68, 0, 1, '2023-09-15 08:57:12', 3, 3500, '161022.564', '1', 0),
(69, 0, 234, '2023-09-15 08:57:12', 1, 43230, '161022.564', '1', 0),
(70, 0, 228, '2023-09-15 08:57:12', 1, 14500, '161022.564', '1', 0),
(71, 0, 1, '2023-09-15 08:57:32', 1, 3500, '8260', '0', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_baslik` varchar(300) NOT NULL,
  `slider_aciklama` varchar(250) NOT NULL,
  `slider_link` varchar(250) NOT NULL,
  `slider_button` varchar(200) NOT NULL,
  `slider_resim` varchar(250) NOT NULL,
  `slider_sira` int(11) NOT NULL,
  `slider_durum` int(11) NOT NULL,
  `slider_banner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_baslik`, `slider_aciklama`, `slider_link`, `slider_button`, `slider_resim`, `slider_sira`, `slider_durum`, `slider_banner`) VALUES
(10, 'Güneş Gözlüğü', 'Güneştemi gölgedemi olduğunu bilemeyeceksin!', 'http://localhost/eTicaretSitesi/urun-detay-gunes-gozlugu-251', 'Gözat', '277675385728048492256630649427122649gözlük.jpg', 3, 1, 1),
(12, 'Drone', '1000 metreye kadar yükselen teknoloji harikası bu ürünü kaçırma!', 'http://localhost/eTicaretSitesi/urun-detay-drone-3', 'Gözat', '58755043633047993.jpg', 3, 1, 1),
(21, 'TV', 'En iyi performansla film izle!', 'http://localhost/eTicaretSitesi/urun-detay-televizyon-2', '', '8446203926015081793134459-2-min_large.webp', 0, 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_resim` varchar(300) NOT NULL,
  `urun_baslik` varchar(250) NOT NULL,
  `urun_aciklama` text NOT NULL,
  `urun_sira` int(11) NOT NULL,
  `urun_model` varchar(250) NOT NULL,
  `urun_renk` varchar(250) NOT NULL,
  `urun_adet` int(11) NOT NULL,
  `urun_fiyat` double NOT NULL,
  `onecikan` varchar(250) NOT NULL,
  `urun_durum` varchar(250) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `urun_etiket` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`urun_id`, `kategori_id`, `urun_resim`, `urun_baslik`, `urun_aciklama`, `urun_sira`, `urun_model`, `urun_renk`, `urun_adet`, `urun_fiyat`, `onecikan`, `urun_durum`, `urun_zaman`, `urun_etiket`) VALUES
(1, 1, '2761455669956935614705217187237829alfa-450c-2_xr4n9c_500.jpg', 'A Markası Laptop', '<h1>Acer Aspire 3 7.Nesil Ryzen 5 7520U-8Gb-256Gb Ssd-15.6inc-W11</h1>\r\n', 1, '2022', 'Gri', 32, 3500, '1', '1', '2023-09-14 08:11:38', 'Bilgisayar'),
(2, 2, '633870257156499123134459-2-min_large.webp', 'B Markası Televizyon', '<h1>PHILIPS 58PUS8507 58inc 146 cm 4K UHD Android TV,3 Taraflı Ambilight,Uydu Alıcı</h1>\r\n', 2, '2022', 'Gri', 32, 34500, '1', '1', '2023-09-14 08:18:43', 'Televizyon'),
(3, 3, '87787786017197140778213376722032562673.jpg', 'Drone A', '<h1>DJI Avata Pro View Combo (DJI RC Motion 2)</h1>\r\n', 3, '2022', 'Gri', 32, 7500, '1', '1', '2023-09-14 08:20:26', 'Drone'),
(4, 4, '30362992438136935741873171380412508630blackview-bv1000-ip68-sertifikali-telefon-1.jpg', 'Telefon A', '<h1>iPhone 11 128 Gb Akıllı Telefon Siyah</h1>\r\n', 4, '2022', 'Karışık', 32, 34500, '1', '1', '2023-09-14 08:33:23', 'Telefon'),
(5, 5, '331616317615659051748566329784572537123842990_.jpg', 'Tablet A', '<h1>iPod 2&nbsp;128 Gb Akıllı Telefon Mavi</h1>\r\n', 5, '2022', 'Karışık', 32, 4500, '1', '1', '2023-09-14 08:33:30', 'Diğer Teknolojik Aletler'),
(6, 6, '7713453629585951241235556472333410download.jpg', 'Yazlık Kadın Elbisesi 1', '<p>&Ccedil;ok harika ve şık elbise.</p>\r\n', 11, '2022', 'Karışık', 32, 34500, '1', '1', '2023-09-14 08:36:56', 'Kadın Giyim'),
(7, 7, '951229241328049423indir.jpg', 'Kışlık Kadın Mont', '<p>&Ccedil;ok sıcak bir mont..</p>\r\n', 7, '2022', 'Siyah', 32, 330, '1', '1', '2023-09-14 08:41:17', 'giyim'),
(8, 8, '825007771447938096indir (23).jpg', 'Kışlık Erkek Mont', '<p>SIcacık bir mont..</p>\r\n', 8, '2022', 'Turuncu', 32, 4500, '1', '1', '2023-09-14 08:49:18', 'giyim'),
(9, 9, '171880804931359044indir (1).jpg', 'Yazlık Erkek Elbise', '<p>Harika bir tasarım.</p>\r\n', 9, '2022', 'Siyah', 32, 129.9, '1', '1', '2023-09-14 08:49:21', 'giyim'),
(10, 10, '92089724107119885069346076196918541113download.jpg', 'A Ayakkabı', '<p>&Ccedil;ok rahat ve &ccedil;ok şık..</p>\r\n', 10, '2022', 'Siyah', 32, 129.9, '1', '1', '2023-09-14 08:49:24', 'ayakkabı'),
(11, 11, '1865936430519273479indir (2).jpg', 'Takı A', '<p>&Ccedil;ok şı ve g&uuml;zel bir takı..</p>\r\n', 11, '2022', 'Siyah', 32, 4500, '1', '1', '2023-09-14 08:49:30', 'Takı'),
(12, 12, '4974285456612801440indir (5).jpg', 'Gözlük A', '<p>Harika bir g&ouml;zl&uuml;k..</p>\r\n', 12, '2022', 'Siyah', 32, 330, '1', '1', '2023-09-14 08:50:24', 'Takı'),
(100, 1, '76582891440222413196655385599784758TeoriV2-105608_large.jpg', 'B Markası Laptop', '<h1>Acer Aspire 3 11.Nesil Core i5 1135G7-8Gb-256Gb Ssd-15.6inc-Mx350 2Gb-Freedos</h1>\r\n', 1, '2022', 'Siyah', 32, 4500, '1', '1', '2023-09-14 08:13:47', 'Bilgisayar'),
(226, 1, '74754627985845479224823148084088160,.jpg', 'C Markası Masaüstü Bilgisayar', '<h1>Lenovo Ideapad 3 12.Nesil Core i5 1235U-8Gb-512Gb Ssd-15.6inc-W11</h1>\r\n', 1, '2022', 'Siyah', 32, 14500, '1', '1', '2023-09-14 08:10:19', 'Bilgisayar'),
(227, 1, '463159994561464030770630312908093115v2-92811-6_large.jpg', 'D Markası Masaüstü Bilgisayar', '<h1>Asus Vivobook 15 12.Nesil Core i5 1235U-8Gb-512Gb Ssd-15.6inc-W11</h1>\r\n', 1, '2022', 'Gri', 32, 24500, '1', '1', '2023-09-14 08:11:06', 'Bilgisayar'),
(228, 2, '729656594314844749148987585069516963U9400-ust.jpg', 'A Marka TV', '<h1>PHILIPS 146 cm 4K UHD Android TV,3 Taraflı Ambilight,Uydu Alıcı</h1>\r\n', 2, '2022', 'Siyah', 32, 14500, '1', '1', '2023-09-14 08:19:46', 'Televizyon'),
(231, 3, '7194083678612278848138501-1_large.webp', 'Drone B', '<h1>DJI Mavic 3 Pro Fly More Combo(DJI RC)</h1>\r\n', 3, '2022', 'Gri', 32, 14500, '1', '1', '2023-09-14 08:21:20', 'Drone'),
(233, 4, '7246229905711682791125916382799817106resim_2021-05-05_072731.png', 'Telefon B', '<h1>iPhone 13 128 Gb Akıllı Telefon Mavi</h1>\r\n', 4, '2022', 'Siyah', 32, 33500, '1', '1', '2023-09-14 08:23:07', 'Telefon'),
(234, 4, '715092705841977999731537442391938356178954745_.jpg', 'Telefon C', '<h1>iPhone 14 128 Gb Akıllı Telefon Mavi</h1>\r\n', 4, '2022', 'Karışık', 32, 43229.9, '1', '1', '2023-09-14 08:24:03', 'Telefon'),
(236, 5, '24293166947106446908060922719531895611200x627-televizyonu-kim-icat-etti-televizyon-ne-zaman-icat-edildi-kim-buldu-tk1-1604309881463.jpg', 'Radyo', '<p>&Ccedil;ok m&uuml;thiş bir radyo..</p>\r\n', 5, '2022', 'Turuncu', 32, 34500, '1', '1', '2023-09-14 08:32:35', 'Diğer Teknolojik Aletler'),
(238, 6, '97371423566706631259658228475160787download.jpg', 'Yazlık Kadın Elbisesi - 2', '<p>&Ccedil;ok g&uuml;zel elbise.</p>\r\n', 11, '2003', 'Siyah', 32, 330, '1', '1', '2023-09-14 08:35:20', 'giyim'),
(239, 7, '484661107462758045images.jpg', 'Kışlık Kadın Elbise', '<p>Harika desenli bir elbise.</p>\r\n', 7, '2003', 'Siyah', 32, 180.9, '1', '1', '2023-09-14 08:39:22', 'giyim'),
(241, 7, '5162065188814709276125286181086184487çorap.jpg', 'Çorap', '<p>Sıcacık bir &ccedil;orap</p>\r\n', 7, '2022', 'Siyah', 32, 30, '1', '1', '2023-09-14 08:40:30', 'giyim'),
(242, 7, '6400134947213580019416192871549161036atkı.jpg', 'Atkı', '<p>Harika bir atkı..</p>\r\n', 7, '2022', 'Gri', 32, 330, '1', '1', '2023-09-14 08:41:03', 'giyim'),
(246, 10, '45071591314863911852080339389078588ayakkabı.jpg', 'B Ayakkabı', '<p>&Ccedil;ok g&uuml;zel bir ayakkabı..</p>\r\n', 10, '2022', 'Siyah', 32, 180.9, '1', '1', '2023-09-14 08:45:37', 'ayakkabı'),
(248, 11, '5741729137772222indir (3).jpg', 'Takı B', '<p>Harika ve g&uuml;zel renk uyumu..</p>\r\n', 11, '2022', 'Karışık', 32, 14500, '1', '1', '2023-09-14 08:47:14', 'Takı'),
(250, 12, '852155405342166847indir (4).jpg', 'Güneş Gözlüğü', '<p>&Ccedil;ok g&uuml;zel bir g&ouml;zl&uuml;k..</p>\r\n', 12, '2022', 'Siyah', 32, 330, '1', '1', '2023-09-14 08:48:58', 'Takı'),
(251, 12, '593563347308635476256630649427122649gözlük.jpg', 'Güneş Gözlüğü', '<p>G&uuml;neşdemi g&ouml;lgedemi olduğunu bilemeyeceksin!</p>\r\n', 12, '2022', 'Siyah', 1, 2500, '1', '1', '2023-09-14 10:52:24', 'giyim');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `yorum_detay` text NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `urun_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `yorum_onay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `yorum_detay`, `yorum_zaman`, `urun_id`, `kullanici_id`, `yorum_onay`) VALUES
(8, 'Güzel tişört çok begendım', '2023-09-08 12:26:56', 11, 0, 1),
(9, 'Bence harika bir tişört.', '2023-09-08 12:42:23', 11, 0, 1),
(11, 'Harika bir laptop kesinlikle..', '2023-09-15 08:08:26', 1, 0, 1),
(12, 'Ben beğenmedim, yavaş.', '2023-09-15 08:08:51', 1, 0, 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `abone`
--
ALTER TABLE `abone`
  ADD PRIMARY KEY (`abone_id`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cokluresim`
--
ALTER TABLE `cokluresim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `abone`
--
ALTER TABLE `abone`
  MODIFY `abone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `cokluresim`
--
ALTER TABLE `cokluresim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `siparisler`
--
ALTER TABLE `siparisler`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
