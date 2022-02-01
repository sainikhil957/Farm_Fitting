<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:400,600,700"/>
  <link rel="stylesheet" href="farmer_signup.css"/>
  <!-- <script src="signup.js"></script> -->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign up</title>
</head>
<body style="background-image: url('/static/Images/si1.jpg');  background-attachment: fixed; 
background-size: 100%;">
  <div class="body-div">
    <div class="container">
      <div id="signup_div" class="main-div">
        <h3 style="align-self: flex-start; padding: 10px 0px;">Farmer SignUp</h3>
      <form action="farmer_signup_register" method="POST">
       
       	<input type="text" placeholder="Username"  name="name" required/>
        <input type="text" placeholder="Email" id="email_field" name="email" required/>
        <input type="text" placeholder="Phonenumber"  name="phonenumber" required/>
        <input type="text" placeholder="Enter Address" name="address" required>
         
        <input type="password" placeholder="Password"  name="password" required/>
        
        <button type="submit" id="btn_signup">signup</button>
      </form>
      <p style="padding: 10px;">Already have an account? <a href="/farmer_signin" style="color: #4285f4;">Login</a></p>
    </div>
    <div>
      <img height="300px" width="400px" src="farmer_signin.jpg" alt="">
    </div>
  </div>
  </div>
</body>
  
</html>