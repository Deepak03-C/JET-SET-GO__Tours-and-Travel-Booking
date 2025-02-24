package toursandtravelbooking.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import toursandtravelbooking.dao.Operations;
import toursandtravelbooking.dto.Admin;

@WebServlet("/adminregister")
public class AdminRegister extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int adminId = Integer.parseInt(req.getParameter("radminid"));
		String adminName=req.getParameter("radminname");
		String adminEmail=req.getParameter("radminemail");
		String adminPassword=req.getParameter("radminpassword");
		String adminConfirmPassword=req.getParameter("radminconfirmpassword");
		
		Admin admin = new Admin(adminId, adminName, adminEmail, adminPassword, adminConfirmPassword);
		Operations op = new Operations();
		op.saveAdmin(admin);
		req.getRequestDispatcher("adminlogin.jsp").forward(req, resp);;
		
	}
	

}
