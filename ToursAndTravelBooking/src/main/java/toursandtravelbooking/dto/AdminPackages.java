package toursandtravelbooking.dto;

import java.io.InputStream;

public class AdminPackages {
	private byte[] image;
	private String place;
	private String days;
	
	
	public AdminPackages(byte[] image, String place, String days) {
		this.image=image;
		this.place = place;
		this.days = days;
	}


	public byte[] getImage() {
		return image;
	}


	public void setImage(byte[] image) {
		this.image = image;
	}


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	public String getDays() {
		return days;
	}


	public void setDays(String days) {
		this.days = days;
	}
	
	
	

}
