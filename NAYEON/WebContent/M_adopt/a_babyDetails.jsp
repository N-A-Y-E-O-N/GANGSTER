<%@page import="gang.DTOdog"%>
<%@page import="java.util.List"%>
<%@page import="gang.DAOdog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<!-- CSS/JS -->
<link rel="stylesheet" href="../CSS/CSSmenu.css">
<link rel="stylesheet" href="../CSS/CSSsection.css" />
<link rel="stylesheet" href="../CSS/CSSbanner.css" />
<link rel="stylesheet" href="../CSS/CSStab.css" />
<link rel="stylesheet" href="../CSS/CSShelp.css" />
<link rel="stylesheet" href="../CSS/CSSmangdog.css" />
<link rel="stylesheet" href="../CSS/CSSeffect.css" >
<link rel="stylesheet" href="../CSS/CSShover.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>


<!-- 웹 폰트 설정 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&family=Noto+Serif+KR&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&display=swap" rel="stylesheet">


<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<style>
  h1,nav{font-family:  'Gaegu' !important;}
</style>
</head>
<body>
<!-- 상단 로고  -->
<h1 style="text-align: center;"> <a href="../main.jsp"/> <img src="../icon/logo.png" width="100" height="100"> </h1>
 
 
 
<!-- 로그인/회원가입/로그아웃/마이페이지  -->
<%//1.한글처리, 파라미터 
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id");
String name = request.getParameter("name");
%>


 <% if (session.getAttribute("id") == null) { %>
 <a href="../login.jsp"><div style="position:absolute; right:80px; top:80px;">  로그인  | </div></a>
 <a href="../l_newmember.jsp"><div style="position:absolute; right:20px; top:80px;">  회원가입 </div></a> 


 <% }else if(id != null){
	if(id.equals("admin")){ %>
	 <script>location.href = "admin/ad_main.jsp"; </script>
<% } else { %>
	<div style="position:absolute; right:20px; top:60px;">  <%=id%> 님 환영합니다 ! </div>
	 <a href="../logout.jsp"><div style="position:absolute; right:80px; top:80px;">  로그아웃  | &nbsp;&nbsp; </div></a> 
 	 <a href="../mypage.jsp"><div style="position:absolute; right:20px; top:80px;">  마이페이지 </div></a>
<%} }%>

<hr>


<!-- 메뉴 -->
<nav>
   <!-- 메뉴 버튼 디자인  -->
   <div class="menu-btn" >
      <div class="line line__1"></div>
      <div class="line line__2"></div>
      <div class="line line__3"></div>
   </div>


   <ul class="nav-links">
      <a href="../center.jsp"> <li class="link"> 센터 소개 </li> </a>
      <a href="../adopt.jsp"> <li class="link"> 입양 </li> </a>
	  <a href="../volunteer.jsp"> <li class="link"> 봉사활동 </li> </a>
	  <a href="../support.jsp"> <li class="link"> 후원 </li> </a>
	  <a href="../hospital.jsp"> <li class="link"> 동물병원 </li> </a>
	  <a href="../mangdog.jsp"> <li class="link"> MANGDOG CONTEST </li> </a>
	  <a href="../withdog.jsp"> <li class="link"> WITH DOG </li> </a>    
	</ul>  	  
</nav>


<!-- section -->
<section style="margin-top: -970px">
<%
request.setCharacterEncoding("UTF-8");
String dog_code =  request.getParameter("dog_code");
String dog_name =  request.getParameter("dog_name");
String dog_breed =  request.getParameter("dog_breed");
String dog_sex =  request.getParameter("dog_sex");
String dog_age =  request.getParameter("dog_age");
String dog_weight =  request.getParameter("dog_weight");
String dog_character =  request.getParameter("dog_character");
String dog_disease =  request.getParameter("dog_disease");
String dog_story =  request.getParameter("dog_story");
String dog_neutralization =  request.getParameter("dog_neutralization");
String dog_vaccination =  request.getParameter("dog_vaccination");
String dog_main_save =  request.getParameter("dog_main_save");
String dog_detail_save =  request.getParameter("dog_detail_save");

%>
<br><br>

<div class="container text-center" style="margin: auto; width: 50%; font-family: 'Hahmlet', serif ; font-size: 17px;">
<div class="row">	

<div class="col hover14 column"> <figure> <img src="../dog_img/<%=dog_main_save %>" style="width: 400px; height: 400px; float: left;">	</figure>  </div>

<div class="col">
<table class="table table-bordered" style="height: 400px; vertical-align: middle;" >
	<tr>
		<th>이름</th>		<td><%=dog_name %></td>
	</tr>
	
	<tr>
		<th>견종</th>		<td><%=dog_breed %></td>
	</tr>
	
	
	<tr>
		<th>성별</th>		<td><%=dog_sex %></td>
	</tr>
	
	<tr>
		<th>나이</th>		<td><%= dog_age%></td>
	</tr>
	
	<tr>
		<th>무게</th>		<td><%=dog_weight %></td>
	</tr>
	
	<tr>
		<th>질병</th>		<td><%=dog_vaccination %></td>
	</tr>
	
	<tr>
		<th>중성화</th>		<td><%=dog_neutralization %></td>
	</tr>	
</table>
</div></div>
<br>

<div class="row">	
<div class="col">	
<table class="table table-bordered"	>
	<tr>
		<th>성격</th>		<td><%=dog_character %></td>
		<th>맡겨진 이유</th>	<td><%=dog_story %></td>
	</tr>	
</table>
</div></div>


<div class="col"> <img src="../dog_img/<%=dog_detail_save %>" style="width: 930px;">	  </div>


</div>

</section>
<!-- 메뉴 JS 설정 -->
<script  src="../JS/JSmenu.js"></script>
</body>
</html>



