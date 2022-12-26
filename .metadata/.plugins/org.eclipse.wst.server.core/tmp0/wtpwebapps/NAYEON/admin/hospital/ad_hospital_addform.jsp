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
<%@include file="../ad_layouts/hospitalJS" %>
</head>
<body>

<form action="hospital/ad_hospital_add.jsp" method="post" name="hospital" onsubmit="return validateForm(this);">
<table style="width: 60%; font-family: 'Hahmlet', serif;"  class="table table-striped table-hover">
	<tr> 
		<th> 병원명  </th> 
		<td> <input type="text" name="hos_name" style="width: 250px; float: left;" /> </td>		
	</tr>

	<tr> 
		<th> 주소  </th> 
		<td> <input type="text" name="hos_add" style="width: 90%; float: left;"/> </td>		
	</tr>
	
	<tr> 
		<th> 링크  </th> 
		<td> <input type="text" name="hos_link" style="width: 90%; float: left;" /> </td>		
	</tr>		
	
	
	<tr> 
		<th> 전화번호 </th> 
		<td> <input type="text" name="hos_tel"style="width: 250px; float: left;"/> </td>		
	</tr>
	
	<tr> 
		<th> 휴무  </th>
	<td><div style="float: left;">
		<input type="checkbox" name="hos_dayoff" value = "weekend"> 주말 
		<input type="checkbox" name="hos_dayoff" value = "mon"> 월 
		<input type="checkbox" name="hos_dayoff" value = "tue"> 화 
		<input type="checkbox" name="hos_dayoff" value = "wed"> 수 
		<input type="checkbox" name="hos_dayoff" value = "thu"> 목 
		<input type="checkbox" name="hos_dayoff" value = "fri"> 금 
		<input type="checkbox" name="hos_dayoff" value = "sat"> 토 
		<input type="checkbox" name="hos_dayoff" value = "sun"> 일
		<input type="checkbox" name="hos_dayoff" value = "x"> x  </div></td>
	</tr>
	
	
	
	<tr> 
		<th> 상세사항  </th>
	<td><div style="float: left;">
		<input type="checkbox" name="hos_details1" value = "24/7"> 24시간
		<input type="checkbox" name="hos_details2" value = "salon"> 미용
		<input type="checkbox" name="hos_details3" value = "hotel"> 호텔
		<input type="checkbox" name="hos_details4" value = "rehabilitation"> 재활
		<input type="checkbox" name="hos_details5" value = "surgery"> 응급수술</div></td>
	</tr>
	
	<tr>
		<td colspan="2" style="text-align: center;"> 
		<input type="submit" class="btn btn-outline-secondary" value="추가"> 
		<input type="reset" class="btn btn-outline-secondary" value="다시 입력"> 
		</td>
	</tr>	 
</table>
</form>


</body>
</html>