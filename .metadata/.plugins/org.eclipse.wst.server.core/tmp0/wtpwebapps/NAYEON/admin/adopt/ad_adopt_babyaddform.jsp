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
<style>
  h1,nav{font-family:  'Gaegu' !important;}
  input {font-size: 15px;   margin-left: 10px}
</style>


<script>
    function validateForm(dog) { 
        if (dog.dog_name.value == "") {
            alert("이름을 입력하세요.");
            dog.dog_name.focus();
            return false;
        }
        if (dog.dog_breed.value == "") {
            alert("견종 입력하세요.");
            dog.dog_breed.focus();
            return false;
        }
        if (dog.dog_sex.value == "") {
            alert("성별을 선택하세요.");
            dog.dog_sex.focus();
            return false;
        }
        if (dog.dog_age.value == "") {
            alert("나이를 입력하세요.");
            dog.dog_age.focus();
            return false;
        }
        if (dog.dog_weight.value == "") {
            alert("체중을 입력하세요.");
            dog.dog_weight.focus();
            return false;
        }
        if (dog.dog_character.value == "") {
            alert("성격을 입력하세요.");
            dog.dog_character.focus();
            return false;
        }
        if (dog.dog_disease.value == "") {
            alert("질병 입력하세요.");
            dog.dog_disease.focus();
            return false;
        }
        if (dog.dog_story.value == "") {
            alert("스토리를 입력하세요.");
            dog.dog_story.focus();
            return false;
        }
        if (dog.dog_neutralization.value == "") {
            alert("중성화 여부를 선택하세요.");
            dog.dog_neutralization.focus();
            return false;
        }
        if (dog.dog_vaccination.value == "") {
            alert("접종을 입력하세요.");
            dog.dog_vaccination.focus();
            return false;
        }
        if (dog.dog_pic.value == "") {
            alert("대표사진을 첨부해주세요.");
            dog.dog_pic.focus();
            return false;
        }
        if (dog.dog_detail_pic.value == "") {
            alert("상세사진을 첨부해주세요");
            dog.dog_detail_pic.focus();
            return false;
        }
    }
</script>

</head>
<body>

<form action="adopt/ad_adopt_babyadd.jsp" method="post" name="dog" onsubmit="return validateForm(this);" enctype="multipart/form-data" >
<table class="table table-striped table-hover"  style="width: 60%; margin: auto;">

	<tr> 
		<th> 이름  </th> 
		<td> <input type="text" name="dog_name" style="width: 100px; float: left;"/> </td>		
	</tr>

	<tr> 
		<th> 견종  </th> 
		<td> <input type="text" name="dog_breed" style="width: 35%; float: left;"/> </td>		
	</tr>
	
	<tr> 
		<th> 성별  </th> 
		<td style="text-align: left;"> 
			&nbsp;&nbsp;남 <input type="radio" name="dog_sex" value="남"  checked /> 
			&nbsp;여 <input type="radio" name="dog_sex" value="여" />
		</td>		
	</tr>		
	
	
	<tr> 
		<th> 나이 </th> 
		<td style="text-align: left;"> <input type="number" name="dog_age"style="width: 52px; float: left;"/>&nbsp; 살 </td>		
	</tr>
	
	<tr> 
		<th> 체중 </th> 
		<td style="text-align: left;"> <input type="number" name="dog_weight"style="width: 52px; float: left;"/>&nbsp; kg</td>		
	</tr>
	
	<tr> 
		<th> 성격 </th> 
		<td> <input type="text" name="dog_character"style="width: 180px; float: left;"/> </td>		
	</tr>
	
	<tr> 
		<th> 질병 </th> 
		<td> <input type="text" name="dog_disease"style="width: 180px; float: left;"/> </td>		
	</tr>
	
	<tr> 
		<th> 스토리 </th> 
		<td> <input type="text" name="dog_story"style="width: 350px; float: left;"/> </td>		
	</tr>
	
	<tr> 
		<th> 중성화 </th> 
		<td style="text-align: left;"> 
			&nbsp;&nbsp;O <input type="radio" name="dog_neutralization" value="O" checked>
			&nbsp;X <input type="radio" name="dog_neutralization" value="X">
		</td>		
	</tr>
	
	<tr> 
		<th> 접종 </th> 
		<td> <input type="text" name="dog_vaccination"style="width: 230px; float: left;"/> </td>		
	</tr>
	
	<tr> 
		<th> 대표 </th> 
		<td> <input type="file" name="dog_main"style="width: 250px; float: left;" accept="image/gif, image/jpeg, image/png"/> </td>		
	</tr>
	
	<tr> 
		<th> 상세 </th> 
		<td> <input type="file" name="dog_detail"style="width: 250px; float: left;" accept="image/gif, image/jpeg, image/png"/> </td>		
	</tr>



	<tr>
		<td colspan="2" style="text-align: center;"> 
		<input type="submit" class="btn btn-outline-secondary"value="추가"> 
		<input type="reset" class="btn btn-outline-secondary"value="다시 입력"> 
		</td>
	</tr>	 
</table>
</form>


</body>
</html>