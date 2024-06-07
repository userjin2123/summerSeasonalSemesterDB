package user;

public class DayOK {
	private String checkIn_date;
	private String checkOut_date;
	private String room_no;
	public String getcheckIn_date() {
		return checkIn_date;
	}
	public void setcheckIn_date(String checkIn_date) {
		this.checkIn_date = checkIn_date;
	}
	public String getcheckOut_date() {
		return checkOut_date;
	}
	public void setcheckOut_date(String checkOut_date) {
		this.checkOut_date = checkOut_date;
	}
	public String getroom_no() {
		return room_no;
	}
	public void setroom_no(String room_no) {
		this.room_no = room_no;
	}
}
