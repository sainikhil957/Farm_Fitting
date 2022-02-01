<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:400,600,700"/>
  <link rel="stylesheet" href="farmer_signin.css"/>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
</head>
<body style="background-image: url('');  background-attachment: fixed; 
background-size: 100%;">
  <div class="body-div">
    <div id="cont" class="container">
      <div id="login_div" class="main-div">
        <h3 style="align-self: flex-start; padding: 10px 0px;">Farmer Login</h3>
        
        <form action="/farmer_login" method="POST">
          <input type="text" placeholder="Email" id="email_field" name="email" required/>
          <input type="password" placeholder="Password" id="password_field" name="password" required/>
          <button type="submit" id="btn_login">login</button><br>
          <button onclick="location.href='/explore/main/'" id="btn_login1">login as Guest</button>
        </form>
       
        <p style="padding: 10px 0px;">Don't have an account? <a href="/farmer_signup" style="color: #4285f4;">Signup</a></p>
      </div>
      <div>
        <img height="300px" width="300px" src="farmer_signin.jpg" alt="">
       
      </div>
    </div>
  </div>
</body>
<script>
</script>
</html>