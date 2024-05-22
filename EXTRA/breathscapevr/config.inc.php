<?php
@session_start();
global $arrConfig;

$arrConfig['servername'] = '';
$arrConfig['username'] = '';
$arrConfig['password'] = '';
$arrConfig['dbname'] = '';


// chamada de outros include
include_once 'db.inc.php'; 
