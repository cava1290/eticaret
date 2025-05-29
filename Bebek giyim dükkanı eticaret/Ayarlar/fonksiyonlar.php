<?php

$IPAdresi = $_SERVER["REMOTE_ADDR"];
$ZamanDamgasi  = time();
$TarihSaat = date("d.m.Y H:i:s", $ZamanDamgasi);


function TarihBul($Deger)
{
    $Cevir = date("d.m.Y H:i:s", $Deger);
    $Sonuc = $Cevir;
    return $Sonuc;
}
function RakamlarHaricTumKarakterleriSil($Deger)
{
    $Islem      =   preg_replace("/[^0-9]/", "", $Deger);
    $Sonuc      =   $Islem;
    return $Sonuc;
}

function DonusumleriGeriDondur($Deger)
{
    $GeriDondur     = htmlspecialchars_decode($Deger, ENT_QUOTES);
    $Sonuc      =   $GeriDondur;
    return $Sonuc;
}
function Guvenlik($Deger)
{
    $BoslukSil        = trim($Deger);
    $TaglariTemizle   = strip_tags($BoslukSil);
    $EtkisizYap = htmlspecialchars($TaglariTemizle, ENT_QUOTES);
    $Sonuc            = $EtkisizYap;
    return $Sonuc;


}
function SayiliIcerikleriFiltrele($Deger)
{
    $BoslukSil        = trim($Deger);
    $TaglariTemizle   = strip_tags($BoslukSil);
    $EtkisizYap = htmlspecialchars($TaglariTemizle);
    $Temizle    = RakamlarHaricTumKarakterleriSil($EtkisizYap);
    $Sonuc            = $Temizle;
    return $Sonuc;


}
function AktivasyonKoduuret(){
    $IlkBesli=rand(10000,99999);
    $IkinciBesli=rand(10000,99999);
    $UcuncuBesli=rand(10000,99999);
    $DorduncuBesli=rand(10000,99999);
    $Kod=$IlkBesli ."-". $IkinciBesli ."-". $UcuncuBesli ."-". $DorduncuBesli;
    $Sonuc = $Kod;
    return $Sonuc;
}

function FiyatiBicimlendir($Deger)
{
$Bicimlendir = number_format($Deger, "2",",",".");
$Sonuc = $Bicimlendir;
return $Sonuc;
}











?>