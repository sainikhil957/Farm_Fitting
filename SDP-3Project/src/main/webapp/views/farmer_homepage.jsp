<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="farmer_homepage.css">
</head>
<style>
body {
  background-image: url('farmer_homepage.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>
<body>

	<div class="w3-top">
    <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
      <a href="/get_CropsYouSold" class="w3-bar-item w3-button">Crops you sold</a>
      
      <!-- Right-sided navbar links. Hide them on small screens -->
      <div class="w3-right w3-hide-small">
        <a href="/farmer_logout" class="w3-bar-item w3-button">Logout</a>
        
        </div>
    </div>
    </div>
    
   		<div class="p-1 mb-2 bg-warning text-dark" style="text-align:center; margin-top: 100px; margin-left: 550px; margin-right: 550px;"><h2>Modern Farming</h2></div>
	<table class="table table-hover" style="margin-top: 100px;margin-left: 200px;margin-right: 350px; width: 500px;">
		<tbody>
		    <tr>
		      <th scope="col">
		      	<center>
                <p style="font-size:5px; text-align:center; color:black; background-color: deepskyblue; margin-top: 10px;"><a href="/farmer_buyseeds"><h1>Buy seeds</h1></p>
        		</center>
        		</th>
		    </tr>
		    
		    <tr>
		      <th scope="col">
		      	<center>
                <p style="font-size:35px; text-align:center; color:black; background-color: deepskyblue; margin-top: 10px;"><a href="/farmer_sellyourcrops"><h1>Sell your crops</h1></a></p>
        		</center>
        		</th>
		    </tr>
		    <tr>
		      <th scope="col">
		      	<center>
                <p style="font-size:35px; text-align:center; color:black; background-color: deepskyblue; margin-top: 10px;"><a href="https://www.thehindu.com/business/agri-business/"><h1>News</h1></a></p>
        		</center>
        		</th>
		    </tr>
		    <tr>
		      <th scope="col">
		      	<center>
                <p style="font-size:35px; text-align:center; color:black; background-color: deepskyblue; margin-top: 10px;"><a href="https://www.youtube.com/results?search_query=videos+on+farming"><h1>Videos on farming</h1></a></p>
        		</center>
        		</th>
		    </tr>
		    
		</tbody>
	</table>
	<footer>
    <p>Copyright © 2021 SDP169<br><br>
    <a href="#">klu@example.com</a></p><br>
    <a href="{% url 'About' %}">AboutUs</a><br><br>
    <a href="{% url 'Contact' %}">Contact Us</a>
  </footer>
</body>
</html>