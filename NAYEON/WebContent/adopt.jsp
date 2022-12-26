<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String target = request.getParameter("target");
if (target == null) target = "a_baby";
String targetPage = target + ".jsp";%>      
<!DOCTYPE html>
<html>
<head>
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS" %>
<style>
  h1,nav{font-family:  'Gaegu' !important;}
</style>
</head>

<body>

<!-- header -->
<%@include file="../layouts/header" %>  


<!-- section -->
<section style="margin-top: 500px;">
 <div id="tab-menu">
  <div id="tab-btn">
    <ul style="font-family: 'Hahmlet', serif;">
      <li class="active"><a href="#">아가들</a></li>
      <li class="active"><a href="#">혜택</a></li>
      <li class="active"><a href="#">절차</a></li>
      <li class="active"><a href="#">상담</a></li>
    </ul>
  </div>
  
  
  <div id="tab-cont">
  	<div> <jsp:include page="M_adopt/a_baby.jsp" flush="false" /> </div>
  	<div> <jsp:include page="M_adopt/a_benefit.jsp" flush="false" /> </div>
  	<div> <jsp:include page="M_adopt/a_step.jsp" flush="false" /> </div>
  	<div> <jsp:include page="M_adopt/a_counsel.jsp" flush="false" /> </div>

  </div>
</div>
</section>   


<!-- footer  -->
<%@include file="layouts/sectionJS" %>
</body>
</html>