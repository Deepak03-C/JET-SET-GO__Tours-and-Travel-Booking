<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="toursandtravelbooking.dto.AdminPackages"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/ViewAdminPackages.css">
</head>
<body>
<div>
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
        <a href="./AdminTourPackages.jsp" id="back">Back>></a>

    </div>

	 <div id="cards">

	<%List<AdminPackages> tourpackages = (List)request.getAttribute("tourpackages");
		if(tourpackages!=null){
			for(AdminPackages a:tourpackages){
				
				String imageString = Base64.getEncoder().encodeToString(a.getImage());
				
	%>

   
        <section class="card">
            <img src="data:image/jpeg;base64, <%= imageString %>" alt="packageimage" class="cardimg">
        <p class="place"><%=a.getPlace() %></p>
        <p class="days"><%=a.getDays()%></p>
        <input type="submit" value="Book Now" class="booknow">
        </section>
   
    <% }
		}
    %>
    
     </div>
</body>
</html>