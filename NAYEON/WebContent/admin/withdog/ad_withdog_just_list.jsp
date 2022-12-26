<%@page import="java.util.List"%>
<%@page import="gang.DAOjust"%>
<%@page import="gang.DTOjust"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function you_update() {
return true;
}
function you_delete(frm) {
 frm.action='withdog/ad_withdog_you_delete.jsp';
 frm.submit();
 return true;
}

function blog_update() {
	return true;
	}
function blog_delete(frm) {
	 frm.action='withdog/ad_withdog_blog_delete.jsp';
	 frm.submit();
	 return true;
	}
</script>

</head>
<body>
<div style="text-align: left; font-family: 'Hahmlet', serif;">
<%
	DAOjust dao = new DAOjust();
    List<DTOjust> youList = dao.DTOyouList();
    List<DTOjust> blogList = dao.DTOblogList();
    dao.close();

 
 for (DTOjust f : youList) { %>
 		<form action="withdog/ad_withdog_you_update.jsp" onsubmit="you_update()">
            코드 : &nbsp; &nbsp; <%= f.getYou_code() %> <br>
            제목 : <input type="text" id="you_title" name="you_title" value="<%= f.getYou_title() %>" required>   <br>
            링크 : <input type="text" id="you_link" name="you_link" value=" https://www.youtube.com/watch?v=<%=f.getYou_link()%>" required>
            	 
       <div style="float: right; ">
      		<input type="hidden" id="you_code" name="you_code" value="<%= f.getYou_code() %>">
       		<button type="submit" class="btn btn-outline-secondary" >수정</button>	
	  		<button type="button" class="btn btn-outline-secondary" onclick="return you_delete(this.form)"> 삭제 </button>  
	   </div>
	  </form><hr>     	  
<%} %>



 <%for (DTOjust f : blogList) { %>
 			<form action="withdog/ad_withdog_blog_update.jsp" onsubmit="blog_update()">
            코드 : &nbsp; &nbsp; <%= f.getBlog_code() %> <br>
            제목 : <input type="text" id="blog_title" name="blog_title" value="<%= f.getBlog_title() %>" required>  <br>
            링크 : <input type="text" id="blog_link" name="blog_link" value="<%= f.getBlog_link() %>" required>  <br>
            원본 : &nbsp; &nbsp; <%= f.getBlog_thumb() %>  <br>
            저장 : &nbsp; &nbsp; <%= f.getBlog_thumb_save() %><br>
            
            <img src="../blog_img/<%= f.getBlog_thumb_save() %>"  width="500px" height="600px"/>

       <div style="float: right; ">
       		<input type="hidden" id="blog_code" name="blog_code" value="<%=f.getBlog_code()%>">
       		<button type="submit" class="btn btn-outline-secondary" >수정</button>	
	  		<button type="button" class="btn btn-outline-secondary" onclick="return blog_delete(this.form)"> 삭제 </button>  
	   </div>
	  </form><hr>
<% } %>
 
</div>
</body>
</html>