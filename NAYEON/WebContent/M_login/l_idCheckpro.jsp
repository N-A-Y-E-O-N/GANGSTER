
<%@page import="gang.DAOmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
    function apply(id){
        opener.document.new_member.id.value=id;
        window.close(); //창닫기
        }
</script>
<body>

<%
    String id=request.getParameter("id");
    DAOmember dao = new DAOmember();
    int cnt= dao.duplecateID(id);
    
    out.println("<strong> ' " + id + " ' </stong>");
    
    if(cnt==0){
    	out.println("는 사용 가능한 아이디입니다.");
		out.println("<a href='javascript:apply(\"" + id + "\")'> [사용하기] </a>");
%>
 <%
 	}else{
    	out.println("는 사용할 수 없는 아이디 입니다. ");
    }
 %>

</body>
</html>