<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String target = request.getParameter("target");
if (target == null) target = "M_mypage/mp_edit";
String targetPage = target + ".jsp";%>      
<!DOCTYPE html>
<html>
<head>
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS" %>
<style>
  h1,nav{
    font-family:  'Gaegu' !important;
  }

</style>
</head>

<body>
<!-- header -->
<%@include file="../layouts/header" %>  


<!-- section -->
<section style="margin-top: 500px;">

<%//1.한글처리, 파라미터 
request.setCharacterEncoding("UTF-8");
String id1 = (String) session.getAttribute("id");//object를 string으로 다운캐스팅

//1-1. id없이는 진입불가, id없는 경우 로그인페이지로 이동. 가상주소로 이동
if(id == null){
	response.sendRedirect("login.jsp");
}
%>



 <div id="tab-menu">
  <div id="tab-btn">
    <ul style="font-family: 'Hahmlet', serif;">
      <li class="active"><a href="#">회원정보 수정</a></li>
      <li class="active"><a href="#">작성글 조회</a></li>
    </ul>
  </div>
  
  
  <div id="tab-cont">
  	<div> <jsp:include page="M_mypage/mp_edit.jsp" flush="false" /> </div>
  	<div> <jsp:include page="M_mypage/mp_wrote.jsp" flush="false" /> </div>
  </div>
</div>

</section>   


<!-- footer  -->
<jsp:include page="layouts/footer.jsp"/>
<%@include file="layouts/sectionJS" %>
</body>
</html>