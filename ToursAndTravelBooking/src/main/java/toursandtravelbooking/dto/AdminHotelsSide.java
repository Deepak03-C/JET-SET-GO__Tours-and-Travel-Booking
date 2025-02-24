package toursandtravelbooking.dto;

public class AdminHotelsSide {
	private byte[] hotelImage;
	private String hotelName;
	private String hotelPrice;
	
	public AdminHotelsSide(byte[] hotelImage, String hotelName, String hotelPrice) {
		super();
		this.hotelImage = hotelImage;
		this.hotelName = hotelName;
		this.hotelPrice = hotelPrice;
	}

	public byte[] getHotelImage() {
		return hotelImage;
	}

	public void setHotelImage(byte[] hotelImage) {
		this.hotelImage = hotelImage;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getHotelPrice() {
		return hotelPrice;
	}

	public void setHotelPrice(String hotelPrice) {
		this.hotelPrice = hotelPrice;
	}
	
	
	
}
