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
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String mail = request.getParameter("mail");
	String tel = request.getParameter("tel");
	
	DAOmember dao = new DAOmember();
	
	boolean flag = dao.Edit(name, mail, tel, id);
	if(flag) {
%>
	<script>
		alert("회원 정보가 정상적으로 수정되었습니다.");
		self.close();
		document.location.href="../main.jsp";
	</script>
<%
	}else {
%>
	<script>
		alert("회원 정보 수정에 실패했습니다.");
		history.back();
	</script>
<%		
	
}
%>
</body>
</html>