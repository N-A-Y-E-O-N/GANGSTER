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
function id_search() { 
 	var frm = document.idfindscreen;

 	if (frm.name.value.length < 1) {
	  alert("이름을 입력해주세요");
	  return;
	 }

	 if (frm.tel.value.length != 11) {
		  alert("핸드폰번호를 정확하게 입력해주세요");
		  return;
	 }
	 
	 if (frm.mail.value.length < 1) {
		  alert("이메일을 입력해주세요");
		  return;
	}

 frm.method = "post";
 frm.action = "l_finduserpro.jsp"; //넘어간화면
 frm.submit();  
 }
</script>


</head>
<body>

<div style="width: 80%; margin: auto; margin-top: 100px;">

<h2> 아이디 찾기</h2>

<form name="idfindscreen" method = "POST" action="l_finduserpro.jsp">
<div class="input-group mb-3">
  <span class="input-group-text">이름</span>
  <input type="text" class="form-control" name="name" required/>
  <span class="input-group-text">연락처</span>
 <input type="text" class="form-control" name="tel"
  placeholder="- 입력 제외" name="tel" maxlength="11" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  required/>
</div>

<div class="input-group mb-3">
  <span class="input-group-text">이메일</span>
  <input type="text" class="form-control" placeholder="Email address" name="mail" required/>
</div>



<br>
<button type="button" class="btn btn-outline-secondary" onclick="id_search()"
  style="margin: auto; display: block;">찾기</button>
</form>



</div>





</body>

</html>