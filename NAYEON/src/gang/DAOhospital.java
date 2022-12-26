package gang;



import java.sql.PreparedStatement;
import java.util.List;
import java.util.Vector;



public class DAOhospital extends DBConnPool 
{
	// 추가
    public int insertHos(DTOhospital dto) {
        int applyResult = 0;
        try {
            String query = "INSERT INTO hospital ( "
            	+ " hos_code, hos_name, hos_add, hos_tel, hos_link, hos_dayoff, hos_details1, hos_details2, hos_details3, hos_details4, hos_details5) "
            	+ " VALUES ( "
                + " 'hos_' || seq_hospital.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                        
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getHos_name());
            psmt.setString(2, dto.getHos_add());
            psmt.setString(3, dto.getHos_tel());
            psmt.setString(4, dto.getHos_link());
            psmt.setString(5, dto.getHos_dayoff());
            psmt.setString(6, dto.getHos_details1());
            psmt.setString(7, dto.getHos_details2());
            psmt.setString(8, dto.getHos_details3());
            psmt.setString(9, dto.getHos_details4());
            psmt.setString(10,dto.getHos_details5());
        
            applyResult = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("insertHos INSERT 중 예외 발생");
            e.printStackTrace();
        }        
        return applyResult;
    }

    
    
    // 리스트
    public List<DTOhospital> DTOhospitalList() {
    List<DTOhospital> hospitalList = new Vector<DTOhospital>();

        // 쿼리문 작성
        String query = "select "
        	  + "hos_code, hos_name, substr(hos_add, 1, instr(hos_add, '(') -1), NVL(hos_tel, ' '), hos_link,"
        	  + "NVL(hos_dayoff, ' '),"
        	  + " NVL(hos_details1, ' '), NVL(hos_details2, ' '), NVL(hos_details3, ' '), NVL(hos_details4, ' '), NVL(hos_details5, ' ')"
        	  + "from hospital ";

        
        try {
            psmt = con.prepareStatement(query);  // 쿼리 준비
            rs = psmt.executeQuery();  // 쿼리 실행

            while (rs.next()) {  // 목록 안의 파일 수만큼 반복
                // DTO에 저장
            	DTOhospital dto = new DTOhospital();
                dto.setHos_code(rs.getString(1));
                dto.setHos_name(rs.getString(2));
                dto.setHos_add(rs.getString(3));
                dto.setHos_tel(rs.getString(4));
                dto.setHos_link(rs.getString(5));
                dto.setHos_dayoff(rs.getString(6));
                dto.setHos_details1(rs.getString(7));
                dto.setHos_details2(rs.getString(8));
                dto.setHos_details3(rs.getString(9));
                dto.setHos_details4(rs.getString(10));
                dto.setHos_details5(rs.getString(11));
                
                hospitalList.add(dto);  // 목록에 추가
            }
        }
        catch (Exception e) {
            System.out.println("DTOhospitalList SELECT 시 예외 발생");
            e.printStackTrace();
        }        
        
        return hospitalList;  // 목록 반환
}
    
    // 정보 삭제
    public boolean deletehos(String hos_code){
          boolean result = false;
          String query = "delete from hospital where hos_code =?";
          
          try {
             psmt = con.prepareStatement(query);
             psmt.setString(1, hos_code);
             int i = psmt.executeUpdate();

             if(i == 1) {
            	 result = true;
             } else {
            	 result = false;
             } 
          } catch (Exception e) {
             e.printStackTrace();
             System.out.println("deleteHos 중 예외 발생");
          }
          
          return result;
       }
    
//검색
    public List<DTOhospital> getSearch(String country){//특정한 리스트를 받아서 반환
	      List<DTOhospital> hospitallist = new Vector<DTOhospital>();
	      String query ="select  hos_code, hos_name, substr(hos_add, 1, instr(hos_add, '(') -1), NVL(hos_tel, ' '), hos_link,\r\n"
	      		+ " NVL(hos_dayoff, ' '),\r\n"
	      		+ " NVL(hos_details1, ' '), NVL(hos_details2, ' '), NVL(hos_details3, ' '), NVL(hos_details4, ' '), NVL(hos_details5, ' ') from hospital WHERE hos_add LIKE " 
	    		  		+ "'%" + country + "%'"; 
	      try {
	    	  
	            
	            psmt = con.prepareStatement(query);
				rs=psmt.executeQuery();
	         while(rs.next()) {
	        	DTOhospital dto = new DTOhospital();
                dto.setHos_code(rs.getString(1));
                dto.setHos_name(rs.getString(2));
                dto.setHos_add(rs.getString(3));
                dto.setHos_tel(rs.getString(4));
                dto.setHos_link(rs.getString(5));
                dto.setHos_dayoff(rs.getString(6));
                dto.setHos_details1(rs.getString(7));
                dto.setHos_details2(rs.getString(8));
                dto.setHos_details3(rs.getString(9));
                dto.setHos_details4(rs.getString(10));
                dto.setHos_details5(rs.getString(11));
                hospitallist.add(dto);//list에 해당 인스턴스를 담는다.
	         }         
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return hospitallist;//ㄱㅔ시글 리스트 반환
	   }

    
    
    
    
    
  
}