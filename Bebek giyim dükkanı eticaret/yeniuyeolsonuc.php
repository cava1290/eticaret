<?php
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

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'Frameworks/PHPMailer/src/Exception.php';
require 'Frameworks/PHPMailer/src/PHPMailer.php';
require 'Frameworks/PHPMailer/src/SMTP.php';

$GelenEmailAdresi     = isset($_POST['EmailAdresi']) ? Guvenlik($_POST['EmailAdresi']) : "";
$GelenSifre           = isset($_POST['Sıfre']) ? Guvenlik($_POST['Sıfre']) : "";
$GelenSıfreTekrar     = isset($_POST['SıfreTekrar']) ? Guvenlik($_POST['SıfreTekrar']) : "";
$GelenIsimSoyisim     = isset($_POST['IsimSoyisim']) ? Guvenlik($_POST['IsimSoyisim']) : "";
$GelenTelefonNumarasi = isset($_POST['TelefonNumarasi']) ? Guvenlik($_POST['TelefonNumarasi']) : "";
$GelenCinsiyet        = isset($_POST['Cinsiyet']) ? Guvenlik($_POST['Cinsiyet']) : "";
$GelenSozlesmeOnay    = isset($_POST['SozlesmeOnay']) ? Guvenlik($_POST['SozlesmeOnay']) : "";

$AktivasyonKodu       = AktivasyonKoduuret();
$MD5liSifre           = md5($GelenSifre);

if ($GelenEmailAdresi && $GelenSifre && $GelenSıfreTekrar && $GelenIsimSoyisim && $GelenTelefonNumarasi && $GelenCinsiyet && $GelenSozlesmeOnay) {
    if ($GelenSozlesmeOnay == 0) {
        header("Location:index.php?SK=29");
        exit();
    }

    if ($GelenSifre != $GelenSıfreTekrar) {
        header("Location:index.php?SK=28");
        exit();
    }

    $KontrolSorgusu = $VeriTabaniBaglantisi->prepare("SELECT * FROM uyeler WHERE EmailAdresi = ?");
    $KontrolSorgusu->execute([$GelenEmailAdresi]);

    if ($KontrolSorgusu->rowCount() > 0) {
        header("Location:index.php?SK=27");
        exit();
    }

    $UyeEklemeSorgusu = $VeriTabaniBaglantisi->prepare("INSERT INTO uyeler (EmailAdresi, Sifre, IsimSoyisim, TelefonNumarasi, Cinsiyet, Durumu, KayitTarihi, KayitIpAdresi, AktivasyonKodu) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $UyeEklemeSorgusu->execute([
        $GelenEmailAdresi,
        $MD5liSifre,
        $GelenIsimSoyisim,
        $GelenTelefonNumarasi,
        $GelenCinsiyet,
        0,
        $ZamanDamgasi,
        $IPAdresi,
        $AktivasyonKodu
    ]);

    if ($UyeEklemeSorgusu->rowCount() > 0) {
        $MailIcerigiHazirla  = "Merhaba Sayın " . $GelenIsimSoyisim . "<br />";
        $MailIcerigiHazirla .= "Sitemize yapmış olduğunuz kaydı tamamlamak için lütfen 
            <a href='" . $SiteLinki . "/aktivasyon.php?AktivasyonKodu=" . $AktivasyonKodu . "&Email=" . $GelenEmailAdresi . "'>BURAYA TIKLAYINIZ</a>.<br /><br />";
        $MailIcerigiHazirla .= "Saygılarımızla, iyi çalışmalar.<br />";

        $MailGonder = new PHPMailer(true);

        try {
            $MailGonder->SMTPDebug = 0; // 2 yerine 0 yap, canlıda hata mesajı gösterme
            $MailGonder->isSMTP();
            $MailGonder->Host = $SiteEmailHostAdresi; // Mailtrap host: 'sandbox.smtp.mailtrap.io'
            $MailGonder->SMTPAuth = true;
            $MailGonder->Username = $SiteEmailAdresi; // Mailtrap kullanıcı adın
            $MailGonder->Password = $SiteEmailSifresi; // Mailtrap şifren
            $MailGonder->SMTPSecure = 'tls';
            $MailGonder->Port = 2525;
            $MailGonder->CharSet = "UTF-8";

            $MailGonder->SMTPOptions = [
                'ssl' => [
                    'verify_peer' => false,
                    'verify_peer_name' => false,
                    'allow_self_signed' => true
                ]
            ];

            $MailGonder->setFrom('no-reply@turanbebe.com', 'Turan Bebe');
            $MailGonder->addAddress($GelenEmailAdresi, $GelenIsimSoyisim); // HATA BURADAYDI: değişken tırnak içinde olmamalı
            $MailGonder->addReplyTo($GelenEmailAdresi, $GelenIsimSoyisim);
            $MailGonder->isHTML(true);
            $MailGonder->Subject = $SiteAdi . ' Yeni Üyelik Aktivasyon Kodu';
            $MailGonder->MsgHTML($MailIcerigiHazirla);

            $MailGonder->send();
            header("Location:index.php?SK=24");
            exit();
        } catch (Exception $e) {
            echo "Mail gönderilemedi. Hata: {$MailGonder->ErrorInfo}";
            header("Location:index.php?SK=25");
            exit();
        }
    } else {
        header("Location:index.php?SK=25");
        exit();
    }
} else {
    header("Location:index.php?SK=26");
    exit();
}
?>
