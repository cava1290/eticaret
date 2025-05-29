<?php
ob_start();
session_start(); // Oturum başlatıldı
require_once("Ayarlar/fonksiyonlar.php");
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

$MD5liSifre           = md5($GelenSifre);

if ($GelenEmailAdresi && $GelenSifre ) {
    $KontrolSorgusu = $VeriTabaniBaglantisi->prepare("SELECT * FROM uyeler WHERE EmailAdresi = ? AND Sifre = ?");
    $KontrolSorgusu->execute([$GelenEmailAdresi, $MD5liSifre]);
    $KullaniciSayisi = $KontrolSorgusu->rowCount();
    $KullaniciKaydi =  $KontrolSorgusu->fetch(PDO::FETCH_ASSOC);
    if($KullaniciSayisi > 0){
        if($KullaniciKaydi["Durumu"]==1){
            $_SESSION["Kullanici"] = $GelenEmailAdresi;
            if($_SESSION["Kullanici"]==$GelenEmailAdresi){
                header("Location:index.php?SK=50");
                exit();
            }else{
                header("Location:index.php?SK=33");
                exit();
            }
        }else{
            header("Location:index.php?SK=36");
            exit();
        }
    }else{
        header("Location:index.php?SK=34");
        exit();
    }
} else {
    header("Location:index.php?SK=35");
    exit();
}
ob_end_flush();
?>