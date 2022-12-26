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
function delete_Pop() { 
 	var frm = document.deletescreen;

 	if (frm.pw.value.length < 1) {
	  alert("비밀번호를 입력해주세요");
	  return;
	 }
 	

 frm.method = "post";
 frm.action = "mp_deletepro.jsp"; //넘어간화면
 frm.submit();  
 }
</script>


</head>
<body>

<div style="width: 80%; margin: auto; margin-top: 100px;">

<h2> 회원 탈퇴</h2>

<form name="deletescreen" method = "POST">
<div class="input-group mb-3">
  <span class="input-group-text">비밀번호 확인</span>
  <input type="password" class="form-control" name="pw" id="pw" required/>
</div>

<br>
<button type="button" class="btn btn-outline-secondary" onclick="delete_Pop()"
  style="margin: auto; display: block;">탈퇴하기</button>



</form>
</div>
</body>
</html>