package User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			// DB 접속
			String dbURL = "jdbc:mysql://localhost:3306/baskinrabbins?serverTimezone=Asia/Seoul&useSSL=false";
			String dbId = "root";
			String dbPw = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbId, dbPw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 로그인 기능
	public int login(String id, String password) {
		String query = "select password from member where id = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(password)) {
					return 1;	// 로그인 성공
				} else {
					return 0;	// 비밀번호 오류
				}
			} else {
				return -1;	// 존재하지 않는 아이디
			}
		} catch (Exception e) {
			e.printStackTrace();
			return -2;	// DB 오류
		}
	}	
	
	public int join(UserDTO user) {
		String query = "INSERT INTO MEMBER VALUES(?,?,?,?);";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getMembername());
			pstmt.setString(2, user.getId());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getAddress());
			return pstmt.executeUpdate();	// 정상실행시 반환값 : 0
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return -1;	// DB 오류
	}	
}
