<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS" %>
<style>
  h2{font-family:  'Hahmlet' !important;}
</style>

<script type="text/javascript">
function pw_search() { 
 	var frm = document.pwfindscreen;

 	if (frm.id.value.length < 1) {
	  alert("아이디을 입력해주세요");
	  return;
	 }
 	
 	if (frm.mail.value.length < 1) {
 		  alert("이메일을 입력해주세요");
 		  return;
 		 }

 frm.method = "post";
 frm.action = "l_findpwpro.jsp"; //넘어간화면
 frm.submit();  
 }
</script>


</head>
<body>

<div style="width: 80%; margin: auto; margin-top: 100px;">

<h2> 패스워드 찾기</h2>

<form name="pwfindscreen" method = "POST" action="l_findpwpro.jsp">
<div class="input-group mb-3">
  <span class="input-group-text">아이디</span>
  <input type="text" class="form-control" name="id" required/>
  
  </div>
  
<div class="input-group mb-3">
  <span class="input-group-text">이메일</span>
  <input type="text" class="form-control" placeholder="Email address" name="mail" required/>
</div>



<br>
<button type="button" class="btn btn-outline-secondary" onclick="pw_search()"
  style="margin: auto; display: block;">찾기</button>



</form>
</div>
</body>
</html>