<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="./css/style.css">
</head>
<body>

	<div id="maindiv">
        <div id="adminuser">
            <div  id="admin" >
                <a href="adminlogin.jsp"><img class="img-fluid" src="./assest/adminprofile.jpg" alt="" height="150px" width="150px"></a>
                <a href="adminlogin.jsp" class="text-decoration-none text-dark"> <h2> Admin</h2></a>
            </div>
            <div  id="user">
                <a href="userlogin.jsp"><img class="img-fluid" src="./assest/userprofile.jpg" alt="" height="150px" width="150px"></a>
                <a href="userlogin.jsp" class="text-decoration-none text-dark"><h2>User</h2></a>
            </div>
        </div>
    </div>

</body>
</html>