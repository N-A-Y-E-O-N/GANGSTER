<%@page import="gang.DTOmangdog"%>
<%@page import="gang.DAOmangdog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS"%>
<style>
h1, nav {
	font-family: 'Gaegu' !important;
}

.btn {
	float: right;
}
</style>
</head>
<body>
	<!-- header -->
	<%@include file="../layouts/header"%>


	<!-- section -->
	<%
	request.setCharacterEncoding("UTF-8");

	String mang_code = request.getParameter("mang_code");
	String mang_title = request.getParameter("mang_title");
	String mang_content = request.getParameter("mang_content");
	String mang_pic = request.getParameter("mang_pic");
	String mang_pic_save = request.getParameter("mang_pic_save");

	DAOmangdog dao = new DAOmangdog();
	dao.mangCount(mang_code);
	DTOmangdog dto = dao.getMang(mang_code);
	%>



	<section style="margin-top: -950px;">

		<div style="margin: auto; width: 60%; font-family: 'Hahmlet', serif; font-size: 15px;">
			<form action="M_mangdog/m_updatepro.jsp" name="mangdog" method="post" enctype="multipart/form-data">

				<div class="form-floating">
					<input type="text" class="form-control form-control-lg"name="mang_title" id="mang_title" style="height: 30px;" value="<%=mang_title%>" required>
					 <label for="floatingInputValue">제목</label>
				</div>

				<label for="formFileLg" class="form-label"></label>
				 <input type="file" class="form-control form-control-lg" name="mang_pic" id="mang_pic" style="height: 30px; font-size: 15px;" accept="image/gif, image/jpeg, image/png" required> <br>
				 
				 
				 현재 파일 
				 <img src="mang_img/<%=mang_pic_save %>" width="30%" height="30%">


				<div class="form-floating">
					<textarea class="form-control" name="mang_content" id="mang_content" style="height: 400px" required> <%=mang_content%> </textarea>
					<label for="floatingTextarea2">내용을 입력하세요 </label> <br>


					<input type="hidden" id="mang_code" name="mang_code" value="<%=mang_code %>">
					<input type="hidden" id="mang_pic" name="mang_pic" value="<%=mang_pic%>">
					<input type="hidden" id="mang_pic_save" name="mang_pic_save" value="<%=mang_pic_save %>">

					<button type="submit" class="btn btn-outline-secondary"> 작성 </button>
				</div>


			</form>
		</div>


	</section>



</body>
</html>