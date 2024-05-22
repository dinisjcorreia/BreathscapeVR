<?php
include 'config.inc.php';

$query99 = my_query('SELECT * FROM id WHERE uniqueid = "' . $_POST["idunico"] .'";');

$user = $query99[0]["username"];

if (strcmp($user, "0") == 0) {
    echo '0';
}else{
    $query98 = my_query('SELECT * FROM login WHERE username = "' . $user .'";');
    $numsessoes = $query98[0]["numsessoes"];
    
        echo $user.','.$numsessoes;
}




