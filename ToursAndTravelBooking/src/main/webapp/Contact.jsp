<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/Contact.css">
</head>
<body>
	<div id="container">
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

    <div id="details">
      <section id="map">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62212.48596511639!2d80.10427108314613!3d12.953902611704649!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a525e4ca559c68f%3A0x1e3e6d4bcd550206!2sQSpiders%20Chennai%20Chrompet!5e0!3m2!1sen!2sin!4v1738318504454!5m2!1sen!2sin"
          width="600"
          height="450"
          style="border: 0"
          allowfullscreen=""
          loading="lazy"
          referrerpolicy="no-referrer-when-downgrade"
        ></iframe>
      </section>

      <section id="contact">
        <h1>JetSetGo Chennai Chrompet</h1>
        <p>
          JetSetGo Chennai Chrompet No:15, 6th Main Rd, Chambers Colony,
          Chromepet, Chennai, Tamil Nadu 600044
        </p>
        <p>Contact: <b>9876543210</b></p>
      </section>
    </div>
</body>
</html>