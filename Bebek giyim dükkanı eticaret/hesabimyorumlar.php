<?php
if (isset($_SESSION["Kullanici"])) {
    require_once("Ayarlar/ayar.php");
    global $VeriTabaniBaglantisi;
    global $KullaniciID;
    global $Sayfalama;

    $SayfalamaIcinSolveSagButonSayisi = 2;
    $SayfaBasinaGosterilecekKayitSayisi = 10;

    $ToplamKayitSayisiSorgusu = $VeriTabaniBaglantisi->prepare("SELECT * FROM yorumlar WHERE UyeId = ?");
    $ToplamKayitSayisiSorgusu->execute([$KullaniciID]);
    $ToplamKayitSayisi = $ToplamKayitSayisiSorgusu->rowCount();

    $SayfalamayaBaslanacakKayitSayisi = ($Sayfalama * $SayfaBasinaGosterilecekKayitSayisi) - $SayfaBasinaGosterilecekKayitSayisi;
    $BulunanSayfaSayisi = ceil($ToplamKayitSayisi / $SayfaBasinaGosterilecekKayitSayisi);
    ?>
    <table width="1065" align="center" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td colspan="2"><hr /></td>
        </tr>

        <tr>
            <td colspan="2">
                <table width="1065" align="center" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="203" style="border: 1px solid black; text-align: center; padding: 10px 0; font-weight: bold;">
                            <a href="index.php?SK=50" style="text-decoration: none; color: black">Üyelik Bilgileri</a>
                        </td>
                        <td width="10">&nbsp;</td>
                        <td width="203" style="border: 1px solid black; text-align: center; padding: 10px 0; font-weight: bold;">
                            <a href="index.php?SK=55" style="text-decoration: none; color: black">Adresler</a>
                        </td>
                        <td width="10">&nbsp;</td>
                        <td width="203" style="border: 1px solid black; text-align: center; padding: 10px 0; font-weight: bold;">
                            <a href="index.php?SK=56" style="text-decoration: none; color: black">Favoriler</a>
                        </td>
                        <td width="10">&nbsp;</td>
                        <td width="203" style="border: 1px solid black; text-align: center; padding: 10px 0; font-weight: bold;">
                            <a href="index.php?SK=57" style="text-decoration: none; color: black">Yorumlar</a>
                        </td>
                        <td width="10">&nbsp;</td>
                        <td width="203" style="border: 1px solid black; text-align: center; padding: 10px 0; font-weight: bold;">
                            <a href="index.php?SK=58" style="text-decoration: none; color: black">Siparişler</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td width="1065" valign="top">
                <table width="1065" align="center" border="0" cellpadding="0" cellspacing="0">
                    <tr height="40">
                        <td colspan="2" style="color:#FF9900"><h3>Hesabım > Yorumlar</h3></td>
                    </tr>
                    <tr height="30">
                        <td colspan="2" valign="top" style="border-bottom: 1px dashed #CCCCCC">Tüm Yorumlarınızı görüntüleyebilirsiniz.</td>
                    </tr>
                    <tr height="30">
                        <td width="125" style="background: #CCCCCC; color: black;" align="left"> &nbsp;Puan</td>
                        <td width="75" style="background: #CCCCCC; color: black;" align="left">Yorum&nbsp;</td>
                    </tr>

                    <?php
                    $Baslangic = (int)$SayfalamayaBaslanacakKayitSayisi;
                    $Limit = (int)$SayfaBasinaGosterilecekKayitSayisi;

                    $YorumlarSorgusu = $VeriTabaniBaglantisi->prepare("SELECT * FROM yorumlar WHERE UyeId = ? ORDER BY YorumTarihi DESC LIMIT $Baslangic, $Limit");
                    $YorumlarSorgusu->execute([$KullaniciID]);
                    $YorumlarSayisi = $YorumlarSorgusu->rowCount();
                    $YorumlarKayitlari = $YorumlarSorgusu->fetchAll(PDO::FETCH_ASSOC);

                    if ($YorumlarSayisi > 0) {
                        foreach ($YorumlarKayitlari as $Satirlar) {
                            $VerilenPuan = $Satirlar["Puan"];
                            $ResimDosyasi = $VerilenPuan . "yıldız.png";
                            ?>
                            <tr height="30">
                                <td width="75" align="left"><img width="60" src="Resimler/<?php echo $ResimDosyasi ?>" border="0"></td>
                                <td width="415" align="left"><?php echo DonusumleriGeriDondur($Satirlar["YorumMetni"]); ?></td>
                            </tr>
                            <?php
                        }
                    } else {
                        ?>
                        <tr height="30">
                            <td colspan="2" align="left">Henüz yorum yapmamışsınız.</td>
                        </tr>
                    <?php } ?>

                    <tr height="30">
                        <td colspan="2"><hr /></td>
                    </tr>

                    <tr>
                        <td colspan="2" align="center">
                            <div class="SayfalamaAlaniKapsayicisi">
                                <div class="SayfalamaAlaniIciMetinAlaniKapsayicisi">
                                    Toplam <?php echo $BulunanSayfaSayisi; ?> adet sayfada, <?php echo $ToplamKayitSayisi; ?> adet kayıt bulunmaktadır.
                                </div>
                                <div class="SayfalamaAlaniIciNumaraAlaniKapsayicisi">
                                    <?php
                                    if ($Sayfalama > 1) {
                                        echo "<span class='SayfalamaPasif'><a href='index.php?SK=58&SYF=1'><<</a></span>";
                                        $SayfalamaIcinSayfaDegeriniBirGeriAl = $Sayfalama - 1;
                                        echo "<span class='SayfalamaPasif'><a href='index.php?SK=58&SYF=$SayfalamaIcinSayfaDegeriniBirGeriAl'><</a></span>";
                                    }

                                    for ($i = $Sayfalama - $SayfalamaIcinSolveSagButonSayisi; $i <= $Sayfalama + $SayfalamaIcinSolveSagButonSayisi; $i++) {
                                        if ($i > 0 && $i <= $BulunanSayfaSayisi) {
                                            if ($Sayfalama == $i) {
                                                echo "<span class='SayfalamaAktif'>$i</span>";
                                            } else {
                                                echo "<span class='SayfalamaPasif'><a href='index.php?SK=58&SYF=$i'>$i</a></span>";
                                            }
                                        }
                                    }

                                    if ($Sayfalama != $BulunanSayfaSayisi) {
                                        $SayfalamaIcinSayfaDegeriniBirIleriAl = $Sayfalama + 1;
                                        echo "<span class='SayfalamaPasif'><a href='index.php?SK=58&SYF=$SayfalamaIcinSayfaDegeriniBirIleriAl'>></a></span>";
                                        echo "<span class='SayfalamaPasif'><a href='index.php?SK=58&SYF=$BulunanSayfaSayisi'>>></a></span>";
                                    }
                                    ?>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <?php
} else {
    header("location:index.php");
    exit();
}
?>
