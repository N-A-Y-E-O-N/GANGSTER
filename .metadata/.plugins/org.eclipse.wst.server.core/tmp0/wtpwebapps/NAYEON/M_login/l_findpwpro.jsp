<%@page import="gang.DAOmember"%>
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
	h2{font-family:  'Hahmlet' !important;}
</style>
<script type="text/javascript">
	window.onload=function() {
		passForm.newPw.focus();
	}

	function passwdCheck(form) {
		if(form.newPw.value=="") {
			alert("새 비밀번호를 입력해 주세요.");
			form.newPw.focus();
			return;
		}
		
		if(form.newPw2.value=="") {
			alert("새 비밀번호 확인을 입력해 주세요.");
			form.newPw2.focus();
			return;
		}
		
		if (form.newPw.value!=form.newPw2.value) {
			alert("새 비밀번호와 비밀번호 확인이 일치하지 않습니다..");
			form.newPw.value="";
			form.newPw2.value="";
		}

		form.method="POST";
		form.action="l_passwdModifyAction.jsp";
		form.submit();
	}
</SCRIPT>



</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
 
String id = request.getParameter("id");
String mail = request.getParameter("mail");


DAOmember dao = new DAOmember();
String findpw = dao.findPw(id, mail); //pw를 디비에서 가져옴
%>


<% if (findpw != null) { %>
      <form name="passForm"  method = "POST" action="l_passwdModifyAction.jsp"> <br><br>
		<table>
		<h2>비밀번호 변경</h2>
			<tr>
				<td> 아이디 </td>
				<td> <input type="text" name="id" id="id" value="<%=id %>" readonly/>  </td>
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

<%  } else { %>
       <div class = "container" style="text-align: center;"> <br><br><br>
         <h2> 등록된 정보가 없습니다. </h2> <br><br>
      </div>
      
      <div class = "found-login">
        <button type="button" class="btn btn-outline-secondary" onClick="history.back()"
        style="margin: auto; display: block;">다시 찾기</button>
      </div>

<% } %> 








</body>
</html>