<?php

include 'include/config.inc.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Validação</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h1 {
            text-align: center;
            font-weight: bold;
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }
        form {
            max-width: 400px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            font-weight: bold;
            color: #333;
        }
        input[type="number"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #808080; /* Light blue color */
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #696969; /* Darker shade of light blue */
        }
    </style>
</head>
<body>
   
    <div class="container">
        <h1>Insira o código que recebeu no seu email!</h1>
        <form action="include/codigo.php" method="post">        
            <label for="codigo">Código:</label>
            <input type="number" name="codigo" id="codigo" >
            <input type="submit" value="Submeter">
        </form>
    </div>
</body>
</html>
