<%@page import="gang.DAOmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS" %>
<style>
  h2{font-family:  'Hahmlet' !important;
  	 text-align: center;}
</style>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
 
String name = request.getParameter("name");
String tel = request.getParameter("tel");
String mail = request.getParameter("mail");
     
DAOmember dao = new DAOmember();
String findid = dao.findId(name, tel, mail); //아이디를 디비에서 가져옴
%>


<form name="idsearch" method="post">
<% if (findid != null) { %>
      <div class = "container">	<br><br><br>
	    <h2>  <%=name%>님의 아이디는  <b> <%=findid%> </b> 입니다.  </h2>  <br><br>
	    <button type="button" class="btn btn-outline-secondary" onClick="window.close()"
 		 style="margin: auto; display: block;">창닫기</button>
       </div>



<%  } else { %>
       <div class = "container"> <br><br><br>
	      <h2> 등록된 정보가 없습니다. </h2> <br><br>
	   </div>
	   
	   <div class = "found-login">
 		 <button type="button" class="btn btn-outline-secondary" onClick="history.back()"
 		 style="margin: auto; display: block;">다시 찾기</button>
      </div>

<% } %> 
</form>

</body>
</html>