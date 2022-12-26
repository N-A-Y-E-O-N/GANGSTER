package gang;

import java.util.List;
import java.util.Vector;

public class DAOreserve extends DBConnPool  {
	
	
	// 예약 리스트
    public List<DTOreserve> DTOreserveList() {
    List<DTOreserve> reserveList = new Vector<DTOreserve>();

        // 쿼리문 작성
        String query = "select * from reserve ORDER by res_code desc "; 

        
        try {
            psmt = con.prepareStatement(query);  // 쿼리 준비
            rs = psmt.executeQuery();  // 쿼리 실행

            while (rs.next()) {  // 목록 안의 파일 수만큼 반복
                // DTO에 저장
            	DTOreserve dto = new DTOreserve();
                dto.setRes_code(rs.getString(1));
                dto.setRes_name(rs.getString(2));
                dto.setKinder(rs.getString(3));
                dto.setCheckin(rs.getString(4));
                dto.setCheckout(rs.getString(5));
                dto.setDog_name(rs.getString(6));
                dto.setDog_breed(rs.getString(7));
                dto.setDog_age(rs.getString(8));
                dto.setDog_weight(rs.getString(9));
                dto.setDog_character(rs.getString(10));
                

                
                reserveList.add(dto);  // 목록에 추가
            }
        }
        catch (Exception e) {
            System.out.println("DTOreserveList SELECT 시 예외 발생");
            e.printStackTrace();
        }        
        
        return reserveList;  // 목록 반환
}
    
    
 //예약 추가
    public int insertRes(DTOreserve dto) {
        int applyResult = 0;
        try {
            String query = "INSERT INTO reserve "
            	+ " VALUES ( "
                + " 'res_' || seq_reserve.nextval , ? , ?, ?, ?, ?, ?, ?|| '살', ? || 'kg', ?)";
                        
            psmt = con.prepareStatement(query);
         
            psmt.setString(1, dto.getRes_name());
            psmt.setString(2, dto.getKinder());
            psmt.setString(3, dto.getCheckin());
            psmt.setString(4, dto.getCheckout());
            psmt.setString(5, dto.getDog_name());
            psmt.setString(6, dto.getDog_breed());
            psmt.setString(7, dto.getDog_age());
            psmt.setString(8, dto.getDog_weight());
            psmt.setString(9, dto.getDog_character());

        
            applyResult = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("insertRes INSERT 중 예외 발생");
            e.printStackTrace();
        }        
        return applyResult;
    }
    
    
}
