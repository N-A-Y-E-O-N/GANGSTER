<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS" %>
</head>
<body>
<div class="container-sm">
<!-- 공구기한 배찌 --><br><h2><span class="badge bg-secondary">공동구매 기간 2022-11-01 ~ 2022-12-25</span></h2> <br>

<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
  <option selected>구매하실 사료를 선택하세요 </option>
  <option value="1">나우(프레쉬 스몰 브리드 어덜트) </option>
  <option value="2">나우(프레쉬 스몰 브리드 시니어) </option>
  <option value="3">네츄럴코어(에코 플러스1 그레인프리 치킨/연어) </option>
  <option value="4">뉴트리나(건강백서 건강한 관절) </option>
  <option value="5">뉴트리나(건강백서 건강한 6세+) </option>
  <option value="6">닥터독(피부모질/연어) </option>
  <option value="7">더독(명작 하이포알러지 연어) </option>
  <option value="8">더독(닥터소프트 치킨) </option>
  <option value="9">더독(닥터소프트 그레인프리 오리) </option>
  <option value="10">더마독(피부 모질 건강사료) </option>
  <option value="11">더마독(관절 건강사료) </option>
  <option value="12">도그라인(펫프로) </option>
  <option value="13">도그라인(아지피아) </option>
  <option value="14">도그라인(도그피아) </option>
  <option value="15">라무달리(금동사료) </option>
  <option value="16">로열캐닌(엑스 스몰 퍼피) </option>
  <option value="17">로열캐닌(미니 인도어 어덜트) </option>
  <option value="18">로열캐닌(미니 인도어 퍼피) </option>
  <option value="19">로열캐닌(미니스타터 마더/베이비독) </option>
  <option value="20">시저(캔 14세 이상 쇠고기/현미와 야채) </option>
  <option value="21">시저(캔 11세 이상 닭고기) </option>
  <option value="22">아카나(헤리티지 퍼피 스몰 브리드) </option>
  <option value="23">오리젠(스몰 브리드독) </option>
  <option value="24">오리젠(스몰 오리지날) </option>
  <option value="25">오리젠(퍼피) </option>
  <option value="26">오리젠(퍼피 라지) </option>
  <option value="27">오리젠(시니어독) </option>
  <option value="28">퓨리나(알포 리틀프렌즈 6세 이상) </option>
  <option value="29">한끼뚝딱(황태담은 한끼 황태와 소고기) </option>
  <option value="30">하림(밥이보약 활기찬 노후) </option>
  

</select>

<div class="container text-center">
  <div class="row">
    <div class="col">
 <div class="row gx-5">
 
<!-- 선택한 사료 사진 뜨는 칸  -->
    <div class="col">
<canvas id="canvas1" width="350" height="350" style="border:1px solid black">
</canvas>
     </div>
     
<!-- 선택한 사료 성분 뜨는 칸  -->   
    <div class="col">

<canvas id="canvas1" width="350" height="350" style="border:1px solid black">
</canvas>
    </div>
        </div>
  
  
  
  </div>
    </div>
    </div>
   
<br><br><br>
<h3>주문자 정보</h3> 
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">이름 </span>
  <input type="text" class="form-control" placeholder="이름을 입력하세요 " aria-label="Username" aria-describedby="basic-addon1">
  
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">전화번호 </span>
  <input type="text" class="form-control" placeholder="010-0000-0000 " aria-label="Username" aria-describedby="basic-addon1">
  
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">주소   </span>
  <input type="text" class="form-control" placeholder="OO시 OO구 OO동 " aria-label="Username" aria-describedby="basic-addon1">
  
</div>
<br><br>

<right><button type="button" class="btn btn-secondary">완료</button></right>
<br><br>

<center>계좌번호 우리은행 1002-458-881832 함수림</center> 





 </div>
</body>
</html>