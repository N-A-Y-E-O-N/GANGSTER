<%@page import="java.io.PrintWriter"%>
<%@page import="gang.DAOcomments"%>
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
	String comm_code = request.getParameter("comm_code");
	DAOcomments dao = new DAOcomments();

	boolean result = dao.deleteComm(comm_code);

	if (result == true) {
		 PrintWriter script = response.getWriter();
	      script.println("<script>");
	      script.println("alert('삭제가 완료되었습니다.')");
	      script.println("self.close()");
	      script.println("location.href = document.referrer; ");
	      script.println("</script>");

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