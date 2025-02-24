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

	<div id="usermain">
        <div id="userlogindiv">
            <h3>User Login</h3>
            <form action="userlogin" id="userlogin" method="post">
                <p>
                    <label for="">User Email</label>
                    <input type="text" name="useremail" id="" required>
                </p>
                <br>
                <p>
                    <label for="">User Password</label>
                    <input type="text" name="userpassword" id="" required>
                </p>
                <br>
                <% String msg = (String)session.getAttribute("User"); %>
                <% if(msg!=null){%>
                <p id="userspan1"><%=msg%></p>
                <%} %>
                <input type="submit" id="usersubmit1">
            </form>
        </div>

        <div id="userregisterdiv">
            <h3>User Register</h3>
            <a href="#" id="notauser">not a User!!Register!!!</a>
            <form action="UserRegister" id="userregister" method="post">
                <p>
                    <label for="">User Name</label>
                    <input type="text" name="rusername" id="username" required>
                </p>
                <br>
                <p>
                    <label for="">User Email</label>
                    <input type="text" name="ruseremail" id="useremail" required>
                </p>
                <br>
                <p>
                    <label for="">Password</label>
                    <input type="password" name="ruserpassword" id="userpassword" required>
                </p>
                <br>
                <p>
                    <label for="">Confirm Password</label>
                    <input type="password" name="ruserconfirmpassword" id="userconfirmpassword" required>
                </p>
                <br>
                <span id="userspan2"></span>
                <input type="submit" id="usersubmit2">
            </form>
        </div>


    </div>
    
    <script src="./js/userscript.js"></script>

</body>
</html>