<?php
if (isset($_SESSION["Kullanici"])) {
    global $Guvenlik;
    global $VeriTabaniBaglantisi;
    global $KullaniciID;
    global $ZamanDamgasi;
    global $IPAdresi;
    // Gelen verileri temizle
    $GelenUrunId     = isset($_POST['UrunId']) ? Guvenlik($_POST['UrunId']) : "";
    $GelenPuan           = isset($_POST['Puan']) ? Guvenlik($_POST['Puan']) : "";
    $GelenYorum     = isset($_POST['Yorum']) ? Guvenlik($_POST['Yorum']) : "";


    // Tüm alanlar dolu mu?
    if (($GelenUrunId!="") && ($GelenPuan!="") && ($GelenYorum!="") ) {

            $YorumKayitSorgusu = $VeriTabaniBaglantisi->prepare("INSERT INTO yorumlar (UrunId, UyeId, Puan,YorumMetni,YorumTarihi,YorumIpAdresi) values (?,?,?,?,?,?)");
            $YorumKayitSorgusu ->execute([$GelenUrunId,$KullaniciID,$GelenPuan,$GelenYorum,$ZamanDamgasi,$IPAdresi]);
            $YorumKayitKontrol  = $YorumKayitSorgusu->rowCount();

            if($YorumKayitKontrol>0){

                $UrunGuncellemeSorgusu = $VeriTabaniBaglantisi->prepare("UPDATE urunler SET YorumSayisi=YorumSayisi+1, ToplamYorumPuani=ToplamYorumPuani+? WHERE id = ? LIMIT 1");
                $UrunGuncellemeSorgusu ->execute([$GelenPuan,$GelenUrunId]);
                $UrunGuncellemeKontrol  = $UrunGuncellemeSorgusu->rowCount();

                if($UrunGuncellemeKontrol>0){
                    header("Location:index.php?SK=74");
                    exit();

                }else{
                    header("Location:index.php?SK=75");
                    exit();
                }







            }else{
                header("Location:index.php?SK=75");
                exit();
            }






    } else {
        header("Location:index.php?SK=76"); // Eksik veri gönderildi
        exit();
    }
} else {
    header("Location:index.php");
    exit();
}
?>
