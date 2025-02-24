package toursandtravelbooking.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import toursandtravelbooking.dao.Operations;
import toursandtravelbooking.dto.AdminHotelsSide;

@WebServlet("/userhotel")
public class UserHotel extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Operations op = new Operations();
		List<AdminHotelsSide> hotels = op.getUserHotels();
		req.setAttribute("hotels", hotels);
		req.getRequestDispatcher("UserHotel.jsp").forward(req, resp);;
	}

}
