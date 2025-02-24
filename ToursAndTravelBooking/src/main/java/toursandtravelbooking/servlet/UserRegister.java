package toursandtravelbooking.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import toursandtravelbooking.dao.Operations;
import toursandtravelbooking.dto.User;

@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("rusername");
		String useremail=req.getParameter("ruseremail");
		String userpassword=req.getParameter("ruserpassword");
		String userconfirmpassword= req.getParameter("ruserconfirmpassword");
		
		User user = new User(username, useremail, userpassword, userconfirmpassword);
		System.out.println(user);
		Operations op = new Operations();
		op.saveUser(user);
		req.getRequestDispatcher("userlogin.jsp").forward(req, resp);
		
	}
	
}
