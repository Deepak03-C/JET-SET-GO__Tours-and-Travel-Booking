package toursandtravelbooking.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import toursandtravelbooking.dao.Operations;
import toursandtravelbooking.dto.AdminPackages;

@WebServlet("/usertour")
public class UserTour extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Operations op = new Operations();
		List<AdminPackages> packages =op.getTourPackage();
		req.setAttribute("packages", packages);
		req.getRequestDispatcher("UserTour.jsp").forward(req, resp);
	}

}
