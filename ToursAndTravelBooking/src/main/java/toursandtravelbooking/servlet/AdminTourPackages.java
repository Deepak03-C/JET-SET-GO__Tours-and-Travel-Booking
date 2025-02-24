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
import toursandtravelbooking.dto.AdminPackages;


@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 5,  // Files >5MB are written to disk
	    maxFileSize = 1024 * 1024 * 50,       // Maximum file size = 50MB
	    maxRequestSize = 1024 * 1024 * 100    // Maximum request size = 100MB
	)
@WebServlet("/admintourpackages")
public class AdminTourPackages extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		InputStream inputstream = null;
		Part filepart = req.getPart("img");
		
		if(filepart!=null) {
			inputstream = filepart.getInputStream();
		}
//		byte[] imageBytes = inputstream.readAllBytes();
		
		String place = req.getParameter("tourplace");
		String days = req.getParameter("days");
		
		AdminPackages packages = new AdminPackages(inputstream.readAllBytes(), place, days);
		 Operations op = new Operations();
		 op.saveAdminTourPackage(packages);
		 
		 req.getRequestDispatcher("AdminTourPackages.jsp").forward(req, resp);
		
	}

}
