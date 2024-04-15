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

include "main.php";



if(mysqli_num_rows($qVerificaNome) != 1) 
{
	echo "Utilizador não está registado ou mais do que um utilizador registado com o mesmo nome."; // Erro #5 = Numero de utilizadores registados != 1
	exit();
}

$query = my_query('SELECT * FROM login WHERE username = "' . $nomeJogador .'";');


$salt = $query[0]["salt"];
$password = $query[0]["password"];


$verificarPass = crypt($passwordJogador, $salt);
if($password != $verificarPass)
{
	echo "Password introduzida não está correta";// Erro #6 as password não são iguais
	exit();
}
else{
	//echo 'Sessão iniciada com sucesso! Pode voltar à aplicação.';
	$queryverifica = my_query('SELECT * FROM id WHERE id = "' . $_POST["codigo"] .'";');
	if (count($queryverifica) == 0)
	{
		echo "O código não existe!";
		exit();
	}else{
		$query5 = my_query('SELECT * FROM id WHERE id = "' . $_POST["codigo"] .'";');
		if($query5[0]["username"] != "0")
		{
			echo "Esse dispositivo já tem sessão iniciada!";
			exit();
		}
		$query3 = my_query('UPDATE id SET username = "' . $nomeJogador .'", id = "0" WHERE id="'.$_POST["codigo"].'";');
		echo ('Sessão iniciada com sucesso! Pode voltar à aplicação.');
	}

	

	
	//include "codigo.php";
	//"UPDATE id SET username = '.$nomeJogador.' WHERE id=$_POST["codigo"];"
}

?>
</body>
</html>

