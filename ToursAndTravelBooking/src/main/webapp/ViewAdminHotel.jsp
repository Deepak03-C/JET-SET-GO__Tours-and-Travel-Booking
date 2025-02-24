<%@page import="java.util.Base64"%>
<%@page import="toursandtravelbooking.dto.AdminHotelsSide"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/ViewAdminHotel.css">
</head>
<body>
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
    
    <div id="backbutton">
        <a href="./AdminHotels.jsp" id="back">Back>></a>

    </div>
    
    <div id="cards">
   	<%List<AdminHotelsSide> hotels = (List)request.getAttribute("hotels");
   	if(hotels!=null){
   		for(AdminHotelsSide hotel : hotels){
   			String image = Base64.getEncoder().encodeToString(hotel.getHotelImage());
   			
   	%>
        <section class="card">
            <img src="data:image/jpeg;base64,<%=image %>" alt="packageimage" class="cardimg">
        <p class="place"><%=hotel.getHotelName() %></p>
        <p class="days"><%=hotel.getHotelPrice() %></p>
        <input type="submit" value="Book Now" class="booknow">
        </section>
   
    <%}
   		}
   		%>
     </div>
    
</body>
</html>