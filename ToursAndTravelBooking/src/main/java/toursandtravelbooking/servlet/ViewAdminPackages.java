package toursandtravelbooking.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import toursandtravelbooking.dao.Operations;
import toursandtravelbooking.dto.AdminPackages;

@WebServlet("/viewadminpackages")
public class ViewAdminPackages extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Operations op = new Operations();
		List<AdminPackages> adminpackages = op.getAdminTourPackage();
//		try {
//			while(rs.next()) {
//				InputStream inputstream = rs.getBinaryStream(2);
//				resp.setContentType("image/jpeg");
//				OutputStream out = resp.getOutputStream();
//				
//				byte[] buffer = new byte[4096];
//				int bytesRead;
//				while((bytesRead=inputstream.read(buffer))!=-1) {
//					out.write(buffer,0,bytesRead);
//				}
//				inputstream.close();
//                out.close();
//				
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}

		req.setAttribute("tourpackages", adminpackages);
		req.getRequestDispatcher("ViewAdminPackages.jsp").forward(req, resp);

	}

}
