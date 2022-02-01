
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crops you sold</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

	<div class="w3-top">
    <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
      <a href="/admin_homepage" class="w3-bar-item w3-button">back</a>
      
      <!-- Right-sided navbar links. Hide them on small screens -->
      <div class="w3-right w3-hide-small">
        <a href="/home" class="w3-bar-item w3-button">Logout</a>
        
        </div>
    </div>
    </div>
    
   <div class="p-1 mb-2  text-dark" style="text-align:center; background-color: deepskyblue; margin-top: 100px;"><h2>Farmers Crop Request</h2></div>
    
	<table class="table table-hover " style="margin-top: 100px;margin-left: 250px; width: 1000px;">
		<thead>
		    <tr>
		      <th scope="col">Email</th>
		      <th scope="col">Cropname</th>
		      <th scope="col">Quantity</th>
		      <th scope="col">Cost</th>
		      <th scope="col">Status</th>
		      <th scope="col">Action</th>
		    </tr>
		</thead>
  		  <tbody>
  		    <c:forEach var="emp" items="${fcr}">
				<tr>
				<td>${emp.email}</td>
				<td>${emp.cropname}</td>
				<td>${emp.quantity}</td>
				<td>${emp.cost}</td>
				<c:choose>
				    <c:when test="${emp.status=='Not Accepted'}">
				        <td style="background-color: red">Not Accepted</td> 
				        <br />
				    </c:when>    
				    <c:otherwise>
				        <td style="background-color: green">Accepted</td>
				        <br />
				    </c:otherwise>
				</c:choose>
				<td><a class="btn btn-warning" href="/updateFCR/${emp.id}">Accept</a></td>
				
				</tr>
			</c:forEach>
  		  </tbody>
	  			   
  		
	</table>
</body>
</html>