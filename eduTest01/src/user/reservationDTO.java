package user;

public class reservationDTO {
	private String user_id;
	private int room_no;
	private String checkIn_date;
	private String checkOut_date;
	private int room_type;
	private int person_no;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getRoom_no() {
		return room_no;
	}
	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}
	public String getCheckIn_date() {
		return checkIn_date;
	}
	public void setCheckIn_date(String checkIn_date) {
		this.checkIn_date = checkIn_date;
	}
	public String getCheckOut_date() {
		return checkOut_date;
	}
	public void setCheckOut_date(String checkOut_date) {
		this.checkOut_date = checkOut_date;
	}
	public int getRoom_type() {
		return room_type;
	}
	public void setRoom_type(int room_type) {
		this.room_type = room_type;
	}
	public int getPerson_no() {
		return person_no;
	}
	public void setPerson_no(int person_no) {
		this.person_no = person_no;
	}
	
	
}
