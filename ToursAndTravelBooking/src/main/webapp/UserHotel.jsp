<%@page import="java.net.URLEncoder"%>
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
<link rel="stylesheet" href="./css/UserHotel.css">
</head>
<body>
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
    
    
    <div id="cards">
   	<%List<AdminHotelsSide> hotels = (List)request.getAttribute("hotels");
   	if(hotels!=null){
   		for(AdminHotelsSide hotel : hotels){
   			String image = Base64.getEncoder().encodeToString(hotel.getHotelImage());
   			
   	%>
        <section class="card">
            <img src="data:image/jpeg;base64,<%=image %>" alt="packageimage" class="cardimg">
        <p class="hotel"><%=hotel.getHotelName() %></p>
        <p class="price"><%=hotel.getHotelPrice() %></p>
        <a href="BookHotel.jsp?hotel=<%= URLEncoder.encode(hotel.getHotelName(), "UTF-8") %>&price=<%= URLEncoder.encode(hotel.getHotelPrice(), "UTF-8") %>"><input type="submit" value="Book Now" class="booknow"></a>
        </section>
   
    <%}
   		}
   		%>
     </div>
     
     
     <script>
    window.onload = function() {
        const urlParams = new URLSearchParams(window.location.search);
        if (urlParams.get("booking") === "success") {
            alert("Hotel booked successfully!");
            window.location.href = "userhotel"; 
        }
    };
</script>
     
     
</body>
</html>