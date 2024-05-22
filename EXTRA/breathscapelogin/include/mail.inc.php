
<?php
 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
 

require 'vendor/autoload.php';
include 'main.php';


echo $_GET['codigo'];

/* $query = my_query('SELECT * FROM login WHERE nome = "' . $_GET['utilizador'] .'";'); */

if (isset($_GET['email']))
{
    $email = $_GET['email'];
}
else{
    $email = $query[0]['email'];
}


$html = '

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CÓDIGO DE VERIFICAÇÃO</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; text-align: center;">

    <div style="max-width: 600px; margin: 20px auto; padding: 20px; background-color: #fff; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">

        <h1 style="color: #333;">CÓDIGO DE VERIFICAÇÃO</h1>

        <p>Olá!</p>

        <p>Para completar o processo de verificação, utilize o seguinte código:</p>

        <div style="background-color: #333; color: #fff; padding: 10px; font-size: 24px; border-radius: 4px; margin: 20px 0;">
            <strong>Código: ' . $_GET['codigo'] . '</strong> 
        </div>

        

        <p>Obrigado por escolher relaxar connosco!</p>

        <p>Atenciosamente,<br>
            Breathscape VR: Guided Breathing</p>

    </div>

</body>
</html>

';

$user = '';
$pass = '';


$mail = new PHPMailer(true);
 
try {
    $mail->SMTPDebug = 2;                                       
    $mail->isSMTP();                                            
    $mail->Host       = "smtp.gmail.com";                    
    $mail->SMTPAuth   = true;                             
    $mail->Username   = $user;   
    $mail->CharSet = 'UTF-8';              
    $mail->Password   = $pass;                        
    $mail->SMTPSecure = 'ssl';                              
    $mail->Port       = 465;  
 
    $mail->setFrom( $user, 'Breathscape VR');           
    $mail->addAddress($email, $_GET['utilizador']);
    
      
    $mail->isHTML(true);                                  
    $mail->Subject = 'Código de Verificação';
    $mail->Body    = $html;
    $mail->AltBody = 'Validação do código, insira o seguinte código na tela do jogo para concluir o processo de verificação: ' 
    . $_GET['codigo'] . '';
    $mail->send();
    echo "Mail has been sent successfully!";
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}


?>
