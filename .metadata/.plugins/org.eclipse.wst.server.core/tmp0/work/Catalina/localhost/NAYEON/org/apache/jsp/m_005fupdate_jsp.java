/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.64
 * Generated at: 2022-11-16 03:11:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import gang.DTOmangdog;
import gang.DAOmangdog;

public final class m_005fupdate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/../layouts/headerCSS", Long.valueOf(1668434616714L));
    _jspx_dependants.put("/../layouts/header", Long.valueOf(1666660431223L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("gang.DAOmangdog");
    _jspx_imports_classes.add("gang.DTOmangdog");
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
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP?????? ?????? GET, POST ?????? HEAD ??????????????? ???????????????. Jasper??? OPTIONS ????????? ?????? ???????????????.");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>???????????? ????????????</title>\r\n");
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
      out.write("<!-- ?????? ???????????? ???????????? -->\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Gaegu&family=Noto+Serif+KR&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- ???????????? ????????????// ?????? ?????????????????????????????? ?????????????????? js, css ?????? ???????????????????????? ???????????? -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css\">\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- jquery ???????????? -->\r\n");
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
      out.write("h1, nav {\r\n");
      out.write("	font-family: 'Gaegu' !important;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn {\r\n");
      out.write("	float: right;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<!-- header -->\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<!-- ?????? ??????  -->\r\n");
      out.write("<h1 style=\"text-align: center;\"> <a href=\"main.jsp\"/> <img src=\"icon/logo.png\" width=\"100\" height=\"100\"> </h1>\r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write("<!-- ?????????/????????????/????????????/???????????????  -->\r\n");
//1.????????????, ???????????? 
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id");
String name = request.getParameter("name");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" ");
 if (session.getAttribute("id") == null) { 
      out.write("\r\n");
      out.write(" <a href=\"login.jsp\"><div style=\"position:absolute; right:80px; top:80px;\">  ?????????  | </div></a>\r\n");
      out.write(" <a href=\"l_newmember.jsp\"><div style=\"position:absolute; right:20px; top:80px;\">  ???????????? </div></a> \r\n");
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
      out.write(" ??? ??????????????? ! </div>\r\n");
      out.write("	 <a href=\"logout.jsp\"><div style=\"position:absolute; right:80px; top:80px;\">  ????????????  | &nbsp;&nbsp; </div></a> \r\n");
      out.write(" 	 <a href=\"mypage.jsp\"><div style=\"position:absolute; right:20px; top:80px;\">  ??????????????? </div></a>\r\n");
} }
      out.write("\r\n");
      out.write("\r\n");
      out.write("<hr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- ?????? -->\r\n");
      out.write("<nav>\r\n");
      out.write("   <!-- ?????? ?????? ?????????  -->\r\n");
      out.write("   <div class=\"menu-btn\" >\r\n");
      out.write("      <div class=\"line line__1\"></div>\r\n");
      out.write("      <div class=\"line line__2\"></div>\r\n");
      out.write("      <div class=\"line line__3\"></div>\r\n");
      out.write("   </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <ul class=\"nav-links\">\r\n");
      out.write("      <a href=\"center.jsp\"> <li class=\"link\"> ?????? ?????? </li> </a>\r\n");
      out.write("      <a href=\"adopt.jsp\"> <li class=\"link\"> ?????? </li> </a>\r\n");
      out.write("	  <a href=\"volunteer.jsp\"> <li class=\"link\"> ???????????? </li> </a>\r\n");
      out.write("	  <a href=\"support.jsp\"> <li class=\"link\"> ?????? </li> </a>\r\n");
      out.write("	  <a href=\"hospital.jsp\"> <li class=\"link\"> ???????????? </li> </a>\r\n");
      out.write("	  <a href=\"mangdog.jsp\"> <li class=\"link\"> MANGDOG CONTEST </li> </a>\r\n");
      out.write("	  <a href=\"withdog.jsp\"> <li class=\"link\"> WITH DOG </li> </a>    \r\n");
      out.write("	</ul>  	  \r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("<!-- ?????? JS ?????? -->\r\n");
      out.write("<script  src=\"JS/JSmenu.js\"></script>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<!-- section -->\r\n");
      out.write("	");

	request.setCharacterEncoding("UTF-8");

	String mang_code = request.getParameter("mang_code");
	String mang_title = request.getParameter("mang_title");
	String mang_content = request.getParameter("mang_content");
	String mang_pic = request.getParameter("mang_pic");
	String mang_pic_save = request.getParameter("mang_pic_save");

	DAOmangdog dao = new DAOmangdog();
	dao.mangCount(mang_code);
	DTOmangdog dto = dao.getMang(mang_code);
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<section style=\"margin-top: -950px;\">\r\n");
      out.write("\r\n");
      out.write("		<div style=\"margin: auto; width: 60%; font-family: 'Hahmlet', serif; font-size: 15px;\">\r\n");
      out.write("			<form action=\"M_mangdog/m_updatepro.jsp\" name=\"mangdog\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("\r\n");
      out.write("				<div class=\"form-floating\">\r\n");
      out.write("					<input type=\"text\" class=\"form-control form-control-lg\"name=\"mang_title\" id=\"mang_title\" style=\"height: 30px;\" value=\"");
      out.print(mang_title);
      out.write("\" required>\r\n");
      out.write("					 <label for=\"floatingInputValue\">??????</label>\r\n");
      out.write("				</div>\r\n");
      out.write("\r\n");
      out.write("				<label for=\"formFileLg\" class=\"form-label\"></label>\r\n");
      out.write("				 <input type=\"file\" class=\"form-control form-control-lg\" name=\"mang_pic\" id=\"mang_pic\" style=\"height: 30px; font-size: 15px;\" accept=\"image/gif, image/jpeg, image/png\" required> <br>\r\n");
      out.write("				 \r\n");
      out.write("				 \r\n");
      out.write("				 ?????? ?????? \r\n");
      out.write("				 <img src=\"mang_img/");
      out.print(mang_pic_save );
      out.write("\" width=\"30%\" height=\"30%\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("				<div class=\"form-floating\">\r\n");
      out.write("					<textarea class=\"form-control\" name=\"mang_content\" id=\"mang_content\" style=\"height: 400px\" required> ");
      out.print(mang_content);
      out.write(" </textarea>\r\n");
      out.write("					<label for=\"floatingTextarea2\">????????? ??????????????? </label> <br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("					<input type=\"hidden\" id=\"mang_code\" name=\"mang_code\" value=\"");
      out.print(mang_code );
      out.write("\">\r\n");
      out.write("					<input type=\"hidden\" id=\"mang_pic\" name=\"mang_pic\" value=\"");
      out.print(mang_pic);
      out.write("\">\r\n");
      out.write("					<input type=\"hidden\" id=\"mang_pic_save\" name=\"mang_pic_save\" value=\"");
      out.print(mang_pic_save );
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("					<button type=\"submit\" class=\"btn btn-outline-secondary\"> ?????? </button>\r\n");
      out.write("				</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("			</form>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	</section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
