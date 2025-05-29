<?php
try {
    $VeriTabaniBaglantisi = new PDO("mysql:host=localhost;dbname=eticaret;charset=UTF8", "root", "");
} catch (PDOException $Hata) {
    echo "Veritabanı bağlantı hatası: " . $Hata->getMessage();
    die();
}

// Site Ayarları
$AyarlarSorgusu = $VeriTabaniBaglantisi->prepare("SELECT * FROM ayarlar LIMIT 1");
$AyarlarSorgusu->execute();
$AyarSayisi = $AyarlarSorgusu->rowCount();
$Ayarlar = $AyarlarSorgusu->fetch(PDO::FETCH_ASSOC);
if ($AyarSayisi > 0) {
    $SiteAdi              = $Ayarlar["SiteAdi"];
    $SiteTitle            = $Ayarlar["SiteTitle"];
    $SiteDescription      = $Ayarlar["SiteDescription"];
    $SiteKeywords         = $Ayarlar["SiteKeywords"];
    $SiteCopyrightMeni    = $Ayarlar["SiteCopyrightMeni"];
    $SiteLogosu           = $Ayarlar["SiteLogosu"];
    $SiteEmailAdresi      = $Ayarlar["SiteEmailAdresi"];
    $SiteEmailSifresi     = $Ayarlar["SiteEmailSifresi"];
    $SiteEmailHostAdresi  = $Ayarlar["SiteEmailHostAdresi"];
    $SiteLinki            = $Ayarlar["SiteLinki"];
} else {
    echo "Site ayarları sorgusunda veri bulunamadı.";
    die();
}

// Metinler
$MetinlerSorgusu = $VeriTabaniBaglantisi->prepare("SELECT * FROM sozlesmelervemetinler LIMIT 1");
$MetinlerSorgusu->execute();
$MetinlerSayisi = $MetinlerSorgusu->rowCount();
$Metinler = $MetinlerSorgusu->fetch(PDO::FETCH_ASSOC);
if ($MetinlerSayisi > 0) {
    $HakkimizdaMetni              = $Metinler["HakkimizdaMetni"];
    $UyelikSozlesmesiMetni        = $Metinler["UyelikSozlesmesiMetni"];
    $KullanimKosullariMetni       = $Metinler["KullanimKosullariMetni"];
    $GizlilikSozlesmesiMetni      = $Metinler["GizlilikSozlesmesiMetni"];
    $MesafeliSatisSözlesmesiMetni = $Metinler["MesafeliSatisSözlesmesiMetni"];
    $TeslimatMetni                = $Metinler["TeslimatMetni"];
    $IptalIadeDegisimMetni        = $Metinler["IptalIadeDegisimMetni"];
} else {
    echo "Metinler sorgusunda veri bulunamadı.";
    die();
}

// Kullanıcı Bilgileri (oturum açıksa)
if (isset($_SESSION["Kullanici"])) {
    $KullaniciSorgusu = $VeriTabaniBaglantisi->prepare("SELECT * FROM uyeler WHERE EmailAdresi = ? LIMIT 1");
    $KullaniciSorgusu->execute([$_SESSION["Kullanici"]]);
    $KullaniciSayisi = $KullaniciSorgusu->rowCount();
    $Kullanici = $KullaniciSorgusu->fetch(PDO::FETCH_ASSOC);
    if ($KullaniciSayisi > 0) {
        $KullaniciID           = $Kullanici["id"];
        $EmailAdresi  = $Kullanici["EmailAdresi"]; // DEĞİŞTİRİLDİ
        $Sifre                 = $Kullanici["Sifre"];
        $IsimSoyisim           = $Kullanici["IsimSoyisim"];
        $TelefonNumarasi       = $Kullanici["TelefonNumarasi"];
        $Cinsiyet              = $Kullanici["Cinsiyet"];
        $Durumu                = $Kullanici["Durumu"];
        $KayitTarihi           = $Kullanici["KayitTarihi"];
        $KayitIpAdresi         = $Kullanici["KayitIpAdresi"];
    } else {
        echo "Kullanıcı bilgisi bulunamadı.";
        die();
    }
}
?>
