package gang;

import java.util.List;
import java.util.Vector;

public class DAOmangdog extends DBConnPool{
	
	
	// getInstance
	private static DAOmangdog dao = new DAOmangdog();
	public static DAOmangdog getInstance() {
			if(dao != null) {
				dao = new DAOmangdog();
			}
			return dao;
		}

	

	// 추가
    public int insertmang(DTOmangdog dto) {
        int applyResult = 0;
        try {
            String query = "INSERT INTO mangdog "
            	+ "(mang_code, mang_id, mang_title, mang_content, mang_pic, mang_pic_save)"
            	+ " VALUES ( "
                + " 'mang_' || seq_bbs.NextVal, ?,?,?,?,?)";
                        
            
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getMang_id());
            psmt.setString(2, dto.getMang_title());
            psmt.setString(3, dto.getMang_content());
            psmt.setString(4, dto.getMang_pic());
            psmt.setString(5, dto.getMang_pic_save());

        
            applyResult = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("insertmang INSERT 중 예외 발생");
            e.printStackTrace();
        }        
        return applyResult;
    }
    
    
    // 조회수
    public void mangCount (String mang_code) {
    	
    	String query = "update mangdog set mang_count = mang_count+1 where mang_code = ?";
    	try {
    		psmt = con.prepareStatement(query);
    		
    		psmt.setString(1, mang_code);
    		rs = psmt.executeQuery();
    		
		} catch (Exception e) {
			System.out.println("mangCount 시 예외 발생");
            e.printStackTrace();
		}
    }
    
    
    // 메인 배너 망독 조회순
    public List<DTOmangdog> DTOmangC_List(){
        List<DTOmangdog> mangC_List = new Vector<DTOmangdog>();
        
        String query = "select * from mangdog order by mang_count desc" ;
        try {
           psmt = con.prepareStatement(query);
           rs = psmt.executeQuery();
           
           while(rs.next()) {
              DTOmangdog dto = new DTOmangdog();
              dto.setMang_code(rs.getString(1));
              dto.setMang_id(rs.getString(2));
              dto.setMang_title(rs.getString(3));
              dto.setMang_content(rs.getString(4));
              dto.setMang_pic(rs.getString(5));
              dto.setMang_pic_save(rs.getString(6));
              dto.setMang_date(rs.getString(7));
              dto.setMang_count(rs.getString(8));               
              mangC_List.add(dto);
           }
           
          
       } catch (Exception e) {
             System.out.println("DTOmangdogList 시 예외 발생");
             e.printStackTrace();
       }
       return mangC_List;   
     }

    
    
    
    
    
    // 글정보 가져오기
    public DTOmangdog getMang (String mang_code) {
    	DTOmangdog dto = null;
    	String query = "select * from mangdog where mang_code = ?";
    	try {
    		psmt = con.prepareStatement(query);
	
    		psmt.setString(1, mang_code);
    		rs = psmt.executeQuery();
    		
    		
    		if(rs.next()) {
    			dto = new DTOmangdog();
    			dto.setMang_code(rs.getString(1));
    			dto.setMang_id(rs.getString(2));
    			dto.setMang_title(rs.getString(3));
    			dto.setMang_content(rs.getString(4));
    			dto.setMang_pic(rs.getString(5));
    			dto.setMang_pic_save(rs.getString(6));
    			dto.setMang_date(rs.getString(7));
    			dto.setMang_count(rs.getString(8));		   
                dto.setMang_like(rs.getString(9)); 			
    		}
    		
		} catch (Exception e) {
			System.out.println("getMang 시 예외 발생");
            e.printStackTrace();
		}
    	
    	return dto;
    }
    
    
    
   
  //  리스트 페이지에 보여줄 로직(페이징 처리)
    public List<DTOmangdog> DTOmangList(int startRow, int endRow){
    	List<DTOmangdog> mangList = new Vector<DTOmangdog>();
    	
    	String query = "SELECT  *  FROM  (    "
    			+ " SELECT Tb.*,  rownum  rNum  FROM  (    "
    			+ " SELECT  *  FROM  mangdog  ORDER  BY  rownum  DESC )  Tb ) "
    			+ " WHERE  rNum  BETWEEN  ? and  ? "
    			+ " order by mang_date desc";
    			
    			
    	try {
    		psmt = con.prepareStatement(query);
    		
    		psmt.setInt(1, startRow); 
    		psmt.setInt(2, endRow); 
    		rs = psmt.executeQuery();
    		
    		while(rs.next()) {
    			DTOmangdog dto = new DTOmangdog();
    			dto.setMang_code(rs.getString("mang_code"));
    			dto.setMang_id(rs.getString("mang_id"));
    			dto.setMang_title(rs.getString("mang_title"));
    			dto.setMang_content(rs.getString("mang_content"));
    			dto.setMang_pic(rs.getString("mang_pic"));
    			dto.setMang_pic_save(rs.getString("mang_pic_save"));
    			dto.setMang_date(rs.getString("mang_date"));
    			dto.setMang_count(rs.getString("mang_count"));	
    			dto.setMang_like(rs.getString("mang_like"));
    			mangList.add(dto);
    		}
    		
			
		} catch (Exception e) {
            System.out.println("DTOmangdogList 시 예외 발생");
            e.printStackTrace();
		}
		return mangList;	
    }
    
    
    
    // 총 게시글 수
    public int getCount(){
		int count = 0;
		String sql = "select count(*) from mangdog";
		try {
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (Exception e) {
            System.out.println("getCount 시 예외 발생");
            e.printStackTrace();
		}
		return count; // 총 레코드 수 리턴
	}

    
    
    
 // 작성글 조회
    public List<DTOmangdog> DTOwroteList(String mang_id) {
    List<DTOmangdog> wroteList = new Vector<DTOmangdog>();

        // 쿼리문 작성
    	String query = "select * from mangdog where mang_id = ? order by mang_code desc";
        
    	try {
            psmt = con.prepareStatement(query);  // 쿼리 준비
            psmt.setString(1, mang_id);
            rs = psmt.executeQuery();  // 쿼리 실행

            while (rs.next()) {  // 목록 안의 파일 수만큼 반복
                // DTO에 저장
            	DTOmangdog dto = new DTOmangdog();
    			dto.setMang_code(rs.getString("mang_code"));
    			dto.setMang_id(rs.getString("mang_id"));
    			dto.setMang_title(rs.getString("mang_title"));
    			dto.setMang_content(rs.getString("mang_content"));
    			dto.setMang_pic(rs.getString("mang_pic"));
    			dto.setMang_pic_save(rs.getString("mang_pic_save"));
    			dto.setMang_date(rs.getString("mang_date"));
    			dto.setMang_count(rs.getString("mang_count"));
    			dto.setMang_like(rs.getString("mang_like"));
    			wroteList.add(dto);  // 목록에 추가
            }
        }
        catch (Exception e) {
            System.out.println("DTOwroteList SELECT 시 예외 발생");
            e.printStackTrace();
        }        
        
        return wroteList;  // 목록 반환
    }
    
    
    
 // 게시글 수정
    public boolean Editmang (String mang_title, String mang_content, String mang_pic, String mang_pic_save, String mang_code) {   
       boolean flag = false;
       String query = "UPDATE mangdog "
             + "SET mang_title =?,  mang_content=?, mang_pic=?, mang_pic_save = ?, mang_date= sysdate WHERE mang_code=?"; 


       try {
          psmt = con.prepareStatement(query);
          psmt.setString(1, mang_title);
          psmt.setString(2, mang_content);
          psmt.setString(3, mang_pic);
          psmt.setString(4, mang_pic_save);
          psmt.setString(5, mang_code);

          
          int i = psmt.executeUpdate();

          if(i == 1) {
             flag = true;
          } else {
             flag = false;
          }         
       } catch (Exception e) {
          e.printStackTrace();
          System.out.println("Editmang 중 예외 발생");
       } 

       return flag;
    }

    
 // 게시글 삭제
    public boolean deleteMang(String mang_code){
          boolean result = false;
          String query = "delete from mangdog where mang_code =?";
          
          try {
             psmt = con.prepareStatement(query);
             psmt.setString(1, mang_code);
             int i = psmt.executeUpdate();

             if(i == 1) {
            	 result = true;
             } else {
            	 result = false;
             } 
          } catch (Exception e) {
             e.printStackTrace();
             System.out.println("deleteMang 중 예외 발생");
          }
          
          return result;
       }
    
    
    
    // 좋아요 수 증가
    public int like(String mang_code) {
    	psmt = null;
        
    	try {
    		String SQL = "UPDATE mangdog SET mang_like = mang_like + 1 WHERE mang_code = ?";
    		psmt = con.prepareStatement(SQL);
    		psmt.setString(1, mang_code);
    		return psmt.executeUpdate();

    	} catch (Exception e) {
    		e.printStackTrace();
            System.out.println("like 중 예외 발생");
    	} 
    	return -1;
    }
    
    
    
    // 망독 좋아요 순
    public List<DTOmangdog> DTOmangL_List(){
        List<DTOmangdog> mangL_List = new Vector<DTOmangdog>();
        
        String query = "select * from mangdog order by mang_like desc" ;
        try {
           psmt = con.prepareStatement(query);
           rs = psmt.executeQuery();
           
           while(rs.next()) {
              DTOmangdog dto = new DTOmangdog();
              dto.setMang_code(rs.getString(1));
              dto.setMang_id(rs.getString(2));
              dto.setMang_title(rs.getString(3));
              dto.setMang_content(rs.getString(4));
              dto.setMang_pic(rs.getString(5));
              dto.setMang_pic_save(rs.getString(6));
              dto.setMang_date(rs.getString(7));
              dto.setMang_count(rs.getString(8));      
              dto.setMang_like(rs.getString(9)); 
              mangL_List.add(dto);
           }
           
          
       } catch (Exception e) {
             System.out.println("DTOmangL_List 시 예외 발생");
             e.printStackTrace();
       }
       return mangL_List;   
     }
    

    
}
