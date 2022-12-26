<%@page import="gang.DAOmangdog"%>
<%@page import="gang.DTOmangdog"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String saveDirectory = application.getRealPath("/mang_img");  // 저장할 디렉터리
int maxPostSize = 5120 * 1000;  // 파일 최대 크기(5MB)
String encoding = "UTF-8";  // 인코딩 방식

try {
    // 1. MultipartRequest 객체 생성
    MultipartRequest mr = new MultipartRequest(request, saveDirectory,
                                               maxPostSize, encoding);

    // 2. 새로운 파일명 생성
    String fileName = mr.getFilesystemName("mang_pic");  // 현재 파일 이름
    String ext = fileName.substring(fileName.lastIndexOf("."));  // 파일 확장자
    String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
    String newFileName = now + ext;  // 새로운 파일 이름("업로드일시.확장자")
    


    // 3. 파일명 변경
    File oldFile = new File(saveDirectory + File.separator + fileName);
    File newFile = new File(saveDirectory + File.separator + newFileName);
    oldFile.renameTo(newFile);
    
   
    // 4. 다른 폼값 받기
    String mang_id = mr.getParameter("mang_id");
    String mang_title = mr.getParameter("mang_title");
    String mang_content = mr.getParameter("mang_content");



   


    // 5. DTO 생성
    DTOmangdog dto = new DTOmangdog();
    dto.setMang_id(mang_id);
    dto.setMang_title(mang_title);
    dto.setMang_content(mang_content);
    dto.setMang_pic(fileName);
    dto.setMang_pic_save(newFileName);

    
    // 6. DAO를 통해 데이터베이스에 반영
    DAOmangdog dao = new DAOmangdog();
    dao.insertmang(dto);
    dao.close();

    // 7. 파일 목록 JSP로 리디렉션
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('업로드에 성공하였습니다.')");
    script.println("location.href = '../mangdog.jsp'");
    script.println("</script>");
}
catch (Exception e) {
    e.printStackTrace(); %>
	<script>
	alert("업로드 실패");
	history.back();
	</script>
<% } %>

