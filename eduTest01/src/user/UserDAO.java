package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/teamproject01?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "skalqwl1!";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	}
	public int login(String user_id, String user_pw) {
		String SQL = "SELECT user_pw FROM USER WHERE user_id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(user_pw))
					return 1;
				else 
					return 0;
				
			}
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
		
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setNString(1, user.getUser_name());
			pstmt.setNString(2, user.getUser_ename());
			pstmt.setNString(3, user.getUser_birthday());
			pstmt.setNString(4, user.getUser_id());
			pstmt.setNString(5, user.getUser_pw());
			pstmt.setNString(6, user.getUser_email());
			pstmt.setNString(7, user.getUser_gender());
			pstmt.setNString(8, user.getUser_mobile());
			pstmt.setNString(9, user.getUser_addr());
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return-1;
	}
	
	public int reservation(String user_id, int room_no, String checkIn_date, String checkOut_date, int room_type, int person_no) {
		String SQL = "INSERT INTO reservation VALUES(?, ?, ?, ?, ?, ? )";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setNString(1, user_id);
			pstmt.setInt(2, room_no);
			pstmt.setNString(3, checkIn_date);
			pstmt.setNString(4, checkOut_date);
			pstmt.setInt(5, room_type);
			pstmt.setInt(6, person_no);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}
	
	public int DayOK(String checkIn_date, String checkOut_date, int room_no) {
		String SQL = "SELECT count(*) FROM reservation WHERE ( ( ? < checkOut_date) and ( ? > checkIn_date ) )  AND room_no= ?;";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setNString(1, checkIn_date);
			pstmt.setNString(2, checkOut_date);
			pstmt.setInt(3, room_no);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				if(rs.getInt("count(*)")!=0) {
					return 1; // �ߺ��� ���� ����
				}
			}return 0;
	}catch(Exception e) {
		e.printStackTrace();
	}
		return -2;
	}
	
	
	// �������� ��ü������ȸ
	public ArrayList<reservationDTO> getTitle_myPage_Admin() {

		// ����Ÿ���� ����
		ArrayList<reservationDTO> arrayList = new ArrayList();
		// �����͸� ������ DTOŬ���� ����
		reservationDTO dto = null;

		try {
			// �����غ�
			String sql = "SELECT * FROM reservation ORDER BY user_id;";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			// �ݺ����� ���鼭 �����͸� ����
			while (rs.next()) {
				System.out.println("444");
				// �����͸� ������ dtoŬ���� ����
				dto = new reservationDTO();
				dto.setUser_id(rs.getString(1));
				dto.setRoom_no(rs.getInt(2));
				dto.setCheckIn_date(rs.getString(3));
				dto.setCheckOut_date(rs.getString(4));
				dto.setRoom_type(rs.getInt(5));
				dto.setPerson_no(rs.getInt(6));
				// arrayList�� dtoŬ������ ����
				arrayList.add(dto);

			}
			conn.close();

		} catch (Exception e) {
			// ����
			e.printStackTrace();
		}
		return arrayList;
	}
	//�մ��� ������ȸ
	public ArrayList<reservationDTO> getTitle_myPage_Client(String user_id) {

		// ����Ÿ���� ����
		ArrayList<reservationDTO> arrayList = new ArrayList();
		// �����͸� ������ DTOŬ���� ����
		reservationDTO dto = null;

		try {
			// �����غ�
			String sql = "SELECT * FROM reservation where user_id = ?ORDER BY checkIn_date;";
			pstmt = conn.prepareStatement(sql);
			pstmt.setNString(1, user_id);
			rs = pstmt.executeQuery();
			// �ݺ����� ���鼭 �����͸� ����
			while (rs.next()) {
				
				// �����͸� ������ dtoŬ���� ����
				dto = new reservationDTO();
				dto.setUser_id(rs.getString(1));
				dto.setRoom_no(rs.getInt(2));
				dto.setCheckIn_date(rs.getString(3));
				dto.setCheckOut_date(rs.getString(4));
				dto.setRoom_type(rs.getInt(5));
				dto.setPerson_no(rs.getInt(6));
				// arrayList�� dtoŬ������ ����
				arrayList.add(dto);

			}
			conn.close();

		} catch (Exception e) {
			// ����
			e.printStackTrace();
		}
		return arrayList;
	}
	//����� ������ �����ϴ� �Լ�
	public void reservation_Cancel(String user_id, String checkIn_date , int room_no) {
		
			
			try {
				String sql="DELETE FROM reservation WHERE user_id=? AND checkIn_date=? AND room_no=?;";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user_id);
				pstmt.setString(2, checkIn_date);
				pstmt.setInt(3, room_no);
				//DELETE�� ����
				pstmt.executeUpdate();

			} catch (Exception e) {
				//�����ͺ��̽� ����
				e.printStackTrace();
			}
			if( rs !=null) {try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}}
			if( pstmt != null) {try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}}
			if( conn !=null) {try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}}
		}
	//����� ������ �� ����, �� ��ȣ, �Ⱓ�� �����ϴ� �Լ�
	public void reservation_Modify(String user_id, int room_no, int room_type, String checkIn_date,String Modify_sDate ,String Modify_lDate, int room_no_) {
		
		
		try {
			String sql="UPDATE reservation SET checkIn_date=? , checkOut_date=? ,room_type=?, room_no=?  WHERE user_id=? AND checkIn_date=? AND room_no=?;";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Modify_sDate);
			pstmt.setString(2, Modify_lDate);
			pstmt.setInt(3, room_type);
			pstmt.setInt(4, room_no_);
			pstmt.setString(5, user_id);
			pstmt.setString(6, checkIn_date);
			pstmt.setInt(7, room_no);
			//DELETE�� ����
	
			
			pstmt.executeUpdate();
			
			

		} catch (Exception e) {
			//�����ͺ��̽� ����
			e.printStackTrace();
		}
		
		}
}
	
