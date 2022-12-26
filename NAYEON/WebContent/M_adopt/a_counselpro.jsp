<%@page import="java.io.PrintWriter"%>
<%@page import="gang.DAOcounsel"%>
<%@page import="gang.DTOcounsel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<style>
h2{font-family:  'Hahmlet' !important;  text-align: center;}
</style>
<%@include file="../layouts/headerCSS" %>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8") ;%>
	<%
	try{
	String coun_name = request.getParameter("coun_name");
	String coun_date = request.getParameter("coun_date");
	String coun_tel = request.getParameter("coun_tel");
	String coun_mail = request.getParameter("coun_mail");
	String coun_title = request.getParameter("coun_title");
    String coun_content = request.getParameter("coun_content");


	
	
	DTOcounsel dto = new DTOcounsel();    
    dto.setCoun_name(coun_name);
    dto.setCoun_date(coun_date);
    dto.setCoun_tel(coun_tel);
    dto.setCoun_mail(coun_mail);
    dto.setCoun_title(coun_title);
    dto.setCoun_content(coun_content);




    DAOcounsel dao = new DAOcounsel();
    dao.insertCoun(dto);
    
    dao.close();
    
    
	PrintWriter script = response.getWriter();
	script.println("<script>");
    script.println("alert('상담이 접수되었습니다.')");
    script.println("history.back()");    //이전 페이지로 사용자를 보냄
    script.println("</script>");

   
	} catch (Exception e) {
        e.printStackTrace();
        PrintWriter script = response.getWriter();
    	script.println("<script>");
        script.println("alert('상담 접수에 실패하였습니다.')");
        script.println("history.back()");    //이전 페이지로 사용자를 보냄
        script.println("</script>");
    }
	 %>


</body>
</html>