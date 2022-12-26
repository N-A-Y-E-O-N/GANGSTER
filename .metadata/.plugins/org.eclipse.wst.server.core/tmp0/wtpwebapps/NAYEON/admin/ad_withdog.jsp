<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String target = request.getParameter("target");
if (target == null) target = "w_seminar";
String targetPage = target + ".jsp";%>      
<!DOCTYPE html>
<html>
<head>
<title>ad_주인없는 하늘아래</title>
<%@include file="ad_layouts/headerCSS" %>
<style>
  h1,nav{font-family:  'Gaegu' !important;}
</style>
</head>


<body>
<!-- header -->
<%@include file="ad_layouts/header" %>

  
  
<section style="margin-top: -950px; margin-bottom: 2000px;">

<div id="tab-menu">
  <div id="tab-btn">
    <ul style="font-family: 'Hahmlet', serif;">
	  <li class="active"><a href="#">JUST 추가</a></li>
	  <li class="active"><a href="#">JUST 리스트</a></li>
	  <li class="active"><a href="#">예약 리스트</a></li>
    </ul>
  </div>
  
  <div id="tab-cont">	
	<div> <jsp:include page="withdog/ad_withdog_justAddform.jsp" flush="false" /> </div>
	<div> <jsp:include page="withdog/ad_withdog_just_list.jsp" flush="false" /> </div>
	<div> <jsp:include page="withdog/ad_withdog_reserve.jsp" flush="false" /> </div>
  </div>
</div>

<%@include file="ad_layouts/sectionJS" %>









</section>   
</body>
</html>