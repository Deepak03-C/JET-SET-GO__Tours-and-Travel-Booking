package toursandtravelbooking.dto;

public class HotelBookedDetails {
	private String name;
	private long contact;
	private String date;
	private int membersCount;
	private String hotelName;
	private double price;
	public HotelBookedDetails(String name, long contact, String date, int membersCount, String hotelName,
			double price) {
		super();
		this.name = name;
		this.contact = contact;
		this.date = date;
		this.membersCount = membersCount;
		this.hotelName = hotelName;
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getMembersCount() {
		return membersCount;
	}
	public void setMembersCount(int membersCount) {
		this.membersCount = membersCount;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	

}
