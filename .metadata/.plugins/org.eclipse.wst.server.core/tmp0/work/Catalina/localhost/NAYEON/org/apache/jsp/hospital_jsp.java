/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.64
 * Generated at: 2022-11-16 02:46:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import gang.DTOhospital;
import java.util.List;
import gang.DAOhospital;

public final class hospital_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/layouts/header", Long.valueOf(1666660431223L));
    _jspx_dependants.put("/layouts/sectionJS", Long.valueOf(1660936916000L));
    _jspx_dependants.put("/layouts/headerCSS", Long.valueOf(1668434616714L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("gang.DAOhospital");
    _jspx_imports_classes.add("gang.DTOhospital");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
String target = request.getParameter("target");
if(target == null) target ="M_hospital/h_search";
String targetPage = target + ".jsp";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("    <style>\r\n");
      out.write(".map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}\r\n");
      out.write(".map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}\r\n");
      out.write(".map_wrap {position:relative;width:100%;height:560px;}\r\n");
      out.write("#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}\r\n");
      out.write(".bg_white {background:#fff;}\r\n");
      out.write("#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}\r\n");
      out.write("#menu_wrap .option{text-align: center;}\r\n");
      out.write("#menu_wrap .option p {margin:10px 0;}  \r\n");
      out.write("#menu_wrap .option button {margin-left:5px;}\r\n");
      out.write("#placesList li {list-style: none;}\r\n");
      out.write("#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}\r\n");
      out.write("#placesList .item span {display: block;margin-top:4px;}\r\n");
      out.write("#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}\r\n");
      out.write("#placesList .item .info{padding:10px 0 10px 55px;}\r\n");
      out.write("#placesList .info .gray {color:#8a8a8a;}\r\n");
      out.write("#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}\r\n");
      out.write("#placesList .info .tel {color:#009900;}\r\n");
      out.write("#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}\r\n");
      out.write("#placesList .item .marker_1 {background-position: 0 -10px;}\r\n");
      out.write("#placesList .item .marker_2 {background-position: 0 -56px;}\r\n");
      out.write("#placesList .item .marker_3 {background-position: 0 -102px}\r\n");
      out.write("#placesList .item .marker_4 {background-position: 0 -148px;}\r\n");
      out.write("#placesList .item .marker_5 {background-position: 0 -194px;}\r\n");
      out.write("#placesList .item .marker_6 {background-position: 0 -240px;}\r\n");
      out.write("#placesList .item .marker_7 {background-position: 0 -286px;}\r\n");
      out.write("#placesList .item .marker_8 {background-position: 0 -332px;}\r\n");
      out.write("#placesList .item .marker_9 {background-position: 0 -378px;}\r\n");
      out.write("#placesList .item .marker_10 {background-position: 0 -423px;}\r\n");
      out.write("#placesList .item .marker_11 {background-position: 0 -470px;}\r\n");
      out.write("#placesList .item .marker_12 {background-position: 0 -516px;}\r\n");
      out.write("#placesList .item .marker_13 {background-position: 0 -562px;}\r\n");
      out.write("#placesList .item .marker_14 {background-position: 0 -608px;}\r\n");
      out.write("#placesList .item .marker_15 {background-position: 0 -654px;}\r\n");
      out.write("\r\n");
      out.write("#pagination {margin:10px auto;text-align: center;}\r\n");
      out.write("#pagination a {display:inline-block;margin-right:10px;}\r\n");
      out.write("#pagination .on {font-weight: bold; cursor: default;color:#777;}\r\n");
      out.write("</style>\r\n");
      out.write("<title>주인없는 하늘아래</title>\r\n");
      out.write("\r\n");
      out.write("<!-- Required meta tags -->\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\r\n");
      out.write("<!-- Bootstrap CSS -->\r\n");
      out.write("	<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<!-- CSS/JS -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/CSSmenu.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/CSSsection.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/CSSbanner.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/CSStab.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/CSShelp.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/CSSmangdog.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/CSSeffect.css\" >\r\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/CSShover.css\" >\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css\">\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- ì¹ í°í¸ ì¤ì  -->\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Gaegu&family=Noto+Serif+KR&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- ë§ë ë°°ë// ì´ ìì ììë íìí js, css ë¥¼ ë§í¬ê±¸ì´ ì¬ì© -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css\">\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- jquery ì¤ì  -->\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<!-- Option 1: Bootstrap Bundle with Popper -->\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("  h1,nav{\r\n");
      out.write("    font-family:  'Gaegu' !important;\r\n");
      out.write("  }\r\n");
      out.write("   .Hos_table {\r\n");
      out.write("   text-align:center;    margin: auto;\r\n");
      out.write("    border-collapse: collapse;\r\n");
      out.write("    font-family: 'Hahmlet', serif;\r\n");
      out.write("    font-size: 17px;\r\n");
      out.write("    width: 70%;\r\n");
      out.write("\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  tr,td {\r\n");
      out.write("  border : 2px solid #b3b3b3b3;\r\n");
      out.write("  table-layout: fixed;\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  option, select {\r\n");
      out.write("   font-size: 15px;\r\n");
      out.write("}\r\n");
      out.write("   \r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- header -->\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<!-- 상단 로고  -->\r\n");
      out.write("<h1 style=\"text-align: center;\"> <a href=\"main.jsp\"/> <img src=\"icon/logo.png\" width=\"100\" height=\"100\"> </h1>\r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write("<!-- 로그인/회원가입/로그아웃/마이페이지  -->\r\n");
//1.한글처리, 파라미터 
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id");
String name = request.getParameter("name");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" ");
 if (session.getAttribute("id") == null) { 
      out.write("\r\n");
      out.write(" <a href=\"login.jsp\"><div style=\"position:absolute; right:80px; top:80px;\">  로그인  | </div></a>\r\n");
      out.write(" <a href=\"l_newmember.jsp\"><div style=\"position:absolute; right:20px; top:80px;\">  회원가입 </div></a> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" ");
 }else if(id != null){
	if(id.equals("admin")){ 
      out.write("\r\n");
      out.write("	 <script>location.href = \"admin/ad_main.jsp\"; </script>\r\n");
 } else { 
      out.write("\r\n");
      out.write("	<div style=\"position:absolute; right:20px; top:60px;\">  ");
      out.print(id);
      out.write(" 님 환영합니다 ! </div>\r\n");
      out.write("	 <a href=\"logout.jsp\"><div style=\"position:absolute; right:80px; top:80px;\">  로그아웃  | &nbsp;&nbsp; </div></a> \r\n");
      out.write(" 	 <a href=\"mypage.jsp\"><div style=\"position:absolute; right:20px; top:80px;\">  마이페이지 </div></a>\r\n");
} }
      out.write("\r\n");
      out.write("\r\n");
      out.write("<hr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- 메뉴 -->\r\n");
      out.write("<nav>\r\n");
      out.write("   <!-- 메뉴 버튼 디자인  -->\r\n");
      out.write("   <div class=\"menu-btn\" >\r\n");
      out.write("      <div class=\"line line__1\"></div>\r\n");
      out.write("      <div class=\"line line__2\"></div>\r\n");
      out.write("      <div class=\"line line__3\"></div>\r\n");
      out.write("   </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <ul class=\"nav-links\">\r\n");
      out.write("      <a href=\"center.jsp\"> <li class=\"link\"> 센터 소개 </li> </a>\r\n");
      out.write("      <a href=\"adopt.jsp\"> <li class=\"link\"> 입양 </li> </a>\r\n");
      out.write("	  <a href=\"volunteer.jsp\"> <li class=\"link\"> 봉사활동 </li> </a>\r\n");
      out.write("	  <a href=\"support.jsp\"> <li class=\"link\"> 후원 </li> </a>\r\n");
      out.write("	  <a href=\"hospital.jsp\"> <li class=\"link\"> 동물병원 </li> </a>\r\n");
      out.write("	  <a href=\"mangdog.jsp\"> <li class=\"link\"> MANGDOG CONTEST </li> </a>\r\n");
      out.write("	  <a href=\"withdog.jsp\"> <li class=\"link\"> WITH DOG </li> </a>    \r\n");
      out.write("	</ul>  	  \r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("<!-- 메뉴 JS 설정 -->\r\n");
      out.write("<script  src=\"JS/JSmenu.js\"></script>");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("<!-- section --> \r\n");
      out.write("<section style=\"margin-top: -950px; margin-bottom: 2000px;\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- help -->\r\n");
      out.write("<div class=\"help-tip\" style=\"z-index:2;\">\r\n");
      out.write("   <p>\r\n");
      out.write("      현재 해당 서비스는 '서울시만' 시범 운영 중입니다. <br>\r\n");
      out.write("      추후 다른 지역들도 추가 예정이오니 많은 이용 부탁드립니다. <br><br>\r\n");
      out.write("      동물병원 정보는 1년 주기로 업데이트 됩니다. <br>\r\n");
      out.write("      정보가 업데이트 되었을 가능성이 있으니 자세한 정보는 해당 병원에 직접 문의해주세요.\r\n");
      out.write("   </p>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- 검색창 -->\r\n");
      out.write("<form action=\"hospital.jsp?target=M_hospital/h_search\">\r\n");
      out.write("\r\n");
      out.write("<table class=\"Hos_table\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td colspan=\"2\" width=\"50%\">\r\n");
      out.write("\r\n");
      out.write("   <select>\r\n");
      out.write("      <option value=\"서웉특별시\"> 서울특별시 </option>\r\n");
      out.write("   </select> &nbsp; &nbsp;\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <select name=\"country\">\r\n");
      out.write("      <option value=\"강남구\" selected=\"selected\"> 강남구 </option>\r\n");
      out.write("      <option value=\"강동구\"> 강동구 </option>\r\n");
      out.write("      <option value=\"강서구\"> 강서구 </option> \r\n");
      out.write("      <option value=\"관악구\"> 관악구 </option>\r\n");
      out.write("      <option value=\"구로구\"> 구로구 </option>\r\n");
      out.write("      <option value=\"금천구\"> 금천구 </option>\r\n");
      out.write("      <option value=\"동대문구\"> 동대문구 </option>\r\n");
      out.write("      <option value=\"동작구\"> 동작구 </option>\r\n");
      out.write("      <option value=\"마포구\"> 마포구 </option>\r\n");
      out.write("      <option value=\"서대문구\"> 서대문구 </option>\r\n");
      out.write("      <option value=\"서초구\"> 서초구 </option>\r\n");
      out.write("      <option value=\"성동구\"> 성동구 </option>\r\n");
      out.write("      <option value=\"성북구\"> 성북구 </option>\r\n");
      out.write("      <option value=\"송파구\"> 송파구 </option>\r\n");
      out.write("      <option value=\"양천구\"> 양천구 </option>\r\n");
      out.write("      <option value=\"영등포구\"> 영등포구 </option>\r\n");
      out.write("      <option value=\"용산구\"> 용산구 </option>\r\n");
      out.write("      <option value=\"은평구\"> 은평구 </option>\r\n");
      out.write("      <option value=\"종로구\"> 종로구 </option>\r\n");
      out.write("   </select> <br>\r\n");
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("<td width=\"3%\">\r\n");
      out.write("   \r\n");
      out.write("   <button type=\"submit\" class=\"btn btn-outline-secondary\">검색</button>   \r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("<td rowspan=\"3\" width=\"30%\">\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, targetPage , out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("         \r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("   <td colspan=\"3\" style='table-layout:fixed'>\r\n");
      out.write("      <div class=\"map_wrap\">\r\n");
      out.write("    <div id=\"map\" style=\"width:820px;height:560px;position:relative;overflow:hidden;\"></div>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"menu_wrap\" class=\"bg_white\">\r\n");
      out.write("        <div class=\"option\">\r\n");
      out.write("            <div>\r\n");
      out.write("                <form onsubmit=\"searchPlaces(); return false;\">\r\n");
      out.write("                    키워드 : <input type=\"text\" value=\"서울시 동물병원 \" id=\"keyword\" size=\"15\"> \r\n");
      out.write("                    <button type=\"submit\">검색하기</button> \r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <hr>\r\n");
      out.write("        <ul id=\"placesList\"></ul>\r\n");
      out.write("        <div id=\"pagination\"></div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"//dapi.kakao.com/v2/maps/sdk.js?appkey=dfb440b94b8c06ed4c89531e4b35fabc&libraries=services\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("// 마커를 담을 배열입니다\r\n");
      out.write("var markers = [];\r\n");
      out.write("\r\n");
      out.write("var mapContainer = document.getElementById('map'), // 지도를 표시할 div \r\n");
      out.write("    mapOption = {\r\n");
      out.write("        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표\r\n");
      out.write("        level: 3 // 지도의 확대 레벨\r\n");
      out.write("    };  \r\n");
      out.write("\r\n");
      out.write("// 지도를 생성합니다    \r\n");
      out.write("var map = new kakao.maps.Map(mapContainer, mapOption); \r\n");
      out.write("\r\n");
      out.write("// 장소 검색 객체를 생성합니다\r\n");
      out.write("var ps = new kakao.maps.services.Places();  \r\n");
      out.write("\r\n");
      out.write("// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다\r\n");
      out.write("var infowindow = new kakao.maps.InfoWindow({zIndex:1});\r\n");
      out.write("\r\n");
      out.write("// 키워드로 장소를 검색합니다\r\n");
      out.write("searchPlaces();\r\n");
      out.write("\r\n");
      out.write("// 키워드 검색을 요청하는 함수입니다\r\n");
      out.write("function searchPlaces() {\r\n");
      out.write("\r\n");
      out.write("    var keyword = document.getElementById('keyword').value;\r\n");
      out.write("\r\n");
      out.write("    if (!keyword.replace(/^\\s+|\\s+$/g, '')) {\r\n");
      out.write("        alert('키워드를 입력해주세요!');\r\n");
      out.write("        return false;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다\r\n");
      out.write("    ps.keywordSearch( keyword, placesSearchCB); \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다\r\n");
      out.write("function placesSearchCB(data, status, pagination) {\r\n");
      out.write("    if (status === kakao.maps.services.Status.OK) {\r\n");
      out.write("\r\n");
      out.write("        // 정상적으로 검색이 완료됐으면\r\n");
      out.write("        // 검색 목록과 마커를 표출합니다\r\n");
      out.write("        displayPlaces(data);\r\n");
      out.write("\r\n");
      out.write("        // 페이지 번호를 표출합니다\r\n");
      out.write("        displayPagination(pagination);\r\n");
      out.write("\r\n");
      out.write("    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {\r\n");
      out.write("\r\n");
      out.write("        alert('검색 결과가 존재하지 않습니다.');\r\n");
      out.write("        return;\r\n");
      out.write("\r\n");
      out.write("    } else if (status === kakao.maps.services.Status.ERROR) {\r\n");
      out.write("\r\n");
      out.write("        alert('검색 결과 중 오류가 발생했습니다.');\r\n");
      out.write("        return;\r\n");
      out.write("\r\n");
      out.write("    }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// 검색 결과 목록과 마커를 표출하는 함수입니다\r\n");
      out.write("function displayPlaces(places) {\r\n");
      out.write("\r\n");
      out.write("    var listEl = document.getElementById('placesList'), \r\n");
      out.write("    menuEl = document.getElementById('menu_wrap'),\r\n");
      out.write("    fragment = document.createDocumentFragment(), \r\n");
      out.write("    bounds = new kakao.maps.LatLngBounds(), \r\n");
      out.write("    listStr = '';\r\n");
      out.write("    \r\n");
      out.write("    // 검색 결과 목록에 추가된 항목들을 제거합니다\r\n");
      out.write("    removeAllChildNods(listEl);\r\n");
      out.write("\r\n");
      out.write("    // 지도에 표시되고 있는 마커를 제거합니다\r\n");
      out.write("    removeMarker();\r\n");
      out.write("    \r\n");
      out.write("    for ( var i=0; i<places.length; i++ ) {\r\n");
      out.write("\r\n");
      out.write("        // 마커를 생성하고 지도에 표시합니다\r\n");
      out.write("        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),\r\n");
      out.write("            marker = addMarker(placePosition, i), \r\n");
      out.write("            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다\r\n");
      out.write("\r\n");
      out.write("        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해\r\n");
      out.write("        // LatLngBounds 객체에 좌표를 추가합니다\r\n");
      out.write("        bounds.extend(placePosition);\r\n");
      out.write("\r\n");
      out.write("        // 마커와 검색결과 항목에 mouseover 했을때\r\n");
      out.write("        // 해당 장소에 인포윈도우에 장소명을 표시합니다\r\n");
      out.write("        // mouseout 했을 때는 인포윈도우를 닫습니다\r\n");
      out.write("        (function(marker, title) {\r\n");
      out.write("            kakao.maps.event.addListener(marker, 'mouseover', function() {\r\n");
      out.write("                displayInfowindow(marker, title);\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            kakao.maps.event.addListener(marker, 'mouseout', function() {\r\n");
      out.write("                infowindow.close();\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            itemEl.onmouseover =  function () {\r\n");
      out.write("                displayInfowindow(marker, title);\r\n");
      out.write("            };\r\n");
      out.write("\r\n");
      out.write("            itemEl.onmouseout =  function () {\r\n");
      out.write("                infowindow.close();\r\n");
      out.write("            };\r\n");
      out.write("        })(marker, places[i].place_name);\r\n");
      out.write("\r\n");
      out.write("        fragment.appendChild(itemEl);\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다\r\n");
      out.write("    listEl.appendChild(fragment);\r\n");
      out.write("    menuEl.scrollTop = 0;\r\n");
      out.write("\r\n");
      out.write("    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다\r\n");
      out.write("    map.setBounds(bounds);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// 검색결과 항목을 Element로 반환하는 함수입니다\r\n");
      out.write("function getListItem(index, places) {\r\n");
      out.write("\r\n");
      out.write("    var el = document.createElement('li'),\r\n");
      out.write("    itemStr = '<span class=\"markerbg marker_' + (index+1) + '\"></span>' +\r\n");
      out.write("                '<div class=\"info\">' +\r\n");
      out.write("                '   <h5>' + places.place_name + '</h5>';\r\n");
      out.write("\r\n");
      out.write("    if (places.road_address_name) {\r\n");
      out.write("        itemStr += '    <span>' + places.road_address_name + '</span>' +\r\n");
      out.write("                    '   <span class=\"jibun gray\">' +  places.address_name  + '</span>';\r\n");
      out.write("    } else {\r\n");
      out.write("        itemStr += '    <span>' +  places.address_name  + '</span>'; \r\n");
      out.write("    }\r\n");
      out.write("                 \r\n");
      out.write("      itemStr += '  <span class=\"tel\">' + places.phone  + '</span>' +\r\n");
      out.write("                '</div>';           \r\n");
      out.write("\r\n");
      out.write("    el.innerHTML = itemStr;\r\n");
      out.write("    el.className = 'item';\r\n");
      out.write("\r\n");
      out.write("    return el;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다\r\n");
      out.write("function addMarker(position, idx, title) {\r\n");
      out.write("    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다\r\n");
      out.write("        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기\r\n");
      out.write("        imgOptions =  {\r\n");
      out.write("            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기\r\n");
      out.write("            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표\r\n");
      out.write("            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표\r\n");
      out.write("        },\r\n");
      out.write("        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),\r\n");
      out.write("            marker = new kakao.maps.Marker({\r\n");
      out.write("            position: position, // 마커의 위치\r\n");
      out.write("            image: markerImage \r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("    marker.setMap(map); // 지도 위에 마커를 표출합니다\r\n");
      out.write("    markers.push(marker);  // 배열에 생성된 마커를 추가합니다\r\n");
      out.write("\r\n");
      out.write("    return marker;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// 지도 위에 표시되고 있는 마커를 모두 제거합니다\r\n");
      out.write("function removeMarker() {\r\n");
      out.write("    for ( var i = 0; i < markers.length; i++ ) {\r\n");
      out.write("        markers[i].setMap(null);\r\n");
      out.write("    }   \r\n");
      out.write("    markers = [];\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다\r\n");
      out.write("function displayPagination(pagination) {\r\n");
      out.write("    var paginationEl = document.getElementById('pagination'),\r\n");
      out.write("        fragment = document.createDocumentFragment(),\r\n");
      out.write("        i; \r\n");
      out.write("\r\n");
      out.write("    // 기존에 추가된 페이지번호를 삭제합니다\r\n");
      out.write("    while (paginationEl.hasChildNodes()) {\r\n");
      out.write("        paginationEl.removeChild (paginationEl.lastChild);\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    for (i=1; i<=pagination.last; i++) {\r\n");
      out.write("        var el = document.createElement('a');\r\n");
      out.write("        el.href = \"#\";\r\n");
      out.write("        el.innerHTML = i;\r\n");
      out.write("\r\n");
      out.write("        if (i===pagination.current) {\r\n");
      out.write("            el.className = 'on';\r\n");
      out.write("        } else {\r\n");
      out.write("            el.onclick = (function(i) {\r\n");
      out.write("                return function() {\r\n");
      out.write("                    pagination.gotoPage(i);\r\n");
      out.write("                }\r\n");
      out.write("            })(i);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        fragment.appendChild(el);\r\n");
      out.write("    }\r\n");
      out.write("    paginationEl.appendChild(fragment);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다\r\n");
      out.write("// 인포윈도우에 장소명을 표시합니다\r\n");
      out.write("function displayInfowindow(marker, title) {\r\n");
      out.write("    var content = '<div style=\"padding:5px;z-index:1;\">' + title + '</div>';\r\n");
      out.write("\r\n");
      out.write("    infowindow.setContent(content);\r\n");
      out.write("    infowindow.open(map, marker);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(" // 검색결과 목록의 자식 Element를 제거하는 함수입니다\r\n");
      out.write("function removeAllChildNods(el) {   \r\n");
      out.write("    while (el.hasChildNodes()) {\r\n");
      out.write("        el.removeChild (el.lastChild);\r\n");
      out.write("    }\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("   </td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("</table> <br>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</section>\r\n");
      out.write("<!-- footer  -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layouts/footer.jsp", out, false);
      out.write('\r');
      out.write('\n');
      out.write("<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>\r\n");
      out.write("<script  src=\"JS/JStab.js\"></script>\r\n");
      out.write("<!-- Option 1: Bootstrap Bundle with Popper -->\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    \r\n");
      out.write("    ");
      out.write("   \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
