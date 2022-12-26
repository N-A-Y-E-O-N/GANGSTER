<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
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
<script  src="JS/JSnewmember.js"></script>
</head>
<body>
<!-- header -->
<%@include file="../layouts/header" %>
  
  
  
<!-- section -->
<section style="margin-top: -950px">


<div style="width: 30%; margin: auto;">
<form action="M_login/l_new.jsp" name="new_member" onsubmit="return Validation(); ">


<div class="input-group mb-3">
  <span class="input-group-text">이름</span>
  <input type="text" class="form-control" placeholder="NAME" name="name" required/>
  

  <span class="input-group-text">연락처</span>
  <input type="text" class="form-control"  placeholder="- 입력 제외" name="tel" maxlength="11" 
  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  required/>
</div>


<div class="input-group mb-3">
  <span class="input-group-text">이메일</span>
  <input type="text" class="form-control" placeholder="EMAIL ADDRESS" name="mail"  required/>
</div>


<div class="input-group mb-3">
  <span class="input-group-text">아이디</span> 
  <input type="text" class="form-control" id="id" name="id" placeholder="4~12자 입력, 중복확인 먼저, ID 변경불가 "
  style="background-color: white;" readonly/>   
  
  <button type="button" class="btn btn-outline-secondary" 
   onclick="idCheck()"  style="margin: right; width: 25%;">중복 확인</button>
</div>


<div class="input-group mb-3">
  <span class="input-group-text">비밀번호</span>
  <input type="password" class="form-control" name="pw" id="pw" placeholder="4~12자의 영문과 숫자" required/> <br>
</div>


<div class="input-group mb-3">
  <span class="input-group-text">비밀번호 확인</span>
  <input type="password" class="form-control" name="pw_check" id="pw_check" required/>
</div>

<div class="link-success" id="link-success">비밀번호가 일치합니다.</div>
<div class="link-danger" id="link-danger">비밀번호가 일치하지 않습니다.</div>

<br>
<button type="submit" class="btn btn-outline-secondary" id="submit" name="submit" style="margin: auto;">가입하기</button>

</form>
</div>
</section>  

 
</body>
</html>