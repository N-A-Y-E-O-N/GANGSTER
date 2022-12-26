<%@page import="java.io.PrintWriter"%>
<%@ page import="gang.DTOdog"%>
<%@ page import="gang.DAOdog"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String saveDirectory = application.getRealPath("/dog_img");  // 저장할 디렉터리
int maxPostSize = 5120 * 1000;  // 파일 최대 크기(5MB)
String encoding = "UTF-8";  // 인코딩 방식

try {
    // 1. MultipartRequest 객체 생성
    MultipartRequest mr = new MultipartRequest(request, saveDirectory,
                                               maxPostSize, encoding);

    // 2. 새로운 파일명 생성
    String fileName = mr.getFilesystemName("dog_main");  // 현재 파일 이름
    String ext = fileName.substring(fileName.lastIndexOf("."));  // 파일 확장자
    String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
    String newFileName = now + ext;  // 새로운 파일 이름("업로드일시.확장자")
    


    // 3. 파일명 변경
    File oldFile = new File(saveDirectory + File.separator + fileName);
    File newFile = new File(saveDirectory + File.separator + newFileName);
    oldFile.renameTo(newFile);
    
    
	// 2. 새로운 파일명 생성
    String fileName2 = mr.getFilesystemName("dog_detail");  // 현재 파일 이름
    String ext2 = fileName2.substring(fileName.lastIndexOf("."));  // 파일 확장자
    String now2 = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
    String newFileName2 = now2 + ext2;  // 새로운 파일 이름("업로드일시.확장자")
    
 	// 3. 파일명 변경
    File oldFile2 = new File(saveDirectory + File.separator + fileName2);
    File newFile2 = new File(saveDirectory + File.separator + newFileName2);
    oldFile2.renameTo(newFile2);

    // 4. 다른 폼값 받기
    String dog_name = mr.getParameter("dog_name");
    String dog_breed = mr.getParameter("dog_breed");
    String dog_sex = mr.getParameter("dog_sex");
    String dog_age = mr.getParameter("dog_age");
    String dog_weight = mr.getParameter("dog_weight");
    String dog_character = mr.getParameter("dog_character");
    String dog_disease = mr.getParameter("dog_disease");
    String dog_story = mr.getParameter("dog_story");
    String dog_neutralization = mr.getParameter("dog_neutralization");
    String dog_vaccination = mr.getParameter("dog_vaccination");

   


    // 5. DTO 생성
    DTOdog dto = new DTOdog();
    dto.setDog_name(dog_name);
    dto.setDog_breed(dog_breed);
    dto.setDog_sex(dog_sex);
    dto.setDog_age(dog_age);
    dto.setDog_weight(dog_weight);
    dto.setDog_character(dog_character);
    dto.setDog_disease(dog_disease);
    dto.setDog_story(dog_story);
    dto.setDog_neutralization(dog_neutralization);
    dto.setDog_vaccination(dog_vaccination);
    dto.setDog_main(fileName);
    dto.setDog_main_save(newFileName);
    dto.setDog_detail(fileName2);
    dto.setDog_detail_save(newFileName2);

    
    // 6. DAO를 통해 데이터베이스에 반영
    DAOdog dao = new DAOdog();
    dao.insertdog(dto);
    dao.close();

    // 7. 파일 목록 JSP로 리디렉션
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('업로드에 성공하였습니다.')");
    script.println("location.href = '../ad_adopt.jsp'");
    script.println("</script>");
}
catch (Exception e) {
    e.printStackTrace(); %>
	<script>
	alert("업로드 실패");
	history.back();
	</script>
<% } %>

