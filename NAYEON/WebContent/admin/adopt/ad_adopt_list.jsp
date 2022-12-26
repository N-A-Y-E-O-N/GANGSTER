<%@page import="gang.DTOcounsel"%>
<%@page import="gang.DAOcounsel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  h1,nav{font-family:  'Gaegu' !important;}
  input {font-size: 15px;   margin-left: 10px}
</style>
<script>
function coun_update() {
return true;
}
function coun_delete(frm) {
 frm.action='adopt/ad_adopt_delete.jsp';
 frm.submit();
 return true;
}
</script>
</head>
<body>
<%
	DAOcounsel dao = new DAOcounsel();
    List<DTOcounsel> counselList = dao.DTOcounselList();
    dao.close();
%>

	<form action="ad_adopt_list_pro.jsp">
	    <table class="table table-striped table-hover" style="width: 100%;" >
        <tr>
            <th>코드</th> <th>이름</th>  <th>날짜</th> <th>전화번호</th> <th>메일</th> <th>제목</th> <th>내용</th>
        </tr>
    <% for (DTOcounsel f : counselList) { %>
        <tr>
            <td width="5%"><%= f.getCoun_code() %> </td>
            <td width="5.5%"><%= f.getCoun_name() %> </td>
            <td width="11.4%"><%= f.getCoun_date() %></td>
            <td width="9%"><%= f.getCoun_tel() %></td>
            <td width="11%"><%= f.getCoun_mail() %></td>
            <td width="13.5%"><%= f.getCoun_title() %></td>
            <td width=""><%= f.getCoun_content() %></td>
         </tr>

    <% } %>
    </table>  
	</form>
    

</body>
</html>