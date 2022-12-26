package gang;

import java.util.List;
import java.util.Vector;

public class DAOcomments extends DBConnPool{

	// 추가
    public int insertcomm(DTOcomments dto) {
        int applyResult = 0;
        try {
            String query = "INSERT INTO comments "
            	+ "(comm_code, mang_code,  id, comm_comment)"
            	+ " VALUES ( "
                + " 'comm_' || seq_comm.NextVal, ?,?,?)";
                        
            
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getMang_code());
            psmt.setString(2, dto.getId());
            psmt.setString(3, dto.getComm_comment());

        
            applyResult = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("insertcomm INSERT 중 예외 발생");
            e.printStackTrace();
        }        
        return applyResult;
    }
	
	
    
    // 댓글 목록
    public DTOcomments getComm (String mang_code) {
    	DTOcomments dto = null;
    	String query = "select * from comments where mang_code = ?";
    	try {
    		psmt = con.prepareStatement(query);
	
    		psmt.setString(1, mang_code);
    		rs = psmt.executeQuery();
    		
    		
    		if(rs.next()) {
    			dto = new DTOcomments();

    			dto.setComm_code(rs.getString(1));
    			dto.setMang_code(rs.getString(2));
    			dto.setId(rs.getString(3));
    			dto.setComm_comment(rs.getString(4));
    			dto.setComm_date(rs.getString(5));				
    		}
    		
		} catch (Exception e) {
			System.out.println("getComm 시 예외 발생");
            e.printStackTrace();
		}
    	
    	return dto;
    }
    
    // 리스트
    public List<DTOcomments> DTOcommList(String mang_code) {
    List<DTOcomments> commList = new Vector<DTOcomments>();

        // 쿼리문 작성
    	String query = "select * from comments where mang_code = ? order by comm_date";
        
    	try {
            psmt = con.prepareStatement(query);  // 쿼리 준비
            psmt.setString(1, mang_code);
            rs = psmt.executeQuery();  // 쿼리 실행

            while (rs.next()) {  // 목록 안의 파일 수만큼 반복
                // DTO에 저장
            	DTOcomments dto = new DTOcomments();
    			dto.setComm_code(rs.getString(1));
    			dto.setMang_code(rs.getString(2));
    			dto.setId(rs.getString(3));
    			dto.setComm_comment(rs.getString(4));
    			dto.setComm_date(rs.getString(5));
                
    			commList.add(dto);  // 목록에 추가
            }
        }
        catch (Exception e) {
            System.out.println("DTOcommList SELECT 시 예외 발생");
            e.printStackTrace();
        }        
        
        return commList;  // 목록 반환
}
    
    // 댓글 삭제
    public boolean deleteComm(String comm_code){
          boolean result = false;
          String query = "delete from comments where comm_code =?";
          
          try {
             psmt = con.prepareStatement(query);
             psmt.setString(1, comm_code);
             int i = psmt.executeUpdate();

             if(i == 1) {
            	 result = true;
             } else {
            	 result = false;
             } 
          } catch (Exception e) {
             e.printStackTrace();
             System.out.println("deleteComm 중 예외 발생");
          }
          
          return result;
       }
    
    
    
}
