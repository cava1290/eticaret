<?php
require_once("Ayarlar/ayar.php");
require_once("Ayarlar/fonksiyonlar.php");
require_once("Ayarlar/sitesayfalari.php");

if (isset($_REQUEST["SK"])){
    $SayfaKoduDegeri = SayiliIcerikleriFiltrele($_REQUEST["SK"]);
}else{
    $SayfaKoduDegeri = "0";
}


global $SiteKeywords;
global $SiteDescription;
global $SiteTitle;
global $SiteCopyrightMeni;
?>
<!doctype html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Language" content="tr">
    <meta name="robots" content="index, follow">
    <meta name="googlebot" content="index, follow">
    <meta name="revisit-after" content="7 days">
    <title><?php  echo DonusumleriGeriDondur($SiteTitle); ?></title>
    <meta name="description" content="<?php  echo DonusumleriGeriDondur($SiteDescription); ?>">
    <meta name="keywords" content="<?php  echo DonusumleriGeriDondur($SiteKeywords); ?>">
    <script src="Frameworks/JQuery/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="Ayarlar/stil.css">
    <script src="Ayarlar/fonksiyonlar.js"></script>
</head>
<body>
<table width="1065" height="100%" align="center" border="0" cellpadding="0" cellspacing="0">
    <tr height="40" bgcolor="#353745">
        <td><img src="Resimler/karso.png" border="0"></td>
    </tr>
    <tr height="110">
        <td>
            <table width="1065" height="30" align="center" border="0" cellpadding="0" cellspacing="0">
                <tr bgcolor="#0088cc">
                    <td>&nbsp;</td>
                    <td width="20"><a href="xxxxx"><img src="Resimler/giriş.png" border="0" style="margin-top: 9px" height="16" width="16"></a></td>
                    <td width="70" class="MaviAlanMenusu"><a href="xxxxx">Giriş Yap</a></td>
                    <td width="20"><a href="xxxxx"><img src="Resimler/yeniüye.png" style="margin-top: 5px" border="0" width="16" height="16"></a></td>
                    <td width="85" class="MaviAlanMenusu"><a href="xxxxx">Yeni Üye Ol</a></td>
                    <td width="20"><a href="xxxxx"><img src="Resimler/sepet.png" style="margin-top: 5px" border="0" width="16" height="16"></a></td>
                    <td width="103" class="MaviAlanMenusu"><a href="xxxxx">Alışveriş Sepeti</a></td>
                </tr>
            </table>
            <table width="1065" height="80" align="center" border="0" cellpadding="0" cellspacing="0">
                <tr bgcolor="white">
                    <td width="192"><img src="Resimler/logo.pn" alt="Logo">&nbsp;</td>
                    <td>&nbsp;
                        <table width="873" height="30" align="center" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>&nbsp;</td>
                                <td width="80" class="AnaMenu"><a href="index.php?SK=0">Ana Sayfa</a></td>
                                <td width="55" class="AnaMenu"><a href="xxxxx">Zıbınlar</a></td>
                                <td width="90" class="AnaMenu"><a href="xxxxxx">Oyuncaklar</a></td>
                                <td width="135" class="AnaMenu"><a href="xxxxxx">Bebek Arabaları</a></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>




    <tr>
        <td valign="top"><table width="1065"  align="center" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td align="center"><?php
                        global $Sayfa;
                        if(($SayfaKoduDegeri == "0") or ($SayfaKoduDegeri == "") ){
                            include($Sayfa[0]);
                        }else{
                            include($Sayfa[$SayfaKoduDegeri]);
                        }

?>
                        <br />
</td>
</tr>
</table> </td>
</tr>
    <tr height="210">
        <td>
            <table width="1065" align="center" border="0" cellpadding="0" cellspacing="0" bgcolor="#F9F9F9">
                <tr height="30">
                    <td width="250" style="border-bottom: 1px dashed #CCC"><b>Kurumsal</b></td>
                    <td width="22">&nbsp;</td>
                    <td width="250" style="border-bottom: 1px dashed #CCC"><b>Üyelik & Hizmetler</b></td>
                    <td width="22">&nbsp;</td>
                    <td width="250" style="border-bottom: 1px dashed #CCC"><b>Sözleşmeler</b></td>
                    <td width="21">&nbsp;</td>
                    <td width="250" style="border-bottom: 1px dashed #CCC"><b>Bizi Takip Edin</b></td>
                </tr>
                <tr height="30">
                    <td class="AltMenusu"><a href="index.php?SK=1">Hakkımızda</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"><a href="xxxxx">Giriş Yap</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"><a href="index.php?SK=2">Üyelik Sözleşmesi</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"><a href="https://instagram.com/turanbebee"><img src="Resimler/instagram.png" width="16"> Instagram</a></td>
                </tr>
                <tr height="30">
                    <td class="AltMenusu"><a href="index.php?SK=8">Banka Hesaplarımız</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"><a href="xxxxx">Yeni Üye Ol</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"><a href="index.php?SK=3">Kullanım Koşulları</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"></td>
                </tr>
                <tr height="30">
                    <td class="AltMenusu"><a href="index.php?SK=9">Havale Bildirim</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"><a href="xxxxx">Sıkça Sorulan Sorular</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"><a href="index.php?SK=4">Gizlilik Sözleşmesi</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"></td>
                </tr>
                <tr height="30">
                    <td class="AltMenusu"><a href="xxxxx">Kargo Nerede</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"><a href="index.php?SK=5">Mesafeli Satış Sözleşmesi</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"></td>
                </tr>
                <tr height="30">
                    <td class="AltMenusu"><a href="xxxxx">İletişim</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"><a href="index.php?SK=6">Teslimat</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"></td>
                </tr>
                <tr height="30">
                    <td class="AltMenusu">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu"><a href="index.php?SK=7">İptal & İade & Değişim</a></td>
                    <td>&nbsp;</td>
                    <td class="AltMenusu">&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr height ="30">
    <td><table width="1065" height ="30" align="center" border="0" cellspacing="0" cellpadding="0" >
            <tr>
                <td align="center"><?php  echo DonusumleriGeriDondur($SiteCopyrightMeni); ?></td>
            </tr>
        </table></td>
    </tr>
    <tr height ="30">
        <td><table width="1065" height ="30" align="center" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <td align="center">
                        <img width="40" height="40" border="0" src="Resimler/World.png">
                        <img width="40" height="40" border="0" src="Resimler/Akbank.png">
                        <img width="40" height="40" border="0"src="Resimler/Denizbank.jpg">
                        <img width="40" height="40" border="0" src="Resimler/PTT.jpg">
                        <img width="40" height="40" border="0" src="Resimler/Ziraat.png">
                    </td>
                </tr>
            </table></td>
    </tr>
</table>
</body>
</html>
<?php
$VeriTabaniBaglantisi = null;
?>
