<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
		
		p {
			text-align:center;
		}
		
		label {
		    display: block;
		    margin-bottom: 5px; 
		}
		
		input[type="text"], input[type="email"], textarea {
		    width: 100%; 
		    padding: 10px;
		    margin-bottom: 15px;
		    border: 1px solid #ddd;
		    box-sizing: border-box; 
		}
		
	     button[type="submit"] {
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
            <h1>Contact Us</h1>
            <p>Please fill this form in a decent manner</p>

            <form action="contactus" method="post">
                <label for="fullname">Full Name</label>
                <input type="text" id="fullname" name="name" required>

                <label for="email">E-mail</label>
                <input type="email" id="email" name="email" placeholder="example@example.com" required>

                <label for="message">Message</label>
                <textarea id="message" name="message" rows="5" required></textarea>

                <button type="submit">SUBMIT</button>
            </form>
        </div>
    </main>

</body>
</html>
