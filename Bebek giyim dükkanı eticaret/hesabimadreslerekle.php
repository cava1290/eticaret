<?php
if (isset($_SESSION["Kullanici"])) {
    global $EmailAdresi;
    global $Sifre;
    global $IsimSoyisim;
    global $TelefonNumarasi;
    global $Cinsiyet;
    global $KayitTarihi;
    ?>

    <table width="1065" align="center" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="500" valign="top">
                <form action="index.php?SK=68" method="post">
                    <table width="500" align="center" border="0" cellpadding="0" cellspacing="0">
                        <tr height="40">
                            <td style="color: #FF9900;"><h3>Hesabım > Adresler</h3></td>
                        </tr>
                        <tr height="30">
                            <td valign="top" style="border-bottom: 1px dashed #CCCCCC;">Tüm adreslerinizi görüntüleyebilir veya güncelleyebilirsin </td>
                        </tr>

                        <tr height="30">
                            <td colspan="2" valign="bottom" align="left">İsim Soyisim (*)</td>
                        </tr>
                        <tr height="30">
                            <td colspan="2" valign="top" align="left"><input type="text" name="IsimSoyisim" class="InputAlanları" ></td>
                        </tr>

                        <tr height="30">
                            <td colspan="2" valign="bottom" align="left">Adres (*)</td>
                        </tr>
                        <tr height="30">
                            <td colspan="2" valign="top" align="left"><input type="text" name="Adres" class="InputAlanları" ></td>
                        </tr>
                        <tr height="30">
                            <td colspan="2" valign="bottom" align="left">İlçe (*)</td>
                        </tr>
                        <tr height="30">
                            <td colspan="2" valign="top" align="left"><input type="text" name="Ilce" class="InputAlanları"></td>
                        </tr>
                        <tr height="30">
                            <td colspan="2" valign="bottom" align="left">Şehir (*)</td>
                        </tr>
                        <tr height="30">
                            <td colspan="2" valign="top" align="left"><input type="text" name="Sehir" class="InputAlanları"></td>
                        </tr>
                        <tr height="30">
                            <td colspan="2" valign="bottom" align="left">Telefon Numarası (*)</td>
                        </tr>
                        <tr height="30">
                            <td colspan="2" valign="top" align="left"><input type="text" name="TelefonNumarasi" maxlength="11" class="InputAlanları" ></td>
                        </tr>
                        <tr height="40">
                            <td align="center">
                                <input type="submit" value="Adresi Kaydet" class="YesilButton">
                            </td>
                        </tr>
                    </table>
                </form>
            </td>

            <td width="20">&nbsp;&nbsp;</td>

            <td width="545" valign="top">
                <table width="545" align="center" border="0" cellpadding="0" cellspacing="0">
                    <tr height="40">
                        <td style="color: #FF9900;" colspan="2"><h3>Neden mi Turan Bebe?</h3></td>
                    </tr>
                    <tr height="30">
                        <td valign="top" style="border-bottom: 1px dashed #CCCCCC;" colspan="2">Yaklaşık 20 yılı aşkın süredir bu işin içerisindeyiz de ondan :)</td>
                    </tr>

                    <tr height="30">
                        <td align="left" width="30"><img src="Resimler/banka.png" style="margin-top: 3px" width="20" height="20" border="0"></td>
                        <td><b>Malzemeleriniz nereden geliyor?</b></td>
                    </tr>
                    <tr height="30">
                        <td colspan="2" align="left">20 Yıldır iş sürdürdüğümüz kişilere özenle kumaşına kadar kendimiz seçip diktiriyoruz.</td>
                    </tr>

                    <tr height="30">
                        <td align="left" width="30"><img src="Resimler/dokuman.png" style="margin-top: 3px" width="20" height="20" border="0"></td>
                        <td><b>Profesyonel bir ekip çalışması.</b></td>
                    </tr>
                    <tr height="30">
                        <td colspan="2" align="left">İşi yürüttüğümüz kişiler profesyonel olmakla birlikte tek amaçları para değil sevgi ve saygınlıkta olduğu için işimiz güzel ilerliyor.</td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>

                    <tr height="30">
                        <td align="left" width="30"><img src="Resimler/cark.png" style="margin-top: 3px" width="20" height="20" border="0"></td>
                        <td><b>Kaliteli ve Güncel</b></td>
                    </tr>
                    <tr height="30">
                        <td colspan="2" align="left">Türkiye'deki yeni sezon ürünleri ve oyuncakları takip ederek hemen stoğumuza katmaya özen gösteririz.</td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
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
