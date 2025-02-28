<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/BookHotel.css">
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
        <a href="UserHotel.jsp" id="back">Back>></a>

    </div>
    
    <%@ page import="java.net.URLEncoder" %>
    <%String hotel = request.getParameter("hotel");
    	String price = request.getParameter("price");
    %>
    
    

    <div id="bookingform">
        <section id="video">
            <video loop muted autoplay id="video1">
                <source src="./assest/HotelVideo.mp4">
            </video>
        </section>
        <section id="bookform">
            <h1>Hotel Booking</h1>
        <form action="ConfirmBooking.jsp">
            <label for="">Booking Person Name :</label>
            <input type="text" name="name" id="" placeholder="Enter Name"> <br> <br>
            <label for="">Person Contact Number:</label>
            <input type="text" name="contactnumber" id="" placeholder="Enter Contact Number"> <br> <br>
            <label for="">Enter Date:</label>
            <input type="date" name="bookingdate" id="" placeholder="Enter Journey Date"> <br> <br>
            <label for="">Enter Number of Persons:</label>
            <input type="text" name="numberofpersons" id="" placeholder="Enter Number of Persons"> <br> <br>
            <input type="hidden" name="hotel" value="<%= URLEncoder.encode(hotel, "UTF-8") %>">
            <input type="hidden" name="price" value="<%= URLEncoder.encode(price, "UTF-8") %>">
            
            <input type="submit" value="Book Now" id="booknow">
        </form>
        </section>

    </div>

</body>
</html>