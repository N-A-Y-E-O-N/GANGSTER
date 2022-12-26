<%@page import="gang.DTOjust"%>
<%@page import="java.util.List"%>
<%@page import="gang.DAOjust"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS" %>
<style type="text/css">
iframe { width: 330px; height: 250px; border-radius: 30px;}
.img_blog { width: 330px; height: 250px; border-radius: 30px;}
p{ font-family:  'Hahmlet', serif;">
</style>

</head>
<body>
<div class="container-sm">
<!-- help  -->
   <div class="help-tip" style="margin-top: -50px; margin-right: -200px; z-index:2;">
      <p>
      <b>just for you</b> 페이지는 저희 보호센터가 견주들에게 도움을 주고자 <br>
      동물병원이나 전문 훈련사 중심으로 업로드 된 '유튜브 영상'과 '블로그'를 엄선하여<br>
      제공하는 페이지입니다. <br><br>
      
      이 페이지의 게시물은 상시 업데이트 될 수 있습니다.
      </p>
   </div>



<!-- ---------------------------------------- 유튜브 구역 ------------------------------------------>
<div style="position: relative; z-index: 1;" style="border : 1px  solid #000000;">
<div class="swiper-container" >
<div class="swiper-wrapper">
   
   
<% 
DAOjust dao = new DAOjust();
List<DTOjust> youList = dao.DTOyouList();
List<DTOjust> blogList = dao.DTOblogList();
dao.close();

for (DTOjust f : youList) { %> 
     <div class="swiper-slide">
     	 <iframe src="https://www.youtube.com/embed/<%=f.getYou_link() %>" 
              title="YouTube video player" allow="accelerometer;  clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
         </iframe>
     </div>
 <%} %>    

</div>
   
    

<!-- 다음/이전 버튼 -->
<div class="swiper-button-next"></div>
<div class="swiper-button-prev"></div>


<!-- 페이징 -->
<div class="swiper-pagination"></div>
</div>

<%@include file="../layouts/justJS" %>







<!-- ---------------------------------------- 블로그 구역 ----------------------------------------  -->

<div class="swiper-container">
<div class="swiper-wrapper">



<% 
for (DTOjust f : blogList) {	%>
	<div class="swiper-slide">
		<a href="<%=f.getBlog_link()%>" target="_blank">
     		 <img src="blog_img/<%= f.getBlog_thumb_save() %>" class="img_blog" > <br>
     		 <b> <%= f.getBlog_title() %> </b>  
     	</a>
     </div>
 <%} %>    

</div>



<!-- 다음/이전 버튼 -->
<div class="swiper-button-next"></div>
<div class="swiper-button-prev"></div>


<!-- 페이징 -->
<div class="swiper-pagination"></div>
</div>



<%@include file="../layouts/justJS" %>
</div>
</div>
</body>
</html>