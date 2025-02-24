<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/BookPackages.css">
</head>
<body>

	<div>
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

    <div id="backbutton">
        <a href="UserTour.jsp" id="back">Back>></a>

    </div>
    
    <%@ page import="java.net.URLEncoder" %>
    <%
    // Retrieve place and days from request parameters
    String place = request.getParameter("place");
    String days = request.getParameter("days");
	%>

    <div id="bookingform">
        <section id="video">
            <video loop muted autoplay id="video1">
                <source src="./assest/AirBaloon.mp4">
            </video>
        </section>
        <section id="bookform">
            <h1>Package Booking</h1>
        <form action="packagebooking">
            <label for="">Enter Name :</label>
            <input type="text" name="name" id="" placeholder="Enter Name"> <br> <br>
            <label for="">Enter Contact Number:</label>
            <input type="text" name="contactnumber" id="" placeholder="Enter Contact Number"> <br> <br>
            <label for="">Enter Journey Date:</label>
            <input type="date" name="journeydate" id="" placeholder="Enter Journey Date"> <br> <br>
            <label for="">Enter Number of Persons:</label>
            <input type="text" name="numberofpersons" id="" placeholder="Enter Number of Persons"> <br> <br>
            <input type="hidden" name="place" value="<%= URLEncoder.encode(place, "UTF-8") %>">
    		<input type="hidden" name="days" value="<%= days %>">
            <input type="submit" value="Book Now" id="booknow">
        </form>
        </section>

    </div>

</body>
</html>