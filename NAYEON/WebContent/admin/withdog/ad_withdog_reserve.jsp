<%@page import="java.util.List"%>
<%@page import="gang.DAOreserve"%>
<%@page import="gang.DTOreserve"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin_주인없는 하늘아래</title>
<style>
  table {
    border-collapse: collapse;

    margin: auto;
    width: 50%;
    text-align: center;}

  th{text-align: center;}
  input {font-size: 15px;   margin-left: 10px}
</style>
</style>
</head>
<body>

<%
    DAOreserve dao = new DAOreserve();
    List<DTOreserve> reserveLists = dao.DTOreserveList();
    dao.close();
%>


    
    <table class="table table-striped table-hover">
        <tr>
            <th>코드</th> <th>견주 이름</th>  <th>구분</th> <th>체크인</th> <th>체크아웃</th> 
            <th>강아지 이름</th> <th>견종</th> <th>나이</th> <th>몸무게</th> <th>특징</th>
        </tr>
    <% for (DTOreserve f : reserveLists) { %>
        <tr>
      	    <td><%= f.getRes_code() %> </td>
            <td><%= f.getRes_name() %> </td>
            <td><%= f.getKinder() %></td>
            <td><%= f.getCheckin() %></td>
            <td><%= f.getCheckout() %></td>
            <td><%= f.getDog_name() %></td>
            <td><%= f.getDog_breed() %></td>
            <td><%= f.getDog_age() %></td>
            <td><%= f.getDog_weight() %></td>
            <td><%= f.getDog_character() %></td>

         </tr>
    <% } %>
    </table>  
</body>
</html>