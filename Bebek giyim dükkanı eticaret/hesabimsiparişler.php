<?php
if(isset($_SESSION["Kullanici"])){
    require_once("Ayarlar/ayar.php");
    global $VeriTabaniBaglantisi;
    global $KullaniciID;
    global $Sayfalama;

$SayfalamaIcinSolveSagButonSayisi = 2;
$SayfaBasinaGosterilecekKayitSayisi = 10;



              $ToplamKayitSayisiSorgusu = $VeriTabaniBaglantisi->prepare("SELECT DISTINCT (SiparisNumarasi) FROM siparisler where UyeId = ? ORDER BY SiparisNumarasi desc ");
              $ToplamKayitSayisiSorgusu->execute([$KullaniciID]);
              $ToplamKayitSayisiSorgusu = $ToplamKayitSayisiSorgusu->rowCount();
              $SayfalamayaBaslanacakKayitSayisi = ($Sayfalama*$SayfaBasinaGosterilecekKayitSayisi)-$SayfaBasinaGosterilecekKayitSayisi;
              $BulunanSayfaSayisi = ceil($ToplamKayitSayisiSorgusu/$SayfaBasinaGosterilecekKayitSayisi);
              ?>

    <table width="1065" align="center" border="0" cellspacing="0" cellpadding="0">
        <tr >
            <td colspan="3""><hr /></td>
        </tr>

        <tr >
            <td colspan="3"">
            <table width="1065" align="center" border="0" cellspacing="0" cellpadding="0" >

                <tr >
                    <td width="203" style="border: 1px solid black; text-align: center; padding: 10px 0; font-weight: bold;"><a href="index.php?SK=50" style="text-decoration: none; color: black"> Üyelik Bilgileri</a></td>
                    <td width="10">&nbsp;</td>
                    <td width="203" style="border: 1px solid black; text-align: center; padding: 10px 0; font-weight: bold;"><a href="index.php?SK=55" style="text-decoration: none; color: black">Adresler</a></td>
                    <td  width="10">&nbsp;</td>
                    <td width="203" style="border: 1px solid black; text-align: center; padding: 10px 0; font-weight: bold;"><a href="index.php?SK=56" style="text-decoration: none; color: black">Favoriler</a></td>
                    <td  width="10">&nbsp;</td>
                    <td width="203" style="border: 1px solid black; text-align: center; padding: 10px 0; font-weight: bold;"><a href="index.php?SK=57" style="text-decoration: none; color: black">Yorumlar</a></td>
                    <td  width="10">&nbsp;</td>
                    <td width="203" style="border: 1px solid black; text-align: center; padding: 10px 0; font-weight: bold;"><a href="index.php?SK=58" style="text-decoration: none; color: black">Siparişler</a></td>
                </tr>



            </table>
            </td>
        </tr>

        <tr>
            <td width="1065" valign="top">
                <table width="1065" align="center" border="0" cellpadding="0" cellspacing="0">
                    <tr height="40">
                        <td colspan="8" style="color:#FF9900"><h3>Hesabım > Siparişler</h3></td>
                    </tr>
                    <tr height="30">
                        <td colspan="8" valign="top" style="border-bottom: 1px dashed #CCCCCC"> Tüm Siparişlerinizi görüntüleyebilirsiniz.</td>
                    </tr>

                    <tr height="30">
                        <td width="125" style="background: #CCCCCC; color: black; " align="left" >Sipariş Numarası</td>
                        <td width="75" style="background: #CCCCCC; color: black; " align="left" >Resim </td>
                        <td width="50" style="background: #CCCCCC; color: black; " align="left" >Yorum </td>
                        <td width="415" style="background: #CCCCCC; color: black; " align="left" >Adı</td>
                        <td width="100" style="background: #CCCCCC; color: black; " align="left" >Fiyatı</td>
                        <td width="50" style="background: #CCCCCC; color: black; " align="left" >Adet</td>
                        <td width="100" style="background: #CCCCCC; color: black; " align="left" >Toplam Fiyat</td>
                        <td width="150" style="background: #CCCCCC; color: black; " align="left" >Kargo Durumu / Takip </td>


                    </tr>


                    <?php
                    $SiparisNumaralariSorgusu = $VeriTabaniBaglantisi->prepare("SELECT DISTINCT (SiparisNumarasi) FROM siparisler where UyeId = ? ORDER BY SiparisNumarasi desc LIMIT $SayfalamayaBaslanacakKayitSayisi,$SayfaBasinaGosterilecekKayitSayisi ");
                    $SiparisNumaralariSorgusu->execute([$KullaniciID]);
                    $SiparisNumaralariSayisi = $SiparisNumaralariSorgusu->rowCount();
                    $SiparisNumaralariKayitlari = $SiparisNumaralariSorgusu->fetchAll(PDO::FETCH_ASSOC);

                    if($SiparisNumaralariSayisi > 0) {
                        foreach($SiparisNumaralariKayitlari as $SiparisNumaraliSatirlar){
                            $SiparisNo      =  DonusumleriGeriDondur($SiparisNumaraliSatirlar["SiparisNumarasi"]);
                            $SiparisSorgusu = $VeriTabaniBaglantisi->prepare("SELECT * FROM siparisler where UyeId = ? AND SiparisNumarasi = ? ORDER BY id asc ");
                            $SiparisSorgusu->execute([$KullaniciID,$SiparisNo ]);
                            $SiparisSorgusuKayitlari = $SiparisSorgusu->fetchAll(PDO::FETCH_ASSOC);

                            foreach($SiparisSorgusuKayitlari as $SiparisSatirlar){
                                $UrunTuru   = DonusumleriGeriDondur($SiparisSatirlar["UrunTuru"]);
                                if($UrunTuru=="Zıbın"){
                                        $ResimKlasoruAdi = "Zıbınlar";
                                }elseif($UrunTuru=="Bebek Arabası"){
                                         $ResimKlasoruAdi = "Araba";

                                }else{
                                    $ResimKlasoruAdi = "Oyuncaklar";

                                }
                                $KargoDurumu   = DonusumleriGeriDondur($SiparisSatirlar["KargoDurumu"]);
                                    if($KargoDurumu==0){
                                        $KargoDurumuYazdir = "Beklemede";
                                    }else{
                                        $KargoDurumuYazdir = DonusumleriGeriDondur($SiparisSatirlar["KargoGonderiKodu"]);

                                    }

                                ?>




                    <tr height="30">
                        <td width="125" align="left">#<?php echo DonusumleriGeriDondur($SiparisSatirlar ["SiparisNumarasi"]);?> </td>
                        <td width="75" align="left"><img src="UrunResimleri/<?php echo $ResimKlasoruAdi ?>/<?php echo DonusumleriGeriDondur($SiparisSatirlar ["UrunResmiBir"]);?>"border="0" width="60" height="80"></td>
                        <td width="50" align="left"><a href="index.php?SK=72&UrunId=<?php echo DonusumleriGeriDondur($SiparisSatirlar ["UrunId"]);?>"><img src="Resimler/dokuman.png" width="20" height="20" border="0"></a></td>
                        <td width="415" align="left"><?php echo DonusumleriGeriDondur($SiparisSatirlar ["UrunAdi"]);?></td>
                        <td width="100" align="left"><?php echo FiyatiBicimlendir(DonusumleriGeriDondur($SiparisSatirlar ["UrunFiyati"]));?> TL</td>
                        <td width="50" align="left"><?php echo DonusumleriGeriDondur($SiparisSatirlar ["UrunAdedi"]);?></td>
                        <td width="100" align="left"><?php echo FiyatiBicimlendir(DonusumleriGeriDondur($SiparisSatirlar ["ToplamUrunFiyati"]));?> TL</td>
                        <td width="150" align="left"><?php echo $KargoDurumuYazdir;?></td>


                    </tr><?php } ?>

                            <tr height="30">
                            <td colspan="8"><hr /></td>
                            </tr>
                    <?php
                        }
                        ?>



                        <tr>
                            <td colspan="8" align="center">

                            <div class="SayfalamaAlaniKapsayicisi">
                                <div class="SayfalamaAlaniIciMetinAlaniKapsayicisi">

                                    Toplam <?php echo $BulunanSayfaSayisi;?> adet sayfada, <?php echo $ToplamKayitSayisiSorgusu;?> adet kayıt bulunmaktadır.
                                </div>
                                <div class="SayfalamaAlaniIciNumaraAlaniKapsayicisi">
                                <?php
                                if($Sayfalama>1){
                                                    echo "<span class='SayfalamaPasif'><a href='index.php?SK=58&SYF=1'><<</a></span>";
                                                    $SayfalamaIcinSayfaDegeriniBirGeriAl = $Sayfalama-1;
                                                     echo "<span class='SayfalamaPasif'><a href='index.php?SK=58&SYF=" . $SayfalamaIcinSayfaDegeriniBirGeriAl . "'><</a></span>";

                                }

                                for($SayfalamaIcinSayfaIndexDegeri=$Sayfalama-$SayfalamaIcinSolveSagButonSayisi; $SayfalamaIcinSayfaIndexDegeri <= $Sayfalama+$SayfalamaIcinSolveSagButonSayisi;
                                    $SayfalamaIcinSayfaIndexDegeri++){
                                    if(   ($SayfalamaIcinSayfaIndexDegeri>0)   and   ($SayfalamaIcinSayfaIndexDegeri<=$BulunanSayfaSayisi)      ){
                                        if($Sayfalama == $SayfalamaIcinSayfaIndexDegeri ){
                                            echo "<span class='SayfalamaAktif'>" . $SayfalamaIcinSayfaIndexDegeri . "</span>";





                                        }else{

                                            echo "<span class='SayfalamaPasif'><a href='index.php?SK=58&SYF=" . $SayfalamaIcinSayfaIndexDegeri . "'> ". $SayfalamaIcinSayfaIndexDegeri ."  </a></span>";




                                        }
                                    }
                                }




                                if($Sayfalama!=$BulunanSayfaSayisi){
                                    $SayfalamaIcinSayfaDegeriniBirIleriAl = $Sayfalama+1;

                                    echo "<span class='SayfalamaPasif'><a href='index.php?SK=58&SYF=" . $SayfalamaIcinSayfaDegeriniBirIleriAl . "'>></a></span>";
                                    echo "<span class='SayfalamaPasif'><a href='index.php?SK=58&SYF=". $BulunanSayfaSayisi ."'>>></a></span>";

                                }




                                ?></div>
                            </div>





                                </td>
                        </tr>




                        <?php
                    }else{
                        ?>
                        <tr >
                            <td colspan="8" height="50" align="left">Sistemde kayıtlı siparişiniz bulunmamaktadır.</td>
                        </tr>
                        <?php
                    }
                    ?>





                </table>

            </td>
        </tr>
    </table>
    <?php
}else{
    header("location:index.php");
    exit();
}
?>