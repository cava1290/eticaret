<?php
unset($_SESSION["Kullanici"]);
Session_destroy();

header("Location:index.php");
exit();


?>