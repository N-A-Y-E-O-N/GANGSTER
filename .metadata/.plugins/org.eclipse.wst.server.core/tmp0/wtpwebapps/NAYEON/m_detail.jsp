<%@page import="java.util.ArrayList"%>
<%@page import="gang.DTOlikely"%>
<%@page import="gang.DAOlikely"%>
<%@page import="java.util.List"%>
<%@page import="gang.DTOcomments"%>
<%@page import="gang.DAOcomments"%>
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
h1, nav {font-family: 'Gaegu' !important;}
table {font-family: 'Hahmlet', serif; font-size: 15px; }
td {text-align: left;}
th {width: 20%;}
</style>
<script>
// 게시글 수정/삭제 폼 이동
function mang_delete() {
return true;
}
function mang_update(frm) {
 frm.action='m_update.jsp';
 frm.submit();
 return true;
}
</script>
</head>
<body>

	<!-- header -->
	<%@include file="../layouts/header"%>


	<!-- section -->
	<section style="margin-top: -950px;">
		<%
		request.setCharacterEncoding("UTF-8");
		String id1 = (String) session.getAttribute("id");
				
		String mang_code = request.getParameter("mang_code");
		String mang_title = request.getParameter("mang_title");
		String mang_id = request.getParameter("mang_id");
		String mang_content = request.getParameter("mang_content");
		String mang_pic = request.getParameter("mang_pic");
		String mang_pic_save = request.getParameter("mang_pic_save");
		String mang_date = request.getParameter("mang_date");
		String mang_count = request.getParameter("mang_count");
		String mang_like = request.getParameter("mang_like");
		
		DAOmangdog dao = new DAOmangdog();
		dao.mangCount(mang_code);
		DTOmangdog dto = dao.getMang(mang_code);
		
		
		DAOcomments daoC = new DAOcomments();
		List<DTOcomments> commList = daoC.DTOcommList(mang_code);
		dao.close();
		
		DAOlikely daoL = new DAOlikely();
		ArrayList<DTOlikely> Likelist = daoL.mangLike(id, mang_code);
		%>


	<!-- 게시글 -->
	<div style="width: 80%; margin: auto;">
		<table class="table table-bordered" style="width: 80%; margin: auto;">

			<tr>
				<th>제목</th>
				<td  colspan="3"><%=mang_title%></td>
			</tr>

			<tr>
				<th>작성자</th>
				<td  colspan="3"><%=mang_id%></td>
			</tr>

			<tr>
				<th>작성일</th>
				<td><%=mang_date%></td>
				<th>조회수</th>
				<td><%=mang_count %></td>
			</tr>

			<tr>
				<td colspan="4"><br><%=mang_content%> <br>
				<br> <img src="mang_img/<%=mang_pic_save%>" height="80%"
					width="80%" class="rounded"><br>
				<br></td>
			</tr>
		</table> <br><br>
		
		
		
		
		
		<!--  좋아요 -->
		<form action="M_mangdog/m_likepro.jsp">
			<input type="hidden" id="mang_code" name="mang_code" value="<%=mang_code%>"> 
			
			<%if (Likelist.isEmpty()){ %>
			<button type="submit" onclick="return confirm('추천하시겠습니까?')"> <img src="icon/heart.png" width="70px" height="70px" > </button> <br>
			<%}else{ %>
			<button type="submit" onclick="return confirm('추천하시겠습니까?')"> <img src="icon/fill_heart.png" width="70px" height="70px" > </button> <br>
			<%} %>
			
			<%=mang_like %>
		</form>
	
	
		
		<!-- 댓글 목록 -->
		<div style="width: 80%; margin: auto;"> <br><br>

			<table class="table table-hover">
				<% for (DTOcomments f : commList) { 
					String comm_code =  f.getComm_code();
				%>
				
				<tr>
					<td width="15%"> 
						<b> <%=f.getId() %> </b> <br> <%=f.getComm_date() %>
					</td>
					<td> 
						<%=f.getComm_comment() %>
					</td>	
					<td>
						<% if (f.getId().equals(id1)) { %>
							<form action="M_mangdog/m_commDelete.jsp">
							<input type="hidden" id="comm_code" name="comm_code" value="<%=comm_code%>">
							<button type="submit" class="btn btn-link" style="font-size: 15px; color:#404040;  float: right; vertical-align: top; width: 60px; "> 삭제 </button>
							</form>
						<%}%>	
						
					</td>
				</tr>	
					
			<% }%>
			</table>
		
			
			<!-- 댓글 작성란  -->
			<form action="M_mangdog/m_commAdd.jsp">
			<table class="table table-light">
				<tr>
					<td> 
						<input type="text" id="comm_comment" name="comm_comment" style="width: 1100px; height: 80px;">
					</td>
					
					<td width="80px"> 
						<button type="submit" class="btn btn-outline-secondary" style="width: 80px; height: 80px;">작성</button>	 
					</td>
			</table>
			
			
			<input type="hidden" id="mang_code" name="mang_code" value="<%=mang_code %>">
			<input type="hidden" id="id" name="id" value="<%=id%>">	
			</form>
		</div>



		<!--  게시글 수정/삭제 -->
		<div style="float: right;">
			<% if (mang_id.equals(id1)) { %>
			<form action="M_mangdog/m_deletepro.jsp" onsubmit="mang_delete()" >
			<input type="hidden" id="mang_code" name="mang_code" value="<%=mang_code %>">
			
			<input type="hidden" id="mang_title" name="mang_title" value="<%=mang_title %>">
			<input type="hidden" id="mang_content" name="mang_content" value="<%=mang_content %>">
			<input type="hidden" id="mang_pic" name="mang_pic" value="<%=mang_pic%>">
			<input type="hidden" id="mang_pic_save" name="mang_pic_save" value="<%=mang_pic_save %>">
			
			<button type="button" class="btn btn-outline-secondary" onclick="return mang_update(this.form)" >수정</button>
			<button type="submit" class="btn btn-outline-secondary" onclick="if(!confirm('삭제하시면 복구하실 수 없습니다. \n 정말로 삭제하시겠습니다?')) {return false;};">삭제</button>
			</form>
			<%}%>
		</div>
		</div>
<%
	daoC.close();
	daoL.close();
%>

		<br><br><br>
	</section>
	
<!-- footer  -->
<jsp:include page="layouts/footer.jsp"/>
<%@include file="layouts/sectionJS" %>
</body>
</html>


