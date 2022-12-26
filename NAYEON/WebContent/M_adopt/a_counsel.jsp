<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
</head>
<body>

<div style="width: 70%; margin: auto;">

<form action=" M_adopt/a_counselpro.jsp ">
<div class="input-group mb-3">
  <span class="input-group-text">이름</span>
  <input type="text" class="form-control" name="coun_name" id="coun_name" placeholder="상담자 성함" required/>
  <span class="input-group-text">날짜</span>
  <input type="datetime-local" class="form-control" name="coun_date" id="coun_date">
</div>

<div class="input-group mb-3">
  <span class="input-group-text">핸드폰 번호</span>
  <input type="text" class="form-control" placeholder="- 입력 제외" name="coun_tel" id="coun_tel" maxlength="11" 
  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  required/>
  
  
  <span class="input-group-text">이메일</span>
  <input type="text" class="form-control" placeholder="EMAIL ADDRESS" name="coun_mail" id="coun_mail" required/>
</div>
<div class="mb-3">
  <span class="input-group-text">제목</span>
  <input type="text" class="form-control" placeholder="TITLE" name="coun_title" id="coun_title" required/>
  <label for="exampleFormControlTextarea1" class="form-label"></label>
  
  <span class="input-group-text">상담내용</span>
  <textarea class="form-control" name="coun_content" id="coun_content" rows="20" maxlength=""
  placeholder="방문 상담을 원하시는 분들은 날짜에 방문하실 날짜와 시간을 입력해 주세요. &#13;&#10;날짜를 입력하지 않으신 분들은 전화 상담으로 이루어집니다."
  required/
  ></textarea> <br>
  
  
  <button type="submit" class="btn btn-outline-secondary" style="float: right;"> 상담 접수</button>
</div>
</form>


</div>
</body>
</html>