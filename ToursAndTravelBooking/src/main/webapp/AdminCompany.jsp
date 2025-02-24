<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/AdminCompany.css">
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

    <div id="companycontent">
      <div id="container1">
        <div id="aboutus">
          <h2>About us</h2>
          <h3 id="OurStory">Our Story</h3>
          <p>
            Established in 1968, JetSetGo is entirely owned and managed by Sangam
            Group of Hotels. The Group is recognized as one of the largest hotel
            chains in Tamil Nadu. Along with the Group, the JetSetGo is striving
            hard for ultimate success and innovation.
          </p>
          <p>
            We are an ISO 9001: 2008 certified company that aim to set clear
            goals, fix the priorities and organize the resources effectively.
            JetSetGo enables you to discover a new destination and offer unique
            ideas to your travel.
          </p>
          <p>
            Our travel company offers a complete business travel environment for
            MICE (Meetings, Incentives, Conferences and Events) services at
            affordable cost. We provide a wide range of holiday tour packages for
            all the domestic and international destinations across the world.
          </p>
        </div>
      </div>
  
      <div id="visionmission">
        <section id="ourmission">
          <h2>Our Mission</h2>
          <p>
            JetSetGo is a full integrated travel company that offers comprehensive
            solutions for all the business and leisure travelers across the world.
            This prestigious travel company in Chennai mainly aims to satisfy the
            client’s requirements with ultimate transparency and
            cost-effectiveness. We assure to offer round the clock support and
            assistance at any point of your travel.
          </p>
        </section>
  
        <section id="ourvision">
          <h2>Our Vision</h2>
          <p>
            Our GT Team is striving hard to become the world class travel company
            and industry leader in the near future. We are planning to focus on
            customer centric approach and gain recognition among the worldwide
            clients. The travel company believes in maintaining highest quality
            standards and craft extraordinary moments especially for you.
          </p>
        </section>
      </div>
  
      <div id="history">
        <h1>History</h1>
        <p>
          Global tourism had reached its zenith over the past year ($8.8 trillion)
          and India is among its key players. As Indians are assuming a more
          pronounced sense of tourism today, international destinations have begun
          to gain more traction, anticipating around 50 million outbound tourists
          by 2020 from India alone. Citing this trend and banking on its vast
          opportunity, a globetrotter and hotelier incepted JetSetGo.
          The company is dedicated to gratifying leisure trips and corporate
          recreation, be it MICE events, abroad trips, award functions, incentive
          trips or international voyages. Established as a mere startup, JetSetGo
          follows a unique award-winning approach towards travel &
          tourism that has earned it a position among top 10 tour operators in the
          Australian, Singapore and Thailand tourism boards, and top five best
          tour operators in South India.
        </p>
        <p>
          With such titles to its wall of fame, JetSetGo justifies its repute
          by being an absolute customization-based travel platform that does not
          limit itself to any SOP (Standard Operating Procedure) and instead
          follows a flexible and economical approach. As a well recognized brand
          in its field, the company ensures to offer never-before like packages to
          customers resulting from its enriched tie-ups with various travel
          companies, cruise lines, airlines and tour-buffs around the globe.
          Offering destination slabs ranging from Rs.2000-200,000, JetSetGo
          destination packages further club into exclusives like
          family/kids/elderly-friendly, couples, bachelors, night-life & shopping,
          education trips and others. Moreover, right from availing visa/passport
          services to international currency exchanges and sim card provisions
          with round-the-clock travel assistance and more, customers are pampered
          to experience every minute of their trip with relaxation and ease.
        </p>
      </div>
    </div>

</body>
</html>