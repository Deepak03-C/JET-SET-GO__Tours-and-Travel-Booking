<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Base64"%>
<%@page import="toursandtravelbooking.dto.AdminPackages"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/UserTour.css">
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

	 <div id="cards">

	<%List<AdminPackages> tourpackages = (List)request.getAttribute("packages");
		if(tourpackages!=null){
			for(AdminPackages a:tourpackages){
				
				String imageString = Base64.getEncoder().encodeToString(a.getImage());
				
	%>

   
        <section class="card">
            <img src="data:image/jpeg;base64, <%= imageString %>" alt="packageimage" class="cardimg">
        <p class="place"><%=a.getPlace() %></p>
        <p class="days"><%=a.getDays()%></p>
        <a href="BookPackage.jsp?place=<%= URLEncoder.encode(a.getPlace(), "UTF-8") %>&days=<%= URLEncoder.encode(a.getDays(), "UTF-8") %>"><input type="submit" value="Book Now" class="booknow"></a>
        </section>
   
    <% }
		}
    %>
    
     </div>
     
     <script>
    window.onload = function() {
        const urlParams = new URLSearchParams(window.location.search);
        if (urlParams.get("booking") === "success") {
            alert("Tour booked successfully!");
            window.location.href = "usertour"; 
        }
    };
</script>
     
</body>
</html>