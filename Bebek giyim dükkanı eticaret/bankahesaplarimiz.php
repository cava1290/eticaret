
<table width="1065" align="center" border="0" cellpadding="0" cellspacing="0">
    <tr height="100" bgcolor="#FF9900" >
        <td align="left"><H2 style="color: white">&nbsp;BANKA HESAPLARIMIZ</H2></td>
    </tr>
    <tr height = "50">
        <td align="left" style="border-bottom: 1px dashed #CCC">&nbsp;Ödemeleriniz için çalışmakta olduğumu tüm banka hesapları aşağıdadır.</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>






<tr>
    <td><table width="820" align="center" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <?php
            global $VeriTabaniBaglantisi;
            $BankalarSorgusu = $VeriTabaniBaglantisi -> prepare("SELECT * FROM bankahesaplarimiz");
            $BankalarSorgusu -> execute();
            $BankaSayisi = $BankalarSorgusu -> rowCount();
            $BankaKayitlari       = $BankalarSorgusu -> fetchAll(PDO::FETCH_ASSOC);

            $DonguSayisi        = 1;
            $SutunAdetSayisi    = 3;


                foreach ($BankaKayitlari as $Kayit) {
                    ?><td width="340">
                    <table align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #CCCCCC">
                        <tr height = "50">
                            <td colspan="4" align="center"> <img src="Resimler/<?php echo DonusumleriGeriDondur($Kayit["BankaLogosu"]); ?>" border="0" width="68" height = "51"> </td>
                        </tr>
                        <tr height = "20">
                            <td width="5">&nbsp;</td>
                            <td width="80">Banka Adı</td>
                            <td width="10">:</td>
                            <td width="245"><?php echo  DonusumleriGeriDondur($Kayit["BankaAdi"]); ?></td>
                        </tr>
                        <tr height = "25">
                            <td width="5">&nbsp;</td>
                            <td>Konum</td>
                            <td>:</td>
                            <td><?php echo DonusumleriGeriDondur($Kayit["KonumSehir"]); ?> / <?php echo DonusumleriGeriDondur($Kayit["KonumUlke"]); ?></td>
                        </tr>
                        <tr height = "25">
                            <td width="5">&nbsp;</td>
                            <td>Şube</td>
                            <td>:</td>
                            <td><?php echo DonusumleriGeriDondur($Kayit["SubeAdi"]); ?> / <?php echo DonusumleriGeriDondur($Kayit["SubeKodu"]); ?></td>
                        </tr>
                        <tr height = "25">
                            <td width="5">&nbsp;</td>
                            <td>Birim</td>
                            <td>:</td>
                            <td><?php echo DonusumleriGeriDondur($Kayit["ParaBirimi"]); ?></td>
                        </tr>
                        <tr height = "25">
                            <td width="5">&nbsp;</td>
                            <td>Hesap Adı</td>
                            <td>:</td>
                            <td><?php echo DonusumleriGeriDondur($Kayit["HesapSahibi"]); ?></td>
                        </tr>
                        <tr height = "25">
                            <td width="5">&nbsp;</td>
                            <td>Hesap No</td>
                            <td>:</td>
                            <td><?php echo DonusumleriGeriDondur($Kayit["HesapNumarasi"]); ?></td>
                        </tr>
                        <tr height = "25">
                            <td width="5">&nbsp;</td>
                            <td>Iban</td>
                            <td>:</td>
                            <td><?php echo DonusumleriGeriDondur($Kayit["IbanNumarasi"]); ?></td>
                        </tr>
                    </table>
                </td>
                <td width="20">&nbsp;</td>

                </td>
                <?php
                    $DonguSayisi++;
                    if($DonguSayisi>$SutunAdetSayisi){
                        echo "</tr><tr>";
                        $DonguSayisi = 1;
                    }

            }
                ?>
























    </tr>



        </table>
    </td>















</tr>








</table>