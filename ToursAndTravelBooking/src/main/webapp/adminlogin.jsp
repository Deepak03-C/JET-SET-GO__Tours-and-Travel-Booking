<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JetSetGo</title>
<link rel="shortcut icon" href="./assest/travelling.jpg" type="image/x-icon">
<link rel="stylesheet" href="./css/style.css">
</head>
<body>

	<div id="adminmain">
        <div id="adminlogindiv">
            <h3>Admin Login</h3>
            <form action="adminlogin" id="adminlogin" method="post">
                <p>
                    <label for="">Admin Email</label>
                    <input type="text" name="adminemail" id="" required>
                </p>
                <br>
                <p>
                    <label for="">Admin Password</label>
                    <input type="text" name="adminpassword" id="" required>
                </p>
                <br>
                <% String msg = (String)request.getAttribute("msg"); %>
                <%if(msg!=null){ %>
              <%=msg%>
                <%} %>
                <input type="submit" id="adminsubmit1">
            </form>
        </div>
        <div id="adminregisterdiv">
            <h3>Admin Register</h3>
            <a href="#" id="notaadmin">Not an admin!! Register!!!</a>
            <form action="adminregister" id="adminregister" method="post">
                <p>
                    <label for="">Admin Id</label>
                    <input type="number" name="radminid" id="adminid" required>
                </p>
                <br>
                <p>
                    <label for="">Admin Name</label>
                    <input type="text" name="radminname" id="adminname" required>
                </p>
                <br>
                <p>
                    <label for="">Admin Email</label>
                    <input type="email" name="radminemail" id="adminemail" required>
                </p>
                <br>
                <p>
                    <label for="">Password</label>
                    <input type="password" name="radminpassword" id="adminpassword" required>
                </p>
                <br>
                <p>
                    <label for="">Confirm Password</label>
                    <input type="password" name="radminconfirmpassword" id="adminconfirmpassword" required>
                </p>
                <br>
                <span id="adminspan2"></span>
                <input type="submit" id="adminsubmit2">
            </form>
        </div>
    </div>
    
     <script src="./js/adminscript.js"></script>

</body>
</html>