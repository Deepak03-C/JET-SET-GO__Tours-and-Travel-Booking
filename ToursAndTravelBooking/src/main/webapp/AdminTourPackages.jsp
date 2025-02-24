<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/AdminTourPackages.css">
</head>
<body>
<div class="container">
        <header>
          <h1 id="title">JetSetGo</h1>
          <div id="navigation">
            <nav id="nav">
              <a href="AdminHome.jsp">Home</a>
              <a href="AdminCompany.jsp">Company</a>
              <a href="AdminTourPackages.jsp">TourPackage</a>
              <a href="AdminHotels.jsp">Hotels</a>
              <a href="Contact.jsp">Contact</a>
              <%if(session!=null){%>
                    	<a href="adminlogout">Logout</a>
                    	<% }%><%else{%>
                    		<a href="index.jsp">Login|SignUp</a>	
                    		<%} %>
            </nav>
          </div>
        </header>
      </div>

      <div id="container1">
        <div id="video">
            <video id="video1" autoplay loop muted>
                <source src="./assest/TourPackage.mp4">
            </video>
        </div>

        <div id="adminpackageform">
            <h1>TourPackage</h1>
            <form action="admintourpackages" method="post" enctype="multipart/form-data">
                <label for="">Image</label>
                <input type="file" name="img" id=""> <br> <br>
                <label for="">Place</label>
                <input type="text" name="tourplace" id=""> <br> <br>
                <label for="">Days</label>
                <input type="text" name="days" id=""> <br> <br>
                <input type="submit" value="Add">
            </form>
        </div>
        <div id="viewa">
            <a href="viewadminpackages" id="view">View>></a>
        </div>
        
      </div>
</body>
</html>