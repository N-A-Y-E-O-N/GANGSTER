<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String target = request.getParameter("target");
if (target == null) target = "w_seminar";
String targetPage = target + ".jsp";%>      
<!DOCTYPE html>
<html>
<head>
<title>주인없는 하늘아래</title>
<%@include file="layouts/headerCSS" %>
<style>
  h1,nav{ font-family:  'Gaegu' !important;}
</style>
</head>


<body>
<!-- header -->
<%@include file="layouts/header" %>



<!-- section --> 
<section style="margin-top: 500px;">
 <div id="tab-menu">
  <div id="tab-btn">
    <ul style="font-family: 'Hahmlet', serif;">
      <li class="active"><a href="#">야놀자 갱.ver</a></li>
      <li class="active"><a href="#">냠냠 굿</a></li>
      <li class="active"><a href="#">Just for you..</a></li>
    </ul>
  </div>
  
  
  
  
  <div id="tab-cont">
  	<div> <jsp:include page="M_withdog/w_hotel.jsp" flush="false" /> </div>
  	<div> <jsp:include page="M_withdog/w_feed.jsp" flush="false" /> </div>
  	<div> <jsp:include page="M_withdog/w_just.jsp" flush="false" /> </div>

  </div>
</div>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script  src="JS/JStab.js"></script>

<br><br><br><br><br><br><br><br><br><br><br><br>   

</section>   


<!-- footer  -->
<jsp:include page="layouts/footer.jsp"/>
<%@include file="layouts/sectionJS" %>
</body>
</html>