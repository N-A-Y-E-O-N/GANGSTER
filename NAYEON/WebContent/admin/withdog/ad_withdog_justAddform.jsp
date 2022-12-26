<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String target = request.getParameter("target");
if (target == null) target = "../../layouts/null";
String targetPage = target + ".jsp";%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin_주인없는 하늘아래</title>
<style type="text/css">
	input {width: 80%;}
	table { text-align: left; font-family: 'Hahmlet', serif;}
	h3{font-family: 'Hahmlet', serif;}
</style>
</head>
<body>

<!-- YOUTUBE -->
<h3>	Youtube 추가	</h3>
<form action="withdog/ad_withdog_just_Addyou.jsp" method="post" name="youtube">
<table class="table table-striped table-hover" style="width: 60%;">
	<tr> 
		<th> 제목  </th> 
		<td> <input type="text" name="you_title"/> </td>		
	</tr>

	
	<tr> 
		<th> 링크  </th> 
		<td> <input type="text" name="you_link" /> </td>		
	</tr>		

	
	<tr>
		<td colspan="2" style="text-align: center;"> 
		<input type="submit" class="btn btn-outline-secondary" value="추가"	 	style="width: 100px;"> 
		<input type="reset" class="btn btn-outline-secondary" value="다시 입력"	style="width: 100px;"> 
		</td>
	</tr>	 
</table>
</form>


<br><br><br>


<h3>	블로그 추가	</h3>
<form action="withdog/ad_withdog_just_Addblog.jsp" method="post" name="blog" enctype="multipart/form-data">
<table class="table table-striped table-hover"  style="width: 60%;">
	<tr> 
		<th> 제목  </th> 
		<td> <input type="text" name="blog_title"/> </td>		
	</tr>

	
	<tr> 
		<th> 링크  </th> 
		<td> <input type="text" name="blog_link" /> </td>		
	</tr>	
	
	<tr> 
		<th> 사진  </th> 
		<td> <input type="file"  name="blog_thumb" accept="image/gif, image/jpeg, image/png"/> </td>		
	</tr>	

	
	<tr>
		<td colspan="2" style="text-align: center;"> 
		<input type="submit" class="btn btn-outline-secondary" value="추가"	 	style="width: 100px;"> 
		<input type="reset" class="btn btn-outline-secondary" value="다시 입력"	style="width: 100px;"> 
		</td>
	</tr>	 
</table>
</form>

</body>
</html>