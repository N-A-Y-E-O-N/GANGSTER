<%@page import="gang.DTOmangdog"%>
<%@page import="java.util.List"%>
<%@page import="gang.DAOmangdog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<!DOCTYPE html>
<html>
<head>
<title>주인없는 하늘아래</title>
<%@include file="layouts/headerCSS" %>
<style>
  h1,nav{font-family:  'Gaegu' !important;}
  .mang{ width:300px; height: 300px; }
</style>
</head>
<body>



<!-- header -->
<%@include file="layouts/header" %>

  

<!-- section -->
<section style="margin-top: -970px">
	<!-- Banner -->
	<br><%@include file="layouts/mainBanner" %>
	
</section>


<!-- footer  -->
<jsp:include page="layouts/footer.jsp"/>

<%@include file="layouts/sectionJS" %>
</body>
</html> 