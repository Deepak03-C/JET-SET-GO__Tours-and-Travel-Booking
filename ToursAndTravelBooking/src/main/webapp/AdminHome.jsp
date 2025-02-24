<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/AdminHome.css">
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

    <div class="container">
        <div id="#banner">
            <video id="video1" loop autoplay muted width="100%">
                <source src="./assest/travelvideo1.mp4">
            </video>
                <p id="bannercontent1">Wanderlust and adventures await.</p>
                <p id="bannercontent2">Embark on your next adventure with us! Discover breathtaking destinations, unforgettable experiences, and seamless journeys tailored just for you.</p>
        </div>

    </div>

    <!--  <div class="container">
      <div id="HomeCard">
        <h1>Popular Packages</h1>
        <section id="card1">
          <div id="card1img">
            <a href="#"
              ><img
                src="./assest/IndianTour.jpg"
                alt=""
            /></a>
          </div>
          <div id="card1content">
            <a href="#"><h5>India Tour Packages</h5></a>
            <a href="#"
              ><input type="submit" value="See Tours" id="card1button"
            /></a>
          </div>
        </section>

        <section id="card2">
            <div id="card2img">
                <a href="AdminTourPackages.jsp"><img src="./assest/InternationTour.jpg" alt=""></a>
            </div>
            <div id="card2content">
                <a href="AdminTourPackages.jsp"><h5>International tour Packages</h5></a>
                <a href="AdminTourPackages.jsp"><input type="submit" value="See Tours" id="card2button"></a>

            </div>
        </section>

        <section id="card3">
            <div id="card3img">
                <a href="AdminTourPackages.jsp"><img src="./assest/BachelorTour.jpg" alt=""></a>
            </div>
            <div id="card3content">
                <a href="AdminTourPackages.jsp"><h5>Bachelor tour Packages</h5></a>
                <a href="AdminTourPackages.jsp"><input type="submit" value="See Tours" id="card3button"></a>
            </div>
        </section>

        <section id="card4">
            <div id="card4img">
                <a href="AdminTourPackages.jsp"><img src="./assest/FamilyTour.jpg" alt=""></a>
            </div>
            <div id="card4content">
                <a href="AdminTourPackages.jsp"><h5>Bachelor tour Packages</h5></a>
                <a href="AdminTourPackages.jsp"><input type="submit" value="See Tours" id="card4button"></a>
            </div>
        </section>

      </div>
    </div> -->

</body>
</html>