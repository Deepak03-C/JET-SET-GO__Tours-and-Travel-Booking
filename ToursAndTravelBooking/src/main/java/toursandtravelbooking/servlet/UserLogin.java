package toursandtravelbooking.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import toursandtravelbooking.dao.Operations;
import toursandtravelbooking.dto.User;

@WebServlet("/userlogin")
public class UserLogin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String useremail = req.getParameter("useremail");
		String userpassword = req.getParameter("userpassword");
		
		Operations op = new Operations();
		User user = op.findUserByEmail(useremail);
		if(user!=null) {
			if(user.getUserPassword().equals(userpassword)) {
				HttpSession session = req.getSession();
				session.setAttribute("User", "login success");
				req.getRequestDispatcher("UserHome.jsp").forward(req, resp);;
			}
			else {
				String msg="Password wrong";
				req.setAttribute("User",msg );
				req.getRequestDispatcher("userlogin.jsp").forward(req, resp);
				
			}
		}else {
			String msg =  "Email is not registered!!";
			req.setAttribute("User", msg);
			req.getRequestDispatcher("userlogin.jsp").forward(req, resp);
		}
		
	}

}
