package gang;

import java.util.List;
import java.util.Vector;

public class DAOcounsel extends DBConnPool {
   
   // 상담 리스트
    public List<DTOcounsel> DTOcounselList() {
    List<DTOcounsel> counselList = new Vector<DTOcounsel>();

        // 쿼리문 작성
        String query = "select * from counsel ORDER by coun_code desc";

        
        try {
            psmt = con.prepareStatement(query);  // 쿼리 준비
            rs = psmt.executeQuery();  // 쿼리 실행

            while (rs.next()) {  // 목록 안의 파일 수만큼 반복
                // DTO에 저장
               DTOcounsel dto = new DTOcounsel();

               dto.setCoun_code(rs.getString(1));
                dto.setCoun_name(rs.getString(2));
                dto.setCoun_date(rs.getString(3));
                dto.setCoun_tel(rs.getString(4));
                dto.setCoun_mail(rs.getString(5));
                dto.setCoun_title(rs.getString(6));
                dto.setCoun_content(rs.getString(7));
                dto.setCoun_done(rs.getString(8));
                

                
                counselList.add(dto);  // 목록에 추가
            }
        }
        catch (Exception e) {
            System.out.println("DTOcounselList SELECT 시 예외 발생");
            e.printStackTrace();
        }        
        
        return counselList;  // 목록 반환
}
   
    //상담 추가
    public int insertCoun(DTOcounsel dto) {
        int applyResult = 0;
        try {
            String query = "INSERT INTO counsel (coun_code, coun_name, coun_date, coun_tel, coun_mail, coun_title, coun_content)"
               + " VALUES ( "
                + " 'coun_' || seq_counsel.nextval , ? , ?, ?, ?, ?, ?)";
                        
            psmt = con.prepareStatement(query);
        
            psmt.setString(1, dto.getCoun_name());
            psmt.setString(2, dto.getCoun_date());
            psmt.setString(3, dto.getCoun_tel());
            psmt.setString(4, dto.getCoun_mail());
            psmt.setString(5, dto.getCoun_title());
            psmt.setString(6, dto.getCoun_content());

        
            applyResult = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("insertCoun INSERT 중 예외 발생");
            e.printStackTrace();
        }        
        return applyResult;
    }
    
    
    
    // 정보 수정
    public boolean Edit (String coun_code, String coun_name, String coun_date, String coun_tel, String coun_mail, String coun_title, String coun_content) {   
       boolean flag = false;
       String query = "UPDATE counsel "
             + "SET coun_name=?, coun_date=?, coun_tel=?, coun_mail=?, coun_title=?, coun_content=? WHERE coun_code=?"; 


       try {
          psmt = con.prepareStatement(query);
          psmt.setString(1, coun_name);
          psmt.setString(2, coun_date);
          psmt.setString(3, coun_tel);
          psmt.setString(4, coun_mail);
          psmt.setString(5, coun_title);
          psmt.setString(6, coun_content);
          psmt.setString(7, coun_code);
          
          int i = psmt.executeUpdate();

          if(i == 1) {
             flag = true;
          } else {
             flag = false;
          }         
       } catch (Exception e) {
          e.printStackTrace();
          System.out.println("정보 수정 중 예외 발생");
       } 

       return flag;
    }

 

}