<%@page import="java.io.PrintWriter"%>
<%@page import="gang.DAOcomments"%>
<%@page import="gang.DTOcomments"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 

//1.한글처리, 파라미터 
request.setCharacterEncoding("UTF-8");
String id1 = (String) session.getAttribute("id");//object를 string으로 다운캐스팅


//1-1. id없이는 진입불가, id없는 경우 로그인페이지로 이동. 가상주소로 이동
if (id1 == null) {
%>
<script>
	alert("로그인 후 이용해주세요.");
	self.close();
	document.location.href = "../../login.jsp";
</script>
<%}%>


<%
try {
	String mang_code = request.getParameter("mang_code");
	String id = request.getParameter("id"); 
	String comm_comment = request.getParameter("comm_comment");

	
	DTOcomments dto = new DTOcomments();
	dto.setMang_code(mang_code);
	dto.setId(id);
	dto.setComm_comment(comm_comment);
	
	

    DAOcomments dao = new DAOcomments();
    dao.insertcomm(dto);
    
    dao.close();
%>
	<script> 
	location.href = document.referrer;
	</script>
	
<%}catch (Exception e){
	
	PrintWriter script = response.getWriter();
    out.println("댓글 작성에 실패하였습니다.");
    script.println("history.back()");    //이전 페이지로 사용자를 보냄
	
} %>




</body>
</html>