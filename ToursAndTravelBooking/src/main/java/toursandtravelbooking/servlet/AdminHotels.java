package toursandtravelbooking.servlet;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import toursandtravelbooking.dao.Operations;
import toursandtravelbooking.dto.AdminHotelsSide;

@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 5,  // Files >5MB are written to disk
	    maxFileSize = 1024 * 1024 * 50,       // Maximum file size = 50MB
	    maxRequestSize = 1024 * 1024 * 100    // Maximum request size = 100MB
	)

@WebServlet("/adminhotel")
public class AdminHotels extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		InputStream inputstream = null;
		Part part = req.getPart("img");
		if(part!=null) {
			inputstream = part.getInputStream();
		}
		
		String hotelname= req.getParameter("hotelname");
		String price = req.getParameter("price");
		
		AdminHotelsSide hotel = new AdminHotelsSide(inputstream.readAllBytes(), hotelname, price);
		Operations op = new Operations();
		op.saveAdminHotel(hotel);
		req.getRequestDispatcher("AdminHotels.jsp").forward(req, resp);
	}

}
