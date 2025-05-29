<?php
if (isset($_SESSION["Kullanici"])) {

        if(isset($_GET["UrunId"])){
            $GelenUrunId = Guvenlik($_GET["UrunId"]);
        }else{
            $GelenUrunId = "";
        }

        if($GelenUrunId!=""){


    ?>

    <table width="1065" align="center" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="500" valign="top">
                <form action="index.php?SK=73&UrunId=<?php echo $GelenUrunId;  ?>" method="post">
                    <input type="hidden" name="UrunId" value="<?php echo $GelenUrunId; ?>">
                    <table width="500" align="center" border="0" cellpadding="0" cellspacing="0">
                        <tr height="40">
                            <td style="color: #FF9900;"><h3>Hesabım > Yorum Yap </h3></td>
                        </tr>
                        <tr height="30">
                            <td valign="top" style="border-bottom: 1px dashed #CCCCCC;">Satın Almış Oluğdunuz Ürüne Aşğıdan Yorum Yapabilirsiniz.</td>
                        </tr>

                        <tr height="30">
                            <td colspan="2" valign="bottom" align="left">Puanlama (*)</td>
                        </tr>
                        <tr height="30">
                            <td  valign="top" align="left">
                                <table width="360" align="left" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                    <td width="64"><img width="64" src="Resimler/1yıldız.png" border="0"></td>
                                    <td width="10">&nbsp;</td>
                                    <td width="64"><img width="64" src="Resimler/2yıldız.png" border="0"></td>
                                    <td width="10">&nbsp;</td>
                                    <td width="64"><img width="64" src="Resimler/3yıldız.png" border="0"></td>
                                    <td width="10">&nbsp;</td>
                                    <td width="64"><img width="64" src="Resimler/4yıldız.png" border="0"></td>
                                    <td width="10">&nbsp;</td>
                                    <td width="64"><img width="64" src="Resimler/5yıldız.png" border="0"></td>
                                </tr>
                                    <tr>

                                        <td width="64" align="center"><input type="radio" name="Puan" value="1"></td>
                                        <td width="10">&nbsp;</td>
                                        <td width="64" align="center"><input type="radio" name="Puan" value="2"></td>
                                        <td width="10">&nbsp;</td>
                                        <td width="64" align="center"><input type="radio" name="Puan" value="3"></td>
                                        <td width="10">&nbsp;</td>
                                        <td width="64" align="center"><input type="radio" name="Puan" value="4"></td>
                                        <td width="10">&nbsp;</td>
                                        <td width="64" align="center"><input type="radio" name="Puan" value="5"></td>
                                    </tr>
                             </table> </td>
                        </tr>

                        <tr height="30">
                            <td  valign="bottom" align="left">Yorum Metni (*)</td>
                        </tr>
                        <tr height="30">
                            <td valign="top" align="left"> <textarea name="Yorum" class="YorumTextAreaAlanlari"></textarea> </td>
                        </tr>

                        <tr height="40">
                            <td align="center">
                                <input type="submit" value="Yorumu Gönder" class="YesilButton">
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
        }else{
            header("location:index.php?SK=75");
            exit();
        }
} else {
    header("location:index.php");
    exit();
}
?>
