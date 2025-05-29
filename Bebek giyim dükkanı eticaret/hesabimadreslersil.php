<?php
global $VeriTabaniBaglantisi;
if(isset($_SESSION["Kullanici"])) {

    if(isset($_GET["ID"])){
        $GelenId        = Guvenlik($_GET["ID"]);
    }else{
        $GelenId        = "";
    }

    if ($GelenId != ""){


        $AdresSilmeSorgusu = $VeriTabaniBaglantisi->prepare("DELETE  FROM adresler WHERE id = ? LIMIT 1");
        $AdresSilmeSorgusu->execute([$GelenId]);
        $AdresSilmeSayisi = $AdresSilmeSorgusu->rowCount();

            if($AdresSilmeSayisi > 0){
                header("location:index.php?SK=65");
                exit();
            }else{
                header("location:index.php?SK=66");
                exit();
            }








    }else{
        header("location:index.php?SK=66");
        exit();
    }}else{
    header("location:index.php");
    exit();
}
?>