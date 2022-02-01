<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
      
      <!-- Right-sided navbar links. Hide them on small screens -->
      <div class="w3-right w3-hide-small">
        <a href="/home" class="w3-bar-item w3-button">Logout</a>
        
        </div>
    </div>
    </div>
    
   		<div class="p-1 mb-2 bg-warning text-dark" style="text-align:center; margin-top: 100px; margin-left: 550px; margin-right: 550px;"><h2>Admin Page</h2></div>
	<table class="table table-hover" style="margin-top: 100px;margin-left: 200px;margin-right: 350px; width: 500px;">
		<tbody>
		    <tr>
		      <th scope="col">
		      	<center>
                <p style="font-size:35px; text-align:center; color:black; background-color: deepskyblue; margin-top: 10px;"><a href="/get_farmers_profile"><h1>List of Farmers</h1></a></p>
        		</center>
        		</th>
		    </tr>
		    
		    <tr>
		      <th scope="col">
		      	<center>
                <p style="font-size:35px; text-align:center; color:black; background-color: deepskyblue; margin-top: 10px;"><a href="/get_FarCropReq"><h1>Farmers crop request</h1></a></p>
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
</body>
</html>