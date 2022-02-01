<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Buy Seeds</title>
<link rel="stylesheet" type="text/css" href="farmer_sellyourcrops.css">

<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;1,200&display=swap" rel="stylesheet">
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style> 
.header {
  background-color: #90EE90;
  text-align: center;
  padding: 20px;
}
.footer {
            position: fixed;
            padding: 10px 10px 0px 10px;
            bottom: 0;
            width: 100%;
            height: 40px;
            background: #90EE90;
        }
table, th, td {
  border: 1px solid black;
}
table {
  width: 70%;
}
table {
  border-collapse: collapse;
}
td {
  height: 35px;
  padding: 5px 10px;
  text-align: left;
}

tr:nth-child(even) {background-color: #f2f2f2;}
th {
  background-color: #00FF7F;
  color: Black;
   height: 40px;
}
button {
  background-color: #04AA6D;
  color: black;
  padding: 5px 10px;
  margin: 3px 0;
  border: none;
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
}
button:hover {
  opacity:1;
}
.deletebtn {
border-radius: 7px;
  width: 98%;
}
.addbtn
{
border-radius: 7px;
background-color: #7FFFD4;
  align: left;
  width: 10%;
}
.deletebtn {
  align : float;
  background-color: #7FFFD4;
}
</style>
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
      <form action="/get_suggestedseed" method="POST">
        <h2 style="font-weight: bold; color: #333">Buy Seeds</h2>
        <div class="form-group">
          <input
            type="text"
            class="form-control"
            placeholder="season"
            required="required"
            name="season"
          />
          <span id="span1"></span>
        </div>
        
        <div class="form-group">
          <input
            type="text"
            class="form-control"
            placeholder="soil"
            required="required"
            name="soil"
          />
        </div>
        
        <div class="form-group">
          <button type="submit" class="btn btn-info btn-lg">Suggested Seed</button>
        </div>
      </form>
      
    </div>
    
		    <div class="header">
		  <h1></h1>
		</div>

		<div align="center"> 
		  <h2 align=center> Suggested Seeds </h2><br/>
		<table align=center border=1>
		<tr>
		<th> SEASON </th>
		<th> SEED </th>
		<th> SOIL </th>
		</tr>
		<c:forEach var="donations" items="${ss}">
		
		<tr>
		<td>${donations.season}</td>
		<td>${donations.seed}</td>
		<td>${donations.soil}</td>
		</tr>
		</c:forEach>
		</table> 
		  <br/>
		  <br/> <br/> <br/> <br/> <br/>
		  </div>
		<div class="footer">
		  <p></p>
		</div>
</body>
</html>
