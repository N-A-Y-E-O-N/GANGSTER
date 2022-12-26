<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String target = request.getParameter("target");
if (target == null) target = "c_greeting";
String targetPage = target + ".jsp";%>      
<!DOCTYPE html>
<html>
<head>
<title>주인없는 하늘아래</title>
<%@include file="layouts/headerCSS" %>
<style>
  h1,nav{
    font-family:  'Gaegu' !important;
  }

</style>
</head>


<body>
<!-- header -->
<%@include file="layouts/header" %>
  


<!-- header -->
<section style="margin-top: 500px;">
 <div id="tab-menu">
  <div id="tab-btn">
    <ul style="font-family: 'Hahmlet', serif;">
      <li class="active"><a href="#">인사말</a></li>
      <li class="active"><a href="#">로고의미</a></li>
      <li class="active"><a href="#">시설소개</a></li>
      <li class="active"><a href="#">찾아오는길</a></li>
    </ul>
  </div>
  
  <div id="tab-cont">
  	<div> <jsp:include page="M_center/c_greeting.jsp" flush="false" /> </div>
  	<div> <jsp:include page="M_center/c_logomeaning.jsp" flush="false" /> </div>
  	<div> <jsp:include page="M_center/c_intro.jsp" flush="false" /> </div>
  	<div> <jsp:include page="M_center/c_way.jsp" flush="false" /> </div>

  </div>
</div>
</section>   


<!-- footer  -->
<jsp:include page="layouts/footer.jsp"/>
<%@include file="layouts/sectionJS" %>

</body>
</html>