<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
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
        .login-container {
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
    <!-- <div>
        <h1><a href="index.php">   
            <img src="images/logopng.png" class="img-fluid" alt="Responsive image"></a>
        </h1>
    </div> -->
    <div class="login-container">
        <h1>Iniciar Sessão</h1>
        <form action="include/login.php" method="post">
            <label for="codigo">Código: </label>
            <input type="number" name="codigo" id="codigo">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username">
            <label for="password">Password:</label>
            <input type="password" name="password" id="password">
            <input type="submit" value="Submeter">
            <div class="register-link">
                <p>Se não tiver conta registe-se <a href="registo.php">aqui!</a></p>
            </div>
        </form>
    </div>
</body>
</html>
