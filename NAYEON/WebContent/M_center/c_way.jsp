<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>

<style>
  table {
  	width : 1000px;     text-align:center; 	margin: auto;
    border-top: 2px solid #b3b3b3b3;
    border-collapse: collapse;
    font-family: 'Hahmlet', serif;
    font-size: 15px;

  }
  th, td {
    border-bottom: 2px solid #b3b3b3b3;
    padding: 10px;
    width: 33%;
  }
  th:first-child, td:first-child {
    border-left: none;
  }
</style>

</head>
<body>
<div class="fade-in">
<div id="map" style="width:700px;height:400px; margin: auto;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dfb440b94b8c06ed4c89531e4b35fabc"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.48737160080065, 126.82151250849344), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.48737160080065, 126.82151250849344); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
</script>






<div style="margin-top: 20px; margin-bottom: 20px; font-weight: bold; font-family: 'Hahmlet', serif;">
		ADD : 경기 부천시 경인로 590 <br>
		TEL : 02-2610-0600	<br>
</div>




<table>
	<tr>
		<th> 지하철 이용시 </th>
		<th> 버스 이용시 </th>
		<th> 주차 안내</th>
	</tr>	

	<tr style="background-color: #edededed">
		<td> 온수역 4번 출구에서 782m </td>	<td> 75번, 12번, 83번, 10번, 83번,<br> 88번, 52번, 57번, 57-1번 </td>	<td> 무료 </td>
	</tr>	


</table>


</div>
</body>
</html>