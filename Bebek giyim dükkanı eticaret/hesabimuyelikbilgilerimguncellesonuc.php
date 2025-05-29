<?php
if (isset($_SESSION["Kullanici"])) {
    global $EmailAdresi;
    global $Guvenlik;
    global $VeriTabaniBaglantisi;
    global $ZamanDamgasi;
    global $IPAdresi;
    global $SiteEmailHostAdresi;
    global $SiteEmailAdresi;
    global $SiteEmailSifresi;
    global $SiteAdi;
    global $GelenMesaj;
    global $SiteLinki;

    // Gelen verileri temizle
    $GelenEmailAdresi     = isset($_POST['EmailAdresi']) ? Guvenlik($_POST['EmailAdresi']) : "";
    $GelenSifre           = isset($_POST['Sıfre']) ? Guvenlik($_POST['Sıfre']) : "";
    $GelenSifreTekrar     = isset($_POST['SıfreTekrar']) ? Guvenlik($_POST['SıfreTekrar']) : "";
    $GelenIsimSoyisim     = isset($_POST['IsimSoyisim']) ? Guvenlik($_POST['IsimSoyisim']) : "";
    $GelenTelefonNumarasi = isset($_POST['TelefonNumarasi']) ? Guvenlik($_POST['TelefonNumarasi']) : "";

    // Tüm alanlar dolu mu?
    if ($GelenEmailAdresi && $GelenSifre && $GelenSifreTekrar && $GelenIsimSoyisim && $GelenTelefonNumarasi) {

        // Şifreler uyuşuyor mu?
        if ($GelenSifre !== $GelenSifreTekrar) {
            header("Location:index.php?SK=10000"); // Şifreler eşleşmiyor
            exit();
        }

        // Şifre değiştirilsin mi?
        $SifreDegistirmeDurumu = ($GelenSifre === "EskiSifre") ? 0 : 1;
        $MD5liSifre = md5($GelenSifre);

        // Email adresi başka biri tarafından kullanılıyor mu?
        if ($EmailAdresi != $GelenEmailAdresi) {
            $KontrolSorgusu = $VeriTabaniBaglantisi->prepare("SELECT * FROM uyeler WHERE EmailAdresi = ?");
            $KontrolSorgusu->execute([$GelenEmailAdresi]);
            if ($KontrolSorgusu->rowCount() > 0) {
                header("Location:index.php?SK=10001"); // Email zaten kayıtlı
                exit();
            }
        }

        // Güncelleme sorgusu
        if ($SifreDegistirmeDurumu == 1) {
            $KullaniciGuncellemeSorgusu = $VeriTabaniBaglantisi->prepare("UPDATE uyeler SET EmailAdresi = ?, Sifre = ?, IsimSoyisim = ?, TelefonNumarasi = ? WHERE EmailAdresi = ?");
            $KullaniciGuncellemeSorgusu->execute([$GelenEmailAdresi, $MD5liSifre, $GelenIsimSoyisim, $GelenTelefonNumarasi, $EmailAdresi]);
        } else {
            $KullaniciGuncellemeSorgusu = $VeriTabaniBaglantisi->prepare("UPDATE uyeler SET EmailAdresi = ?, IsimSoyisim = ?, TelefonNumarasi = ? WHERE EmailAdresi = ?");
            $KullaniciGuncellemeSorgusu->execute([$GelenEmailAdresi, $GelenIsimSoyisim, $GelenTelefonNumarasi, $EmailAdresi]);
        }

        $KayitKontrol = $KullaniciGuncellemeSorgusu->rowCount();

        if ($KayitKontrol > 0) {
            $_SESSION["Kullanici"] = $GelenEmailAdresi; // Email değişmişse güncelle
            header("Location:index.php?SK=54"); // Güncelleme başarılı
            exit();
        } else {
            header("Location:index.php?SK=10003"); // Değişiklik yapılmadı
            exit();
        }

    } else {
        header("Location:index.php?SK=53"); // Eksik veri gönderildi
        exit();
    }
} else {
    header("Location:index.php");
    exit();
}
?>
