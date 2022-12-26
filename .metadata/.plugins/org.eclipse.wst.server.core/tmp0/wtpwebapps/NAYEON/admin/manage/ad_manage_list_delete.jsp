<%@page import="java.io.PrintWriter"%>
<%@page import="gang.DAOmember"%>
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

	String id = request.getParameter("id");

	DAOmember dao = new DAOmember();

	boolean result = dao.m_deleteId(id);

	if (result == true) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원 탈퇴가 완료되었습니다.')");
		script.println("self.close()");
		script.println("document.location.href='../ad_manage.jsp' ");
		script.println("</script>");
	%>
	<%
	} else {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('회원 탈퇴 실패.')");
	script.println("history.back()"); //이전 페이지로 사용자를 보냄
	script.println("</script>");
	}
	%>
</body>
</html>