<%@page import="gang.DTOmangdog"%>
<%@page import="java.util.List"%>
<%@page import="gang.DAOmangdog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  h1,nav{font-family:  'Gaegu' !important;}
  .card-footer{text-align: left;}
  .card-img-top{height: 300px; padding: 8px;}
  .card{ font-size: 12px; }
  .container1{ position: relative; width: 250px; height: 350px; margin: 60px auto;}
</style>
</head>
<body>

<div class="row" style="width: 80%; margin: auto;">	
<%
request.setCharacterEncoding("UTF-8");


DAOmangdog dao = new DAOmangdog();
String mang_id = (String)session.getAttribute("id"); 
List<DTOmangdog> wroteList = dao.DTOwroteList(mang_id);
dao.close();
%>

<%  for (DTOmangdog f : wroteList) {  %>
<div class="col">
<div class="container1">
<div class="card" >

  <!-- 썸네일 -->
  <form action="m_detail.jsp">
  <input type="image" src="mang_img/<%=f.getMang_pic_save()%>" class="card-img-top" > 
  
  <!-- 제목 및 내용 -->
  <div class="card-body">
  <h5 class="card-title"> <%=f.getMang_title() %> </h5>
  <p class="card-text"> <%=f.getMang_id() %> </p>
  
  
  <!-- input값 넘기기 -->
  <input type="hidden" id="mang_code" name="mang_code" value="<%=f.getMang_code()%>">
  <input type="hidden" id="mang_id" name="mang_id" value="<%=mang_id%>">
  <input type="hidden" id="mang_title" name="mang_title" value="<%=f.getMang_title()%>">
  <input type="hidden" id="mang_content" name="mang_content" value="<%=f.getMang_content()%>">
  <input type="hidden" id="mang_date" name="mang_date" value="<%=f.getMang_date()%>">
  <input type="hidden" id="mang_pic_save" name="mang_pic_save" value="<%=f.getMang_pic_save()%>">
  <input type="hidden" id="mang_count" name="mang_count" value="<%=f.getMang_count() %>">
  <input type="hidden" id="mang_like" name="mang_like" value="<%=f.getMang_like() %>">
  </div></form>
  
  
  <div class="card-footer" >
        <small class="text-muted">
        <%=f.getMang_date()%>   &nbsp;&nbsp;
        
        <span style="float: right;">
        <span> <img src="icon/count.png" width="20px" height="20px" style="margin-right: 3px;"> <%=f.getMang_count()%> &nbsp; </span>  
        <span> <img src="icon/heart_icon.png" width="18px" height="18px" style="margin-right: 3px;"> <%=f.getMang_like()%> </span>
        </span>
        
        </small>
  </div>
  
</div>
</div> 
</div>  <%} %> 
</div>


</body>
</html>