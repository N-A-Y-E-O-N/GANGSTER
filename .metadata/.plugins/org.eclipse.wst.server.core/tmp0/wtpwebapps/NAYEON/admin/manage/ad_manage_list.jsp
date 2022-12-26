<%@page import="java.util.List"%>
<%@page import="gang.DAOmember"%>
<%@page import="gang.DTOmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="manage/ad_manage_list_delete.jsp">
<%
    DAOmember dao = new DAOmember();
    List<DTOmember> memberLists = dao.DTOmemberList();
    dao.close();
%>


    
    <table class="table table-striped table-hover">
        <tr>
            <th>이름</th> <th>전화번호</th>  <th>메일</th> <th>ID</th> <th>PW</th> <th>삭제</th>
        </tr>
    <% for (DTOmember f : memberLists) { %>
        <tr>
      	    <td><%= f.getName() %> </td>
            <td><%= f.getTel() %> </td>
            <td><%= f.getMail() %></td>
            <td><%= f.getId() %></td>
            <td><%= f.getPw() %></td>
            <td>
            
            <input type="hidden" id="id" name="id" value="<%= f.getId() %>">
			<button type="submit" class="btn btn-outline-secondary" onclick="delete_Pop()">삭제</button>
			</td>

         </tr>
    <% } %>
    </table>  
    </form>
</body>
</html>