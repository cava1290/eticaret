<?php
if(isset($_SESSION["Kullanici"])){
    ?>
    <table width="1065" cellspacing="0" cellpadding="0" border="0" align="center">
        <tr height="75">
            <td>&nbsp;</td>
        </tr>
        <tr height="100">
            <td align="center"><img src="Resimler/Tamam.png" border="0"></td>
        </tr>
        <tr height="50">
            <td align="center"><b>Tebrikler Yorumunuz Başarıyla Gönderildi.</b></td>
        </tr>

        <tr>
            <td align="center" class="sonucsayfalari">Anasayfaya dönmek için <a href="index.php">tıklayınız</a>.</td>
        </tr>
        <tr>
            <td height="50">&nbsp;</td>
        </tr>
    </table>
    <?php
}
else{
    header("Location:index.php");
    exit();
}
?>