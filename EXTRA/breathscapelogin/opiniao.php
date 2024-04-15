<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comentário</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 350px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-weight: 700;
            font-size: 32px;
            color: #333;
            text-transform: uppercase;
            text-align: center;
            margin-bottom: 30px;
        }
        form label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }
        form input[type="number"],
        form input[type="text"],
        form input[type="password"],
        form input[type="email"],
        form input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }
        form input[type="submit"] {
            background-color: #808080; /* grey */
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        form input[type="submit"]:hover {
            background-color: #696969; /* darker grey */
        }
        .register-link {
            text-align: center;
        }
        .register-link a {
            color: #808080; /* grey */
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .register-link a:hover {
            color: #696969; /* darker grey */
        }
    </style>
</head>
<body>
   
    <div class="container">
        <h1>Comentário</h1>
        <form action="include/opiniao.inc.php" method="post">
            <label for="nome">Nome:</label>
            <input type="text" name="nome" id="nome">
            <label for="email">Email:</label>
            <input type="email" name="email" id="email">
            <label for="comentario" style="text-align: center;">Deixe o seu comentário sobre a sua experiência na nossa aplicação aqui: </label> 
            <input type="text" name="comentario" style="height: 200px;">
            
            <input type="submit" value="Submeter">
            
        </form>
    </div>
</body>
</html>
