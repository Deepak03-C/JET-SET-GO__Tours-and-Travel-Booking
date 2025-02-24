package toursandtravelbooking.dto;

public class TourBookedDetails {
	private String place;
	private String days;
	private String name;
	private long contactnumber;
	private String date;
	private int noOfPersons;
	public TourBookedDetails(String place, String days, String name, long contactnumber, String date, int noOfPersons) {
		super();
		this.place = place;
		this.days = days;
		this.name = name;
		this.contactnumber = contactnumber;
		this.date = date;
		this.noOfPersons = noOfPersons;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getContactnumber() {
		return contactnumber;
	}
	public void setContactnumber(long contactnumber) {
		this.contactnumber = contactnumber;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getNoOfPersons() {
		return noOfPersons;
	}
	public void setNoOfPersons(int noOfPersons) {
		this.noOfPersons = noOfPersons;
	}
	
	
	

}
