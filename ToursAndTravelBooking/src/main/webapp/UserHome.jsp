<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/UserHome.css">
</head>
<body>

	<div class="container">
        <header>
            <h1 id="title">JetSetGo</h1>
            <div id="navigation">
                <nav id="nav">
                    <a href="UserHome.jsp">Home</a>
                    <a href="usercompany.jsp">Company</a>
                    <a href="usertour">TourPackage</a>
                    <a href="userhotel">Hotels</a>
                    <a href="UserContact.jsp">Contact</a>
                    <%if(session!=null){%>
                    	<a href="userlogout">Logout</a>
                    	<% }%><%else{%>
                    		<a href="index.jsp">Login|SignUp</a>	
                    		<%} %>
                </nav>
            </div>
        </header>
    </div> 

    <div class="container">
        <div id="#banner">
            <video id="video1" loop autoplay muted width="100%">
                <source src="./assest/travelvideo1.mp4">
            </video>
                <p id="bannercontent1">Wanderlust and adventures await.</p>
                <p id="bannercontent2">Embark on your next adventure with us! Discover breathtaking destinations, unforgettable experiences, and seamless journeys tailored just for you.</p>
        </div>

    </div>

</body>
</html>