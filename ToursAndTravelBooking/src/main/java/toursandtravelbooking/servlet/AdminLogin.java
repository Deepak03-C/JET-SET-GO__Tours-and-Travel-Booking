package toursandtravelbooking.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import toursandtravelbooking.dao.Operations;
import toursandtravelbooking.dto.Admin;

@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String adminemail=req.getParameter("adminemail");
		String adminpassword=req.getParameter("adminpassword");
		
		Operations op= new Operations();
		Admin admin = op.findAdminByEmail(adminemail);
		if(admin!=null) {
			if(admin.getAdminPassword().equals(adminpassword)  ) {
				HttpSession session = req.getSession();
				session.setAttribute("admin", admin);
				req.getRequestDispatcher("AdminHome.jsp").forward(req, resp);
			}else {
				String msg ="Password incorrect";
				req.setAttribute("msg", msg);
				req.getRequestDispatcher("adminlogin.jsp").forward(req, resp);
			}
		}else {
			String msg ="Email not Registered!!";
			req.setAttribute("msg", msg);
			req.getRequestDispatcher("adminlogin.jsp").forward(req, resp);
		}
	}

}
