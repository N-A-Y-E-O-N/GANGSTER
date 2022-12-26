<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//현재 비밀번호가 맞지 않을 경우 전달되는 메세지를 반환받아 저장
	String msg = (String)request.getAttribute("msg");
	if(msg == null) msg = "";
%>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS" %>
<style>
	form {margin: auto; width: 80%; text-align: center;
		  font-family:  'Hahmlet' !important; }
	table {margin: auto;}
</style>
<script type="text/javascript">
	window.onload=function() {
		passForm.oldPw.focus();
	}

	function passwdCheck(form) {
		if(form.oldPw.value=="") {
			alert("현재 비밀번호를 입력해 주세요.");
			form.oldPw.focus();
			return;
		}
		
		if(form.newPw.value=="") {
			alert("새로운 비밀번호를 입력해 주세요.");
			form.newPw.focus();
			return;
		}
		
		if(form.newPw2.value=="") {
			alert("새로운 비밀번호 확인을 입력해 주세요.");
			form.newPw2.focus();
			return;
		}
		
		if (form.newPw.value!=form.newPw2.value) {
			alert("새로운 비밀번호와 비밀번호 확인이 일치하지 않습니다..");
			form.newPw.value="";
			form.newPw2.value="";
			form.newPw.focus();
			return;
		}

		form.method="POST";
		form.action="mp_passwdModifyAction.jsp";
		form.submit();
	}
</SCRIPT>





</head>
<body>
	<form name="passForm"> <br><br>
		
		<table>
		<h2>비밀번호 변경</h2>
			<tr>
				<td> 현재 비밀번호 </td>
				<td> <input type="password" name="oldPw" id="oldPw">  </td>
			</tr>
		
	
			<tr>
				<td> 새 비밀번호 </td>
				<td> <input type="password" name="newPw" id="newPw">  </td>
			</tr>
			
			<tr>
				<td> 비밀번호 확인 </td>
				<td> <input type="password" name="newPw2" id="newPw2"></td>
			</tr>
			
			
		</table>
		
		<br>
		<button type="submit" class="btn btn-outline-secondary" onclick="passwdCheck(passForm);"> 변경 </button>  &nbsp;
	</form>

</body>
</html>