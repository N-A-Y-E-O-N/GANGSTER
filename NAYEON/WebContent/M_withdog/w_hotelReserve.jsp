<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS" %>
<style>
	form {margin: auto; width: 80%; text-align: center;
		  font-family:  'Hahmlet' !important; }
	table {margin: auto;}
	h2{font-family:  'Hahmlet' !important;
  	   text-align: center;}
</style>
</head>
<body>
<%//1.한글처리, 파라미터 
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id");//object를 string으로 다운캐스팅
String name = request.getParameter("name");

//1-1. id없이는 진입불가
if(id == null){%>
    <div class = "container">	<br><br><br>
	    <h2> 로그인 후 이용해주세요. </h2>  <br><br>
	    <button type="button" class="btn btn-outline-secondary" onClick="window.close()"
		 style="margin: auto; display: block;">창닫기</button>
     </div>
<%} else{%>


	<form action="w_hotelReservepro.jsp"> <br><br>	
		<!-- 호텔/유치원 예약 구분 -->	
		<div style="width: 50%; margin: auto;"> 
		<div class="form-check">
  		  <input class="form-check-input" type="radio" name="kinder" value="호텔">
  		  <label class="form-check-label" for="flexRadioDefault1">  호텔 예약 </label>
		</div>
		
		
		<div class="form-check">
 		 <input class="form-check-input" type="radio" name="kinder" value="유치원" checked>
		 <label class="form-check-label" for="flexRadioDefault2">   유치원 예약 </label>
		</div>
		</div>

		
		<!-- 체크인/아웃 날짜 선택 -->  <br> <br>
		<input type="date" name="checkin" id="checkin" required/>   &nbsp; - &nbsp;
		<input type="date" name="checkout" id="checkout"/> <br><br>
		
		
		<!-- 강아지 정보 -->
		
		<table>
		<h6>강아지/예약자 정보</h6>
			<tr>
				<td> 견주 이름 </td>
				<td> <input type="text" name="res_name" id="res_name" required>  </td>
			</tr>
		
			<tr>
				<td> 강아지 이름 </td>
				<td> <input type="text" name="dog_name" id="dog_name" required>  </td>
			</tr>
		
	
			<tr>
				<td> 견종 </td>
				<td> <input type="text" name="dog_breed" id="dog_breed" required>  </td>
			</tr>
			
			<tr>
				<td> 나이 </td>
				<td> <input type="number" name="dog_age" id="dog_age" required></td>
			</tr>
			
			<tr>
				<td> 몸무게 </td>
				<td> <input type="number" name="dog_weight" id="dog_weight" required>  </td>
			</tr>
			
			<tr>
				<td> 특이사항 </td>
				<td> <input type="text" name="dog_character" id="dog_character"></td>
			</tr>
		</table>
		
		<br>
		<button type="submit" class="btn btn-outline-secondary"> 예약하기 </button>  &nbsp;
		
		</div>
	</form>
<%} %>
</body>
</html>