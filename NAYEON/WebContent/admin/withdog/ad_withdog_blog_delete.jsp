<%@page import="java.io.PrintWriter"%>
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
	String blog_code = request.getParameter("blog_code");
	DAOjust dao = new DAOjust();

	boolean result = dao.deleteblog(blog_code);

	if (result == true) {
		session.invalidate();
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('삭제가 완료되었습니다.')");
		script.println("self.close()");
		script.println("document.location.href='../ad_withdog.jsp' ");
		script.println("</script>");
%>

<%
	} else {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('삭제 실패.')");
	script.println("history.back()"); //이전 페이지로 사용자를 보냄
	script.println("</script>");

	}
%>
</body>
</html>