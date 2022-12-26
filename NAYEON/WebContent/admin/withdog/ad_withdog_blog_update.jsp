<%@page import="gang.DAOjust"%>
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
	String blog_code = request.getParameter("blog_code");
	String blog_title = request.getParameter("blog_title");
	String blog_link = request.getParameter("blog_link");

	DAOjust dao = new DAOjust();

	
	boolean flag1 = dao.Editblog(blog_title, blog_link, blog_code);
	if (flag1 == true) {
%>

	<script>
		alert("블로그 정보가 정상적으로 수정되었습니다.");
		self.close();
		document.location.href = "../ad_withdog.jsp";
	</script>

<% } else {%>
	<script>
		alert("블로그정보 수정에 실패했습니다.");
		history.back();
	</script>
<%} %>

</body>
</html>