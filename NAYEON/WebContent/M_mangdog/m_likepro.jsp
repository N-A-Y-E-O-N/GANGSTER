<%@page import="gang.DAOmangdog"%>
<%@page import="gang.DTOlikely"%>
<%@page import="java.util.ArrayList"%>
<%@page import="gang.DAOlikely"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = (String) session.getAttribute("id");
	

	if (id == null) {
	%>
	<script>
		alert("로그인 후 이용해주세요.");
		self.close();
		document.location.href = "../login.jsp";
	</script>

	<%
	
	} else {
		
	String mang_code = null;
	if (request.getParameter("mang_code") != null) {
		mang_code = (String) request.getParameter("mang_code");
	}

	
	DAOmangdog daoM = new DAOmangdog();
	DAOlikely daoL = new DAOlikely();


	int result = daoL.insertLike(id, mang_code);

	if (result == 1) {

		result = daoM.like(mang_code);

		if (result == 1) { // 1인경우 디비에서 해당 게시물 추천 완료
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('추천이 완료되었습니다.');");
			script.println("location.href = document.referrer;");
			script.println("</script>");
			script.close();

			return;

		} else {

			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류 발생.');");
			script.println("history.back();");
			script.println("</script>");
			script.close();

			return;

		}

	} else { // 이미 PK, NN으로 설정되어 중복되면 1 반환이 되지 않음

		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 추천한 게시글입니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();

		return;

	}
	}
	%>



</body>
</html>