package gang;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import gang.DTOmember;

public class DAOmember extends DBConnPool 
{
	
	
	
// getInstance
private static DAOmember dao = new DAOmember();
public static DAOmember getInstance() {
		if(dao != null) {
			dao = new DAOmember();
		}
		return dao;
	}


// ID 중복 확인	
public int duplecateID(String id){
	int cnt=0;
    try{
  
        StringBuilder sql=new StringBuilder();
        
        sql.append(" SELECT count(id) as cnt ");
        sql.append(" FROM member ");
        sql.append(" WHERE id = ? ");
        
        PreparedStatement psmt=con.prepareStatement(sql.toString());
        psmt.setString(1, id);
        
        ResultSet rs=psmt.executeQuery();
        if(rs.next()){
        	cnt=rs.getInt("cnt");
        }
    }catch(Exception e){
     	System.out.println("duplecateID 아이디 중복 확인 실패 : " + e);
    }
	return cnt;
}





// 회원가입
public int insertmem(DTOmember dto) {
    int applyResult = 0;
    try {
        String query = "INSERT INTO member ( "
        	+ " name, tel, mail, id, pw) "
        	+ " VALUES ( ?,?,?,?,? ) ";
                    
        psmt = con.prepareStatement(query);
        psmt.setString(1, dto.getName());
        psmt.setString(2, dto.getTel());
        psmt.setString(3, dto.getMail());
        psmt.setString(4, dto.getId());
        psmt.setString(5, dto.getPw());

        applyResult = psmt.executeUpdate();
    }
    catch (Exception e) {
        System.out.println("insertmem INSERT 중 예외 발생");
        e.printStackTrace();
    }        
    return applyResult;
}



//로그인
public int login(String id, String pw ) {
	String query = "SELECT pw FROM member WHERE id =?";
	try {
		psmt = con.prepareStatement(query);
		psmt.setString(1, id);
		rs = psmt.executeQuery();
		
		
		
		if (rs.next()) {
			if(rs.getString(1).equals(pw)) {   
				return 1;  			 // 로그인 성공  
				} 
			else 
				return 0; 			// 비밀번호 불일치 

		}
		return -1;	// 아이디가 없음
	
	}catch (Exception e) {
		e.printStackTrace();
	}
	return -2; // 데이터베이스 오류
}




// ID 찾기
public String findId(String name, String tel, String mail) {
	String findid = null;
	String query = "select id from member where name=? and tel=? and mail=?";
	
	try {
		
		psmt = con.prepareStatement(query);
		psmt.setString(1, name);
		psmt.setString(2, tel);
		psmt.setString(3, mail);
		
		rs = psmt.executeQuery();
		
		if(rs.next()) {
			findid = rs.getString("id");
		}
			
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("findId ID찾기 중 예외 발생");
	}
	return findid;
}


//PW 찾기 (id, mail 확인)
public String findPw(String id, String mail) {
	String findpw = null;
	String query = "select pw from member where id=? and mail=?";
	
	try {
		
		psmt = con.prepareStatement(query);
		psmt.setString(1, id);
		psmt.setString(2, mail);
		
		rs = psmt.executeQuery();
		
		if(rs.next()) {
			findpw = rs.getString("pw");
		}
			
	} catch (Exception e) {
		System.out.println("findPw PW찾기 중 예외 발생");
		e.printStackTrace();
	}
	return findpw;
}



//비밀번호 수정을 위한 메서드 선언.
	public boolean changePassword2(String id, String mail, String newPw) {

		boolean flag = false;
		String query = "UPDATE member "
				+ "SET pw=? WHERE id=? AND mail=?"; 


		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, newPw);
			psmt.setString(2, id);
			psmt.setString(3, mail);
			
			int i = psmt.executeUpdate();

			if(i == 1) {
				flag = true;
			} else {
				flag = false;
			}			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("changePassword2 pw수정 시 중 예외 발생");
		} 

		return flag;
	}


//비밀번호 수정을 위한 메서드 선언.
public boolean changePassword(String id, String newPw) {

		boolean flag = false;
		String query = "UPDATE member "
				+ "SET pw=? WHERE id=?"; 


		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, newPw);
			psmt.setString(2, id);
			
			int i = psmt.executeUpdate();

			if(i == 1) {
				flag = true;
			} else {
				flag = false;
			}			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("changePassword pw수정 시 중 예외 발생");
		} 

		return flag;
	}







// 회원 정보 수정
public boolean Edit (String name, String mail, String tel, String id) {	
	boolean flag = false;
	String query = "UPDATE member "
			+ "SET name=?, mail=?, tel=? WHERE id=?"; 


	try {
		psmt = con.prepareStatement(query);
		psmt.setString(1, name);
		psmt.setString(2, mail);
		psmt.setString(3, tel);
		psmt.setString(4, id);
		
		int i = psmt.executeUpdate();

		if(i == 1) {
			flag = true;
		} else {
			flag = false;
		}			
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Edit 회원정보 수정 중 예외 발생");
	} 

	return flag;
}




// 회원 탈퇴
public boolean deleteId(String id, String pw){
	   String dbpw="";
	   boolean result = false;
	   String query = "select pw from member where id =?";
	   
	   try {
	      psmt = con.prepareStatement(query);
	      psmt.setString(1, id);
	      rs = psmt.executeQuery();
	      
	      if(rs.next()) {
	    	  dbpw = rs.getString("pw");
	         if(dbpw.equals(pw)) {
	            String sql = "delete from member where id=?";
	            psmt = con.prepareStatement(sql);
	            psmt.setString(1, id);
	            rs = psmt.executeQuery();
	            result=true;            
	         }
	      }
	   } catch (Exception e) {
	      e.printStackTrace();
	      System.out.println("deleteId 회원 탈퇴 중 예외 발생");
	   }
	   
	   return result;
	}
	
	
	
	
	
	
// 회원 목록
    public List<DTOmember> DTOmemberList() {
    List<DTOmember> memberList = new Vector<DTOmember>();

        // 쿼리문 작성
        String query = "select * "
        		+ " from member" ;

        
        try {
            psmt = con.prepareStatement(query);  // 쿼리 준비
            rs = psmt.executeQuery();  // 쿼리 실행

            while (rs.next()) {  // 목록 안의 파일 수만큼 반복
                // DTO에 저장
            	DTOmember dto = new DTOmember();
                dto.setRole(rs.getString(1));
                dto.setName(rs.getString(2));
                dto.setTel(rs.getString(3));
                dto.setMail(rs.getString(4));
                dto.setId(rs.getString(5));
                dto.setPw(rs.getString(6));                

                
                memberList.add(dto);  // 목록에 추가
            }
        }
        catch (Exception e) {
            System.out.println("DTOmemberList SELECT 시 예외 발생");
            e.printStackTrace();
        }        
        
        return memberList;  // 목록 반환
}
	
	//관리자에서 회원 탈퇴
    public boolean m_deleteId(String id){   	   
    	   boolean result = false;
           String query = "delete from member where id =?";
           
           try {
              psmt = con.prepareStatement(query);
              psmt.setString(1, id);
              int i = psmt.executeUpdate();

              if(i == 1) {
             	 result = true;
              } else {
             	 result = false;
              } 
           } catch (Exception e) {
              e.printStackTrace();
              System.out.println("예외 발생");
           }
           
           return result;
        }
    
    
    
    
    

}






















