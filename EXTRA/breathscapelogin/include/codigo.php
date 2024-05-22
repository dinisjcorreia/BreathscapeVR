<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<style>


		body {
			font-family: Arial, sans-serif;
			background-color: #f4f4f4;
			color: black;
			margin: 0;
			padding: 0;
			display: flex;
			align-items: center;
			justify-content: center;
			height: 100vh;
		}

	</style>
</head>
<body>


<?php

@session_start();

$url ="";

if($_SESSION['codigo'] == $_POST["codigo"])
{
    echo "Código correto!";
    $ligacao = mysqli_connect('', '', '', '');
    $qCriarUtilizador = " INSERT INTO login (email, username, password, criado_em, salt) VALUES ( '" .$_SESSION['email']. "','" .$_SESSION['username']. "', '" .$_SESSION['password']. "', '" .$_SESSION['dataregisto']. "', '" .$_SESSION['salt']. "');";	
	mysqli_query($ligacao, $qCriarUtilizador) or die ("Falha ao criar utilizador!");//Erro #4 = Não foi possivel registar o utilizador na BD
    header('Location: ' . $url . 'login.php');

} else {
    echo "Código incorreto!";
}

?>
</body>
</html>
