
<?php
include 'config.inc.php';
@session_start();
?>

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
			color: red;
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

function getRnd($n) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $randomString = '';
 
    for ($i = 0; $i < $n; $i++) {
        $index = rand(0, strlen($characters) - 1);
        $randomString .= $characters[$index];
    }
 
    return $randomString;
}

	$url ="";
	//versão simplificada de ligação à BD
	$ligacao = mysqli_connect('', '', '', '');
	
	if(mysqli_connect_errno()){
		 
		echo "Erro ligação BD"; 
		exit();
	}
	$emailJogador = $_POST["email"];
	$nomeJogador = $_POST["username"];
	$passwordJogador = $_POST["password"];

	if (strlen($nomeJogador)<3)
	{
		echo "O nome de utilizador tem de ter pelo menos 3 caracteres!";
		exit();
	}else if (strlen($passwordJogador)<5)
	{
		echo "A password tem de ter pelo menos 5 caracteres!";
		exit();
	}
	$dataregisto=date("Y-m-d H:i:s");
	$pontuacao = 0;

	//Verificar se nome de utilizador já existe na BD
	$verificarNome = "SELECT username FROM login WHERE username = '" . $nomeJogador ."';";
	$qVerificaNome = mysqli_query($ligacao, $verificarNome) or die ("A verificação do username falhou!"); //Erro #2 = Não foi possivel verificar o nome do utilizador 
	if(mysqli_num_rows($qVerificaNome) > 0) //Erro #3 - O nome já está registado 
	{
		echo "O nome do jogador já existe!";
		exit();
	}
	
	$email = my_query('SELECT * FROM login WHERE email = "' . $emailJogador .'";');

	if(count($email) > 0)
	{
		echo "O email já está registado!";
		exit();
	}
	$salt = "\$5\$round=5000\$" . getRnd(10) . $nomeJogador . "\$";
	
	$password = crypt($passwordJogador, $salt);

	$_SESSION['email'] = $emailJogador;
	$_SESSION['username'] = $nomeJogador;
	$_SESSION['password'] = $password;
	$_SESSION['dataregisto'] = $dataregisto;
	$_SESSION['salt'] = $salt;
			
	$valorAleatorio = rand(100000, 999999);
	
	$parametros = array(
		'email' => $emailJogador,
		'codigo' => $valorAleatorio
	);

	
	$query = http_build_query($parametros);
	
	// Envie a solicitação
	$response = file_get_contents($arrConfig['urlMail'] . '?' . $query);
   
	
	$_SESSION['codigo'] = $valorAleatorio;
	header("Location: " . $url . "valida.php");
	
?>
</body>
</html>
