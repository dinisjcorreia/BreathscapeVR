<?php
@session_start();
global $arrConfig;

$arrConfig['servername'] = 'sql.freedb.tech';
$arrConfig['username'] = 'freedb_kodin';
$arrConfig['password'] = 'a$S2$U8z*?cux*a';
$arrConfig['dbname'] = 'freedb_breathscapevr';

$arrConfig['urlMail'] = 'https://expocolgaia.pt/breathscape/include/mail.inc.php';

// chamada de outros include
include_once 'db.inc.php'; 