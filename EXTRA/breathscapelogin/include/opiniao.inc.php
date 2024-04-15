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

include 'config.inc.php';

$data_hora = date("d/m/Y") . ' ' . date("h:i:s");

$query = my_query('INSERT INTO opinioes (data_hora, comentario, nome, email) VALUES ("'.$data_hora.'", "'.$_POST["comentario"].'", "'.$_POST["nome"].'", "'.$_POST["email"].'");');
echo 'Comentário enviado com sucesso!';





?>
</body>
</html>

