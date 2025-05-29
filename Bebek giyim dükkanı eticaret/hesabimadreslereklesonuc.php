<?php
if (isset($_SESSION["Kullanici"])) {
global $KullaniciID;
global $VeriTabaniBaglantisi;
    $GelenIsimSoyisim     = isset($_POST['IsimSoyisim']) ? Guvenlik($_POST['IsimSoyisim']) : "";
    $GelenAdres     = isset($_POST['Adres']) ? Guvenlik($_POST['Adres']) : "";
    $GelenIlce          = isset($_POST['Ilce']) ? Guvenlik($_POST['Ilce']) : "";
    $GelenSehir     = isset($_POST['Sehir']) ? Guvenlik($_POST['Sehir']) : "";
    $GelenTelefonNumarasi = isset($_POST['TelefonNumarasi']) ? Guvenlik($_POST['TelefonNumarasi']) : "";
    // Gelen verileri temizle

if(($GelenIsimSoyisim != "") and ($GelenAdres!="") and ($GelenIlce!="") and ($GelenSehir!="") and ($GelenTelefonNumarasi!="")){
    $AdresEklemeSorgusu = $VeriTabaniBaglantisi->prepare("INSERT INTO adresler (UyeId, AdiSoyadi, Adres,Ilce,Sehir,TelefonNumarasi) values (?,?,?,?,?,?)");
             $AdresEklemeSorgusu->execute([$KullaniciID,$GelenIsimSoyisim,$GelenAdres,$GelenIlce,$GelenSehir,$GelenTelefonNumarasi]);
             $EklemeKontrol = $AdresEklemeSorgusu->rowCount();

if($EklemeKontrol>0){
    header("Location:index.php?SK=69");
    exit();
}else{
    header("Location:index.php?SK=70");
    exit();
}



    } else {
        header("Location:index.php?SK=71"); // Eksik veri gönderildi
        exit();
    }
} else {
    header("Location:index.php");
    exit();
}
?>
