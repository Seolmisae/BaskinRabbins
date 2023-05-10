package baskinrabbins;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Util.DataBaseUtil;

public class memberDAO 
{
	public int loginOK(String membername, String id, String password, String address) {
		String query = "insert into member values (?, ?, ?, ?)";	// String Template
		try {
			Connection conn = DataBaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, membername);
			pstmt.setString(2, id);
			pstmt.setString(3, password);	
			pstmt.setString(4, address);
			return pstmt.executeUpdate();		// 쿼리가 실행된 레코드 개수
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
		// 정상 실행시 : 1 / 오류 발생시 : -1
	}
}
