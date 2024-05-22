<?php
include 'config.inc.php';


$query99 = my_query('UPDATE login SET numsessoes = "' . $_POST["numsessoes"] .'" WHERE username = "' . $_POST["username"] .'";');






