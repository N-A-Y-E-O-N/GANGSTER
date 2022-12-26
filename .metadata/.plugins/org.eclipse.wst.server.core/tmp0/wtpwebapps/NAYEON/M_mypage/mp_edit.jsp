<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="gang.DAOmember"%>
<%@page import="gang.DTOmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
</head>
<body>
<script type="text/javascript">
  <!-- 비밀번호 변경 새창 열기-->
  function mp_pwPop(){
    var mp_pwPop = window.open('M_mypage/mp_pw.jsp', '비밀번호 변경', 'width=500px,height=400px, scrollbars=yes');
  }
  
  function deletePop(){
	    var deletePop = window.open('M_mypage/mp_delete.jsp', '회원 탈퇴', 'width=500px,height=400px, scrollbars=yes');
	}
  
</script>

 <% 
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id"); 
String name = "";
String mail = "";
String tel = "";

Connection con = null;
Statement stmt = null;
PreparedStatement psmt =null;
ResultSet rs =null;

try {
    // 커넥션 풀(DataSource) 얻기
    Context initCtx = new InitialContext();
    Context ctx = (Context)initCtx.lookup("java:comp/env");
    DataSource source = (DataSource)ctx.lookup("dbcp_myoracle");

    // 커넥션 풀을 통해 연결 얻기
    con = source.getConnection();

    System.out.println("DB 커넥션 풀 연결 성공");
    
    
    //쿼리문 실행
    stmt = con.createStatement();
    String query = "select * from member where id = '" + id + "'";
    rs = stmt.executeQuery(query);
    
    if (rs.next()) {
		name = rs.getString("name");
		mail = rs.getString("mail");
		tel = rs.getString("tel");
	}
       
    
    
}catch (Exception e) {
    System.out.println("DB 커넥션 풀 연결 실패");
    e.printStackTrace();
}finally{
	if (rs != null) rs.close();
    if (stmt != null) stmt.close();
    if (psmt != null) psmt.close();
    if (con != null) con.close();  // 자동으로 커넥션 풀로 반납됨

    System.out.println("DB 커넥션 풀 자원 반납");
}


%>



<form action="M_mypage/mp_editpro.jsp">
<div style="width: 30%; margin: auto;">

<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">아이디</span>
  <input type="text" class="form-control" id="id" name="id" value="<%=id %>" style=" background-color: #F2F5F9;"  readonly/> 

</div>

<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">이름</span>
  <input type="text" class="form-control" placeholder="NAME" id="name" name="name"  value="<%=name %>" required/>
</div>

<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">이메일</span>
  <input type="text" class="form-control" placeholder="EMAIL ADDRESS" id="mail" name="mail" value="<%=mail %>" required/>
</div>   

<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">연락처</span>
    <input type="text" class="form-control"  placeholder="- 입력 제외" name="tel" maxlength="11"  id="tel" name="tel" value="<%=tel %>"
 	 oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required/> 
</div>  
 
	
	<button type="button" class="btn btn-link" style="margin-left: 350px;" onclick="deletePop()"> 탈퇴하기 </button>
</div>

<br>

<button type="submit" class="btn btn-outline-secondary" > 회원정보 수정</button>	
<button type="button" class="btn btn-outline-secondary" onclick="mp_pwPop()"> 비밀번호 변경 </button>
</form>


</body>
</html>