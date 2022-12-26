
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<%@include file="layouts/headerCSS" %>
<style>
  h1,nav{font-family:  'Gaegu' !important;}
  button {height: 80%;}
  table {font-family: 'Hahmlet', serif;
      font-size : 20px;}
</style>
<link rel="stylesheet" href="CSS/CSSlogin.css" >
</head>
<body>
<script type="text/javascript">
<!-- 아이디/비밀번호 찾기 새 창 열기-->
  function idPop(){
    var idpopup = window.open('M_login/l_finduser.jsp', '아이디 찾기', 'width=500px,height=400px, scrollbars=yes');
  }
  
  function pwPop(){
       var pwpopup = window.open('M_login/l_findpw.jsp', '비밀번호 찾기', 'width=500px,height=400px, scrollbars=yes');
  }
  
</script>


<!-- header -->
<%@include file="layouts/header" %>


<!-- section --> 
<section style="margin-top: -950px">


<div class="panda">
  <div class="ear"></div>
  <div class="face">
    <div class="eye-shade"></div>
    <div class="eye-white">
      <div class="eye-ball"></div>
    </div>
    <div class="eye-shade rgt"></div>
    <div class="eye-white rgt">
      <div class="eye-ball"></div>
    </div>
    <div class="nose"></div>
    <div class="mouth"></div>
  </div>
  <div class="body"> </div>
  <div class="foot">
    <div class="finger"></div>
  </div>
  <div class="foot rgt">
    <div class="finger"></div>
  </div>
</div>
<form action="M_login/l_loginpro.jsp" name = "login">

  <div class="hand"></div>
  <div class="hand rgt"></div>
  <h1> LOGIN </h1>
  <div class="form-group">
    <input required="required" class="form-control"  name="id" />
    <label class="form-label">	ID    </label>
  </div>
  <div class="form-group">
    <input id="password" type="password" required="required" class="form-control"  name="pw" />
    <label class="form-label">Password</label>
    <p class="alert">Invalid Credentials..!!</p>
    <button class="btnL" type="submit" name="login">Login </button>
  </div>
</form>

<button type="button"  onclick="idPop()"> 아이디 찾기 </button>  &nbsp;
<button type="button"  onclick="pwPop()"> 비밀번호 찾기 </button>  &nbsp;

</section>

<br><br><br><br><br><br><br>

<!-- footer  -->
<jsp:include page="layouts/footer.jsp"/>
<%@include file="layouts/sectionJS" %>  
<script  src="JS/JSlogin.js"></script> 

</body>
</html>