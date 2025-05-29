<?php
if(isset($_SESSION["Kullanici"])){
global     $EmailAdresi;
global     $Sifre;
global     $IsimSoyisim;
global     $TelefonNumarasi;
global     $Cinsiyet;
global     $KayitTarihi;
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

        <tr >
            <td colspan="3""><hr /></td>
        </tr>












<tr>
            <td width="500" valign="top">

                    <table width="500" align="center" border="0" cellpadding="0" cellspacing="0">
                        <tr height ="40">

                            <td colspan="2" style="color: #FF9900; "><H3>Hesabım > Üyelik Bilgileri</H3></td>
                        </tr>
                        <tr height ="30">
                            <td colspan="2" valign="top" style="border-bottom: 1px dashed #CCCCCC">Aşağıdan üyelik bilgilerini görüntüleyebilirsin. </td>
                        </tr>


                        <tr height ="30">
                            <td colspan="2" valign="bottom" align="left">E-Mail Adresi</td>
                        </tr>
                        <tr height ="30">
                            <td colspan="2" valign="top" align="left"><?php echo $EmailAdresi ; ?></td>
                        </tr>

                        <tr height ="30">
                            <td colspan="2" valign="bottom" align="left">İsim Soyisim</td>
                        </tr>
                        <tr height ="30">
                            <td colspan="2" valign="top" align="left"><?php echo  $IsimSoyisim; ?></td>
                        </tr>
                        <tr height ="30">
                            <td colspan="2" valign="bottom" align="left">Telefon Numarası</td>
                        </tr>
                        <tr height ="30">
                            <td colspan="2" valign="top" align="left"><?php echo $TelefonNumarasi ; ?></td>
                        </tr>
                        <tr height ="30">
                            <td colspan="2" valign="bottom" align="left">Cinsiyet</td>
                        </tr>
                        <tr height ="30">
                            <td colspan="2" valign="top" align="left"><?php echo $Cinsiyet; ?></td>
                        </tr>
                        <tr height ="30">
                            <td colspan="2" valign="bottom" align="left">Kayıt Tarihi</td>
                        </tr>
                        <tr height ="30">
                            <td colspan="2" valign="top" align="left"><?php echo TarihBul($KayitTarihi); ?></td>
                        </tr>
                        <tr height = "30">
                            <td colspan="2" align="center" class="BilgilerimiGuncelleButonu" ><a href="index.php?SK=51">Bilgilerimi Güncellemek İstiyorum</a> </td>
                        </tr>

                    </table>

            </td>





            <td width="20"> &nbsp;&nbsp;</td>








            <td width="545" valign="top">

                <table width="545" align="center" border="0" cellpadding="0" cellspacing="0">
                    <tr height ="40">
                        <td  style="color: #FF9900; " colspan="2"><H3>Neden mi Turan Bebe?</H3></td>
                    </tr>
                    <tr height ="30">
                        <td valign="top" style="border-bottom: 1px dashed #CCCCCC" colspan="2">Yaklaşık 20 yılı aşkın süredir bu işin içerisindeyiz de ondan :)</td>
                    </tr>


                    <tr height ="30">
                        <td align="left" width="30"><img src="Resimler/banka.png"style="margin-top: 3px" width="20" height="20" border="0"></td>
                        <td><b>Malzemeleriniz nereden geliyor?</b></td>
                    </tr>
                    <tr height ="30">
                        <td colspan="2" align="left">20 Yıldır iş sürdürdüğümüz kişilere özenle kumaşına kadar kendimiz seçip diktiriyoruz.</td>
                    </tr>



                    <tr height ="30">
                        <td align="left" width="30"><img src="Resimler/dokuman.png"style="margin-top: 3px" width="20" height="20" border="0"></td>
                        <td><b>Profesyonel bir ekip çalışması.</b></td>
                    </tr>
                    <tr height ="30">
                        <td colspan="2" align="left">İşi yürüttüğümüz kişiler profesyonel olmakla birlikte tek amaçları para değil sevgi ve saygınlıkta olduğu için işimiz güzel ilerliyor.</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr height ="30">
                        <td align="left" width="30"><img src="Resimler/cark.png"style="margin-top: 3px" width="20" height="20" border="0"></td>
                        <td><b>Kaliteli ve Güncel</b></td>
                    </tr>
                    <tr height ="30">
                        <td colspan="2" align="left">Türkiye'deki yeni sezon ürünleri ve oyuncakları takip ederek hemen stoğumuza katmaya özen gösteririz.</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>









                </table>
            </td></tr>
    </table>




















<?php
}else{
header("location:index.php");
exit();
}
?>
