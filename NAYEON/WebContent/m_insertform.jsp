<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS"%>
<style>
h1, nav {font-family: 'Gaegu' !important;}
.btn{float: right;}
</style>
</head>
<body>
	<!-- header -->
	<%@include file="../layouts/header"%>


	<!-- section -->
	<section style="margin-top: -950px;">

		<%
		//1.한글처리, 파라미터 
		request.setCharacterEncoding("UTF-8");
		String id1 = (String) session.getAttribute("id");

		//1-1. id없이는 진입불가, id없는 경우 로그인페이지로 이동. 가상주소로 이동
		if (id1 == null) {
		%>
		<script>
			alert("로그인 후 이용해주세요.");
			self.close();
			document.location.href = "login.jsp";
		</script>
		<%
		}
		%>

		<div style="margin: auto; width: 60%; font-family: 'Hahmlet', serif; font-size: 15px;" >
			<form action="M_mangdog/m_insertpro.jsp" name="mangdog" method="post" enctype="multipart/form-data">

			    <div class="form-floating">
				<input type="text" class="form-control form-control-lg" name="mang_title" id="mang_title" style="height: 30px; ">
				 <label for="floatingInputValue">제목</label> 
				 </div>
				 
				 <label for="formFileLg"class="form-label"></label> 
				 <input type="file" class="form-control form-control-lg" name="mang_pic" id="mang_pic" style="height: 30px;  font-size: 15px;" accept="image/gif, image/jpeg, image/png">
				<br>


				<div class="form-floating">
					<textarea class="form-control" placeholder="Leave a comment here" name="mang_content" id="mang_content" style="height: 400px"></textarea>
					<label for="floatingTextarea2">내용을 입력하세요 </label> <br>
					<button type="submit" class="btn btn-outline-secondary"> 작성</button>
				</div>
				
				<input type="hidden" id="mang_id" name="mang_id" value="<%=id1%>">
				</form>
		</div>
	
	
	</section>


</body>
</html>