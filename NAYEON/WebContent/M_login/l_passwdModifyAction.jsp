<%@page import="gang.DAOmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
</head>
<body>
<%
	String newPw = request.getParameter("newPw");
	String id = request.getParameter("id");
	String mail = request.getParameter("mail");
	
	DAOmember dao = new DAOmember();
		
	boolean flag = dao.changePassword(id, newPw);
	if(flag) {
%>
	<script>
		alert("비밀번호가 정상적으로 변경되었습니다.");
		self.close();
	</script>
<%
	}else {
%>
	<script>
		alert("비밀번호 변경에 실패했습니다.");
		history.back();
	</script>
<%		
	
}
%>


</body>
</html>