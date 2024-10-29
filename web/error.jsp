<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            font-family: Arial, Helvetica, sans-serif;
            background-color: #333;
            margin: 0;
            padding: 0;
        }   
        h1{
            text-align: center;
            margin-top: 50px;
        }    
        form {
            background-color: #ffffff;
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .error{
            background-color: #ffcc99;
        }
        label{
            display: block;
            margin-bottom: 8px;
            font-weight: bold;

        }
        input[type ="text"],
        input[type = "password"]{
         width: calc(100% - 22px);
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid;
        border-radius: 5px;
        font-size: 16px;
        }

        input[type ="submit"]{
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        background-color: antiquewhite;
        color: white;
        font-size: 16px;
        cursor: pointer;
        }

        input[type ="submit"]:hover{
        background-color: #45a049;
        }
        
        .error{
        color: red;
        text-align: center;
        margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Iniciar Sesion</h1>
    <form action="ProcesarFormulario" method="post">
       
        <label for="usuario">Usuario:</label>
        <input type="text" id="usuario" name="Usuario">
    
        <label for="clave">Clave:</label>
        <input type="password" id="clave" name="Clave" >
        <input type="Submit" value="Enviar">
       </form>
       <%
            String error = (String) request.getAttribute("error");
            if (error != null){
        %>
        <p class = "error"><%= error %></p>
        <%

            }
         %> 
</body>
</html>