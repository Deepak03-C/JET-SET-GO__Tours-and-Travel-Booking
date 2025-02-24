package toursandtravelbooking.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import toursandtravelbooking.dao.Operations;
import toursandtravelbooking.dto.TourBookedDetails;

@WebServlet("/packagebooking")
public class PackageBooking extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String place = req.getParameter("place");
		System.out.println(place);
		String days= req.getParameter("days");
		System.out.println(days);
		String name = req.getParameter("name");
		long contact = Long.parseLong(req.getParameter("contactnumber"));
		String date = req.getParameter("journeydate");
		int members = Integer.parseInt(req.getParameter("numberofpersons"));
		
		Operations op = new Operations();
		int res=op.packagebooking(new TourBookedDetails(place, days, name, contact, date, members));
		
		resp.sendRedirect("usertour?booking=success");
	}
	

}
