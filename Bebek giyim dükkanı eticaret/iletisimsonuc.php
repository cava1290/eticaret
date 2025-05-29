<?php
ob_start();

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'Frameworks/PHPMailer/src/Exception.php';
require 'Frameworks/PHPMailer/src/PHPMailer.php';
require 'Frameworks/PHPMailer/src/SMTP.php';


$SiteEmailHostAdresi = 'sandbox.smtp.mailtrap.io';
$SiteEmailAdresi = 'dcc4fccd60a49d';
$SiteEmailSifresi = '1b5277e7446212';
$SiteAdi = 'Turan Bebe';

if (isset($_POST['IsimSoyisim'])) {
    $GelenIsimSoyisim = Guvenlik($_POST['IsimSoyisim']);
} else {
    $GelenIsimSoyisim = "";
}

if (isset($_POST['EmailAdresi'])) {
    $GelenEmailAdresi = Guvenlik($_POST['EmailAdresi']);
} else {
    $GelenEmailAdresi = "";
}

if (isset($_POST['TelefonNumarasi'])) {
    $GelenTelefonNumarasi = Guvenlik($_POST['TelefonNumarasi']);
} else {
    $GelenTelefonNumarasi = "";
}

if (isset($_POST['Mesaj'])) {
    $GelenMesaj = Guvenlik($_POST['Mesaj']);
} else {
    $GelenMesaj = "";
}

if (($GelenIsimSoyisim != "") && ($GelenEmailAdresi != "") && ($GelenTelefonNumarasi != "") && ($GelenMesaj != "")) {
    $MailGonder = new PHPMailer(true);
    try {

        $MailGonder->SMTPDebug = 2;
        $MailGonder->isSMTP();
        $MailGonder->Host = $SiteEmailHostAdresi;
        $MailGonder->SMTPAuth = true;
        $MailGonder->CharSet = "UTF-8";
        $MailGonder->Username = $SiteEmailAdresi;
        $MailGonder->Password = $SiteEmailSifresi;
        $MailGonder->SMTPSecure = 'tls';
        $MailGonder->Port = 2525;

        $MailGonder->SMTPOptions = array(
            'ssl' => array(
                'verify_peer' => false,
                'verify_peer_name' => false,
                'allow_self_signed' => true
            )
        );


        $MailGonder->setFrom('no-reply@turanbebe.com', 'Turan Bebe');
        $MailGonder->addAddress('your-email@mailtrap.io', 'Turan Bebe');
        $MailGonder->addReplyTo($GelenEmailAdresi, $GelenIsimSoyisim);
        $MailGonder->isHTML(true);
        $MailGonder->Subject = $SiteAdi . ' İletişim Formu Mesajı';
        $MailGonder->MsgHTML("İsim Soyisim: $GelenIsimSoyisim<br />Email Adresi: $GelenEmailAdresi<br />Telefon Numarası: $GelenTelefonNumarasi<br />Mesaj: $GelenMesaj");


        $MailGonder->send();


        header("Location:index.php?SK=18");
        exit();
    } catch (Exception $e) {

        var_dump($e); // Hata mesajını görmek için
        header("Location:index.php?SK=19");
        exit();
    }
} else {

    header("Location:index.php?SK=20");
    exit();
}

ob_end_flush();
?>
