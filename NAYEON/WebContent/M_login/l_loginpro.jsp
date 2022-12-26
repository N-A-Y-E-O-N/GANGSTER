<%@page import="java.io.PrintWriter"%>
<%@page import="gang.DAOmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="gang.DTOmember" scope="page"></jsp:useBean>
<jsp:setProperty name="member" property="id"/>
<jsp:setProperty name="member" property="pw"/>    
    
<!DOCTYPE html>
<html>
<head>
<title>주인없는 하늘아래</title>
<meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
</head>
<body>

<% 

request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

session.setAttribute("id", id);
session.setAttribute("pw", pw); 


/*
String id = null;
if (session.getAttribute("id") != null){
	id = (String) session.getAttribute("id");
}
if (id != null){
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('이미 로그인되었습니다.')");
    script.println("location.href = 'main.jsp'");    // 메인 페이지로 이동
    script.println("</script>");
}
*/

		// 자바 코드 삽입 
        DAOmember DAOmember = new DAOmember();
		
        int result = DAOmember.login(member.getId(), member.getPw());
        if (result ==1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인 성공! 환영합니당.')");
            script.println("location.href = '../main.jsp'");
            script.println("</script>");
        }
        else if (result == 0){
        	session.invalidate(); // 세션값 제거
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('비밀번호가 틀립니다.')");
            script.println("history.back()");   //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        else if (result == -1){
        	session.invalidate(); // 세션값 제거
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('존재하지 않는 아이디입니다.')");
            script.println("history.back()");    //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        else if (result == -2){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('DB 오류가 발생했습니다.')");
            script.println("history.back()");    //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        
        DAOmember.close();
    %>


</body>
</html>
