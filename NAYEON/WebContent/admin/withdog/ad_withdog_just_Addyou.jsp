<%@page import="java.io.PrintWriter"%>
<%@page import="gang.DAOjust"%>
<%@page import="gang.DTOjust"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  request.setCharacterEncoding("UTF-8") ;

	String you_title = request.getParameter("you_title");
	String you_link = request.getParameter("you_link");
	
	
	DTOjust dto = new DTOjust();
	DAOjust dao = new DAOjust();
	
	dto.setYou_title(you_title);
	dto.setYou_link(you_link);
	
	dao.insertYou(dto);
	dao.close();
	
	
	PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('유튜브가 추가되었습니다..')");
    script.println("location.href = '../ad_withdog.jsp'");
    script.println("</script>");
%>


</body>
</html>