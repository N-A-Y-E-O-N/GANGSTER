<%@page import="gang.DAOjust"%>
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
	String you_code = request.getParameter("you_code");
	String you_title = request.getParameter("you_title");
	String you_link = request.getParameter("you_link");

	DAOjust dao = new DAOjust();
	
	boolean flag = dao.Edityou(you_title, you_link, you_code);
	if (flag == true) {
%>

	<script>
		alert("유튜브 정보가 정상적으로 수정되었습니다.");
		self.close();
		document.location.href = "../ad_withdog.jsp";
	</script>

<%} else {%>
	<script>
		alert("유튜브 정보 수정에 실패했습니다.");
		history.back();
	</script>
<%}%>








</body>
</html>