<?php
try{
    $VeriTabaniBaglantisi = new PDO("mysql:host=localhost;dbname=eticaret;charset = UTF8", "root", "");
}catch (PDOException $Hata){
    echo "Bağlantı Hatası <br / >" . $Hata->getMessage();
    die();
}
    $AyarlarSorgusu = $VeriTabaniBaglantisi -> prepare("SELECT * FROM ayarlar LIMIT 1");
    $AyarlarSorgusu -> execute();
    $AyarSayisi = $AyarlarSorgusu -> rowCount();
    $Ayarlar       = $AyarlarSorgusu -> fetch(PDO::FETCH_ASSOC);
    if($AyarSayisi > 0){

        $SiteAdi            = $Ayarlar["SiteAdi"];
        $SiteTitle          = $Ayarlar["SiteTitle"];
        $SiteDescription    = $Ayarlar["SiteDescription"];
        $SiteKeywords       = $Ayarlar["SiteKeywords"];
        $SiteCopyrightMeni  = $Ayarlar["SiteCopyrightMeni"];
        $SiteLogosu         = $Ayarlar["SiteLogosu"];
        $SiteEmailAdresi    = $Ayarlar["SiteEmailAdresi"];
        $SiteEmailSifresi   = $Ayarlar["SiteEmailSifresi"];
}
    else{
        echo "Site Ayar Sorgusu Hatalı";
    die();
    }


$MetinlerSorgusu = $VeriTabaniBaglantisi -> prepare("SELECT * FROM sozlesmelervemetinler LIMIT 1");
$MetinlerSorgusu -> execute();
$MetinlerSayisi = $MetinlerSorgusu -> rowCount();
$Metinler       = $MetinlerSorgusu -> fetch(PDO::FETCH_ASSOC);
if($MetinlerSayisi > 0){

    $HakkimizdaMetni	            = $Metinler["HakkimizdaMetni"];
    $UyelikSozlesmesiMetni          = $Metinler["UyelikSozlesmesiMetni"];
    $KullanimKosullariMetni         = $Metinler["KullanimKosullariMetni"];
    $GizlilikSozlesmesiMetni        = $Metinler["GizlilikSozlesmesiMetni"];
    $MesafeliSatisSözlesmesiMetni   = $Metinler["MesafeliSatisSözlesmesiMetni"];
    $TeslimatMetni                  = $Metinler["TeslimatMetni"];
    $IptalIadeDegisimMetni          = $Metinler["IptalIadeDegisimMetni"];

}
else{
    echo "Site Ayar Sorgusu Hatalı";
    die();
}







?>