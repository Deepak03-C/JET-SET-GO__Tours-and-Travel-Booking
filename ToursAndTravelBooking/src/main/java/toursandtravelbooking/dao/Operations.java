package toursandtravelbooking.dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;


import toursandtravelbooking.dto.Admin;
import toursandtravelbooking.dto.AdminHotelsSide;
import toursandtravelbooking.dto.AdminPackages;
import toursandtravelbooking.dto.HotelBookedDetails;
import toursandtravelbooking.dto.TourBookedDetails;
import toursandtravelbooking.dto.User;

public class Operations {
	
	public int saveAdmin(Admin admin) {
		
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into admin values(?,?,?,?,?)");
			pst.setInt(1, admin.getAdminId());
			pst.setString(2, admin.getAdminName());
			pst.setString(3, admin.getAdminEmail());
			pst.setString(4, admin.getAdminPassword());
			pst.setString(5, admin.getAdminConfirmPassword());
			int res= pst.executeUpdate();
			return res;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
	
	public Admin findAdminByEmail(String adminEmail) {
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from admin where adminemail=?");
			pst.setString(1, adminEmail);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				return new Admin(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
	}
	
	public int saveUser(User user) {
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into user values(?,?,?,?)");
			pst.setString(1, user.getUserName());
			pst.setString(2, user.getUserEmail());
			pst.setString(3, user.getUserPassword());
			pst.setString(4, user.getUserConfirmPassword());
			int res = pst.executeUpdate();
			return res;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
	
	public User findUserByEmail(String userEmail) {
		
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from user where useremail=?");
			pst.setString(1, userEmail);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				return new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
	public int saveAdminTourPackage(AdminPackages packages) {
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into admintourpackages (packageplace,packageimg,packagedays)values (?,?,?)");
			pst.setString(1, packages.getPlace());
			
//			Blob image = new SerialBlob(packages.getImage());
			
			
			pst.setBytes(2, packages.getImage());
			pst.setString(3, packages.getDays());
			int res= pst.executeUpdate();
			return res;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
	
	public List<AdminPackages> getAdminTourPackage() {
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("Select * from admintourpackages");
			ResultSet rs = pst.executeQuery();
			List<AdminPackages> packages = new ArrayList<>();
			while(rs.next()) {
				 AdminPackages adminpackage = new AdminPackages(rs.getBytes(3),rs.getString(2),rs.getString(4));
				 packages.add(adminpackage);
			}
			return packages;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public int saveAdminHotel(AdminHotelsSide hotel) {
		
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into adminhotel (hotelimage,hotelname,hotelprice) values(?,?,?)");
			pst.setBytes(1, hotel.getHotelImage());
			pst.setString(2, hotel.getHotelName());
			pst.setString(3, hotel.getHotelPrice());
			return pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
	
	public List<AdminHotelsSide> getHotels(){
		
		try {
			Connection con= getConnection();
			PreparedStatement pst = con.prepareStatement("select * from adminhotel");
			ResultSet rs = pst.executeQuery();
			List<AdminHotelsSide> hotels = new ArrayList<AdminHotelsSide>();
			while(rs.next()) {
				hotels.add(new AdminHotelsSide(rs.getBytes(2), rs.getString(3), rs.getString(4)));
			}
			return hotels;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public List<AdminPackages> getTourPackage(){
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from admintourpackages");
			ResultSet rs = pst.executeQuery();
			List<AdminPackages> packages = new ArrayList<AdminPackages>();
			while(rs.next()) {
				packages.add(new AdminPackages(rs.getBytes(3), rs.getString(2), rs.getString(4)));
			}
			return packages;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
public List<AdminHotelsSide> getUserHotels(){
		
		try {
			Connection con= getConnection();
			PreparedStatement pst = con.prepareStatement("select * from adminhotel");
			ResultSet rs = pst.executeQuery();
			List<AdminHotelsSide> hotels = new ArrayList<AdminHotelsSide>();
			while(rs.next()) {
				hotels.add(new AdminHotelsSide(rs.getBytes(2), rs.getString(3), rs.getString(4)));
			}
			return hotels;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public int packagebooking(TourBookedDetails tbd) {
		
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into packagesbooked (packagesbookedplace,packagesbookeddays,packagesbookedusername,packagesbookedusercontact,packagesbookeddate,packagesbookedmemberscount) values(?,?,?,?,?,?)");
			pst.setString(1, tbd.getPlace());
			pst.setString(2,tbd.getDays());
			pst.setString(3, tbd.getName());
			pst.setLong(4, tbd.getContactnumber());
			pst.setString(5, tbd.getDate());
			pst.setInt(6, tbd.getNoOfPersons());
			
			int res = pst.executeUpdate();
			return res;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
public int hotelBooking(HotelBookedDetails hbd) {
		
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into hotelbooked (hotelbookedpersonname,hotelbookedpersoncontact,hotelbookeddate,hotelbookedpersoncount,hotelbookedname,hotelbookedprice) values(?,?,?,?,?,?)");
			pst.setString(1, hbd.getName());
			pst.setLong(2,hbd.getContact());
			pst.setString(3, hbd.getDate());
			pst.setInt(4,hbd.getMembersCount() );
			pst.setString(5, hbd.getHotelName());
			pst.setDouble(6, hbd.getPrice());
			
			int res = pst.executeUpdate();
			return res;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	
	
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/tourandtravel?user=root&password=root");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	

	
	

}
