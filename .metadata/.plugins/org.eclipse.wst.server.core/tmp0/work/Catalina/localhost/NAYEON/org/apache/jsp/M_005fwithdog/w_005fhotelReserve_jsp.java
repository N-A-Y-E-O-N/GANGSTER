/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.64
 * Generated at: 2022-11-16 06:21:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.M_005fwithdog;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class w_005fhotelReserve_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/M_withdog/../layouts/headerCSS", Long.valueOf(1668434616714L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
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
      out.write("	form {margin: auto; width: 80%; text-align: center;\r\n");
      out.write("		  font-family:  'Hahmlet' !important; }\r\n");
      out.write("	table {margin: auto;}\r\n");
      out.write("	h2{font-family:  'Hahmlet' !important;\r\n");
      out.write("  	   text-align: center;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
//1.한글처리, 파라미터 
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id");//object를 string으로 다운캐스팅
String name = request.getParameter("name");

//1-1. id없이는 진입불가
if(id == null){
      out.write("\r\n");
      out.write("    <div class = \"container\">	<br><br><br>\r\n");
      out.write("	    <h2> 로그인 후 이용해주세요. </h2>  <br><br>\r\n");
      out.write("	    <button type=\"button\" class=\"btn btn-outline-secondary\" onClick=\"window.close()\"\r\n");
      out.write("		 style=\"margin: auto; display: block;\">창닫기</button>\r\n");
      out.write("     </div>\r\n");
} else{
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<form action=\"w_hotelReservepro.jsp\"> <br><br>	\r\n");
      out.write("		<!-- 호텔/유치원 예약 구분 -->	\r\n");
      out.write("		<div style=\"width: 50%; margin: auto;\"> \r\n");
      out.write("		<div class=\"form-check\">\r\n");
      out.write("  		  <input class=\"form-check-input\" type=\"radio\" name=\"kinder\" value=\"호텔\">\r\n");
      out.write("  		  <label class=\"form-check-label\" for=\"flexRadioDefault1\">  호텔 예약 </label>\r\n");
      out.write("		</div>\r\n");
      out.write("		\r\n");
      out.write("		\r\n");
      out.write("		<div class=\"form-check\">\r\n");
      out.write(" 		 <input class=\"form-check-input\" type=\"radio\" name=\"kinder\" value=\"유치원\" checked>\r\n");
      out.write("		 <label class=\"form-check-label\" for=\"flexRadioDefault2\">   유치원 예약 </label>\r\n");
      out.write("		</div>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("		\r\n");
      out.write("		<!-- 체크인/아웃 날짜 선택 -->  <br> <br>\r\n");
      out.write("		<input type=\"date\" name=\"checkin\" id=\"checkin\" required/>   &nbsp; - &nbsp;\r\n");
      out.write("		<input type=\"date\" name=\"checkout\" id=\"checkout\"/> <br><br>\r\n");
      out.write("		\r\n");
      out.write("		\r\n");
      out.write("		<!-- 강아지 정보 -->\r\n");
      out.write("		\r\n");
      out.write("		<table>\r\n");
      out.write("		<h6>강아지/예약자 정보</h6>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td> 견주 이름 </td>\r\n");
      out.write("				<td> <input type=\"text\" name=\"res_name\" id=\"res_name\" required>  </td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td> 강아지 이름 </td>\r\n");
      out.write("				<td> <input type=\"text\" name=\"dog_name\" id=\"dog_name\" required>  </td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		\r\n");
      out.write("	\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td> 견종 </td>\r\n");
      out.write("				<td> <input type=\"text\" name=\"dog_breed\" id=\"dog_breed\" required>  </td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td> 나이 </td>\r\n");
      out.write("				<td> <input type=\"number\" name=\"dog_age\" id=\"dog_age\" required></td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td> 몸무게 </td>\r\n");
      out.write("				<td> <input type=\"number\" name=\"dog_weight\" id=\"dog_weight\" required>  </td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td> 특이사항 </td>\r\n");
      out.write("				<td> <input type=\"text\" name=\"dog_character\" id=\"dog_character\"></td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>\r\n");
      out.write("		\r\n");
      out.write("		<br>\r\n");
      out.write("		<button type=\"submit\" class=\"btn btn-outline-secondary\"> 예약하기 </button>  &nbsp;\r\n");
      out.write("		\r\n");
      out.write("		</div>\r\n");
      out.write("	</form>\r\n");
} 
      out.write("\r\n");
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
