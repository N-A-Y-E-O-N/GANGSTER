<%@page import="java.io.PrintWriter"%>
<%@page import="gang.DTOmember"%>
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
	<% request.setCharacterEncoding("UTF-8") ;%>
	<%
	try{
	
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String mail = request.getParameter("mail");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	
	DTOmember dto = new DTOmember();
    dto.setName(name);
    dto.setTel(tel);
    dto.setMail(mail);
    dto.setId(id);
    dto.setPw(pw);


    DAOmember dao = new DAOmember();
    dao.insertmem(dto);
    dao.close();
    
    PrintWriter script = response.getWriter();
	script.println("<script>");
    script.println("alert('회원가입이 완료되었습니다.')");
    script.println("self.close()");
    script.println("location.href='../login.jsp' ");  
    script.println("</script>");
    
    %>
    
    
	<%
	} catch (Exception e) {
        e.printStackTrace();
        out.println("회원가입에 실패하였습니다.");
    }
	 %>
</body>
</html>