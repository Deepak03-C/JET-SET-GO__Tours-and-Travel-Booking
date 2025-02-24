<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/ConfirmBooking.css">
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
        <a href="BookHotel.jsp" id="back">Back>></a>

    </div>
    
    <%@ page import="java.net.URLEncoder" %>
    <%String hotel = request.getParameter("hotel");
    	String p = request.getParameter("price");
    	String name = request.getParameter("name");
    	String contact = request.getParameter("contactnumber");
    	String date = request.getParameter("bookingdate");
    	int members = Integer.parseInt(request.getParameter("numberofpersons"));
    %>
    <%double price = Double.parseDouble(p.substring(1, (p.length()-1))); %>
    
    

    <div id="bookingform">
        <section id="video">
            <video loop muted autoplay id="video1">
                <source src="./assest/HotelVideo.mp4">
            </video>
        </section>
        <section id="bookform">
            <h1>Hotel Booking</h1>
        <form action="hotelbooking" method="post">
            <label for="">Booking Person Name :</label>
            <input type="text" name="name" id="" value="<%=name %>" readonly> <br> <br>
            <label for="">Person Contact Number:</label>
            <input type="text" name="contactnumber" id="" value="<%=contact%>"> <br> <br>
            <label for="">Enter Date:</label>
            <input type="date" name="bookingdate" id="" value="<%=date%>"> <br> <br>
            <label for="">Enter Number of Persons:</label>
            <input type="text" name="numberofpersons" id="" value="<%=members%>"> <br> <br>
             <label for="">Hotel Name :</label>
            <input type="text" name="hotel" value="<%= hotel%>"> <br> <br>
             <label for="">Hotel Price :</label>
            <input type="text" name="price" value="<%= price*members %>"><br><br>
            
            <input  type="submit" value="Book Now" id="booknow">
        </form>
        </section>

    </div>

</body>
</html>