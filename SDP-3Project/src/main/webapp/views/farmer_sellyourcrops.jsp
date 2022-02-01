<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SellYourCrops</title>
<link rel="stylesheet" type="text/css" href="farmer_sellyourcrops.css">

<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;1,200&display=swap" rel="stylesheet">
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body>
	
	<div class="w3-top">
    <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
      <a href="/farmer_homepage" class="w3-bar-item w3-button">back</a>
      
      <!-- Right-sided navbar links. Hide them on small screens -->
      <div class="w3-right w3-hide-small">
        <a href="/farmer_logout" class="w3-bar-item w3-button">Logout</a>
        
        </div>
    </div>
    </div>
	<div class="login-form">
      <form action="/farmer_sellyourcrops_register" method="POST">
        <h2 style="font-weight: bold; color: #333">Sell your crops</h2>
        <div class="form-group">
          <input
            type="text"
            class="form-control"
            placeholder="crop"
            required="required"
            name="cropname"
          />
          <span id="span1"></span>
        </div>
        
        <div class="form-group">
          <input
            type="text"
            class="form-control"
            placeholder="quantity"
            required="required"
            name="quantity"
          />
        </div>
        
        <div class="form-group">
          <input
            type="int"
            class="form-control"
            placeholder="cost"
            required="required"
            name="cost"
          />
        </div>
        
        <div class="form-group">
          <button type="submit" class="btn btn-info btn-lg">Send Request</button>
        </div>
      </form>
    </div>
</body>
</html>
