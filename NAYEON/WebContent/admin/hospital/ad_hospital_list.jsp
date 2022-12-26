<%@page import="gang.DTOhospital"%>
<%@page import="java.util.List"%>
<%@page import="gang.DAOhospital"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin_주인없는 하늘아래</title>
</head>
<body>
<form action="hospital/ad_hospital_list_delete.jsp">
 <%
    DAOhospital dao = new DAOhospital();
    List<DTOhospital> hospitalLists = dao.DTOhospitalList();
    dao.close();
    %>
     
    <table class="table table-striped table-hover" >
        <tr>
            <th>코드</th> <th>병원명</th> <th>주소</th><th>전화번호</th> <th>휴무일</th> 
            <th>24시</th> <th>미용</th> <th>호텔</th> <th>재활</th> <th>수술</th> <th>삭제</th>
        </tr>
        
    <% for (DTOhospital f : hospitalLists) { %>
       
        <tr>
            <td><%= f.getHos_code() %></td>
            <td><a href="<%= f.getHos_link() %>" target="_blank"><%= f.getHos_name() %>  </a></td>
            <td><%= f.getHos_add() %></td>
            <td><%= f.getHos_tel() %></td>
            <td><%= f.getHos_dayoff() %></td>
            <td><%= f.getHos_details1() %></td>
            <td><%= f.getHos_details2() %></td>
            <td><%= f.getHos_details3() %></td>
            <td><%= f.getHos_details4() %></td>
            <td><%= f.getHos_details5() %></td>     
            <td>
			<button type="submit" class="btn btn-outline-secondary" onclick="delete_Pop()" >삭제</button>
			
			<input type="hidden" id="hos_code" name="hos_code" value="<%= f.getHos_code() %>">
            </td>
       		
       		
       		
         </tr>
		
    <% } %>
    </table>    
</form>
</body>
</html>