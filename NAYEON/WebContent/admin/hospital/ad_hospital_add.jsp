<%@page import="java.io.PrintWriter"%>
<%@page import="gang.DAOhospital"%>
<%@page import="gang.DTOhospital"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin_주인없는 하늘아래</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8") ;%>
	<%
	try{
	
	String hos_name = request.getParameter("hos_name");
	String hos_add = request.getParameter("hos_add");
	String hos_tel = request.getParameter("hos_tel");
	String hos_link = request.getParameter("hos_link");
	
	String hos_dayoff = request.getParameter("hos_dayoff");

    String hos_details1 = request.getParameter("hos_details1");
    String hos_details2 = request.getParameter("hos_details2");
    String hos_details3 = request.getParameter("hos_details3");
    String hos_details4 = request.getParameter("hos_details4");
    String hos_details5 = request.getParameter("hos_details5");
	
	
	DTOhospital dto = new DTOhospital();
    dto.setHos_name(hos_name);
    dto.setHos_add(hos_add);
    dto.setHos_tel(hos_tel);
    dto.setHos_link(hos_link);
    dto.setHos_dayoff(hos_dayoff);
    dto.setHos_details1(hos_details1);
    dto.setHos_details2(hos_details2);
    dto.setHos_details3(hos_details3);
    dto.setHos_details4(hos_details4);
    dto.setHos_details5(hos_details5);


    DAOhospital dao = new DAOhospital();
    dao.insertHos(dto);
    
    dao.close();
    
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('병원이 추가되었습니다.')");
    script.println("location.href = '../ad_hospital.jsp'");
    script.println("</script>");
    %>
    	
   
    
    	
	<%
	} catch (Exception e) {
        e.printStackTrace();
        out.println("병원 추가에 실패하였습니다.");
    }
	 %>
</body>
</html>