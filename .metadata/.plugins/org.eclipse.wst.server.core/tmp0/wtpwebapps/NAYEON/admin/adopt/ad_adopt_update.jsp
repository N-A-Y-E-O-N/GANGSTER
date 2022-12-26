<%@page import="gang.DAOdog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String dog_name = request.getParameter("dog_name");
   String dog_age = request.getParameter("dog_age");
   String dog_breed = request.getParameter("dog_breed");
   String dog_sex = request.getParameter("dog_sex");
   String dog_weight = request.getParameter("dog_weight");
   String dog_character = request.getParameter("dog_character");
   String dog_disease = request.getParameter("dog_disease");
   String dog_story = request.getParameter("dog_story");
   String dog_neutralization = request.getParameter("dog_neutralization");
   String dog_vaccination = request.getParameter("dog_vaccination");
   String dog_code = request.getParameter("dog_code");
   
   DAOdog dao = new DAOdog();
   
   boolean flag = dao.Edit(dog_name, dog_breed, dog_sex, dog_age, dog_weight, dog_character, dog_disease, dog_story, dog_neutralization, dog_vaccination, dog_code);
   if(flag == true) {
%>
   <script>
      alert("정보가 정상적으로 수정되었습니다.");
      self.close();
      document.location.href="../ad_adopt.jsp";
   </script>
<%
   }else {
%>
   <script>
      alert("정보 수정에 실패했습니다.");
      history.back();
   </script>
<%        
}
%>

</body>
</html>