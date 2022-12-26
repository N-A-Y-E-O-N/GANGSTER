<%@page import="gang.DTOdog"%>
<%@page import="gang.DAOdog"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin_주인없는 하늘아래</title>
<style>
  h1,nav{font-family:  'Gaegu' !important;}
  input {font-size: 15px;   margin-left: 10px}
  table {font-family: 'Hahmlet', serif; font-size: 15px;}
</style>
<script>
function dog_update() {
return true;
}
function dog_delete(frm) {
 frm.action='adopt/ad_adopt_delete.jsp';
 frm.submit();
 return true;
}
</script>
</head>
<body>


<%  
	DAOdog dao = new DAOdog();
    List<DTOdog> dogLists = dao.DTOdogList();
    dao.close();
 %>
   
    <table class="table table-striped table-hover" style="width: 100%;" >
    <tr>
   	 <th>메인 사진</th> <th>상세 사진 </th> <th> 정보 </th>
    </tr>
    
    <%for (DTOdog f : dogLists) { %>
    <tr>
    <td><img src="../dog_img/<%= f.getDog_main_save() %>"  width="250px" height="350px"/></td>
    <td><img src="../dog_img/<%= f.getDog_detail_save() %>"  width="250px" height="350px"/></td>
    
    <td style="text-align: left;">  
    <form action="adopt/ad_adopt_update.jsp" onsubmit="dog_update()"> 
      <table>
       		<tr>
       			<td>코드 :</td>
       			<td><input type="text" id="dog_code" name="dog_code" value="<%= f.getDog_code() %>"readonly/></td>
       		</tr>
       
       
          <tr>
       			<td> 이름 :</td>
       			<td><input type="text" id="dog_name" name="dog_name" value="<%= f.getDog_name()%>"required/></td>
       	  </tr>
       	  
       	  <tr>
       	  		<td>나이 :</td>
       	  		<td><input type="number" id="dog_age" name="dog_age" value="<%=f.getDog_age() %>"required/></td>
       	  </tr>
       	  
       	  
       	  <tr>
       	  		<td>견종 :</td>
       	  		<td><input type="text" id="dog_breed" name="dog_breed" value="<%= f.getDog_breed() %>"required/></td>
       	  </tr>
       	  
       	  
       	  <tr>
       	  		<td>성별 :</td>
       	  		<td><input type="text" id="dog_sex" name="dog_sex" value="<%= f.getDog_sex() %>"required/></td>
       	  </tr>
       	  
       	  
       	  <tr>
       	  		<td>체중 :</td>
       	  		<td> <input type="text" id="dog_weight" name="dog_weight" value="<%= f.getDog_weight() %>" required/></td>
       	  </tr>
       	  
       	  
       	  <tr>
       	  		<td>성격 :</td>
       	  		<td><input type="text" id="dog_character" name="dog_character" value="<%= f.getDog_character() %>" required/></td>
       	  </tr>
       	  
       	  
       	  <tr>
       	  		<td>질병 : </td>
       	  		<td><input type="text" id="dog_disease" name="dog_disease" value="<%= f.getDog_disease() %>" required/></td>
       	  </tr>
       	  
       	  
       	  <tr>
       	  		<td>스토리 :</td>
       	  		<td> <input type="text" id="dog_story" name="dog_story" value="<%= f.getDog_story() %>" required/></td>
       	  </tr>
       	  
       	  <tr>
       	  		<td>중성화 : </td>
       	  		<td><input type="text" id="dog_neutralization" name="dog_neutralization" value="<%= f.getDog_neutralization() %>" required/></td>
       	  </tr>
       	  
       	  <tr>
       	  		<td>접종 : </td>
       	  		<td><input type="text" id="dog_vaccination" name="dog_vaccination" value="<%= f.getDog_vaccination() %>" required/></td>
       	  </tr>
       	  
       	  <tr>
       	  		<td>메인 원본 : </td>
       	  		<td>&nbsp;&nbsp;<%= f.getDog_main() %></td>
       	  </tr>
       	  
       	  <tr>
       	  		<td>메인 저장 : </td>
       	  		<td>&nbsp;&nbsp; <%= f.getDog_main_save() %></td>
       	  </tr>
       	  
       	  <tr>
       	  		<td>상세 원본 : </td>
       	  		<td>&nbsp;&nbsp;<%= f.getDog_detail() %></td>
       	  </tr>
       	  
       	  <tr>
       	  		<td>상세 저장 : </td>
       	  		<td>&nbsp;&nbsp;<%=f.getDog_detail_save() %></td>
       	  </tr>
       </table>
     
      <div style="float: right;">
       <button type="submit" class="btn btn-outline-secondary" >수정</button>	
	   <button type="button" class="btn btn-outline-secondary" onclick="return dog_delete(this.form)"> 삭제 </button>  
	  </div>
	  </form>
	  
       </td>
       </tr>

<% } %>
  </table>

    
</body>
</html>