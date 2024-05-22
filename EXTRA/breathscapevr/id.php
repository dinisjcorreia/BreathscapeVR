<?php
include 'config.inc.php';

$idrand = rand(100000,999999);
$query = my_query('SELECT * FROM id WHERE uniqueid = "' . $_POST["idunico"] .'";');
if (count($query) == 0) {
    $query2 = my_query('INSERT INTO id (id, uniqueid) VALUES ("' . $idrand .'","' . $_POST["idunico"] .'");');
    $query3 = my_query('SELECT * FROM id WHERE uniqueid = "' . $_POST["idunico"] .'";');
    echo $query3[0]["id"];

} else {
    echo $query[0]["id"];
}