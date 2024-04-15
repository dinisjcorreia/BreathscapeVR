<?php 
	include 'config.inc.php';
	//versão simplificada de ligação à BD
	$ligacao = mysqli_connect('sql.freedb.tech', 'freedb_kodin', 'a$S2$U8z*?cux*a', 'freedb_breathscapevr');
	
	if(mysqli_connect_errno()){
		//Forma simplificada de detetar erros 
		echo "Erro ligação BD"; //Erro code #1 = a Ligação Falhou
		exit();
	}		
		$nomeJogador = $_POST["username"] ? $_POST["username"] : '';
		$passwordJogador = $_POST["password"] ? $_POST["password"] : '';
		//Verificar se nome de utilizador já existe na BD
		$verificarNome = "SELECT username FROM login WHERE username = '" . $nomeJogador ."';";
		$qVerificaNome = mysqli_query($ligacao, $verificarNome) or die ("Não foi possivel verificar o nome do utilizador"); //Erro #2 = Não foi possivel verificar o nome do utilizador 
	


	
?>