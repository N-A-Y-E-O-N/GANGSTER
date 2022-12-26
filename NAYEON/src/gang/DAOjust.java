package gang;

import java.util.List;
import java.util.Vector;

public class DAOjust  extends DBConnPool {

	
	
	// 유튜브 추가
	public int insertYou(DTOjust dto) {
	    int applyResult = 0;
	    try {
	        String query = "INSERT INTO just_youtube "
	        	+ " VALUES ('you_' || seq_youtube.Nextval, ? , substr(?, -11) ) ";
	                    
	        psmt = con.prepareStatement(query);
	        psmt.setString(1, dto.getYou_title());
	        psmt.setString(2, dto.getYou_link());


	        applyResult = psmt.executeUpdate();
	    }
	    catch (Exception e) {
	        System.out.println("insertYou INSERT 중 예외 발생");
	        e.printStackTrace();
	    }        
	    return applyResult;
	}
	
	
	
	
	// 블로그 추가
	public int insertblog(DTOjust dto) {
	    int applyResult = 0;
	    try {
	        String query = "INSERT INTO just_blog "
	        	+ " VALUES ('blog_' || seq_blog.Nextval, ?,?,?,?) ";
	                    
	        psmt = con.prepareStatement(query);
	        psmt.setString(1, dto.getBlog_title());
	        psmt.setString(2, dto.getBlog_link());
	        psmt.setString(3, dto.getBlog_thumb());
	        psmt.setString(4, dto.getBlog_thumb_save());
	        
	        
	        applyResult = psmt.executeUpdate();
	    }
	    catch (Exception e) {
	        System.out.println("insertblog INSERT 중 예외 발생");
	        e.printStackTrace();
	    }        
	    return applyResult;
	}
	
	
	
	
	
	// 유튜브 목록
	public List<DTOjust> DTOyouList(){
		List<DTOjust> youList = new Vector<DTOjust>();
		
		String query = "select * from just_youtube" ;
		try {
    		psmt = con.prepareStatement(query);
    		rs = psmt.executeQuery();
		
    		while(rs.next()) {
    			DTOjust dto = new DTOjust();
    			dto.setYou_code(rs.getString(1));
    			dto.setYou_title(rs.getString(2));
    			dto.setYou_link(rs.getString(3));
    			
    			youList.add(dto);
    		}
		} catch (Exception e) {
            System.out.println("DTOyouList SELECT 시 예외 발생");
            e.printStackTrace();
		}
		return youList;
	}
	
	
	
	// 블로그 목록
		public List<DTOjust> DTOblogList(){
			List<DTOjust> blogList = new Vector<DTOjust>();
			
			String query = "select * from just_blog" ;
			try {
	    		psmt = con.prepareStatement(query);
	    		rs = psmt.executeQuery();
			
	    		while(rs.next()) {
	    			DTOjust dto = new DTOjust();
	    			dto.setBlog_code(rs.getString(1));
	    			dto.setBlog_title(rs.getString(2));
	    			dto.setBlog_link(rs.getString(3));
	    			dto.setBlog_thumb(rs.getString(4));
	    			dto.setBlog_thumb_save(rs.getString(5));
	    			
	    			blogList.add(dto);
	    		}
			} catch (Exception e) {
	            System.out.println("DTOblogList SELECT 시 예외 발생");
	            e.printStackTrace();
			}
			return blogList;
		}
		
		
		
		 // 유튜브 수정
	    public boolean Edityou (String you_title, String you_link, String you_code) {   
	       boolean flag = false;
	       String query = "UPDATE just_youtube "
	             + "SET you_title=?, you_link = substr(?, -11) WHERE you_code=?"; 


	       try {
	          psmt = con.prepareStatement(query);
	          psmt.setString(1, you_title);
	          psmt.setString(2, you_link);
	          psmt.setString(3, you_code);
	          
	          int i = psmt.executeUpdate();

	          if(i == 1) {
	             flag = true;
	          } else {
	             flag = false;
	          }         
	       } catch (Exception e) {
	          e.printStackTrace();
	          System.out.println("Youtube Edit 중 예외 발생");
	       } 

	       return flag;
	    }
		
	    
	 // 유튜브 삭제
	    public boolean deleteYou(String you_code){
	          boolean result = false;
	          String query = "delete from just_youtube where you_code =?";
	          
	          try {
	             psmt = con.prepareStatement(query);
	             psmt.setString(1, you_code);
	             int i = psmt.executeUpdate();

	             if(i == 1) {
	            	 result = true;
	             } else {
	            	 result = false;
	             } 
	          } catch (Exception e) {
	             e.printStackTrace();
	             System.out.println("deleteYou 중 예외 발생");
	          }
	          
	          return result;
	       }
	    
	    
		 // 블로그 수정
	    public boolean Editblog (String blog_title, String blog_link, String blog_code) {   
	       boolean flag1 = false;
	       String query = "UPDATE just_blog "
	             + "SET blog_title=?, blog_link =? WHERE blog_code=?"; 


	       try {
	          psmt = con.prepareStatement(query);
	          psmt.setString(1, blog_title);
	          psmt.setString(2, blog_link);
	          psmt.setString(3, blog_code);
	          
	          int i = psmt.executeUpdate();

	          if(i == 1) {
	             flag1 = true;
	          } else {
	             flag1 = false;
	          }         
	       } catch (Exception e) {
	          e.printStackTrace();
	          System.out.println("Youtube Edit 중 예외 발생");
	       } 

	       return flag1;
	    }
		
	    
	 // 블로그 삭제
	    public boolean deleteblog(String blog_code){
	          boolean result = false;
	          String query = "delete from just_blog where blog_code =?";
	          
	          try {
	             psmt = con.prepareStatement(query);
	             psmt.setString(1, blog_code);
	             int i = psmt.executeUpdate();

	             if(i == 1) {
	            	 result = true;
	             } else {
	            	 result = false;
	             } 
	          } catch (Exception e) {
	             e.printStackTrace();
	             System.out.println("deleteYou 중 예외 발생");
	          }
	          
	          return result;
	       }
		
	
}
