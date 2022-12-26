package gang;

import java.util.ArrayList;

public class DAOlikely extends DBConnPool {
	
	// 좋아요 추가
	public int insertLike(String id, String mang_code) {
		String query = "INSERT INTO likely VALUES(?, ?)";
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, id);
			psmt.setString(2, mang_code);
			psmt.executeUpdate();
			return 1;
		}catch(Exception e) {
			System.out.println("insertLike INSERT 중 예외 발생");
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	

	
	// 게시글 상세 좋아요
	public ArrayList<DTOlikely> mangLike(String id, String mang_code) {
		String SQL = "SELECT * FROM likely WHERE id = ? AND mang_code = ?";
		ArrayList<DTOlikely> Likelist = new ArrayList<DTOlikely>();
		try {
			psmt = con.prepareStatement(SQL);
			psmt.setString(1,  id);
			psmt.setString(2,  mang_code);
			rs = psmt.executeQuery();
			while (rs.next()) {
				DTOlikely dto = new DTOlikely();
				dto.setId(rs.getString(1));
				dto.setMang_code(rs.getString(2));
				Likelist.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Likelist;
	}
	

	
	// 좋아요 삭제
	public int deleteLike(String id, String mang_code) {
		String SQL = "DELETE FROM likely WHERE WHERE id = ? AND mang_code = ?";
		try {
			psmt = con.prepareStatement(SQL);
			psmt.setString(1, id);
			psmt.setString(2, mang_code);
			return psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
}
