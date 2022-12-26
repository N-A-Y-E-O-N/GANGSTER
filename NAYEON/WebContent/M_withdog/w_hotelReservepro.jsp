<%@page import="java.io.PrintWriter"%>
<%@page import="gang.DTOreserve"%>
<%@page import="gang.DAOreserve"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<style>
h2{font-family:  'Hahmlet' !important;  text-align: center;}
</style>
<%@include file="../layouts/headerCSS" %>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8") ;%>
	<%
	try{
	String res_name = request.getParameter("res_name");
	String kinder = request.getParameter("kinder");
	String checkin = request.getParameter("checkin");
	String checkout = request.getParameter("checkout");
	String dog_name = request.getParameter("dog_name");
	String dog_breed = request.getParameter("dog_breed");
    String dog_age = request.getParameter("dog_age");
    String dog_weight = request.getParameter("dog_weight");
    String dog_character = request.getParameter("dog_character");


	
	
	DTOreserve dto = new DTOreserve();
	dto.setRes_name(res_name);
    dto.setKinder(kinder);
    dto.setCheckin(checkin);
    dto.setCheckout(checkout);
    dto.setDog_name(dog_name);
    dto.setDog_breed(dog_breed);
    dto.setDog_age(dog_age);
    dto.setDog_weight(dog_weight);
    dto.setDog_character(dog_character);



    DAOreserve dao = new DAOreserve();
    dao.insertRes(dto);
    
    dao.close();
    %>
    	
    
    <div style="margin: auto; text-align:center; width:80%; font-family: 'Hahmlet', serif;">
  		<br><br><h2> 예약 되었습니다. </h2>  <br><br>
  		<b> 노쇼 방지 예약금 2만원 입금 시 예약이 확정됩니다.  </b> <br>
  		<b> 국민은행 256301-04-170114 고나연 </b><br><br> 
   		<button type="button" class="btn btn-outline-secondary" onClick="window.close()"
		 style="margin: auto; display: block;">창닫기</button>
    </div>
    
    	
	<%
	} catch (Exception e) {
        e.printStackTrace();
        
        PrintWriter script = response.getWriter();
        out.println("예약에 실패하였습니다.");
        script.println("history.back()");    //이전 페이지로 사용자를 보냄
    }
	 %>


</body>
</html>