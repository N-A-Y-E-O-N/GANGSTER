<%@page import="java.util.List"%>
<%@page import="gang.DAOmangdog"%>
<%@page import="gang.DTOmangdog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  .card-footer{text-align: left;}
  .card-img-top{height: 300px; padding: 8px;}
  .card{ font-size: 12px; }
  .container1{ position: relative; width: 250px; height: 350px; margin: 60px auto;}
</style>
</head>
<body>
<!-- 페이징 -->
<% 
	int pageSize = 8;

	String pageNum = request.getParameter("pageNum");
	if (pageNum == null){ // 클릭한게 없으면 1번 페이지
	pageNum = "1";
	}

	int currentPage = Integer.parseInt(pageNum);

	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;

	int count = 0;
	DAOmangdog manager = DAOmangdog.getInstance();
	count = manager.getCount();


	List<DTOmangdog> mangList = null;
	if (count > 0) {
		// getList()메서드 호출 / 해당 레코드 반환
		mangList = manager.DTOmangList(startRow, endRow);
	}

%>


<!--  게시글  -->
<div class="row" style="width: 80%; margin: auto;">	

<%
	if (count > 0) { // 데이터베이스에 데이터가 있으면
		int number = count - (currentPage - 1) * pageSize; // 글 번호 순번 
		for (int i = 0; i < mangList.size(); i++) {
		DTOmangdog dto = mangList.get(i); // 반환된 list에 담긴 참조값 할당
%>
<div class="col">
<div class="container1">
<div class="card" >

  <!-- 썸네일 -->
  <form action="ad_mang_detail.jsp">
  <input type="image" src="../mang_img/<%=dto.getMang_pic_save()%>" class="card-img-top" > 
  
  <!-- 제목 및 내용 -->
  <div class="card-body">
  <h5 class="card-title"> <%=dto.getMang_title() %> </h5>
  <p class="card-text"> <%=dto.getMang_id() %> </p>
  
  
  <!-- input값 넘기기 -->

  <input type="hidden" id="mang_code" name="mang_code" value="<%=dto.getMang_code()%>">
  <input type="hidden" id="mang_id" name="mang_id" value="<%=dto.getMang_id()%>">
  <input type="hidden" id="mang_title" name="mang_title" value="<%=dto.getMang_title()%>">
  <input type="hidden" id="mang_content" name="mang_content" value="<%=dto.getMang_content()%>">
  <input type="hidden" id="mang_date" name="mang_date" value="<%=dto.getMang_date()%>">
  <input type="hidden" id="mang_pic" name="mang_pic" value="<%=dto.getMang_pic()%>">
  <input type="hidden" id="mang_pic_save" name="mang_pic_save" value="<%=dto.getMang_pic_save()%>">
  <input type="hidden" id="mang_count" name="mang_count" value="<%=dto.getMang_count() %>">
  <input type="hidden" id="mang_like" name="mang_like" value="<%=dto.getMang_like() %>">
  </div>
  </form>
  
  <div class="card-footer" >
        <small class="text-muted">
        <%=dto.getMang_date()%>   &nbsp;&nbsp;
        
        <span style="float: right;">
        <span> <img src="../icon/count.png" width="20px" height="20px" style="margin-right: 3px;"> <%=dto.getMang_count()%> &nbsp; </span>  
        <span> <img src="../icon/heart_icon.png" width="18px" height="18px" style="margin-right: 3px;"> <%=dto.getMang_like()%> </span>
        </span>
        
        </small>
  </div>
  
</div>
</div>
</div> <%}	} else { %> 게시글이 없음다 <%} %> 
</div>

<br><br><br><br>

<%	// 페이징  처리
	if(count > 0){
		// 총 페이지의 수
		int pageCount = count / pageSize + (count%pageSize == 0 ? 0 : 1);
		
		
		// 한 페이지에 보여줄 페이지 블럭(링크) 수
		int pageBlock = 10;
		
		
		// 한 페이지에 보여줄 시작 및 끝 번호(예 : 1, 2, 3 ~ 10 / 11, 12, 13 ~ 20)
		int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
		int endPage = startPage + pageBlock - 1;
							
		// 마지막 페이지가 총 페이지 수 보다 크면 endPage를 pageCount로 할당
		if(endPage > pageCount){
			endPage = pageCount;}
							
		if(startPage > pageBlock){ // 페이지 블록수보다 startPage가 클경우 이전 링크 생성 %>
			<a href="ad_mangdog.jsp?pageNum=<%=startPage - 10%>">[이전]</a>	
	
		<%	} for(int i=startPage; i <= endPage; i++){ // 페이지 블록 번호
				if(i == currentPage){ // 현재 페이지에는 링크를 설정하지 않음   %>
		
		[<%=i %>]
		
		<%	}else{ // 현재 페이지가 아닌 경우 링크 설정	%>
				<a href="ad_mangdog.jsp?pageNum=<%=i%>"> &nbsp; [<%=i %>] &nbsp; </a>
		
		<%	} } // for end
			if(endPage < pageCount){ // 현재 블록의 마지막 페이지보다 페이지 전체 블록수가 클경우 다음 링크 생성
		%>
		
		<a href="ad_mangdog.jsp?pageNum=<%=startPage + 10 %>">[다음]</a>
	
		<%}} %>
 
<br><br><br><br>


</body>
</html>