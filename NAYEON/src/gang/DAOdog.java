package gang;

import java.util.List;
import java.util.Vector;

public class DAOdog  extends DBConnPool{


   // 추가
    public int insertdog(DTOdog dto) {
        int applyResult = 0;
        try {
            String query = "INSERT INTO dog "
               + "(dog_code, dog_name, dog_breed, dog_sex , dog_age, dog_weight, dog_character, dog_disease, dog_story, dog_NEUTRALIZATION, dog_VACCINATION,dog_main,dog_main_save,dog_detail,dog_detail_save)"
               + " VALUES ( "
                + " 'dog_' || seq_dog.NextVal, ?, ?, ?, ? , ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                        
            
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getDog_name());
            psmt.setString(2, dto.getDog_breed());
            psmt.setString(3, dto.getDog_sex());
            psmt.setString(4, dto.getDog_age());
            psmt.setString(5, dto.getDog_weight());
            psmt.setString(6, dto.getDog_character());
            psmt.setString(7, dto.getDog_disease());
            psmt.setString(8, dto.getDog_story());
            psmt.setString(9,dto.getDog_neutralization());
            psmt.setString(10,dto.getDog_vaccination());
            psmt.setString(11,dto.getDog_main());
            psmt.setString(12,dto.getDog_main_save());
            psmt.setString(13,dto.getDog_detail());
            psmt.setString(14,dto.getDog_detail_save());

        
            applyResult = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("insertdog INSERT 중 예외 발생");
            e.printStackTrace();
        }        
        return applyResult;
    }
    
    
    
    //목록
    public List<DTOdog> DTOdogList(){
       List<DTOdog> dogList = new Vector<DTOdog>();
       
       String query = "select * from dog order by dog_code desc" ;
       try {
          psmt = con.prepareStatement(query);
          rs = psmt.executeQuery();
          
          while(rs.next()) {
             DTOdog dto = new DTOdog();
             dto.setDog_code(rs.getString(1));
             dto.setDog_name(rs.getString(2));
             dto.setDog_breed(rs.getString(3));
             dto.setDog_sex(rs.getString(4));
             dto.setDog_age(rs.getString(5));
             dto.setDog_weight(rs.getString(6));
             dto.setDog_character(rs.getString(7));
             dto.setDog_disease(rs.getString(8));
             dto.setDog_story(rs.getString(9));
             dto.setDog_neutralization(rs.getString(10));
             dto.setDog_vaccination(rs.getString(11));
             dto.setDog_main(rs.getString(12));
             dto.setDog_main_save(rs.getString(13));
             dto.setDog_detail(rs.getString(14));
             dto.setDog_detail_save(rs.getString(15));
             
             dogList.add(dto);
             
             
          }
          
         
      } catch (Exception e) {
            System.out.println("DTOdogList 시 예외 발생");
            e.printStackTrace();
      }
      return dogList;   
    }
    
    
 // 정보 수정
    public boolean Edit (String dog_name, String dog_breed, String dog_sex, String dog_age, String dog_weight, String dog_character, String dog_disease, String dog_story, String dog_neutralization, String dog_vaccination, String dog_code) {   
       boolean flag = false;
       String query = "UPDATE dog "
             + "SET dog_name=?, dog_breed=?, dog_sex=?, dog_age=?, dog_weight=?, dog_character=?, dog_disease=?, dog_story=?, dog_neutralization=?, dog_vaccination=? WHERE dog_code=?"; 


       try {
          psmt = con.prepareStatement(query);
          psmt.setString(1, dog_name);
          psmt.setString(2, dog_breed);
          psmt.setString(3, dog_sex);
          psmt.setString(4, dog_age);
          psmt.setString(5, dog_weight);
          psmt.setString(6, dog_character);
          psmt.setString(7, dog_disease);
          psmt.setString(8, dog_story);
          psmt.setString(9, dog_neutralization);
          psmt.setString(10, dog_vaccination);
          psmt.setString(11, dog_code);
          
          int i = psmt.executeUpdate();

          if(i == 1) {
             flag = true;
          } else {
             flag = false;
          }         
       } catch (Exception e) {
          e.printStackTrace();
          System.out.println("Edit 중 예외 발생");
       } 

       return flag;
    }

    
 // 정보 삭제
    public boolean deleteDog(String dog_code){
          boolean result = false;
          String query = "delete from dog where dog_code =?";
          
          try {
             psmt = con.prepareStatement(query);
             psmt.setString(1, dog_code);
             int i = psmt.executeUpdate();

             if(i == 1) {
            	 result = true;
             } else {
            	 result = false;
             } 
          } catch (Exception e) {
             e.printStackTrace();
             System.out.println("deleteDog 중 예외 발생");
          }
          
          return result;
       }
    

   
}