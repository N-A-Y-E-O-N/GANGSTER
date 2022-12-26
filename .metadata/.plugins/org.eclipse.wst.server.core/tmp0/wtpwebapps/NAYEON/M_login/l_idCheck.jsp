<%@ page import="javax.sql.*, java.sql.*, javax.naming.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%String target = request.getParameter("target");
if (target == null) target = "../layouts/null";
String targetPage = target + ".jsp";%>    
    
<!DOCTYPE html>
<html>
<head>
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS" %>
<style>
  h2{ font-family:  'Hahmlet' !important;}
</style>
</head>
<body>

<h2> 아이디 중복 확인 </h2>

<form method="post" action="l_idCheck.jsp?target=l_idCheckpro" >
	<div class="input-group mb-3" style="width: 70%;">
	  <input type="text" class="form-control" name="id" maxlength="20" style="width: 30">
	  <button type="submit" class="btn btn-outline-secondary"> 검색</button>       
	</div>
</form>

<!-- 검색 후 페이지 -->
<div> <jsp:include page="<%=targetPage %>" flush="false" /> </div>

</body>
</html>