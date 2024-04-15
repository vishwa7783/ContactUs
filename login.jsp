<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@ page import="javax.servlet.http.HttpServletRequest" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        
        .container {
            background-color: #fff;
            padding: 30px;
            max-width: 500px;
            margin: 0 auto;
        }

        h1 {
            text-align: center;
            color: #333;
        }


        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>   
    <main>
        <div class="container">
            <h1>Login Here</h1>

            <form action="login" method="post">
                <input type="text" name="id" placeholder="Enter ID"><br>
                <input type="password" name="pass" placeholder="Enter Password"><br>
                <input type="submit" value="login"><br>
            </form>
        </div>
    </main>
</body>
</html>
