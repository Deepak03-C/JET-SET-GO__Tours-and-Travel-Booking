package toursandtravelbooking.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import toursandtravelbooking.dao.Operations;
import toursandtravelbooking.dto.HotelBookedDetails;

@WebServlet("/hotelbooking")
public class HotelBooking extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String contact = req.getParameter("contactnumber");
		String date = req.getParameter("bookingdate");
		int members = Integer.parseInt(req.getParameter("numberofpersons"));
		String hotel = req.getParameter("hotel");
    	String p = req.getParameter("price");
    	double price = Double.parseDouble(p.substring(1, (p.length()-1)));
    	
    	Operations op = new Operations();
    	op.hotelBooking(new HotelBookedDetails(name, members, date, members, hotel, price));
    	resp.sendRedirect("userhotel?booking=success");
    	
	}

}
