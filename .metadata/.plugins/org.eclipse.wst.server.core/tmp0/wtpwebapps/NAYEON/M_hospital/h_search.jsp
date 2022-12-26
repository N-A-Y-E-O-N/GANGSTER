<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.List"%>
<%@page import="gang.DAOhospital"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
<%
DAOhospital da = new DAOhospital();
List<DTOhospital> hospitallist = da.getSearch((String) request.getParameter("country"));
%>

<div style="height: 600px; overflow: auto">    
<% 
for (int i = 0; i < hospitallist.size(); i++) {
%>

 <b><a href="<%= hospitallist.get(i).getHos_link() %>" target="_blank"><%= hospitallist.get(i).getHos_name() %> </a></b> <br>
 주소 :  <%= hospitallist.get(i).getHos_add()%> <br>
전화번호 : <%=hospitallist.get(i).getHos_tel()%><br>
휴무일 : <%=hospitallist.get(i).getHos_dayoff()%> <br>
<%=hospitallist.get(i).getHos_details1()%>&nbsp; <%=hospitallist.get(i).getHos_details2()%>&nbsp; <%=hospitallist.get(i).getHos_details3()%>&nbsp; <%=hospitallist.get(i).getHos_details4()%>&nbsp; <%=hospitallist.get(i).getHos_details5()%>
<hr>

<%
}
da.close();
%> 


 </div>
</body>
</html>