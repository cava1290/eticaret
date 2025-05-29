<?php
if(isset($_SESSION["Kullanici"])){
    require_once("Ayarlar/ayar.php");
    global     $EmailAdresi;
    global     $Sifre;
    global     $IsimSoyisim;
    global     $TelefonNumarasi;
    global     $Cinsiyet;
    global     $KayitTarihi;
    global $VeriTabaniBaglantisi;
    global $KullaniciID;
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
                        <td colspan="5" style="color:#FF9900"><h3>Hesabım > Adresler</h3></td>
                    </tr>
                    <tr height="30">
                        <td colspan="5" valign="top" style="border-bottom: 1px dashed #CCCCCC"> Tüm adreslerinizi görüntüleyebilir veya güncelleyebilirsin</td>
                    </tr>

                    <tr height="30">
                        <td colspan="1" style="background: #CCCCCC; color: black; font-weight: bold;" align="left" >&nbsp; Adresler </td>
                        <td colspan="4" style="background: #CCCCCC; color: black; font-weight: bold" align="right"><a href="index.php?SK=67" style="text-decoration: none; color: black">Yeni Adres Ekle &nbsp;</a></td>
                    </tr>


                    <?php
                    $AdreslerSorgusu = $VeriTabaniBaglantisi->prepare("SELECT * FROM adresler WHERE UyeId = ?");
                    $AdreslerSorgusu->execute([$KullaniciID]);
                    $AdreslerSayisi = $AdreslerSorgusu->rowCount();
                    $AdreslerKayitlari = $AdreslerSorgusu->fetchAll(PDO::FETCH_ASSOC);
                    $BirinciRenk        = "#FFFFFF";
                    $IkinciRenk         = "#F1F1F1";
                    $RenkSayisi         = 1;

                    if($AdreslerSayisi > 0) {
                        foreach($AdreslerKayitlari as $Satirlar){
                        if($RenkSayisi % 2){
                            $ArkaPlanRengi = $BirinciRenk;
                        }else{
                            $ArkaPlanRengi = $IkinciRenk;
                        }


?>

                        <tr bgcolor="<?php echo $ArkaPlanRengi ?>" >
                            <td align="left" ><?php echo $Satirlar["AdiSoyadi"];?> - <?php echo $Satirlar["Adres"]; ?>
                                <?php echo $Satirlar["Ilce"];?> /
                                <?php echo $Satirlar["Sehir"];  ?> -
                                <?php echo $Satirlar["TelefonNumarasi"];  ?> </td>
                                <td width="25">&nbsp;</td>
                                <td width="70">&nbsp;</td>
                                <td> <img width="25" weight="40" src="Resimler/hayır.jpg" border="0"> </td>
                                <td width="25"><a href="index.php?SK=64&ID=<?php echo $Satirlar["id"];?>" style="text-decoration: none; color: black">Sil</a></td>


                        </tr>

                        <?php
                            $RenkSayisi++;
                        }
                    }else{
                        ?>
                        <tr >
                            <td colspan="5" height="50" align="left">Sistemde kayıtlı adresiniz bulunmamaktadır.</td>
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