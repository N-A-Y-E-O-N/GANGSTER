<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
</head>
<body>
<script type="text/javascript">
  <!-- 예약하기 새창 열기-->
  function reservePop(){
    var reservePop = window.open('M_withdog/w_hotelReserve.jsp', '예약하기', 'width=500px,height=550px, scrollbars=yes');
  }
  
  function hotelPop(){
	    var hotelPop = window.open('https://i.postimg.cc/ry5TGfV7/hotel.png', '호텔', 'width=1000px,height=800px, scrollbars=yes');
	  }
  function schoolPop(){
	    var schoolPop = window.open('https://i.postimg.cc/mZFJwn1y/school.png', '유치원', 'width=1000px,height=800px, scrollbars=yes');
	  } 
</script>

<div style="width: 80%; margin: auto;">

<!-- 상단 호텔/유치원 구분 -->
<div style="margin-left: 100px;">
	<button type="button" class="btn btn-link" onclick="hotelPop()"> 호텔 </button>  &nbsp;
	<button type="button" class="btn btn-link" onclick="schoolPop()"> 유치원 </button>  &nbsp;
	<button type="button" class="btn btn-outline-secondary" style="float: right;" onclick="reservePop()"> 예약하기 </button>  &nbsp;
</div>	

<br><br>
	

<!-- 상세설명란 -->
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
  <jsp:include page="../layouts/hotelBanner.jsp" flush="false" />



</div>




</div>
</body>
</html>