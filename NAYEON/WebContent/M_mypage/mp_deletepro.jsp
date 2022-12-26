<%@page import="java.io.PrintWriter"%>
<%@page import="gang.DAOmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS" %>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
	String pw = request.getParameter("pw");
	
	DAOmember dao = DAOmember.getInstance();
	boolean result = dao.deleteId(id, pw);
	
	if(result){
		session.invalidate();
		PrintWriter script = response.getWriter();
		script.println("<script>");
        script.println("alert('탈퇴가 완료되었습니다.')");
        script.println("self.close()");
        script.println("window.opener.location.href='../main.jsp' ");  
        script.println("</script>");
%>
<% }else{	
		PrintWriter script = response.getWriter();
		script.println("<script>");
        script.println("alert('비밀번호가 일치하지 않습니다.')");
        script.println("history.back()");    //이전 페이지로 사용자를 보냄
        script.println("</script>");
}%>
</body>
</html>