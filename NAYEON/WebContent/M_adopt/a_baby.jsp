<%@page import="gang.DTOdog"%>
<%@page import="java.util.List"%>
<%@page import="gang.DAOdog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<%@include file="../layouts/headerCSS" %>
<link rel="stylesheet" href="CSS/CSSturn.css" />

<style>
  h2{font-family:  'Gaegu' !important;  font-weight : bold; text-align: center;}
  table {width:80%; margin: auto; font-family: 'Hahmlet', serif; font-size: 18px;}
</style>
</head>
<body>
<%
   DAOdog dao = new DAOdog();
   List<DTOdog> dogLists = dao.DTOdogList();
   dao.close();
  
%>

<!-- 전체 카드 그리드  -->

<div class="row" style="width: 90%; margin: auto;">   
  


<!-- 카드 CSS 그리드 -->  
<% for (DTOdog f : dogLists) { 
   String dog_main_save =  f.getDog_main_save();
   String dog_detail_save =  f.getDog_detail_save();

%> 

<div class="col"> 
    <div class="container" > 
   <div class="thecard" >
   
   <div class="thefront" >    
      <input type="image" src="dog_img/<%= f.getDog_main_save() %>"  style="width: 100%; height: 100%; border-radius: 10px;"> 
   </div>
   
   
   
   <div class="theback">
      <div class="cardContent">
         <h2><%=f.getDog_name()%> </h2><br>
         <table>
            <tr>   <td>나이 </td>   <td><%=f.getDog_age() %>  살             </td>      </tr>
            <tr>   <td>견종 </td>   <td><%=f.getDog_breed()%>                </td>      </tr>
            <tr>   <td>성별 </td>   <td><%=f.getDog_sex() %>               </td>      </tr>
            <tr>   <td>체중 </td>   <td><%=f.getDog_weight() %>kg           </td>      </tr>
            <tr>   <td>성격 </td>   <td><%=f.getDog_character() %>           </td>      </tr>
            <tr>   <td>질병 </td>   <td><%=f.getDog_disease() %>            </td>      </tr>
            <tr>   <td>중성화 </td>  <td><%=f.getDog_neutralization() %>     </td>      </tr>
            <tr>   <td>접종 </td>   <td><%=f.getDog_vaccination() %>       </td>      </tr>
           </table>
           
           <br>
           
           <form action="M_adopt/a_babyDetails.jsp" name="dog" method="post">
               <input type="hidden" name="dog_code" id="dog_code" value="<%=f.getDog_code()%>" >          
               <input type="hidden" name="dog_name" id="dog_name" value="<%=f.getDog_name()%>" >          	
               <input type="hidden" name="dog_breed" id="dog_breed" value="<%=f.getDog_breed()%>" >          
               <input type="hidden" name="dog_sex" id="dog_sex" value="<%=f.getDog_sex()%>" >          
               <input type="hidden" name="dog_age" id="dog_age" value="<%=f.getDog_age()%>" >          
               <input type="hidden" name="dog_weight" id="dog_weight" value="<%=f.getDog_weight()%>" >
               <input type="hidden" name="dog_character" id="dog_character" value="<%=f.getDog_character()%>" >
               <input type="hidden" name="dog_disease" id="dog_disease" value="<%=f.getDog_disease()%>" >
               <input type="hidden" name="dog_story" id="dog_story" value="<%=f.getDog_story()%>" > 
               <input type="hidden" name="dog_neutralization" id="dog_neutralization" value="<%=f.getDog_neutralization()%>" >
               <input type="hidden" name="dog_vaccination" id="dog_vaccination" value="<%=f.getDog_vaccination()%>" >
               <input type="hidden" name="dog_main_save" id="dog_main_save" value="<%=dog_main_save%>" >
               <input type="hidden" name="dog_detail_save" id="dog_detail_save" value="<%=dog_detail_save%>" >
              <button type="submit" class="btn btn-outline-secondary" >상세 보기</button>
           </form>   
      </div>
   </div>   

   </div>
   </div>
</div>
<%} %>



</div>
</body>
</html>




